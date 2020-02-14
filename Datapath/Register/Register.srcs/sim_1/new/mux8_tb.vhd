----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 02/14/2020 04:26:11 PM
-- Design Name: 
-- Module Name: mux8_tb - Behavioral
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

entity mux8_tb is
--  Port ( );
end mux8_tb;

architecture Behavioral of mux8_tb is

component mux8 
 Port ( in0, in1, in2, in3, in4, in5, in6, in7 : in std_logic_vector (15 downto 0);
        src0, src1, src2 : in std_logic;
        z : out std_logic_vector (15 downto 0)
          );
end component;

signal in0, in1, in2, in3, in4, in5, in6, in7,z : std_logic_vector (15 downto 0);
signal src0, src1, src2 : std_logic;

begin
mux8_1 : mux8 port map ( in0, in1, in2, in3, in4, in5, in6, in7, src0, src1, src2, z);

stim_proc: process
   begin		
      in0 <= "0000000000000011";
      in1 <= "0000000000001100";
	  in2 <= "0000000000110000";	
	  in3 <= "0000000011000000";
	  in4 <= "0000001100000000";
	  in5 <= "0000110000000000";
	  in6 <= "0011000000000000";
      in7 <= "1100000000000000";
      
      src0<= '0';
      src1<= '0';
      src2<= '0';
      
      wait for 10 ns;	
      src0<= '1';
      src1<= '0';
      src2<= '0';
      
      wait for 10 ns;	
      src0<= '0';
      src1<= '1';
      src2<= '0';
      
      wait for 10 ns;	
      src0<= '1';
      src1<= '1';
      src2<= '0';
      
      wait for 10 ns;	
      src0<= '0';
      src1<= '0';
      src2<= '1';
      
      wait for 10 ns;	
      src0<= '1';
      src1<= '0';
      src2<= '1';
      
      wait for 10 ns;	
      src0<= '0';
      src1<= '1';
      src2<= '1';
      
      wait for 10 ns;	
      src0<= '1';
      src1<= '1';
      src2<= '1';

      wait;
   end process;

end Behavioral;
