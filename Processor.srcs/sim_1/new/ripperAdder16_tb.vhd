----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 02/27/2020 10:26:39 AM
-- Design Name: 
-- Module Name: ripperAdder16_tb - Behavioral
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

entity ripperAdder16_tb is
--  Port ( );
end ripperAdder16_tb;

architecture Behavioral of ripperAdder16_tb is
    component ripperAdder16 
         Port (A, B : in std_logic_vector (15 downto 0);
               cin: in std_logic;
               q: out std_logic_vector(15 downto 0);
               cout: out std_logic
             );
       end component;
       
signal A,B,q : std_logic_vector (15 downto 0);
signal cin,cout : std_logic;   
 
begin
ripperAdder : ripperAdder16 port map (A,B,cin,q,cout);

    proc : process
    begin
         A <= x"00ff";
         B <= x"0002";
         cin<='0';
    
    wait for 10ns;
         cin<='1';
         
    wait for 10ns;
        A <=x"ffff";
    wait;
        
    end process;
end Behavioral;
