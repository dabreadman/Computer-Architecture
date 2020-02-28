----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 02/26/2020 01:20:23 PM
-- Design Name: 
-- Module Name: fullAdder - Behavioral
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

entity fullAdder is
Port (x,y,cin: in std_logic;
     cout,sum: out std_logic );
end fullAdder;

architecture Behavioral of fullAdder is

begin
sum <= x xor y xor cin after 5ns;
cout <= (x and y) or (x and cin) or (y and cin) after 5ns;
end Behavioral;
