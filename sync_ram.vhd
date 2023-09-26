---
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
---

entity sync_ram is
  generic (
    NUM_BIN_SIZE_ADDR : integer := 13;
    NUM_BIN_SIZE_DATA : integer := 24
  );
  PORT (
    clock, we   : in  std_logic;
    address 		: in  std_logic_vector (NUM_BIN_SIZE_ADDR - 1 downto 0);
    datain  		: in  std_logic_vector (NUM_BIN_SIZE_DATA - 1 downto 0);
    dataout 		: out std_logic_vector (NUM_BIN_SIZE_DATA - 1 downto 0)
  );
end entity sync_ram;

architecture RTL of sync_ram is

   type ram_type is array (0 to (2**address'length)-1) of std_logic_vector(datain'range);
   signal ram : ram_type;
   signal read_address : std_logic_vector(address'range);

begin

  RamProc: PROCESS(clock) is

  begin
    IF rising_edge(clock) THEN
      IF we = '1' THEN
        ram(to_integer(unsigned(address))) <= datain; -- Escrita síncrona
      END IF;
      read_address <= address;
    END IF;
  end process RamProc;

  dataout <= ram(to_integer(unsigned(read_address))); -- Leitura assincrona

end architecture RTL;