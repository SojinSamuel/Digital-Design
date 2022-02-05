-------------------------------------------------------------------------------
--
-- Title       : Q5
-- Design      : Eercise 2
-- Author      : MosKnight@outlook.com
-- Company     : Knight
--
-------------------------------------------------------------------------------
--
-- File        : H:\University\Unit 5\SystemDesign\Acrive HDL\Unit5\Eercise 2\src\Q5E2.vhd
-- Generated   : Thu Nov  4 16:40:41 2021
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
--{entity {Q5} architecture {Q5C}}

library IEEE;
use IEEE.std_logic_1164.all;

entity Q5 is
	 port(
		 A : in STD_LOGIC;
		 B : in STD_LOGIC;
		 C : in STD_LOGIC;
		 D : in STD_LOGIC;
		 S0 : in STD_LOGIC;
		 S1 : in STD_LOGIC;
		 E1 : in STD_LOGIC;
		 E2 : in STD_LOGIC;
		 F : out STD_LOGIC
	     );
end Q5;

--}} End of automatically maintained section

architecture Q5C of Q5 is
SIGNAL si1,si2,si3:std_logic;
begin

si1 <= A when s0 = '0' else
	B when s1 = '1';
si2 <= C when s1 = '0' else
	D when s1 = '1';
si3 <= e1 or e2;
F <= si1 when si3 = '0' else
	si2 when si3 = '1';

end Q5C;
