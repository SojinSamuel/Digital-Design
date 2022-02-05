-------------------------------------------------------------------------------
--
-- Title       : MUX
-- Design      : Reg4Bit
-- Author      : MosKnight@outlook.com
-- Company     : Knight
--
-------------------------------------------------------------------------------
--
-- File        : H:\University\Unit 5\SystemDesign\Acrive HDL\Unit5\Reg4Bit\src\Multiplexer.vhd
-- Generated   : Thu Nov 25 18:06:30 2021
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
--{entity {MUX} architecture {MuxArch}}

library IEEE;
use IEEE.std_logic_1164.all;

entity MUX is
	
	port(
	in0 : in std_logic;
	in1 : in std_logic;
	outp : out std_logic;
	sel : in std_logic
	);
	
end MUX;



architecture MuxArch of MUX is
begin
	
outp <= in0 when sel = '0' else
		in1 when sel = '1' else
		'Z';
	 

end MuxArch;
