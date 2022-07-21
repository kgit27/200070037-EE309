library std;
use std.standard.all;

library ieee;
use ieee.std_logic_1164.all;

package components is

component alu is
	port( alu_a, alu_b: in std_logic_vector(15 downto 0);
	      op: in std_logic_vector(1 downto 0);
			alu_out: out std_logic_vector(15 downto 0);
			Cout: out std_logic);
			
end component;

component R7 is 
	port(
			 alu_out: in std_logic_vector(15 DOWNTO 0);
			 reset : in std_logic; -- async. clear.
			 clock : in std_logic; -- clock.
			 wr  : in std_logic; -- write
			 q : out std_logic_vector(15 downto 0) ); -- output
end component;

component rf is 
	port(
			 rf_a1, rf_a2, rf_a3   : in std_logic_vector(2 DOWNTO 0);
			 reset : in std_logic; -- async. clear.
			 clock : in std_logic; -- clock.
			 wr_rf  : in std_logic; -- write
	
			 rf_d3 : in std_logic_vector(15 downto 0);
			 rf_d1,rf_d2  : out std_logic_vector(15 DOWNTO 0)); -- output
end component;

component registers is
	port(
    d: in std_logic_vector(15 downto 0);
    reset,clock: in std_logic;
	 en: in std_logic;
    q: out std_logic_vector(15 downto 0));
end component;

component memory is
	port(memd   : in std_logic_vector(15 downto 0);
		  mema   : in std_logic_vector(15 downto 0);
		  rd  : in std_logic; 
		  wr  : in std_logic;
		  reset : in std_logic; 
		  clock : in std_logic; 
		  memout : out std_logic_vector(15 downto 0));
end component;

component sign_extend is
	generic(input_width: integer := 6;
		output_width: integer := 16);
	port(
		input: in std_logic_vector(input_width-1 downto 0);
		output: out std_logic_vector(output_width-1 downto 0));
end component;

component Shift7 is
   port(ip: in std_logic_vector(8 downto 0);
			op: out std_logic_vector(15 downto 0));
end component;

component shift1 is
	port(input: in std_logic_vector(15 downto 0);
	     output: out std_logic_vector(15 downto 0));
		  
end component;

component mux_2 is
	port(A,B: in std_logic_vector(2 downto 0);
		  SEL: in std_logic;
		  Y: out std_logic_vector(2 downto 0));
		 end component;
component mux2_16bit is
	port(A,B: in std_logic_vector(15 downto 0);
		  SEL: in std_logic;
		  Y: out std_logic_vector(15 downto 0));
		 end component;
component mux_8 is
	port(A,B,C,D,E,F,G,H: in std_logic_vector(15 downto 0);
		  SEL: in std_logic_vector(2 downto 0);
		  Y: out std_logic_vector(15 downto 0));
end component;

component mux_4 is
	port(A,B,C,D: in std_logic_vector(15 downto 0);
		  SEL: in std_logic_vector(1 downto 0);
		  Y: out std_logic_vector(15 downto 0));
end component;

component Mux_2_sign is
	port(A: in std_logic_vector(5 downto 0);
		  B: in std_logic_vector(8 downto 0);
		  SEL: in std_logic;
		  Y: out std_logic_vector(15 downto 0));
end component;

component bit_16_to_3 is
	port (input: in std_logic_vector(15 downto 0);
			output: out std_logic_vector(2 downto 0));
end component;

end components;