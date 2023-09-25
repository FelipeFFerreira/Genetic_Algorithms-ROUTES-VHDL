--
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use work.my_types.all;
--
entity Print_data is 
		port (
			clock, reset, init, input_print 		: in std_logic;
			input_data_route						: in std_logic_vector (6 downto 0);
			dataout 								: in std_logic_vector (23 downto 0);
			address 								: out  std_logic_vector (12 downto 0);
			output, output_1, output_2, output_3 	: out std_logic_vector (6 downto 0)
		);
end entity Print_data;

architecture RTL of Print_data is
	type state_type is (s_idle, s_address, s_write);
	signal row_col_data 											 		: std_logic_vector(23 downto 0);
	signal bcd_i_row, bcd_i_col, bcd_i_units_data, bcd_i_thousands, bcd_i_hundreds, bcd_i_dozens	: std_logic_vector(3 downto 0); -- inputs bcd
	signal bcd_i_data 														: std_logic_vector(7 downto 0); -- data
	signal input_data_route_old						:  std_logic_vector (6 downto 0);

	signal clk_05Hz_int 												: std_logic := '0';
    signal clk_1Hz_int  												: std_logic := '0';
    signal clk_2Hz_int  												: std_logic := '0';

	signal state: state_type;
    signal count, count_address     									: integer := 0;
	-- Components declaration
	component bin_to_bcd is
		-- generic (
		-- 	NUM_BIN_SIZE : integer
		-- );
		PORT ( 
			clock          : in std_logic;
			reset          : in std_logic;
			num_bin        : in std_logic_vector(8 - 1 downto 0); -- 13 bits para representar até 4899
			-- bcd_thousands  : out std_logic_vector(3 downto 0);
			-- bcd_hundreds   : out std_logic_vector(3 downto 0);
			bcd_dozens     : out std_logic_vector(3 downto 0);
			bcd_units      : out std_logic_vector(3 downto 0));
	end component;

	component bcd_seven_seg  is
		port(
			clock		: in std_logic;
			bcd_i   	: in  std_logic_vector(3 downto 0);
			seven_o 	: out std_logic_vector(6 downto 0)
		);
	end component;
	--
BEGIN
		bin_to_bcd_instance : bin_to_bcd
			-- generic map (
			-- 	NUM_BIN_SIZE => 8
			-- )
			port map (
				clock			=> clock,
				reset			=> reset,
				num_bin			=> bcd_i_data,
				-- bcd_thousands	=> bcd_i_thousands,
				-- bcd_hundreds	=> bcd_i_hundreds,
				bcd_dozens  	=> bcd_i_dozens,
				bcd_units   	=> bcd_i_units_data
			);

		bcd_seven_instance : bcd_seven_seg 
			port map (
				clock 	=> clock,
				bcd_i 	=> bcd_i_row,
				seven_o => output_1
		);
		bcd_seven_instance_1 : bcd_seven_seg 
			port map (
				clock => clock,
				bcd_i 	=> bcd_i_col,
				seven_o => output
		);
		bcd_seven_instance_2 : bcd_seven_seg 
			port map (
				clock => clock,
				bcd_i 	=> bcd_i_units_data,
				seven_o => output_2
		);
		bcd_seven_instance_3 : bcd_seven_seg 
		port map (
			clock => clock,
			bcd_i 	=> bcd_i_dozens,
			seven_o => output_3
	);

	-- --display para endereços
	-- bcd_seven_instance_4 : bcd_seven_seg 
	-- port map (
	-- 	clock => clock,
	-- 	bcd_i 	=> bcd_i_addr_0,
	-- 	seven_o => seven_o_addr_0
	-- );

	-- bcd_seven_instance_5 : bcd_seven_seg 
	-- port map (
	-- 	clock => clock,
	-- 	bcd_i 	=> bcd_i_addr_1,
	-- 	seven_o => seven_o_addr_1
	-- );	
	
	-- bcd_seven_instance_6 : bcd_seven_seg 
	-- port map (
	-- 	clock => clock,
	-- 	bcd_i 	=> bcd_i_addr_2,
	-- 	seven_o => seven_o_addr_2
	-- );	
	
	-- bcd_seven_instance_7 : bcd_seven_seg 
	-- port map (
	-- 	clock => clock,
	-- 	bcd_i 	=> bcd_i_addr_3,
	-- 	seven_o => seven_o_addr_3
	-- );

	PROCESS(clock, reset)
	BEGIN
		IF (reset = '1') THEN
			count 			<= 0;
			clk_05Hz_int 	<= '0';
			clk_1Hz_int 	<= '0';
			clk_2Hz_int 	<= '0';
			count_address		<= 0;
			input_data_route_old <= input_data_route;
		ELSIF(clock'event AND clock = '1') THEN
			IF (count = 100_000_000 - 1) THEN  -- para 0.5Hz
				clk_05Hz_int <= NOT clk_05Hz_int;
				count <= 0;
				count_address <= count_address + 1;
			ELSE
				count <= count + 1;
			END IF;
			IF (count mod 50_000_000 = 0) THEN  -- para 1Hz
				clk_1Hz_int <= NOT clk_1Hz_int;
			END IF;
			IF (count mod 25_000_000 = 0) THEN  -- para 2Hz
				clk_2Hz_int <= NOT clk_2Hz_int;
				IF (count_address = 49) THEN
					count_address <= 0;
				END IF;
			END IF;
		END IF;
	END PROCESS;

	PROCESS(clock, reset, init)
	BEGIN
		IF (reset = '1') THEN
			bcd_i_row 			<= "1110";
			bcd_i_col 			<= "1110";
			-- bcd_i_addr_0		<= "1010";
			-- bcd_i_addr_1		<= "1101";
			-- bcd_i_addr_2		<= "1101";
			-- bcd_i_addr_3		<= "1101";
			state 				<= s_idle;
		ELSIF(clock'event AND clock = '1') THEN
			CASE state is
				WHEN s_idle =>	
					IF (init = '1' and input_print = '1') THEN
						state <= s_address;
					END IF;
				WHEN s_address =>
					address <= std_logic_vector(to_unsigned(count_address + to_integer(unsigned(input_data_route)), 13));
					-- address <= std_logic_vector(to_unsigned(count_address + input_address, 13));
					state <= s_write;
				WHEN s_write =>
					row_col_data <= dataout;
					bcd_i_row <= row_col_data(3 downto 0);
					bcd_i_col <= row_col_data(11 downto 8);
					bcd_i_data <= row_col_data(23 downto 16); -- data

					-- bcd_i_addr_0		<= "1101";

					state <= s_idle;
				END CASE;
		END IF;
	END PROCESS;
end RTL;


