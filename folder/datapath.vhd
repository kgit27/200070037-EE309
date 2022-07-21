library ieee;
use ieee.numeric_std.all;
use ieee.std_logic_1164.all;
use ieee.math_real.all;

library work;
use work.components.all;


entity datapath is
	port(op_code: out std_logic_vector(3 downto 0);
	     condition: out std_logic_vector(1 downto 0);
		  clock, reset, RX, start: in std_logic;
		  finish: out std_logic;
	T: in std_logic_vector(30 downto 0);
	S: out std_logic_vector(5 downto 0);
	P0: out std_logic_vector(15 downto 0));
end entity;

architecture datapath1 of datapath is

signal I, memdin: std_logic_vector(15 downto 0);
signal a1muxout, a3muxout, bit16to3_out: std_logic_vector(2 downto 0);
signal rfd1out, rfd2out, rfd3out: std_logic_vector(15 downto 0);
signal din: std_logic_vector(15 downto 0);
signal aluout, t1in, t2in, t3in, t1out, t2out, t3out, PCin, PCout, PC1out, numout, numin, s1out, s7out, alua, alub, signout, memin : std_logic_vector(15 downto 0);
signal Z : std_logic;

-- T(0) IR enable
-- T(1) RF WR enable
-- T(2) Mem write enable
-- T(3) T1 enable
-- T(4) T2 enable
-- T(5) T3 enable
-- T(6) PC enable
-- T(7) PC1 enable
-- T(8) num input select
-- T(9), T(30) A3 input Select
-- T(10), T(11), T(12) ALU-A input select
-- T(13), T(14), T(15) ALU-B input select
-- T(16)  NUM enable
-- T(17), T(18)  T2 input select
-- T(19) T3 input select
-- T(20) SE16 input select
-- T(21), T(22) PC input select
-- T(23), T(24) mem-A input select
-- T(25) mem-D input select
-- T(26), T(27) alu op select 
-- T(28) , T(29) T1 input select
-- 


begin
op_code <= I(15 downto 12);
condition <= I(1 downto 0);
-- instruction register

instruction_register: registers
		port map(clock => clock, reset => reset, d =>din, en=> T(0), q => I);
rf1: rf 
		port map( rf_a1=> I(11 downto 9), rf_a2=>I(8 downto 6), rf_a3=>a3muxout, reset=>reset, clock=>clock, wr_rf=>T(1) ,rf_d3=> rfd3out, rf_d1=>rfd1out, rf_d2=>rfd2out);     

mux3: mux_4
	   port map(A => I(11 downto 9), B => I(8 downto 6), C => I(5 downto 3), D => bit16to3_out, sel(0) => T(30), sel(1) => T(9), Y => a3muxout);
		
mux4: mux_4
	   port map(A => aluout, B => rfd1out, C => din, D => "0000000000000000", sel => T(29 downto 28), Y => t1in);
mux6: mux_4
	   port map(A => aluout, B => rfd2out, C => "0000000000000001", D => "0000000000000000", sel => T(18 downto 17), Y => t2in);
mux5: mux2_16bit
	   port map(A => din, B=> aluout, sel  => T(19), Y =>t3in);
		--
		
t1: registers
	   port map(clock => clock, reset => reset, d =>t1in, en=> T(3), q => t1out);
t2: registers
	   port map(clock => clock, reset => reset, d =>t2in, en=> T(4), q => t2out);
t3: registers
	   port map(clock => clock, reset => reset, d =>t3in, en=> T(5), q => t3out);
		
mux8_1: Mux_8
	  port map(A => PCout, B => t1out, C => PC1out, D => PCout, E => t2out, F => s7out,G => "0000000000000000", H => "0000000000000000", Sel => (T(12 downto 10)), Y => alua);
mux8_2:Mux_8
     port map(A => T2out , B => "0000000000000000", C=> signout , D => "0000000000000001", E => s7out , F => "0000000000000000", G => "0000000000000000", H => "0000000000000000", sel => T(15 downto 13), Y => alub);

alu1: alu
	  port map(alu_a => alua, alu_b => alub, op => T(27 downto 26), alu_out => aluout, Cout => z);
	  
mux7: mux2_16bit
	   port map(A => "0000000000000001", B=> s1out, sel  => T(8), Y =>numin);
	  
num: registers
	port map(clock => clock, reset => reset, d =>numin, en=> T(16), q => numout);
	
se: mux_2_sign     ---not corrected
	  port map(A => I(5 downto 0), B => I(8 downto 0), sel => T(18), Y => signout);
	
shifter1: shift1
	port map(input => t2out, output => s1out);
shifter7: shift7
	port map(ip => I(8 downto 0), op => s7out);
	
mux4_2: mux_4
	port map(A => t2out, B => aluout, C => t3out, D => "0000000000000000", sel => T(22 downto 21), Y => PCin);
	

PC: R7  --- not correct
	port map(alu_out => pcin, reset => reset, clock => clock, wr => T(6), q => PCout);
	
PC1: R7 -- not correct
	port map(alu_out => pcout, reset => reset, clock => clock, wr => T(7), q => PC1out);
	-----
mux4_1: mux_4
  port map(A => PCout, B => t1out, C => t3out, D => "0000000000000000", sel => T(20 downto 19), Y => memin);

mux8: mux2_16bit
	   port map(A => t1out, B=> t3out, sel  => T(25), Y =>memdin);
memory1 : memory
	port map(memd => memdin, mema => memin, memout => din, reset => reset, clock => clock, rd => T(23), wr => T(2));
bit1: bit_16_to_3 
		port map (input => t2out, output => bit16to3_out);

end datapath1;
		
  