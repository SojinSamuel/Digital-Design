-------------------------------------------------------------------------------
--
-- Title       : TST
-- Design      : Reg4Bit
-- Author      : MosKnight@outlook.com
-- Company     : Knight
--
-------------------------------------------------------------------------------
--
-- File        : H:\University\Unit 5\SystemDesign\Acrive HDL\Unit5\Reg4Bit\src\TriState.vhd
-- Generated   : Thu Nov 25 18:07:23 2021
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
--{entity {TST} architecture {TstArch}}

library IEEE;
use IEEE.std_logic_1164.all;

entity TST is
	port(
	oe : in std_logic;
	inp : in std_logic;
	outp : inout std_logic
	);
end TST;



architecture TstArch of TST is
begin
	
outp <= inp when oe = '1' else
	  'Z' ;

end TstArch;
