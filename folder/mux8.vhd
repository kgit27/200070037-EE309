library std;
use std.standard.all;

library ieee;
use ieee.std_logic_1164.all;

entity Mux_8 is
	port(A,B,C,D,E,F,G,H: in std_logic_vector(15 downto 0);
		  SEL: in std_logic_vector(2 downto 0);
		  Y: out std_logic_vector(15 downto 0));
end entity;

architecture beh of Mux_8 is

signal output: std_logic_vector(15 downto 0);

begin

	Mux: process(A,B,C,D,E,F,G,H,SEL)
	begin
		case SEL is
			when "000"=>
				output <= A;
			when "001"=>
				output <= B;
			when "010"=>
				output <= C;
			when "011"=>
				output <= D;
			when "100"=>
				output <= E;
			when "101"=>
				output <= F;
			when "110"=>
				output <= G;
			when "111"=>
				output <= H;
			when others =>
				output <= "0000000000000000";
		end case;
	
	end process;
	
	Y <= output;
end beh;