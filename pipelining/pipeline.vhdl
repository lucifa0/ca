library ieee;
use ieee.std_logic_1164.all;

entity pipeline is
port
(
	A, B, C: in std_logic
	O: out std_logic_vector(2 downto 0);
);
end pipeline;

architecture behave of pipeline is
begin
	process(A, B, C)
		for i in 0 to 3 loop
			O(i) <= (A(i) and B(i)) or C(i);
		end loop;
	end process;
end behave;