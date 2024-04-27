library ieee;
use ieee.std_logic_1164.all;

entity pipeline is
end pipeline;

architecture test of pipeline_tb is
component pipeline
port(
	A, B: in std_logic_vector(3 downto 0);
	S: out std_logic_vector(3 downto 0);
	cin: in std_logic;
	cout: out std_logic
);

architecture behave of pipeline is
begin
	process(A, B, C)
		for i in 0 to 3 loop
			O(i) <= (A(i) and B(i)) or C(i);
		end loop;
	end process;
end behave;