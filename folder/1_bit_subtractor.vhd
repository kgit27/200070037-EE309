library std;
use std.standard.all;

library ieee;
use ieee.std_logic_1164.all;

entity subtractor_2 is
port( A, B, C : in std_logic;
DIFF, Borrow : out std_logic);
end entity;	
	
	
architecture dataflow of subtractor_2 is
begin

DIFF <= (A xor B) xor C;
Borrow <= ((not A) and (B or C)) or (B and C);

end dataflow;