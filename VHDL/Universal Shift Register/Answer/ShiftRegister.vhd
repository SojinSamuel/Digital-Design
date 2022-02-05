	library ieee;
	use ieee.std_logic_1164.all; 
	

entity SHfitReg is
	port(
	clk , clear ,inL , inR : in STd_logic;
	I : in std_logic_vector(3 downto 0);
	A : inout std_logic_vector(3 downto 0);
	selector:in Std_logic_vector(1 downto 0)
	);
end SHfitReg;

											   
architecture ShArch of SHfitReg is
component DFF
	  	port(
	D: in std_logic;
	Q : inout std_logic;
	clock : in std_logic;
	res : in std_logic
	);
end component;

component MUX4Bit
	  	port(
	inp : in std_logic_vector(3 downto 0);
	sel : in STD_logic_vector(1 downto 0);
	outp : out std_logic
	);
end component;

signal sig : std_logic_vector(3 downto 0);

begin
	
	MUX1: MUX4Bit port map(inp(0) => A(0), inp(1) => A(1) , inp(2) => inL , inp(3) => I(0) , sel => selector ,  outp => sig(0) );
	MUX2: MUX4Bit port map(inp(0) => A(1), inp(1) => A(2) , inp(2) => A(0) , inp(3) => I(1) , sel => selector ,  outp => sig(1) );
	MUX3: MUX4Bit port map(inp(0) => A(2), inp(1) => A(3) , inp(2) => A(1) , inp(3) => I(2) , sel => selector ,  outp => sig(2) );
	MUX4: MUX4Bit port map(inp(0) => A(3), inp(1) => inR , inp(2) => A(2) , inp(3) => I(3) , sel => selector ,  outp => sig(3) );
	
	DFF0: DFF port map(sig(0) , A(0) , clk ,  clear);
	DFF1: DFF port map(sig(1) , A(1) , clk ,  clear);
	DFF2: DFF port map(sig(2) , A(2) , clk ,  clear);
	DFF3: DFF port map(sig(3) , A(3) , clk ,  clear);

end ShArch;