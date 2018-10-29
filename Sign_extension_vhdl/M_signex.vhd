----------------------------------------------------------------------------------
-- Company: UBB
-- Engineer: Mauricio Montanares
-- 
-- Create Date:    22:11:39 10/28/2018 
-- Design Name: 
-- Module Name:    M_signex - Behavioral 


----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;



entity sign_extension is
	port(u: in STD_LOGIC_VECTOR (15 downto 0);		-- "u" is a input, and it's have 16 bits 
	y: out STD_LOGIC_VECTOR (31 downto 0));			-- "y" is a output, and it's have 32 bits
end sign_extension;
	

architecture Behavioral of sign_extension is
begin

-- In the line after of this comments (line 33) sign extension happen. 
-- when more significant bit of input "u" (bit number 16) 
-- is equal to 0  the program will assign an output a concadenation 
-- (for that we use the sign "&") between X"0000" (16 bit number in hex) and input "u". 
-- in the other case (it's a binary number, the only other option it's zero) 
-- when more significant bit of input "u" (bit number 16) 
-- is equal to 1 the program will assign an output a concadenation 
-- (for that we use the sign "&") between X"ffff" (16 bit number in hex) and input "u". 
	y	<=	x"0000" & u when u(15) = '0' else x"ffff" & u;	

end Behavioral;

