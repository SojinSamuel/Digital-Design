-------------------------------------------------------------------------------
--
-- Title       : Mux4to1
-- Design      : Eercise 2
-- Author      : MosKnight@outlook.com
-- Company     : Knight
--
-------------------------------------------------------------------------------
--
-- File        : H:\University\Unit 5\SystemDesign\Acrive HDL\Unit5\Eercise 2\src\Multiplexer 4 to 1.vhd
-- Generated   : Thu Nov  4 11:22:14 2021
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
--{entity {Mux4to1} architecture {MUX}}

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

architecture MUX of Mux4to1 is
begin

Y <= I(0) WHEN S = "00" ELSE
I(1) WHEN S = "01" ELSE
I(2) WHEN S = "10" ELSE
I(3) WHEN S = "11" ELSE
	'Z';

end MUX;