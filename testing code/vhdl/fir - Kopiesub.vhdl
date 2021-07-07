library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity action is 
port(
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
outpuuuut <= temp;

end filter;









