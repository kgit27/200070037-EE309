library std;
use std.standard.all;

library ieee;
use ieee.std_logic_1164.all;

entity mux2_16bit is
	port(A,B: in std_logic_vector(15 downto 0);
		  SEL: in std_logic;
		  Y: out std_logic_vector(15 downto 0));
end entity;

architecture beh of Mux2_16bit is

signal output: std_logic_vector(15 downto 0);

begin

	Mux: process(A,B,SEL)
	begin
		case SEL is
			when '0'=>
				output <= A;
			when '1'=>
				output <= B;
			when others =>
				output <= "0000000000000000";
		end case;
	
	end process;
	
	Y <= output;
end beh;