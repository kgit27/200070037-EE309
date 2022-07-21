library std;
use std.standard.all;

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity rf is 
	port(
			 rf_a1, rf_a2, rf_a3   : in std_logic_vector(2 DOWNTO 0);
			 reset : in std_logic; -- async. clear.
			 clock : in std_logic; -- clock.
			 wr_rf  : in std_logic; -- write
	
			 rf_d3 : in std_logic_vector(15 downto 0);
			 rf_d1,rf_d2  : out std_logic_vector(15 DOWNTO 0)); -- output
end rf;

architecture behave of rf is

--component R7 is 
	--port(
		--	 alu_out, t2_out, PC_out, t3_out, rf_d3  : in std_logic_vector(15 DOWNTO 0);
			-- m : in std_logic_vector(2 downto 0);
			-- reset : in std_logic; -- async. clear.
			-- clock : in std_logic; -- clock.
			 --wr  : in std_logic; -- write
			-- q : out std_logic_vector(15 downto 0) );
--end component;


component Registers is 
	port(
		 d   : in std_logic_vector(15 DOWNTO 0);
		 en  : in std_logic; -- load/enable.
		 reset : in std_logic; -- async. clear.
		 clock : in std_logic; -- clock.
		 q   : out std_logic_vector(15 DOWNTO 0)); -- output
end component;

type registerFile is array(0 to 7) of std_logic_vector(15 downto 0);
signal registers1 : registerFile;
type bitarr is array(0 to 7) of std_logic;
--signal wr_7 : std_logic;
signal wrarr1 : bitarr := "00000000";
signal temp1,temp2 : std_logic_vector(15 downto 0);

begin

inst_reg : for i in 0 to 6 generate
R: Registers port map (d => rf_d3, en => wrarr1(i), reset => reset, clock => clock, q => registers1(i));
end generate inst_reg;

--wr_7 <= (wrarr1(7) or en7); 
--R_7 : R7 port map (alu_out => alu_out, t2_out => t2_out, PC_out => PC_out, t3_out => t3_out, rf_d3 => rf_d3, m => m, reset => reset, clock => clock, wr => wr_7, q => registers(7));


reg_file : process (clock, reset, wr_rf,rf_a3,rf_a1,rf_a2)
	variable wrarr_temp: bitarr:="00000000";
	begin	
		
		if wr_rf = '1' then
			wrarr_temp := (others =>'0');
			wrarr_temp(to_integer(unsigned(rf_a3))) := '1';
			temp1 <= (others => '0');
			temp2 <= (others => '0');
			
		
		else 
			wrarr_temp := (others =>'0');
			temp1 <= registers1(to_integer(unsigned(rf_a1)));
			temp2 <= registers1(to_integer(unsigned(rf_a2)));
			
		end if;
		
		wrarr1 <= wrarr_temp;
		
	end process reg_file;
		
		rf_d1 <= temp1;
		rf_d2 <= temp2;
end behave;