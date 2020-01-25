library ieee; 
use ieee.std_logic_1164.all;  
use ieee.std_logic_unsigned.all;
 
-- Memoria RAM de 32 palabras de 4 bits  
entity ram is 
 port (adds: in std_logic_vector (3 downto 0);  
			we, clock: in std_logic;  
			outdata: out std_logic_vector(3 downto 0)); 
end ram;  
 
architecture comport of ram is  
begin
	process(clock)
	begin
		if (clock'event and clock='1') then
			if we='0' then
				case adds is
					when "0000" => outdata<="0100";
					when "0001" => outdata<="1100";
					when "0010" => outdata<="1101";
					when "0011" => outdata<="0101";
					when "0100" => outdata<="0110";
					when "0101" => outdata<="1000";
					when "0110" => outdata<="1001";
					when "0111" => outdata<="1011";
					when "1000" => outdata<="1111";
					when others => outdata<="0000";
				end case;
			end if;
			
			--outdata<= "0010" when (we='0' and adds="0000") else unaffected;
						 --"1010" when (we='0' and adds="0001") ;else						 
			end if;
	end process;
end comport;