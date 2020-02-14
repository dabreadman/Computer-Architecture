----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 02/11/2020 05:33:06 PM
-- Design Name: 
-- Module Name: dec3_8 - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity dec3_8 is
--  Port ( );
Port (des: in std_logic_vector (2 downto 0);
     z: out std_logic_vector (7 downto 0));
end dec3_8;

architecture Behavioral of dec3_8 is

begin
z <=
"00000001" after 10ns when des ="000" else
"00000010" after 10ns when des ="001" else
"00000100" after 10ns when des ="010" else
"00001000" after 10ns when des ="011" else
"00010000" after 10ns when des ="100" else
"00100000" after 10ns when des ="101" else
"01000000" after 10ns when des ="110" else
"10000000" after 10ns when des ="111" ;
end Behavioral;
