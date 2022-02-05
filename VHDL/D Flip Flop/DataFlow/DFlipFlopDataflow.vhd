-------------------------------------------------------------------------------
--
-- Title       : DFFDF2
-- Design      : dFlipFlop
-- Author      : Ali
-- Company     : knight
--
-------------------------------------------------------------------------------
--
-- File        : C:\My_Designs\test\dFlipFlop\src\DFlipFlopDataflow2.vhd
-- Generated   : Tue Nov 16 23:56:16 2021
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
--{entity {DFFDF2} architecture {arch2}}

library ieee;
use ieee.std_logic_1164.all;

entity DFFDF2 is 
	port(
		 d : in STD_LOGIC;
		 clk : in STD_LOGIC;
		 q : inout STD_LOGIC;
		 notQ : out STD_LOGIC
	     );
end DFFDF2;

--}} End of automatically maintained section

architecture arch2 of DFFDF2 is
begin

	 process(clk) 
	begin
		if(rising_edge(clk))then
			q <= d;
			notQ <= not d;
		end if;
	end process;

end arch2;
