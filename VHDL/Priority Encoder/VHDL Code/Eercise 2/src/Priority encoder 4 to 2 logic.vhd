-------------------------------------------------------------------------------
--
-- Title       : PrxEnc
-- Design      : Eercise 2
-- Author      : MosKnight@outlook.com
-- Company     : Knight
--
-------------------------------------------------------------------------------
--
-- File        : H:\University\Unit 5\SystemDesign\Acrive HDL\Unit5\Eercise 2\src\Priority encoder 4 to 2 logic.vhd
-- Generated   : Thu Nov  4 10:40:43 2021
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
--{entity {PrxEnc} architecture {PrEn}}

library IEEE;
use IEEE.std_logic_1164.all;

entity PrxEnc is
	 port(
		 I : in STD_LOGIC_VECTOR(0 to 3);
		 o : inout STD_LOGIC_VECTOR(0 to 1);
		 v : out STD_logic
	     );
end PrxEnc;

--}} End of automatically maintained section

architecture PrEn of PrxEnc is
	signal sig1:std_logic;
begin

	sig1 <= (NOT I(2)) And I(1);
	o(0) <= I(3) OR sig1;
	o(1) <= I(3) OR I(2);
	v <= o(1) or I(1) OR I(0);

end PrEn;
