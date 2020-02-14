----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 02/14/2020 03:32:59 PM
-- Design Name: 
-- Module Name: reg16_tb - Behavioral
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

entity reg16_tb is
--  Port ( );
end reg16_tb;

architecture Behavioral of reg16_tb is

component reg16 
    port ( D : in std_logic_vector(15 downto 0);
        load, Clk : in std_logic;
        Q : out std_logic_vector(15 downto 0));
end component;

signal load, Clk : std_logic;
signal D,Q : std_logic_vector (15 downto 0);
constant clock_period: time := 10 ns;
begin

reg: reg16 port map (D,load,Clk,Q);

stim_proc: process
   begin		
      load <= '1';
      D <= "1111111111111111";
   
      wait for 10 ns;	
      load <='0';
      D <= "0000000000000000";
    
      wait for 10 ns;	
      load <='1';
    
      wait for 10 ns;	
      load <='0';
      D <= "1111111111111111";
     
      wait for 10 ns;	
      load <='1';
     
      wait for 10 ns;	
      load <='0';
      D <= "0000000000000000";
      
      wait for 10 ns;	
      load <='1';
     
      wait for 10 ns;	
      load <='0';
      D <= "0000000000000000";
       
     wait;
end process;    
 
clocking: process
  begin
    while true loop
      clk <= '0', '1' after clock_period / 2;
      wait for clock_period;
    end loop;
    wait;
  end process;
end Behavioral;
