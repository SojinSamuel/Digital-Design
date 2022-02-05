-------------------------------------------------------------------------------
--
-- Title       : HA
-- Design      : Reg4Bit
-- Author      : MosKnight@outlook.com
-- Company     : Knight
--
-------------------------------------------------------------------------------
--
-- File        : H:\University\Unit 5\SystemDesign\Acrive HDL\Unit5\Reg4Bit\src\HalfAdder.vhd
-- Generated   : Thu Nov 25 18:06:51 2021
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
--{entity {HA} architecture {HaArch}}

library IEEE;
use IEEE.std_logic_1164.all;

entity HA is
	port (
	a : in std_logic;
	b : in std_logic;
	sum  : out std_logic;
	carry : out std_logic
	);
end HA;



architecture HaArch of HA is
begin

	sum <= a xor b;
	carry <= a and b;

end HaArch;
