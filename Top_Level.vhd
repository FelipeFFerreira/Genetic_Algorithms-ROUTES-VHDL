library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
-- use ieee.fixed_pkg.all;

package my_types is
    -- Constants
    constant ROWS: integer := 7;
    constant COLS: integer := 7;
    constant GEN_COUNT: integer := 40000;
    constant POP_SIZE: integer := 100;
    constant CHROM_SIZE: integer := 49;
    constant SEL_RATE: real := 0.9;
    constant CROSS_RATE: real := 0.8;
    constant MUT_RATE: real := 0.8;
end package my_types;

---
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity sync_ram is
  port (
    clock   : in  std_logic;
    we      : in  std_logic;
    address : in  std_logic_vector (12 downto 0);
    datain  : in  std_logic_vector (23 downto 0);
    dataout : out std_logic_vector (23 downto 0)
  );
end entity sync_ram;

architecture RTL of sync_ram is

   type ram_type is array (0 to (2**address'length)-1) of std_logic_vector(datain'range);
   signal ram : ram_type;
   signal read_address : std_logic_vector(address'range);

begin

  RamProc: process(clock) is

  begin
    if rising_edge(clock) then
      if we = '1' then
        ram(to_integer(unsigned(address))) <= datain;
      end if;
      read_address <= address;
    end if;
  end process RamProc;

  dataout <= ram(to_integer(unsigned(read_address)));

end architecture RTL;

---
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity Top_Level is 
    port (
        clock : in std_logic;
        init : in std_logic;
        stop : out std_logic
    );
end entity Top_Level;

architecture Behavioral of Top_Level is

    use work.my_types.all;

    ----------------------------------------------------------------------------------
    signal done_init_population : std_logic := '0';
    signal init_init_population :std_logic := '0';
	 ----------------------------------------------------------------------------------
	 signal address 	: std_logic_vector (12 downto 0) := "0000000000000";
	 signal datain 	: std_logic_vector (23 downto 0) := "000000000000000000000000";
	 signal dataout 	: std_logic_vector (23 downto 0) := "000000000000000000000000";
	 signal we      	: std_logic;
	 ----------------------------------------------------------------------------------
	 type state_t is (s_init, s_print, s_evaluate, s_reproduce, s_check, s_done);
    signal state : state_t := s_init;
    ----------------------------------------------------------------------------------
   
	-- Components declaration
	component sync_ram is
		port (
			clock   : in  std_logic;
			we      : in  std_logic;
			address : in  std_logic_vector (12 downto 0);
			datain  : in  std_logic_vector (23 downto 0);
			dataout : out std_logic_vector (23 downto 0)
		);
	end component sync_ram;
	
	component Init_Population is
		port(
			clock 	: in std_logic;
         init 	: in std_logic;
         stop 	: out std_logic;
			we      : out  std_logic;
			address : out  std_logic_vector (12 downto 0);
			datain  : out  std_logic_vector (23 downto 0)
		);
   end component;

		
	begin
		ram_instance : sync_ram
			port map (
				clock   => clock,
				we      => we,
				address => address,
				datain  => datain,
				dataout => dataout
			);

		init_population_instance : Init_Population
			port map (
				clock     => clock,
				we      => we,
				init    => init_init_population,
				stop    => done_init_population,
				address => address,
				datain  => datain
			);
		  
		FSM: process(clock)
		begin
			if rising_edge(clock) then
				case state is
					when s_init =>
						init_init_population <= '1';
						if done_init_population = '1' then
							init_init_population <= '0';
                      state <= s_print;
						end if;
                    when s_print =>
                        state <= s_evaluate;
                    when s_done =>
                        null;
                    when others =>
                        state <= s_init;
                end case;
            end if;
        end process FSM;  
				
end architecture Behavioral;

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use work.my_types.all;

entity Init_Population is 
		port (
			clock : in std_logic;
			init : in std_logic;
			stop : out std_logic;
			we      : out  std_logic;
			address : out  std_logic_vector (12 downto 0);
			datain  : out  std_logic_vector (23 downto 0)		  
		);
end entity Init_Population;

architecture Behavioral of Init_Population is
	signal row_col_data : std_logic_vector(23 downto 0);
	type state_type is (s_idle, s_p_loop, s_i_loop, s_j_loop, s_write, s_write_done);
	signal state: state_type := s_idle;
	signal p, i, j : integer := 0;
	
	begin
	process(clock)
		begin
			if rising_edge(clock) then
				case state is
					when s_idle =>
						if init = '1' then
							p <= 0;
							i <= 0;
							j <= 0;
							stop <= '0';
							state <= s_p_loop;
						else 
							stop <= '0';
							we <= '0';
						end if;
					when s_p_loop =>
						if p < POP_SIZE then
							i <= 0;
							state <= s_i_loop;
						else
							stop <= '1';
							state <= s_idle;
						end if;
					when s_i_loop =>
						if i < ROWS then
							j <= 0;
							state <= s_j_loop;
						else
							p <= p + 1;
							state <= s_p_loop;
						end if;
					when s_j_loop =>
						if j < COLS then
							we <= '0';
							datain(7 downto 0) <= std_logic_vector(to_unsigned(i, 8));
							datain(15 downto 8) <= std_logic_vector(to_unsigned(j, 8));
							datain(23 downto 16) <= std_logic_vector(to_unsigned(i*COLS+j+1, 8));
							address <= std_logic_vector(to_unsigned(p*CHROM_SIZE+(i*COLS+j), 13));
							state <= s_write;
							j <= j + 1;
						else
							i <= i + 1;
							state <= s_i_loop;
						end if;
					when s_write =>
						we <= '1';
						state <= s_write_done;
					when s_write_done =>
						we <= '0';
						state <= s_j_loop;
				end case;
			end if;
	end process;  
end Behavioral;
