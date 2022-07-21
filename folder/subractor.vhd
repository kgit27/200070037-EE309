library std;
use std.standard.all;

library ieee;
use ieee.std_logic_1164.all;

entity subtractor is
	port(a,b: in std_logic_vector(15 downto 0);
	     c: out std_logic;
		  output: out std_logic_vector(15 downto 0));
		 
end entity;

architecture behavioural of subtractor is

component subtractor_2 is
port( A, B, C : in std_logic;
DIFF, Borrow : out std_logic);
end component;

signal c1: std_logic_vector(15 downto 0);

begin

F0:  subtractor_2 port map (a=>a(0),b=>b(0),c=>'0',diff=>output(0),borrow=>c1(0));

ist_sub: for i in 1 to 15 generate
F1:  subtractor_2 port map (a=>a(i),b=>b(i),c=>c1(i-1),diff=>output(i),borrow=>c1(i));
end generate ist_sub;
c<=c1(15);

end behavioural;
