-------------------------------------------------------------------------------
--
-- Title       : DFFLO
-- Design      : dFlipFlop
-- Author      : Ali
-- Company     : knight
--
-------------------------------------------------------------------------------
--
-- File        : C:\My_Designs\test\dFlipFlop\src\DFlipFlopUpLogic.vhd
-- Generated   : Thu Nov 18 00:33:31 2021
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
--{entity {DFFLO} architecture {arch}}
 
	library ieee;
	use ieee.std_logic_1164.all;


entity DFFLO is
	
	port(
	d , clk : in std_logic ;
	q , nq : inout std_logic
	
	);
	
end DFFLO;



architecture arch of DFFLO is
signal r , s , d1 ,d2 : std_logic;

begin
	
	d1 <= r nand d;
	r <= (s nand clk) nand d1;
	d2 <= d1 nand s;
	s <= clk nand d2;
	nq <= q nand r;
	q <= nq nand s;
	 

end arch;
