-------------------------------------------------------------------------------
--
-- Title       : MUX4Bit
-- Design      : Exercise5
-- Author      : MosKnight@outlook.com
-- Company     : Knight
--
-------------------------------------------------------------------------------
--
-- File        : H:\University\Unit 5\SystemDesign\Acrive HDL\Unit5\Exercise5\src\Multiplexer4Bit.vhd
-- Generated   : Sat Dec  4 16:06:39 2021
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
--{entity {MUX4Bit} architecture {MuxArch}}

	 library IEEE;
use IEEE.std_logic_1164.all;

entity MUX4Bit is
	port(
	inp : in std_logic_vector(3 downto 0);
	sel : in STD_logic_vector(1 downto 0);
	outp : out std_logic
	);
end MUX4Bit;



architecture MuxArch of MUX4Bit is
begin

	outp <= inp(0) when sel = "00" else
	inp(1) when sel = "01" else
	inp(2) when sel = "10" else
	inp(3) when sel = "11" ;

end MuxArch;
