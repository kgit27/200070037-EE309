library ieee;
use ieee.numeric_std.all;
use ieee.std_logic_1164.all;
use ieee.math_real.all;

entity bit_16_to_3 is
	port (input: in std_logic_vector(15 downto 0);
			output: out std_logic_vector(2 downto 0));
end entity;

architecture beh of bit_16_to_3 is
signal output1: std_logic_vector(2 downto 0);

begin
process(input)
	begin
	case input is
		when "0000000000000000" =>
			output1 <= "000";
			
		when "0000000000000001" =>
			output1 <= "001";
		when "0000000000000010" =>
			output1 <= "010";
			
		when "0000000000000100" =>
			output1 <= "011";
			
		when "0000000000001000" =>
			output1 <= "100";
			
		when "0000000000010000" =>
			output1 <= "101";
			
		when "0000000000100000" =>
			output1 <= "110";
		
		when "0000000001000000" =>
			output1 <= "111";
		when others =>
		output1 <= "000";
			
	end case;
		output <= output1;
		end process;
end beh;