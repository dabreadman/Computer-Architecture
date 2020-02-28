----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 02/28/2020 04:21:02 PM
-- Design Name: 
-- Module Name: bLogicSlice - Behavioral
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

entity bLogicSlice is
    Port ( sel : in std_logic_vector (1 downto 0);
           A : in STD_LOGIC;
           B : in STD_LOGIC;
           output : out STD_LOGIC);
end bLogicSlice;

architecture Behavioral of bLogicSlice is

signal anded,ored, eored, noted: std_logic;

begin
anded<= A and B;
ored<=  A or B;
eored<= A xor B;
noted<= not A;

output<=
anded when sel="00" else
ored  when sel="01" else
eored when sel="10" else
noted when sel="11";

end Behavioral;
