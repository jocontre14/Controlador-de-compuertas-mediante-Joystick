library ieee;
use ieee.std_logic_1164.all;

entity mux4a1_4b is
	port(w,x,y,z		: in std_logic_vector(3 downto 0);
			s1,s2		:	in std_logic;
			f		: 	out std_logic_vector(3 downto 0));
end mux4a1_4b;

architecture behav of mux4a1_4b is
begin
		f<= w when (s1='0' and s2='0') else
			x when (s1='0' and s2='1') else
			y when (s1='1' and s2='0') else
			z when (s1='1' and s2='1') else
			unaffected;
end behav;
