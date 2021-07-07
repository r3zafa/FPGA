library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;


entity madar_tb is 
-- leer
end madar_tb;


architecture madar1 of madar_tb is

---- deklaration von signalen

signal a1,b1,c1,d1,qqq1 : std_ulogic_vector (15 downto 0);
signal reset1,clock1,qqq2,q4 : std_ulogic;
signal e1,f1,g1,h1,j1,k1: std_ulogic;
constant T : time := 100 ns;
-- component difinition

component madar
port(
	a,b,c,d : in std_ulogic_vector (15 downto 0);
	e,f,g,h,j,k,clock,reset : in std_ulogic;

	x : out std_ulogic_vector (15 downto 0);
	y,z : out std_ulogic
	);

end component;

-------------------------------------- begin
begin

instanz : madar 
port map (
	a => a1,
	b => b1,
	c => c1,
	d => d1,

	e => e1,
	f => f1,
	g => g1,
	h => h1,
	j => j1,
	k => k1,

	clock => clock1,
	reset => reset1,

	x => qqq1,	
	y => qqq2,
	z => q4
	);


	process
	begin
	clock1 <= '0';
	wait for T/4;
	clock1 <= '1';
	wait for T/4;
	end process;

	
	process
	begin 
	reset1 <= '1';
	wait for T/3;
	reset1 <= '0';
	wait for T/3;
	end process;

	circut : process
	begin 
	
	a1 <= "0111111111111111";
	b1 <= std_ulogic_vector(to_unsigned(0,16));
	c1 <= "0000000000000000";
	d1 <= "0111111111111111";
	e1 <= '0'; -- d
	f1 <= '0';
	g1 <= '0';
	h1 <= '1'; -- g
	j1 <= '0'; -- 
	k1 <= '0';
	wait for T/2;
	a1 <= "0000000000000000";
	b1 <= "0111111111111111";
	c1 <= "0000000000000000";
	d1 <= "0111111111111111";
	e1 <= '0'; -- c
	f1 <= '0';
	g1 <= '0'; --qq2 =0
	h1 <= '0'; -- f
	j1 <= '0';
	k1 <= '0';
	wait for T/2;
	end process;
	
end architecture madar1;





