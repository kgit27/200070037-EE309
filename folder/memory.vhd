library std;
use std.standard.all;

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity memory is
	port(memd   : in std_logic_vector(15 downto 0);
		  mema   : in std_logic_vector(15 downto 0);
		  rd  : in std_logic; 
		  wr  : in std_logic;
		  reset : in std_logic; 
		  clock : in std_logic; 
		  memout : out std_logic_vector(15 downto 0));
end entity;

architecture mem of memory is 


type memarray is array(0 to 31) of std_logic_vector(15 downto 0);
signal RAM : memarray := ("0011000000011111","0100001000000101", "0100010000000111","0000001010111000","0000001010100010",X"0001",X"FFFF",X"FFFF",others => X"F000");
signal addr : std_logic_vector(4 downto 0);

begin

addr <= mema(4 downto 0);

memproc : process(reset, wr, rd, clock, addr)

	begin
	
				
			if rd = '0' then
				memout <= RAM(to_integer(unsigned(addr)));
		
			elsif rising_edge (clock) then
				
				if wr ='0' then
					RAM(to_integer(unsigned(addr))) <= memd;
					memout <= (others => '0');
				end if;
				
			end if;	
					
	end process memproc;

end mem;


