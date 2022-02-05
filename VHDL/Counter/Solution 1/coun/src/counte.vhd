-------------------------------------------------------------------------------
--
-- Title       : CNT
-- Design      : coun
-- Author      : MosKnight@outlook.com
-- Company     : Knight
--
-------------------------------------------------------------------------------
--
-- File        : H:\University\Unit 5\SystemDesign\Acrive HDL\Unit5\coun\src\counte.vhd
-- Generated   : Sat Nov 13 16:15:30 2021
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
--{entity {CNT} architecture {arch}}

	library ieee;
	use ieee.std_logic_1164.all;


entity CNT is
	port(
	x,clk : in std_logic;
	inp : inout std_logic_vector(1 downto 0);
	outp : inout std_logic_vector(1 downto 0)
	);
end CNT;

--}} End of automatically maintained section

architecture arch of CNT is
begin

	process (clk)
	begin
		if (x = '1' and clk = '1') then
			if inp = "01" then
				outp <= "10";
				
			elsif inp = "10" then
				outp <= "11";
				
			elsif inp = "11" then
				outp <= "00";
				
			elsif inp = "00" then
				outp <= "01";
				
			end if;
		end if;
		
		inp <= outp;
	end process;
				

end arch;
