library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
-- use ieee.fixed_pkg.all;

package my_types is
    -- Constants
    constant ROWS			: integer := 7;
    constant COLS			: integer := 7;
    constant GEN_COUNT		: integer := 40000;
    constant POP_SIZE		: integer := 100;
    constant CHROM_SIZE		: integer := 49;
    constant SEL_RATE		: real := 0.9;
    constant CROSS_RATE		: real := 0.8;
    constant MUT_RATE		: real := 0.8;
end package my_types;

---
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
---

entity genetic_algorithm is 
    port (
		clock, reset 	: in std_logic;
		output 			: out std_logic_vector (6 downto 0));
end entity genetic_algorithm ;

architecture Behavioral of genetic_algorithm is

    use work.my_types.all;
    ----------------------------------------------------------------------------------
    signal done_init_population, init_init_population :	std_logic := '0';
	signal init_print, done_print : std_logic := '0';
	signal sel_address : BIT;
	----------------------------------------------------------------------------------
	signal init_population_adress : std_logic_vector (12 downto 0) := (others => '0');
	signal print_data_adress	  : std_logic_vector (12 downto 0) := (others => '0');

	signal address 		: std_logic_vector (12 downto 0) := (others => '0');
	signal datain 		: std_logic_vector (23 downto 0) := (others => '0');
	signal dataout   	: std_logic_vector (23 downto 0) := (others => '0');
	signal we      		: std_logic;
	----------------------------------------------------------------------------------
	signal bcd				: std_logic_vector(3 downto 0);
	signal output_display 	: std_logic_vector(6 downto 0);
	----------------------------------------------------------------------------------
	-- type state_t is (s_init, s_print, s_evaluate, s_reproduce, s_check, s_done);
	type state_t is (s_init, s_print, s_evaluate);
    signal state : state_t := s_init;
    ----------------------------------------------------------------------------------
	----------------------------------------------------------------------------------
	-- Components declaration
	component sync_ram is
		port (
			clock, we   : in  std_logic;
			address 	: in  std_logic_vector (12 downto 0);
			datain  	: in  std_logic_vector (23 downto 0);
			dataout 	: out std_logic_vector (23 downto 0)
		);
	end component sync_ram;

	component Init_Population is
		port(
			clock, init, reset 	: in std_logic;
			stop				: buffer std_logic;
         	we 					: out std_logic;
			address 			: out  std_logic_vector (12 downto 0);
			datain  			: out  std_logic_vector (23 downto 0)
		);
   end component;

   component Print_data is
		port (
			clock, reset, init 	: in std_logic;
			bcd_i 				: out  std_logic_vector (3 downto 0);
			address 			: out  std_logic_vector (12 downto 0);
			dataout 			: in std_logic_vector (23 downto 0)
		);
	end component;

	component bcd_seven_seg  is
		port(
			clock_i		: in std_logic;
			bcd_i   	: in  std_logic_vector(3 downto 0);
			seven_o 	: out std_logic_vector(6 downto 0)
		);
	end component;
	----------------------------------------------------------------------------------
BEGIN
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
				clock   => clock,
				reset	=> reset,
				we      => we,
				init    => init_init_population,
				stop    => done_init_population,
				address => init_population_adress,
				datain  => datain
			);

		print_data_instance : Print_data
			port map (
				clock	=> clock,
				reset	=> reset,
				init	=> init_print,
				bcd_i	=> bcd,
				address => print_data_adress,
				dataout => dataout
			);

		bcd_seven_instance : bcd_seven_seg 
			port map (
				clock_i => clock,
				bcd_i 	=> bcd,
				seven_o => output
			);
	
		WITH sel_address SELECT
			address <= 	init_population_adress WHEN '0',
						print_data_adress	   WHEN '1';

	FSM: process(clock, reset)
		BEGIN
		IF (reset = '1') THEN
			init_init_population <= '0';
			init_print <= '0';
			--address <= (others => '0');
			--datain <=  (others => '0');
			--dataout <=  (others => '0');
			state <= s_init;
		ELSIF (clock'event AND clock = '1') THEN
			case state is
				WHEN s_init =>
					sel_address <= '0';
					init_init_population <= '1';
					IF (done_init_population = '1') THEN
						init_init_population <= '0';
						state <= s_print;
					END IF;
				WHEN s_print =>
					sel_address <= '1';
					init_print <= '1';
					IF (done_print = '1') THEN
						init_print <= '0';
						state <= s_evaluate;
					END IF;
				WHEN s_evaluate =>
				
          END CASE;
       END IF;
    END PROCESS FSM;  
				
end architecture Behavioral;
