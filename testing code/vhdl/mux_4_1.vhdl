library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity muliplexer_4_1 is
port(
a,b,c,d : in std_ulogic_vector (3 downto 0);
sel : in std_ulogic_vector (1 downto 0);
ausgang : out std_ulogic_vector (3 downto 0)
);

end muliplexer_4_1;
----------------------------------------------------- archi.
architecture mux of muliplexer_4_1 is

begin

process (a,b,c,d,sel)
begin 

case sel is
	when "00" => ausgang <= a;
	when "01" => ausgang <= b;
	when "10" => ausgang <= c;
	when "11" => ausgang <= d;
	when others => ausgang <= "0000";
end case;

end process;

end architecture;