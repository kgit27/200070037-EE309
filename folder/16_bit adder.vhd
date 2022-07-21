library std;
use std.standard.all;

library ieee;
use ieee.std_logic_1164.all;


entity add is
	port(a,b: in std_logic_vector(15 downto 0);
	     carry: out std_logic;
		  output: out std_logic_vector(15 downto 0));
		 
end entity;

architecture behavioural of add is

component FullAdder is
   port(x0,y0,cin: in std_logic;
        s0,cout: out std_logic);
end component;

signal c: std_logic_vector(15 downto 0);

begin

F0:  FullAdder port map (x0=>a(0),y0=>b(0),cin=>'0',s0=>output(0),cout=>c(0));

ist_add: for i in 1 to 15 generate
F1:  FullAdder port map (x0=>a(i),y0=>b(i),cin=>c(i-1),s0=>output(i),cout=>c(i));
end generate ist_add;
carry<=c(15);

end behavioural;
