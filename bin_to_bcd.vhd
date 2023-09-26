--
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use work.my_types.all;
--
entity bin_to_bcd is
    generic (
        NUM_BIN_SIZE : integer := 8
    );
    PORT ( 
        clock           : in std_logic;
        reset           : in std_logic;
        num_bin         : in std_logic_vector(NUM_BIN_SIZE - 1 downto 0);
        bcd_thousands   : out std_logic_vector(3 downto 0);
        bcd_hundreds    : out std_logic_vector(3 downto 0);
        bcd_dozens      : out std_logic_vector(3 downto 0);
        bcd_units       : out std_logic_vector(3 downto 0));
end bin_to_bcd;

architecture RTL of bin_to_bcd is

BEGIN
    process(clock, num_bin, reset)
        variable decimal_num: integer;
    begin
        IF (reset = '1') THEN
            bcd_dozens <= (others => '0');
            bcd_units <=  (others => '0');
            bcd_hundreds <=  (others => '0');
            bcd_thousands <=  (others => '0');
        ELSIF(clock'event AND clock = '1') THEN
            decimal_num := to_integer(unsigned(num_bin));
            bcd_thousands <= std_logic_vector(to_unsigned(decimal_num / 1000, 4)); -- milhares
            bcd_hundreds <= std_logic_vector(to_unsigned((decimal_num mod 1000) / 100, 4)); -- centenas
            bcd_dozens <= std_logic_vector(to_unsigned((decimal_num mod 100) / 10, 4)); -- dezenas
            bcd_units <= std_logic_vector(to_unsigned(decimal_num mod 10, 4)); -- unidades
        END IF;
    END PROCESS;
end RTL;
