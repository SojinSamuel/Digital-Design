-------------------------------------------------------------------------------
--
-- Title       : DFFLO
-- Design      : dFlipFlop
-- Author      : Ali
-- Company     : knight
--
-------------------------------------------------------------------------------
--
-- File        : C:\My_Designs\test\dFlipFlop\src\DFlipFlopLogical.vhd
-- Generated   : Wed Nov 17 12:22:49 2021
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
--{entity {DFFLO} architecture {Loarch}}

library ieee;
use ieee.std_logic_1164.all;

entity DFFLO is
	port(
	d : inout std_logic;
	clk : in std_logic;
	q : inout std_logic;
	notq : inout std_logic
	
	);
end DFFLO;

--}} End of automatically maintained section

architecture Loarch of DFFLO is
signal s , r  : std_logic;
begin
		if rising_edge(clk) then
	d <= notq;
	r <= d nand not clk;
	s <= (not d) nand clk;
	q <= s nand notq;
	notq <= r nand q;
				 end if;
	
	 

end Loarch;
