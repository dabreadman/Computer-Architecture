----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 02/28/2020 05:40:25 PM
-- Design Name: 
-- Module Name: bLogic_tb - Behavioral
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

entity bLogic16_tb is
--  Port ( );
end bLogic16_tb;

architecture Behavioral of bLogic16_tb is
component bLogic16 
Port ( A,B : in std_logic_vector (15 downto 0);
        sel: in std_logic_vector (1 downto 0);
        q: out std_logic_vector (15 downto 0));
end component;

signal A,B,q : std_logic_vector(15 downto 0);
signal sel: std_logic_vector (1 downto 0);

begin
bLog : bLogic16 port map (A,B,sel,q);
proc : process
begin 
A<=x"ffff";
B<=x"0303";
sel<="00";

wait for 10 ns;
sel<="01";

wait for 10 ns;
sel<="10";

wait for 10 ns;
sel<="11";

wait;
end process;
end Behavioral;
