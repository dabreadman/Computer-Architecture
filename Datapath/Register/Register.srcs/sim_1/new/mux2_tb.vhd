----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 02/14/2020 04:24:03 PM
-- Design Name: 
-- Module Name: mux2_tb - Behavioral
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

entity mux2_tb is
--  Port ( );
end mux2_tb;

architecture Behavioral of mux2_tb is
    Component mux2
     Port ( s : in STD_LOGIC;
           reg, src : in std_logic_vector (15 downto 0);
           z : out std_logic_vector (15 downto 0));
     end component;

signal s : std_logic;
signal reg, src, z : std_logic_vector (15 downto 0);

begin
mux : mux2 port map ( s, reg, src, z);

stim_proc: process
   begin		
      s <= '0';
      reg<= "0000000000000000";
      src<= "1111111111111111";
      
      wait for 10 ns;	
      s<= '1';
      wait;
   end process;
   

end Behavioral;
