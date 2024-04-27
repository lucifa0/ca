library ieee;
use ieee.std_logic_1164.all;
entity inc_tb is
end inc_tb;

architecture test of inc_tb is
component inc
port(
	A: in std_logic_vector(3 downto 0);
	S: out std_logic_vector(3 downto 0);
	cin: in std_logic;
	cout: out std_logic
);
end component;
signal A, S: std_logic_vector(3 downto 0):=(others=>'0');
signal cin: std_logic:='1';
signal cout: std_logic;
begin
parity_incrementer: inc port map
(A=>A, S=>S, cin=>cin, cout=>cout);
process begin
	 A<="0101";   
	 wait for 20 ns; 
	 A<="1101"; 
	 wait for 20 ns; 
	 A<="1100"; 
	 wait for 20 ns;
	 A<="1000"; 
	wait for 20 ns;
	 A<="0000";  
	wait for 20 ns;
	assert false report "Reached end of test";
wait; 
end process; 
end test;