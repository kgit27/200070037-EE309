library std;
use std.standard.all;

library ieee;
use ieee.std_logic_1164.all;

entity Nand_16 is
   port(x,y: in std_logic_vector(15 downto 0);
	
	s0: out std_logic_vector(15 downto 0));
end entity;

architecture Struct of Nand_16 is

begin
s0<= (x nand y);
end Struct;
