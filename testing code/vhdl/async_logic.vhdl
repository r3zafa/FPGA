library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity async_logic is
	port(
		a,b,clock,reset : in std_ulogic;
		out_l: out std_ulogic
		);
		
end async_logic;

architecture async_and of async_logic is

-- declation
--signal 
signal temp : std_ulogic;
begin

process (reset,clock)
begin
if reset = '1' then
temp <= '0';
elsif rising_edge(clock) then
temp <= a and b;
out_l <= temp;

end if;
end process;



end async_and;