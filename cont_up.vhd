library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity cont_up is
	generic (m : integer:=4);
	port(clock,reset:	in std_logic;
			En,Ld:		in std_logic;
			Ent:		in std_logic_vector(m-1 downto 0);
			Q:  buffer std_logic_vector(m-1 downto 0));
end cont_up;

architecture behavi of cont_up is
begin

	process(reset,clock)
	begin
		if reset='0' then Q<= (others=>'0');
		elsif (clock'event and clock='1') then
			if En='1' then
					if Ld='1' then Q<= Ent;
					else Q<= Q+ '1'; end if;
			 end if;
		end if;
	end process;
end behavi;
