library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;


entity registro is
	port(clock,reset, EN:	in std_logic;
			ET: in std_logic_vector (3 downto 0);
			Q: buffer std_logic_vector (3 downto 0));
end registro;

architecture comp of registro is
begin

	process(reset,clock)
	begin
		if reset='0' then Q<= "0000";
		elsif (clock'event and clock='1') then
			if En='1' then
					Q<=ET;
			else Q<= Q; end if;
		end if;
	end process;
end comp;

