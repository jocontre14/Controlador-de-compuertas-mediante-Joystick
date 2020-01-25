library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;


entity registro1bit is
	port(clock,reset, EN:	in std_logic;
			ET: in std_logic;
			Q: buffer std_logic);
end registro1bit;

architecture comp of registro1bit is
begin

	process(reset,clock)
	begin
		if reset='0' then Q<= '0';
		elsif (clock'event and clock='1') then
			if En='1' then
					Q<=ET;
			else Q<= Q; end if;
		end if;
	end process;
end comp;