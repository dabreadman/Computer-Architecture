----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 02/26/2020 06:24:16 PM
-- Design Name: 
-- Module Name: ripperAdder16 - Behavioral
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

entity ripperAdder16 is
Port (A, B : in std_logic_vector (15 downto 0);
        cin: in std_logic;
        q: out std_logic_vector(15 downto 0);
        cout: out std_logic
        );
end ripperAdder16;

architecture Behavioral of ripperAdder16 is
    component fullAdder
        Port(x,y,cin: in std_logic;
            cout,sum: out std_logic );
     end component;
     
signal cout0, cout1, cout2, cout3, cout4, cout5, cout6, cout7, cout8, cout9, cout10, cout11, cout12, cout13, cout14,
       sum0 ,sum1 ,sum2 ,sum3 ,sum4 ,sum5 ,sum6 ,sum7 ,sum8 ,sum9 ,sum10 ,sum11 ,sum12 ,sum13 ,sum14 ,sum15: std_logic;
signal sum: std_logic_vector (15 downto 0);
     
begin
f0: fullAdder port map (A(0),B(0),cin,cout0,sum0);
f1: fullAdder port map (A(1),B(1),cout0,cout1,sum1);
f2: fullAdder port map (A(2),B(2),cout1,cout2,sum2);
f3: fullAdder port map (A(3),B(3),cout2,cout3,sum3);
f4: fullAdder port map (A(4),B(4),cout3,cout4,sum4);
f5: fullAdder port map (A(5),B(5),cout4,cout5,sum5);
f6: fullAdder port map (A(6),B(6),cout5,cout6,sum6);
f7: fullAdder port map (A(7),B(7),cout6,cout7,sum7);
f8: fullAdder port map (A(8),B(8),cout7,cout8,sum8);
f9: fullAdder port map (A(9),B(9),cout8,cout9,sum9);
f10: fullAdder port map (A(10),B(10),cout9,cout10,sum10);
f11: fullAdder port map (A(11),B(11),cout10,cout11,sum11);
f12: fullAdder port map (A(12),B(12),cout11,cout12,sum12);
f13: fullAdder port map (A(13),B(13),cout12,cout13,sum13);
f14: fullAdder port map (A(14),B(14),cout13,cout14,sum14);
f15: fullAdder port map (A(15),B(15),cout14,cout,sum15);

sum <= sum15 & sum14 & sum13 & sum12 & sum11 & sum10 & sum9 & sum8 & sum7 & sum6 & sum5 & sum4 & sum3 & sum2 & sum1 & sum0;
q <= sum;
end Behavioral;
