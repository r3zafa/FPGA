library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity action_tb is 
--leer
end action_tb;


architecture filter of action_tb is

-- signal
signal a,b : signed(3 downto 0);
signal outpuuuut : signed (3 downto 0);
signal clock,reset : std_ulogic;
constant T : time := 100 ns;

-- component
component action
port(
	clock,reset: in std_ulogic;
	a,b: in signed (3 downto 0);
	outpuuuut : out signed (3 downto 0)
);
end component;

begin
comp: action
port map(
a=>a,
b=>b,
outpuuuut=>outpuuuut,
clock=>clock,
reset=>reset
);

wert: process
begin
a <= "0011";
b <= "0001";
wait for T/2;
a <= "0111";
b <= "0110";
wait for T/2;
end process;

zeit : process
begin
clock <= '0';
wait for T/5;
clock <= '1';
wait for T/5;
end process;

rest : process 
begin 
reset <= '0';
wait for 2*T;
reset <= '1';
wait for T/8;
end process;

end filter;









