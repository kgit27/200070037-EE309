library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity registers is
	port(
    d: in std_logic_vector(15 downto 0);
    reset,clock: in std_logic;
	 en: in std_logic;
    q: out std_logic_vector(15 downto 0));
end registers;


architecture reg_arch of registers is
begin
    process(clock, reset)
    begin
        if reset = '1' then
            q <= "0000000000000000";
        elsif (clock'event and (clock = '1')) then
            q <= d;
        end if;
		  
    end process;

end reg_arch;