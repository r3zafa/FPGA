library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity action is 
port(
	clock,reset: in std_ulogic;
	a,b: in signed (3 downto 0);
	outpuuuut : out signed (3 downto 0)
);
end action;


architecture filter of action is

-- signal
signal temp : signed (3 downto 0);

-- component

begin
temp <= a - b;


process (clock,reset)
begin
if reset='1' then 
outpuuuut <= (others => '0');
elsif rising_edge(clock) then
outpuuuut <= temp;
end if;

end process;


end filter;









