library std;
use std.standard.all;

library ieee;
use ieee.std_logic_1164.all;

entity Mux_2 is
	port(A,B: in std_logic_vector(2 downto 0);
		  SEL: in std_logic;
		  Y: out std_logic_vector(2 downto 0));
end entity;

architecture beh of Mux_2 is

signal output: std_logic_vector(2 downto 0);

begin

	Mux: process(A,B,SEL)
	begin
		case SEL is
			when '0'=>
				output <= A;
			when '1' =>
				output <= B;
			when others =>
				output <= "000";
		end case;
	
	end process;
	
	Y <= output;
end beh;