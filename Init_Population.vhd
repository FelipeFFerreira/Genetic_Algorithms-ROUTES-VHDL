--
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use work.my_types.all;
--

entity Init_Population is 
		port (
			clock, reset, init 	: in std_logic;
			stop 						: buffer std_logic;
			we      					: out  std_logic;
			address 					: out  std_logic_vector (12 downto 0);
			datain  					: out  std_logic_vector (23 downto 0)		  
		);
end entity Init_Population;

architecture Behavioral of Init_Population is
	signal row_col_data 	: std_logic_vector(23 downto 0);
	type state_type is (s_idle, s_p_loop, s_i_loop, s_j_loop, s_write, s_write_done);
	signal state: state_type;
	signal p, i, j 		: integer := 0;
	signal start 			: std_logic := '0';

BEGIN
	
	PROCESS(clock, reset)
	BEGIN
		IF (reset = '1') THEN
			stop <= '0';
			we <= '0';
			start <= '0';
			state <= s_idle;
			ELSIF(clock'event AND clock = '1') THEN
					CASE state is
						WHEN s_idle =>
								IF (init = '1') THEN
									p <= 0;
									i <= 0;
									j <= 0;
									state <= s_p_loop;
								END IF;
						WHEN s_p_loop =>
							IF (p < POP_SIZE) THEN
								i <= 0;
								state <= s_i_loop;
							ELSE
								IF (init = '0') THEN -- assumi logica de reinicialização da FSM
									stop <= '0';
									state <= s_idle;
								ELSE 
									stop <= '1';
								END IF;
							END IF;
						WHEN s_i_loop =>
							IF i < ROWS THEN
								j <= 0;
								state <= s_j_loop;
							ELSE
								p <= p + 1;
								state <= s_p_loop;
							END IF;
						WHEN s_j_loop =>
							IF j < COLS THEN
								we <= '0';
								datain(7 downto 0) <= std_logic_vector(to_unsigned(i, 8));
								datain(15 downto 8) <= std_logic_vector(to_unsigned(j, 8));
								datain(23 downto 16) <= std_logic_vector(to_unsigned(i*COLS+j+1, 8));
								address <= std_logic_vector(to_unsigned(p*CHROM_SIZE+(i*COLS+j), 13));
								j <= j + 1;
								state <= s_write;
							ELSE
								i <= i + 1;
								state <= s_i_loop;
							END IF;
						WHEN s_write =>
							we <= '1';
							state <= s_write_done;
						WHEN s_write_done =>
							we <= '0';
							state <= s_j_loop;
					END CASE;
				END IF;
	END PROCESS;  
end Behavioral;
