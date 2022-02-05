-------------------------------------------------------------------------------
--
-- Title       : Mux4to1
-- Design      : Eercise 2
-- Author      : MosKnight@outlook.com
-- Company     : Knight
--
-------------------------------------------------------------------------------
--
-- File        : H:\University\Unit 5\SystemDesign\Acrive HDL\Unit5\Eercise 2\src\Multiplexer 4 to 1 logic.vhd
-- Generated   : Thu Nov  4 13:56:46 2021
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
--{entity {Mux4to1} architecture {Mux}}

library IEEE;
use IEEE.std_logic_1164.all;

entity Mux4to1 is
	 port(
		 Y : out STD_LOGIC;
		 I : in STD_LOGIC_VECTOR(0 to 3);
		 S : in STD_LOGIC_VECTOR(0 to 1)
	     );
end Mux4to1;

--}} End of automatically maintained section

architecture Mux of Mux4to1 is
signal sig0,sig1,sig2,sig3:std_logic;
begin

	sig0 <= I(0) and (not s(0)) and (not s(1));
	sig1 <= I(1) and s(0) and (not s(1));
	sig2 <= I(2) and (not s(0)) and s(1);
	sig3 <= I(3) and s(0) and s(1);
	Y<= sig0 or sig1 or sig2 or sig3;

end Mux;