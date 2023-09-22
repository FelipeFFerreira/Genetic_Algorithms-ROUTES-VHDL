---
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
---

entity sync_ram is
  port (
    clock, we   	: in  std_logic;
    address 		: in  std_logic_vector (12 downto 0);
    datain  		: in  std_logic_vector (23 downto 0);
    dataout 		: out std_logic_vector (23 downto 0)
  );
end entity sync_ram;

architecture RTL of sync_ram is

   type ram_type is array (0 to (2**address'length)-1) of std_logic_vector(datain'range);
   signal ram : ram_type;
   signal read_address : std_logic_vector(address'range);

begin

  RamProc: process(clock) is

  begin
    if rising_edge(clock) then
      if we = '1' then
        ram(to_integer(unsigned(address))) <= datain; -- Escrita síncrona
      end if;
      read_address <= address;
    end if;
  end process RamProc;

  dataout <= ram(to_integer(unsigned(read_address))); -- Leitura assincrona

end architecture RTL;