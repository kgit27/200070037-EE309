library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity control_path is
port(
	  reset, clock: in std_logic;
	  op_code: in std_logic_vector(3 downto 0);
	  T: out std_logic_vector(29 downto 0);
	  C, Z: in std_logic);
end entity;

architecture fsm of control_path is 
type states is (s0, Sa, Sb, Sc, Sd, Se, Sf, Sg, Sh, Si, Sj, Sk, Sl, Sm, Sn, So, Sp, Sq, sr, ss, st, su, sv, sw, sx, sy, sz);
signal Q, nQ: fsm_state := Sa;
begin

clocked:
	process(clk, nQ)
	begin
		if (clk'event and clk = '1') then
			Q <= nQ;
		end if;
	end process;
	outputs:
	process(op_code, Q)
	begin
	T <= (others => '0');
	case Q is
	when s0 =>
	T <= (others => '0');
	when sa =>
	T(24 downto 23) => "00"; --mem-A input select
	T(22 downto 21) => "01"; -- PC input select
	T(12 downto 10) => "011";
	T(15 downto 13) => "011";
	T(6) => '1';
	T(0) => '1';
	T(2) => '1';
	
	when sb =>
	T(8) => '0'; --num input select
	T(29 downto 28) => "01"; --T1 input select
	T(18 downto 17) => "00"; 
	T(4) => '1';
	T(3) => '1';
	
	when sc =>
	T(5) => '1';
	T(19) => '0';
	T(12 downto 10) => "000"; -- alua
	T(15 downto 13) => "000"; -- alub
	
	when sd =>
	T(9) => '1';
	T(30) => '0';
	
	when sf =>
	T(9) => '0';
	T(30) => '0';
	
	when sg =>
	T(5) => '1';
	T(19) => '0';
	T(12 downto 10) => "100";
	T(15 downto 13) => "010";
	T(20) => '0';
	
	when sh =>
	T(18 downto 17) => "10";
	T(4) => '1'; --t2 enable
	T(8) => '0'; -- num input select
	T(16) =>'1'; --num enable
	
	when si =>
	T(5) => '1'; --t3 enable
	T(19) => '0'; --t3 input select
	T(12 downto 10) => "000"; -- alua
	T(15 downto 13) => "010"; -- alub
	T(28) => '1'; -- num input select
	T(16) =>'1'; --num enable
	T(20) => '1'; --se16 input select
	
	when sj =>
	T(18 downto 17) => "00";
	T(4) => '1'; --t2 enable
	T(12 downto 10) => "100"; -- alua
	T(15 downto 13) => "101"; -- alub
	
	when sk =>
	T(3) => '1'; --t1 enable
	T(29 downto 28) => "00"; --t1 input select
	T(18 downto 17) => "00";
	T(4) => '1'; --t2 enable
	T(12 downto 10) => "000"; -- alua
	T(15 downto 13) => "101"; -- alub
	
	when sl =>
	T(7) => '1'; --PC1 enable
	
	when sm =>
	T(12 downto 10) => "000"; -- alua
	T(15 downto 13) => "100"; -- alub
	
	when sn =>
	T(12 downto 10) => "000"; -- alua
	T(15 downto 13) => "010"; -- alub
	T(20) => '0'; --se16 input select
	T(5) => '1'; --t3 enable
	T(19) => '0'; --t3 input select
	
	when so =>
	T(9) => '0';
	T(30) => '1';
	
	when sp =>
	T(5) => '1'; --t3 enable
	T(19) => '0'; --t3 input select
	T(12 downto 10) => "101"; -- alua
	T(15 downto 13) => "001"; -- alub
	
	when sq =>
	T(2) => '1'; --mem enable
	T(24 downto 23) => "10";
	T(5) => '1'; --t3 enable
	T(19) => '1'; --t3 input select
	
	when sr =>
	T(2) => '1'; --mem enable
	T(24 downto 23) => "10";
	T(25) => '0'; --memd input select
	
	when ss =>
	T(2) => '1'; --mem enable
	T(24 downto 23) => "01";
	T(3) => '1'; --t1 enable
	T(29 downto 28) => "10"; --t1 input select
	
	when su =>
	T(24 downto 23) => "01"; --mem-A input select
	T(25) => '1';
	T(2) => '1';
	
	when sv =>
	T(6) =>'1';
	T(22 downto 21) => "10"; --pc
	T(5) => '1'; --t3 enable
	T(19) => '0'; --t3 input select
		T(12 downto 10) => "010"; -- alua
	T(15 downto 13) => "010"; -- alub
		T(20) => '0'; --se16 input select
		
	when sw =>
	T(6) =>'1';
	T(22 downto 21) => "01"; --pc
	T(12 downto 10) => "010"; -- alua
	T(15 downto 13) => "010"; -- alub
	T(20) => '1'; --se16 input selec
	
	
	
	
	
	
	
	
	