-------------------------------------------------------------------------------
--
-- Title       : reg
-- Design      : reg
-- Author      : Ali
-- Company     : knight
--
-------------------------------------------------------------------------------
--
-- File        : C:\My_Designs\test\reg\src\reg.vhd
-- Generated   : Thu Nov 18 01:46:11 2021
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
--{entity {reg} architecture {arch}}

	library ieee;
use ieee.std_logic_1164.all;


entity reg is
	PORT ( 
	D : IN STD_LOGIC_VECTOR(7 DOWNTO 0) ;
	Reset, Clock , oe , load : IN STD_LOGIC ;
	Q : OUT STD_LOGIC_VECTOR(7 DOWNTO 0) ) ;
end reg;

--}} End of automatically maintained section

architecture arch of reg is
begin
	 
	 PROCESS ( Reset, Clock ,load )
BEGIN
	IF Reset = '1' THEN
	Q <= "00000000" ;
	ELSIF (rising_edge(Clock) and load = '1') THEN
	Q <= D ;
	END IF ;
END PROCESS ;

process (oe)
begin
	if oe = '0' then
		q <= "ZZZZZZZZ";
	end if;
end process;


		
end arch;
