-------------------------------------------------------------------------------
--
-- Title       : DFF
-- Design      : Exercise5
-- Author      : MosKnight@outlook.com
-- Company     : Knight
--
-------------------------------------------------------------------------------
--
-- File        : H:\University\Unit 5\SystemDesign\Acrive HDL\Unit5\Exercise5\src\DFlipFlop.vhd
-- Generated   : Sat Dec  4 16:01:13 2021
-- From        : interface description file
-- By          : Itf2Vhdl ver. 1.22
--
-------------------------------------------------------------------------------
--
-- Description : 
--
-------------------------------------------------------------------------------



 library IEEE;
use IEEE.std_logic_1164.all;

entity DFF is
	port(
	D: in std_logic;
	Q : inout std_logic;
	clock : in std_logic;
	res : in std_logic);
end DFF;


architecture DffArch of DFF is
	begin
process(clock,res)
	begin
		if res = '0' then
			q <= '0';
		elsif (rising_edge(clock)) then
			q <= d;
		end if ;
		end process;

end DffArch;
