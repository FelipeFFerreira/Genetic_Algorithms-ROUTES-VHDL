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
		input_data_route							: in std_logic_vector (6 downto 0);
		clock, reset, input_print 								: in std_logic;
		output, output_1, output_2, output_3		: out std_logic_vector (6 downto 0));
end entity genetic_algorithm ;

architecture RTL of genetic_algorithm is

    use work.my_types.all;
    ----------------------------------------------------------------------------------
    signal done_init_population, init_init_population 	: std_logic := '0';
	signal init_print, done_print 					  	: std_logic := '0';
	signal sel_address 									: BIT;
	----------------------------------------------------------------------------------
	signal init_population_adress : std_logic_vector (12 downto 0) := (others => '0');
	signal print_data_adress	  : std_logic_vector (12 downto 0) := (others => '0');

	signal address 		: std_logic_vector (12 downto 0) := (others => '0');
	signal datain 		: std_logic_vector (23 downto 0) := (others => '0');
	signal dataout   	: std_logic_vector (23 downto 0) := (others => '0');
	signal we      		: std_logic;
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
			clock, reset, init, input_print 						: in std_logic;
			input_data_route						: in std_logic_vector (6 downto 0);
			dataout 								: in std_logic_vector (23 downto 0);
			address 								: out  std_logic_vector (12 downto 0);
			output, output_1, output_2, output_3 	: out std_logic_vector (6 downto 0)
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
				input_print => input_print,
				init	=> init_print,
				input_data_route => input_data_route,
				address => print_data_adress,
				dataout => dataout,
				output	=> output,
				output_1	=> output_1,
				output_2	=> output_2,
				output_3	=> output_3
			);

		WITH sel_address SELECT
			address <= 	init_population_adress WHEN '0',
						print_data_adress	   WHEN '1';

	FSM: process(clock, reset)
		BEGIN
		IF (reset = '1') THEN
			init_init_population <= '0';
			init_print <= '0';
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
				
end architecture RTL;
