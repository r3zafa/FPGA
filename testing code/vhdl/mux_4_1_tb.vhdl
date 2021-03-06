library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity muliplexer_4_1_tb is
-- leer
end muliplexer_4_1_tb;

----------------------------------------------------- archi.

architecture mux of muliplexer_4_1_tb is

-- component

component muliplexer_4_1
port(
a,b,c,d : in std_ulogic_vector (3 downto 0);
sel : in std_ulogic_vector (1 downto 0);
ausgang : out std_ulogic_vector (3 downto 0)
);
end component;

-- signal
signal a,b,c,d : std_ulogic_vector (3 downto 0);
signal sel : std_ulogic_vector (1 downto 0);
signal ausgang : std_ulogic_vector (3 downto 0);
constant T : time := 100 ns;
begin

mux1: muliplexer_4_1
port map ( a=>a,b=>b,c=>c,d=>d,sel=>sel,ausgang=>ausgang);

process
begin 
a <= "0001";
b <= "0010";
c <= "0100";
d <= "1000";
sel <= "01";
wait for T;
a <= "0001";
b <= "0010";
c <= "0100";
d <= "1000";
sel <= "11";
wait for T;
end process;
end architecture;