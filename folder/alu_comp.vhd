library std;
use std.standard.all;

library ieee;
use ieee.std_logic_1164.all;

package alu_comp is

component add is
	port(a,b: in std_logic_vector(15 downto 0);
	     carry: out std_logic;
		  output: out std_logic_vector(15 downto 0));
		 
end component;

component Nand_16 is
   port(x,y: in std_logic_vector(15 downto 0);
	
	s0: out std_logic_vector(15 downto 0));
end component;

component OR_16 is
   port(x_or,y_or: in std_logic_vector(15 downto 0);
	
	s0_or: out std_logic_vector(15 downto 0));
end component;

component subtractor is
	port(a,b: in std_logic_vector(15 downto 0);
	     c: out std_logic;
		  output: out std_logic_vector(15 downto 0));
		 
end component;

end alu_comp;
