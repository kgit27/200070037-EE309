library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity R7 is 
	port(
			 alu_out : in std_logic_vector(15 DOWNTO 0);
			 
			 reset : in std_logic; -- async. clear.
			 clock : in std_logic; -- clock.
			 wr  : in std_logic; -- write
			 q : out std_logic_vector(15 downto 0) ); -- output
end R7;

architecture behave of R7 is

begin
		R7_proc : process(reset, clock, wr)

	begin
		if reset ='1' then
			q  <= (others => '0');
	
		elsif rising_edge(clock) then
			if wr = '1' then
				
					q <= alu_out;
				end if;
			end if;
		
	end process R7_proc;
end behave;	
	