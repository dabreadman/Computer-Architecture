----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 02/28/2020 05:32:21 PM
-- Design Name: 
-- Module Name: bLogic16 - Behavioral
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

entity bLogic16 is
Port ( A,B : in std_logic_vector (15 downto 0);
        sel: in std_logic_vector (1 downto 0);
        q: out std_logic_vector (15 downto 0));
end bLogic16;

architecture Behavioral of bLogic16 is

component bLogicSlice 
 Port ( sel : in std_logic_vector (1 downto 0);
           A : in STD_LOGIC;
           B : in STD_LOGIC;
           output : out STD_LOGIC);
end component;

signal out0,out1,out2,out3,out4,out5,out6,out7,out8,out9,out10,out11,out12,out13,out14,out15 : std_logic;

begin
s0 : bLogicSlice port map (sel,A(0),B(0),out0);
s1 : bLogicSlice port map (sel,A(1),B(1),out1);
s2 : bLogicSlice port map (sel,A(2),B(2),out2);
s3 : bLogicSlice port map (sel,A(3),B(3),out3);
s4 : bLogicSlice port map (sel,A(4),B(4),out4);
s5 : bLogicSlice port map (sel,A(5),B(5),out5);
s6 : bLogicSlice port map (sel,A(6),B(6),out6);
s7 : bLogicSlice port map (sel,A(7),B(7),out7);
s8 : bLogicSlice port map (sel,A(8),B(8),out8);
s9 : bLogicSlice port map (sel,A(9),B(9),out9);
s10 : bLogicSlice port map (sel,A(10),B(10),out10);
s11 : bLogicSlice port map (sel,A(11),B(11),out11);
s12 : bLogicSlice port map (sel,A(12),B(12),out12);
s13 : bLogicSlice port map (sel,A(13),B(13),out13);
s14 : bLogicSlice port map (sel,A(14),B(14),out14);
s15 : bLogicSlice port map (sel,A(15),B(15),out15);

q <= out15 & out14 & out13 & out12 & out11 & out10 & out9 & out8 & out7 & out6 & out5 & out4 & out3 & out2 & out1 & out0; 

end Behavioral;
