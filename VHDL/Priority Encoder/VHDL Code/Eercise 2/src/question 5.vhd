-------------------------------------------------------------------------------
--
-- Title       : q5
-- Design      : Eercise 2
-- Author      : MosKnight@outlook.com
-- Company     : Knight
--
-------------------------------------------------------------------------------
--
-- File        : H:\University\Unit 5\SystemDesign\Acrive HDL\Unit5\Eercise 2\src\question 5.vhd
-- Generated   : Thu Nov  4 14:30:31 2021
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
--{entity {q5} architecture {CIRCUIT}}

library IEEE;
use IEEE.std_logic_1164.all;

entity q5 is
	 port(
		 A : in STD_LOGIC;
		 B : in STD_LOGIC;
		 C : in STD_LOGIC;
		 D : in STD_LOGIC;
		 F : out STD_LOGIC;
		 S0 : in STD_LOGIC;
		 S1 : in STD_LOGIC;
		 E1 : in STD_LOGIC;
		 E2 : in STD_LOGIC
	     );
end q5;

--}} End of automatically maintained section

architecture CIRCUIT of q5 is
begin

	F <= A WHEN ((S0 = '0') and (e1 = '0') and (e2 = '0')) ELSE
    B WHEN ((s0 = '1') and (e1 = '0') AND (e2 = '0')) ELSE
	C WHEN ((s1 = '0') and ((e1 = '1') OR (e2 = '1'))) ELSE
	D WHEN ((s1 = '1') and ((e1 = '1') OR (e2 = '1')));
	

end CIRCUIT;
