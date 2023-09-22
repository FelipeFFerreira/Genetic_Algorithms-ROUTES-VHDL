--
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use work.my_types.all;
--
entity Print_data is 
		port (
			clock, reset, init 			: in std_logic;
			bcd_i 						: out  std_logic_vector (3 downto 0);
			address 					: out  std_logic_vector (12 downto 0);
			dataout 					: in std_logic_vector (23 downto 0)
		);
end entity Print_data;

architecture Behavioral of Print_data is
	type state_type is (s_idle, s_address, s_write);
	signal state: state_type;
BEGIN
	PROCESS(clock, reset, init)
	BEGIN
    	IF (reset = '1') THEN
			bcd_i <= "1110";
			state <= s_idle;
		ELSIF(clock'event AND clock = '1') THEN
			CASE state is
				WHEN s_idle =>	
					IF (init = '1') THEN
						state <= s_address;
					END IF;
				WHEN s_address =>
					address <= std_logic_vector(to_unsigned(0, 13));
					state <= s_write;
				WHEN s_write =>
					bcd_i <= dataout(3 downto 0);
			END CASE;
		END IF;
	END PROCESS;
end Behavioral;


