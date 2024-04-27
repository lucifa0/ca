library ieee;
use ieee.std_logic_1164.all;
entity hs is
port
(
	a, b: in bit;
	d, br: out bit
);
end hs;

architecture behave of hs is
begin
d <= a xor b;
br <= not a and b;
end behave;