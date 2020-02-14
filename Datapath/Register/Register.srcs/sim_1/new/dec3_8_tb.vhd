----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 02/14/2020 03:13:34 PM
-- Design Name: 
-- Module Name: dec3_8_tb - Behavioral
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

entity dec3_8_tb is
--  Port ( );
end dec3_8_tb;

architecture Behavioral of dec3_8_tb is
    component dec3_8 
         Port (des: in std_logic_vector (2 downto 0);
             z: out std_logic_vector (7 downto 0));
    end component;
    
signal des : std_logic_vector (2 downto 0);
signal z : std_logic_vector (7 downto 0);
    
begin
uut: dec3_8 port map (des, z);

stim_proc: process
   begin		
      des <= "000";
      
      wait for 10 ns;	
      des <= "001";
      
      wait for 10 ns;	
      des <= "010";
      
      wait for 10 ns;	
      des <= "011";
      
      wait for 10 ns;	
      des <= "100";
      
      wait for 10 ns;	
      des <= "101";
      
      wait for 10 ns;	
      des <= "110";
      
      wait for 10 ns;	
      des <= "111";

      wait;
     
 --     wait;
   end process;
   

end Behavioral;
