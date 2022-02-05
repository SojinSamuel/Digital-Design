-------------------------------------------------------------------------------
--
-- Title       : JKFF
-- Design      : JKFlipFlop
-- Author      : Ali
-- Company     : knight
--
-------------------------------------------------------------------------------
--
-- File        : C:\My_Designs\test\JKFlipFlop\src\JKFlipFlopUp.vhd
-- Generated   : Thu Nov 18 01:04:45 2021
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
--{entity {JKFF} architecture {arch}}

	library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity JKFF is
	port(
		 j : in STD_LOGIC;
		 k : in STD_LOGIC;
		 clk : in STD_LOGIC;
		 q : out STD_LOGIC;
		 qbar : out STD_LOGIC
	     );
end JKFF;

--}} End of automatically maintained section

architecture arch of JKFF is
begin

	 PROCESS(clk)
		variable var: std_logic;
		begin
			if(clk='1' and clk'EVENT) then
				if(J='0' and K='0')then
					var := var;
				elsif(J='1' and K='1')then
					var := not var;
				elsif(J='0' and K='1')then
					var := '0';
				else
					var:='1';
				end if;
			end if;
			Q <= var;
			qbar <= not var;
	end PROCESS;

end arch;
