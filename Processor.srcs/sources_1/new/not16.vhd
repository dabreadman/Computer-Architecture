----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 02/28/2020 04:08:39 PM
-- Design Name: 
-- Module Name: not16 - Behavioral
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

entity not16 is
  Port (input : in std_logic_vector (15 downto 0);
        output: out std_logic_vector (15 downto 0));
end not16;

architecture Behavioral of not16 is
signal in0,in1,in2,in3,in4,in5,in6,in7,in8,in9,in10,in11,in12,in13,in14,in15: std_logic;

begin
 
in0 <= not input(0);
in1 <= not input(1);
in2 <= not input(2);
in3 <= not input(3);
in4 <= not input(4);
in5 <= not input(5);
in6 <= not input(6);
in7 <= not input(7);
in8 <= not input(8);
in9 <= not input(9);
in10 <= not input(10);
in11 <= not input(11);
in12 <= not input(12);
in13 <= not input(13);
in14 <= not input(14);
in15 <= not input(15);

output <= in15 & in14 & in13 & in12 & in11 & in10 & in9 & in8 & in7 & in6 & in5 & in4 & in3 & in2 & in1 & in0;

end Behavioral;
