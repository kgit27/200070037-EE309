library std;
use std.standard.all;

library ieee;
use ieee.std_logic_1164.all;

entity Mux_4 is
	port(A,B,C,D: in std_logic_vector(15 downto 0);
		  SEL: in std_logic_vector(1 downto 0);
		  Y: out std_logic_vector(15 downto 0));
end entity;

architecture beh of Mux_4 is

signal output: std_logic_vector(15 downto 0);

begin

	Mux: process(A,B,C,D,SEL)
	begin
		case SEL is
			when "00"=>
				output <= A;
			when "01"=>
				output <= B;
			when "10"=>
				output <= C;
			when "11"=>
				output <= D;
			when others =>
				output <= "0000000000000000";
		end case;
	
	end process;
	
	Y <= output;
end beh;