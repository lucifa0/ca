library ieee;
use ieee.std_logic_1164.all;

entity inc is 
port (
	A: in std_logic_vector(3 downto 0);
	S: out std_logic_vector(3 downto 0);
	cin: in std_logic;
	cout: out std_logic
);
end inc;

architecture behave of inc is
begin
	process(A, cin)
		variable t: std_logic;
		begin
		t := cin;
		for i in 0 to 3 loop
			S(i) <= A(i) xor t;
			t := A(i) and t;
		end loop;
		cout <= t;
	end process;
end behave;