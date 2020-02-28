----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 02/28/2020 04:13:41 PM
-- Design Name: 
-- Module Name: not16_tb - Behavioral
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

entity not16_tb is
--  Port ( );
end not16_tb;

architecture Behavioral of not16_tb is

component not16
Port (input : in std_logic_vector (15 downto 0);
        output: out std_logic_vector (15 downto 0));
end component;

signal input,output: std_logic_vector (15 downto 0);

begin
notsixteen : not16 port map (input,output);
    proc:process
    begin
        input<=x"0000";
        
    wait for 10 ns;
    
       input<=x"ffff";
        
    wait for 10 ns;
       input<=x"f00f";
        
    wait for 10 ns;
       input<=x"0ff0";
        
    wait;
    end process;

end Behavioral;
