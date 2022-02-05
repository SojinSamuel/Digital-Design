-------------------------------------------------------------------------------
--
-- Title       : REG
-- Design      : Reg4Bit
-- Author      : MosKnight@outlook.com
-- Company     : Knight
--
-------------------------------------------------------------------------------
--
-- File        : H:\University\Unit 5\SystemDesign\Acrive HDL\Unit5\Reg4Bit\src\Reg4B.vhd
-- Generated   : Thu Nov 25 18:06:14 2021
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
--{entity {REG} architecture {RegArch}}

library IEEE;
use IEEE.std_logic_1164.all;

entity REG is
	port(
	D : in std_logic_vector(3 downto 0);
	O : inout std_logic_vector(3 downto 0);
	ld : in std_logic;
	cin : in std_logic;
	oe : in std_logic;
	reset : in std_logic;
	clk : in std_logic
	
	);
end REG;



architecture RegArch of REG is


component MUX
	port(	
	in0 : in std_logic;
	in1 : in std_logic;
	outp : out std_logic;
	sel : in std_logic
	);
end component;


component HA
	port(
	a : in std_logic;
	b : in std_logic;
	sum  : out std_logic;
	carry : out std_logic
	);
end component;


component DFF
	port(
	D: in std_logic;
	Q : inout std_logic;
	clock : in std_logic;
	res : in std_logic
	);
end component;


component TST
	port(
	oe : in std_logic;
	inp : in std_logic;
	outp : inout std_logic
	);
end component;

signal si , sig , sign , car : std_logic_vector(3 downto 0);


begin
	
	MUX1: MUX port map(sign(0) , d(0) , si(0) , ld); 
	HA1 : HA port map(cin , si(0) , sig(0) , car(0) );
	DFF1 : DFF port map (sig(0), sign(0) , clk , reset );
	TST1 : TST port map (oe , sign(0) , o(0));
	
	
	MUX2: MUX port map(sign(1) , d(1) , si(1) , ld); 
	HA2 : HA port map(car(0) , si(1) , sig(1) , car(1) );
	DFF2 : DFF port map (sig(1), sign(1) , clk , reset );
	TST2 : TST port map (oe , sign(1) , o(1));
	
	MUX3: MUX port map(sign(2) , d(2) , si(2) , ld); 
	HA3 : HA port map(car(1) , si(2) , sig(2) , car(2) );
	DFF3 : DFF port map (sig(2), sign(2) , clk , reset );
	TST3 : TST port map (oe , sign(2) , o(2));
	
	MUX4: MUX port map(sign(3) , d(3) , si(3) , ld); 
	HA4 : HA port map(car(2) , si(3) , sig(3) , car(3) );
	DFF4 : DFF port map (sig(3), sign(3) , clk , reset );
	TST4 : TST port map (oe , sign(3) , o(3));
	

end RegArch;
