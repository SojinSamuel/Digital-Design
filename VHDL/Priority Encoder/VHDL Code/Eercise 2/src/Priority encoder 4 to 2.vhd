-------------------------------------------------------------------------------
--
-- Title       : PrrxEnc
-- Design      : Eercise 2
-- Author      : MosKnight@outlook.com
-- Company     : Knight
--
-------------------------------------------------------------------------------
--
-- File        : H:\University\Unit 5\SystemDesign\Acrive HDL\Unit5\Eercise 2\src\Priority encoder 4 to 2.vhd
-- Generated   : Thu Nov  4 09:39:16 2021
-- From        : interface description file
-- By          : Itf2Vhdl ver. 1.22
--
-------------------------------------------------------------------------------
--
-- Description : 
--
-------------------------------------------------------------------------------

--{{ Section below this comment is automatically maintained
--   and may be overwritten
--{entity {PrrxEnc} architecture {PRXEN}}

library IEEE;
use IEEE.std_logic_1164.all;

entity PrrxEnc is
	 port(
		 D : in STD_LOGIC_VECTOR(0 to 3);
		 Q : out STD_LOGIC_VECTOR(0 to 1);
		 v: out std_logic
	     );
end PrrxEnc;

--}} End of automatically maintained section

architecture PRXEN of PrrxEnc is
begin

Q <= "00" WHEN D(0) = "'1' ELSE
"01" WHEN D(1) = '1' ELSE
"10" WHEN D(2) = "'1' ELSE
"11" WHEN D(3) ="'1' ELSE
	"00";
	v <= d(0) or d(1) or d(2) or d(3);

end PRXEN;
