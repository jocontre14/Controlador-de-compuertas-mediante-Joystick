library ieee;
use ieee.std_logic_1164.all;
--use ieee.unsigned.all;

entity mux2a1_4b is
	port(w,x		: in std_logic_vector(3 downto 0);
			s		:	in std_logic;
			f		: 	out std_logic_vector(3 downto 0));
end mux2a1_4b;

architecture behav of mux2a1_4b is
begin
	with s select
			f<= w when '0',
				 x when others;
end behav;

