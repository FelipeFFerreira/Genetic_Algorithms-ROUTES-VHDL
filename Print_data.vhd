--
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use work.my_types.all;
--
entity Print_data is 
		port (
			clock, reset, init 			: in std_logic;
			bcd_i, bcd_i_1 						: out  std_logic_vector (3 downto 0);
			address 					: out  std_logic_vector (12 downto 0);
			dataout 					: in std_logic_vector (23 downto 0)
		);
end entity Print_data;

architecture Behavioral of Print_data is
	type state_type is (s_idle, s_address, s_write);
	signal row_col_data 			: std_logic_vector(23 downto 0);
	signal bcd_i_aux 				: std_logic_vector(7 downto 0);
	signal bcd_dozens, bcd_units	: std_logic_vector(3 downto 0);
	signal state: state_type;

	-- Components declaration
	component bin_to_bcd is
		PORT ( 
			clock    	: in std_logic;
			num_bin  	: in std_logic_vector(7 downto 0);
			bcd_dozens  : out std_logic_vector(3 downto 0);
			bcd_units   : out std_logic_vector(3 downto 0));
	end component;
	--
BEGIN
		bin_to_bcd_instance : bin_to_bcd
			port map (
				clock		=> clock,
				num_bin		=> bcd_i_aux,
				bcd_dozens  => bcd_dozens,
				bcd_units   => bcd_units
			);
		PROCESS(clock, reset, init)
		BEGIN
			IF (reset = '1') THEN
				bcd_i <= "1110";
				bcd_i_1 <= "1110";
				state <= s_idle;
			ELSIF(clock'event AND clock = '1') THEN
				CASE state is
					WHEN s_idle =>	
						IF (init = '1') THEN
							state <= s_address;
						END IF;
					WHEN s_address =>
						address <= std_logic_vector(to_unsigned(4897, 13));
						state <= s_write;
					WHEN s_write =>
						row_col_data <= dataout;
						-- bcd_i <= row_col_data(19 downto 16);
						bcd_i_aux <= row_col_data(23 downto 16);
						bcd_i <= bcd_dozens;
						bcd_i_1 <= bcd_units;
				END CASE;
			END IF;
		END PROCESS;
end Behavioral;


