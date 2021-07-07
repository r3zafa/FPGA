library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity action_tb is 
--leer
end action_tb;


architecture filter of action_tb is


component action
port(
	a,b: in signed (3 downto 0);
	outpuuuut : out signed (3 downto 0)
);
end component;

-- signal
signal a,b : signed(3 downto 0);
signal outpuuuut : signed (3 downto 0);
constant T : time := 100 ns;

begin
comp: action 
port map(
a=>a,
b=>b,
outpuuuut=>outpuuuut
);

process
begin
a <= "0011";
b <= "0001";
wait for T;
a <= "0111";
b <= "0110";
wait for T;
end process;

end filter;









