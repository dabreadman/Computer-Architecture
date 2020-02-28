----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 02/26/2020 01:26:45 PM
-- Design Name: 
-- Module Name: fullAdder_tb - Behavioral
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

entity fullAdder_tb is
end fullAdder_tb;

architecture Behavioral of fullAdder_tb is

    Component fullAdder
        Port (x,y,cin: in std_logic;
           cout,sum: out std_logic );
    end component;

signal x,y,cin,cout,sum: std_logic;
begin
fa: fullAdder port map (x,y,cin,cout,sum);

proc: process
    begin
     x<= '0';
     y<= '0';
     cin<= '0';
    
     wait for 10 ns;
     x <='1';
    
     wait for 10 ns;
     y<='1';
     
     wait for 10ns;
     cin<='1';
     
     wait for 10ns;
     x<= '0';
     y<= '0';
     
     wait for 10ns;
     y<='1';
     
     wait;
     end process;
end Behavioral;
