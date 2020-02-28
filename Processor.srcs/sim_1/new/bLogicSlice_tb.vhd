----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 02/28/2020 04:26:08 PM
-- Design Name: 
-- Module Name: bLogicSlice_tb - Behavioral
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

entity bLogicSlice_tb is
--  Port ( );
end bLogicSlice_tb;

architecture Behavioral of bLogicSlice_tb is

component bLogicSlice 
 Port ( sel : in std_logic_vector (1 downto 0);
           A : in STD_LOGIC;
           B : in STD_LOGIC;
           output : out STD_LOGIC);
end component;

signal sel: std_logic_vector (1 downto 0);
signal A,B,output : std_logic;

begin
slice : bLogicSlice port map (sel,A,B,output);

proc: process
begin
A<='0';
B<='1';
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
