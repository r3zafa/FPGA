library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity async_logic_tb is

-- leer
		
end async_logic_tb;

architecture async_and of async_logic_tb is

-- declation
-- component
component async_logic
	port(
		a,b,clock,reset : in std_ulogic;
		out_l: out std_ulogic
		);
end component;
		
--signal 
signal temp,a,b,clock,reset : std_ulogic;
constant T : time := 100 ns;

begin

async: async_logic port map ( 
a=>a,b=>b,out_l=>temp ,clock=>clock, reset => reset
);

process
begin
a <= '0';
b <= '0';
wait for T/2;
a <= '0';
b <= '1';
wait for T/2;
a <= '1';
b <= '0';
wait for T/2;
a <= '1';
b <= '1';
wait for T/2;
end process;

clk: process 
begin
clock <= '1';
wait for T/2;
clock <= '0';
wait for T/2;
end process;

rst: process
begin
reset <= '1';
wait for T;
reset <= '0';
wait for T;
end process;

end async_and;