--
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use work.my_types.all;
--
entity bin_to_bcd is
    PORT ( 
        clock        : in std_logic;
        reset        : in std_logic;
        num_bin      : in std_logic_vector(7 downto 0);
        bcd_dozens   : out std_logic_vector(3 downto 0);
        bcd_units    : out std_logic_vector(3 downto 0));
end bin_to_bcd;

architecture RTL of bin_to_bcd is

BEGIN
    process(clock, num_bin, reset)
        variable decimal_num: integer;
    begin
        IF (reset = '1') THEN
            bcd_dozens <= (others => '0');
            bcd_units <=  (others => '0');
        ELSIF(clock'event AND clock = '1') THEN
            decimal_num := to_integer(unsigned(num_bin));
            bcd_dozens <= std_logic_vector(to_unsigned(decimal_num / 10, 4)); -- dezenas
            bcd_units <= std_logic_vector(to_unsigned(decimal_num mod 10, 4)); -- unidades
        END IF;
    END PROCESS;
end RTL;
