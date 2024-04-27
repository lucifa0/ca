library ieee;
use ieee.std_logic_1164.all;
entity nandl_tb is
end nandl_tb;

architecture test of nandl_tb is
component nandl
port
(
	a, b: in bit;
	o: out bit
);
end component;
signal a, b, o: bit;
begin
nand_gate: nandl port map
(a=>a, b=>b, o=>o);
process begin
	a <= '0';
	b <= '0';
	wait for 1 ns;
	a <= '0';
	b <= '1';
	wait for 1 ns;
	a <= '1';
	b <= '0';
	wait for 1 ns;
	a <= '1';
	b <= '1';
	wait for 1 ns;
	assert false report "Reached end of test";
wait;
end process;
end test;
