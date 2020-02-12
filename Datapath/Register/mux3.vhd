----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 02/11/2020 05:38:40 PM
-- Design Name: 
-- Module Name: mux3 - Behavioral
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

entity mux3 is
 Port ( in0, in1, in2, in3, in4, in5, in6, in7 : in std_logic_vector (15 downto 0);
        src0, src1, src2 : in std_logic;
        z : out std_logic_vector (15 downto 0)
          );
end mux3;

architecture Behavioral of mux3 is

begin
z <=
in0 after 5ns when src0 = '0' and src1 = '0' and src2 = '0' else
in1 after 5ns when src0 = '1' and src1 = '0' and src2 = '0' else
in2 after 5ns when src0 = '0' and src1 = '1' and src2 = '0' else
in3 after 5ns when src0 = '1' and src1 = '1' and src2 = '0' else
in4 after 5ns when src0 = '0' and src1 = '0' and src2 = '1' else
in5 after 5ns when src0 = '1' and src1 = '0' and src2 = '1' else
in6 after 5ns when src0 = '0' and src1 = '1' and src2 = '1' else
in7 after 5ns when src0 = '1' and src1 = '1' and src2 = '1';


end Behavioral;
