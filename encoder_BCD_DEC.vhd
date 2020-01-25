library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity encoder_BCD_DEC is
	Port ( Ent: in STD_LOGIC_VECTOR(3 downto 0);
		Salida : OUT STD_LOGIC_VECTOR(6 downto 0)
		);
end encoder_BCD_DEC;

Architecture solu of encoder_BCD_DEC is
Begin
	With Ent Select
		Salida <= 	 "1111011" when "0000",
						 "0110000" when "0001",
						 "1101101" when "0010",
						 "1111001" when "0011",
						 "0110011" when "0100",
						 "1011011" when "0101",
						 "1011111" when "0110",
						 "1110000" when "0111",
						 "1111111" when "1000",
						 "1110011" when "1001",
						 "0000000" when others;
end solu;

