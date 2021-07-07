library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;


entity madar is 
port (

	a,b,c,d : in std_ulogic_vector (15 downto 0);
	e,f,g,h,j,k,clock,reset : in std_ulogic;

	x : out std_ulogic_vector (15 downto 0);
	y,z : out std_ulogic
	);
end madar;


architecture madar1 of madar is

---- deklaration von signalen

signal q1,q2,qq1,qqq1 : std_ulogic_vector (15 downto 0);
signal q3,q4,qq2,qqq2,qq3 : std_ulogic;

begin

q4 <= j AND (not k);

process (clock , reset)
begin
if reset = '1' then
	x <= (others => '0');
	y <= '0';
	z <= '0';
elsif rising_edge(clock) then 
	x <= qqq1;
	y <= qqq2;
	z <= q4;
end if;
end process;

process (a,b,q1,q2,e,q3,j,k,qq2)
begin

q1 <= a XOR b;
qq1 <= q1 OR q2;
qq2 <= e AND q3;

qq3 <= qq2 NOR j;
qqq1<= qq1;
qqq2<= qq3;
end process;

mux1 : process(c,d,e)
begin
case e is
	when '0' => q2 <= c ;
    	when '1' => q2 <= d ;
	when others => q2 <= std_ulogic_vector(to_unsigned(0,16));

end case;
end process;

mux2 : process(f,g,h)
begin
case h is
 	when '0' => q3 <= f ;
 	when '1' => q3 <= g ;
	when others => q3 <= '0';
end case;
end process;


end architecture;