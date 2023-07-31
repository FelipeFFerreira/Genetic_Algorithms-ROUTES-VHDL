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
    -- subtype fixed_point_t is sfixed(15 downto -16);

    type Coordinate is record
        row, col, data : std_logic_vector(7 downto 0);
    end record;
    type Coordinate_Line is array (0 to CHROM_SIZE - 1) of Coordinate;
    type Coordinate_Array is array (0 to POP_SIZE - 1) of Coordinate_Line;    

    type Roulette_range is record
        lower_limit : std_logic_vector(31 downto 0);
        upper_limit : std_logic_vector(31 downto 0);
        percentage  : std_logic_vector(31 downto 0);
        p           : std_logic_vector(7 downto 0);
    end record;

    type Roulette_Array is array (natural range <>) of Roulette_range;

    type Partial_Evaluation_Population is array (natural range <>) of std_logic_vector(31 downto 0);
    type Scores_Index is array (natural range <>) of std_logic_vector(7 downto 0);


end package my_types;


---
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity Top_Level is 
    port (
        clk : in std_logic;
        init : in std_logic;
        stop : out std_logic
    );
end entity Top_Level;

architecture Behavioral of Top_Level is

    use work.my_types.all;

    signal previous_population : Coordinate_Array;
    signal new_population : Coordinate_Array;
    signal partial_evaluation_population : Partial_Evaluation_Population(0 to POP_SIZE - 1);
    signal scores_index : Scores_Index(0 to POP_SIZE - 1);    
    signal roulette_fx : Roulette_Array(0 to POP_SIZE - 1);
    signal start : Coordinate := (row => "00000000", col => "00000000", data => "00000001");
    signal finish : Coordinate := (row => "00000101", col => "00000011", data => "00100111");
    signal current_generation : std_logic_vector(31 downto 0) := (others => '0');
    signal weight_sum : std_logic_vector(31 downto 0) := (others => '0');
    signal highest_weight_sum_value : std_logic_vector(31 downto 0) := (others => '0');
    signal parent_1, parent_2 : std_logic_vector(7 downto 0) := (others => '0');
    
    ----------------------------------------------------------------------------------
    signal stop_init_population : std_logic := '0';
    signal init_init_population :std_logic := '0';
	 
	 type state_t is (s_init, s_print, s_evaluate, s_reproduce, s_check, s_done);
    signal state : state_t := s_init;
    ----------------------------------------------------------------------------------
    -- Components declaration
    component Init_Population is
        port(
            clk : in std_logic;
            init : in std_logic;
            stop : out std_logic;
            previous_population : inout Coordinate_Array
        );
    end component;

    begin
        IP: Init_Population
            port map (
                clk   => clk,
                init => init_init_population,
                previous_population => previous_population,
                stop => stop_init_population
            );
				
				--MAQUINA DE ESTADOS
    FSM: process(clk)
        begin
            if rising_edge(clk) then
                case state is
                    when s_init =>
                        -- Condições para mover para o próximo estado
                        state <= s_print;

                    when s_print =>
                        -- Condições para mover para o próximo estado
                        state <= s_evaluate;

                    when s_evaluate =>
                        -- Condições para mover para o próximo estado
                        state <= s_reproduce;

                    when s_reproduce =>
                        -- Condições para mover para o próximo estado
                        state <= s_check;

                    when s_check =>
                        -- Condições para mover para o próximo estado
                        -- if check_condition then
                        --     state <= s_done;
                        -- else
                        --     state <= s_evaluate;
                        -- end if;

                    when s_done =>
                        -- Nada mais a fazer, então permanece neste estado
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
        clk : in std_logic;
        init : in std_logic;
        previous_population : inout Coordinate_Array;
        stop : out std_logic
    );
end entity Init_Population;

architecture Behavioral of Init_Population is
begin
    process(clk)
    begin
        if rising_edge(clk) then
            if init = '1' then
                -- Initialize population
                for p in 0 to POP_SIZE - 1 loop
                    for i in 0 to ROWS - 1 loop
                        for j in 0 to COLS - 1 loop
                            previous_population(p)(i*COLS+j).row <= std_logic_vector(to_unsigned(i, 8));
                            previous_population(p)(i*COLS+j).col <= std_logic_vector(to_unsigned(j, 8));
                            previous_population(p)(i*COLS+j).data <= std_logic_vector(to_unsigned(i*COLS+j, 8));
                        end loop;
                    end loop;
                end loop;
                -- Signal completion
                stop <= '1';
            else
                stop <= '0';
            end if;
        end if;
    end process;  
end Behavioral;
