Library ieee;

use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;
 
entity comparador4bit is
  port (inA,inB   : in std_logic_vector(3 downto 0);
      mayor, igual, menor  : out std_logic
   );
end comparador4bit ;
 
architecture bhv of comparador4bit is
begin
mayor <= '1' when (inA > inB)
else '0';
igual <= '1' when (inA = inB)
else '0';
menor <= '1' when (inA < inB)
else '0';
end bhv;
