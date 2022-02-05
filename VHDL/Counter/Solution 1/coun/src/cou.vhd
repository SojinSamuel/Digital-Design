-------------------------------------------------------------------------------
--
-- Title       : counter
-- Design      : coun
-- Author      : MosKnight@outlook.com
-- Company     : Knight
--
-------------------------------------------------------------------------------
--
-- File        : H:\University\Unit 5\SystemDesign\Acrive HDL\Unit5\coun\src\cou.vhd
-- Generated   : Sat Nov 13 16:27:18 2021
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
--{entity {counter} architecture {arch}}


	library ieee;
	use ieee.std_logic_1164.all;

entity counter is
port(
clk : in std_logic;
count : inout integer range 0 to 4);
end counter;



architecture arch of counter is
begin

	counter : process(clk)
	variable cnt : integer range 0 to 4;
	begin
		if (clk'event and clk = '1') then
			cnt := cnt + 1;
			if cnt = 4 then
			cnt := 0;
			end if;
		end if;
		count <= cnt ;
		end process;

end arch;
