library std;
use std.standard.all;

library ieee;
use ieee.std_logic_1164.all;

library work;
use work.alu_comp.all;


entity alu is
	port( alu_a, alu_b: in std_logic_vector(15 downto 0);
	      op: in std_logic_vector(1 downto 0);
			alu_out: out std_logic_vector(15 downto 0);
			Cout: out std_logic);
			
end entity;

architecture behavioural of alu is



--add: 00
--sub: 01
--nand: 10
--or: 11
signal carry_add, carry_sub:std_logic;
Signal output_add,output_sub,output_nand, output_or : std_logic_vector(15 downto 0);

begin 

add1 : add port map( A => alu_A,B => alu_b,carry => carry_add, output => output_add);
sub1 : subtractor port map( A => alu_a,B => alu_b,c => carry_sub, output => output_sub);
nand1: Nand_16 port map( x => alu_a,y => alu_b, s0 => output_nand);
or1: OR_16 port map(x_or => alu_a, y_or => alu_b, s0_or => output_or); 

process(alu_a,alu_b,op,output_add,output_sub,output_nand,output_or,carry_add, carry_sub)
begin

case op is
	when "00" =>
		alu_out <= output_add;-----addition operation
		cout <= carry_add;------carry flag modification
	when "01" =>
		alu_out <= output_sub;-----addition operation
		cout <= carry_sub;
	when "10" =>
		alu_out <= output_nand;-----compare_equality operation
	when "11" =>
		alu_out <= output_or;-------bypass operation
	when others =>
		alu_out <= "XXXXXXXXXXXXXXXX";  
end case;

end process;


end behavioural;
