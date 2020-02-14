----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 02/12/2020 10:07:41 AM
-- Design Name: 
-- Module Name: registerfile_tb - Behavioral
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

entity registerfile_tb is
end registerfile_tb;

architecture Behavioral of registerfile_tb is
    COMPONENT registerfile 
     Port ( s : in STD_LOGIC;
           des0 : in STD_LOGIC;
           des1 : in STD_LOGIC;
           des2 : in STD_LOGIC;
           src0 : in STD_LOGIC;
           src1 : in STD_LOGIC;
           src2 : in STD_LOGIC;
           clk  : in std_logic;
           dataIn : in std_logic_vector (15 downto 0);
           out0, out1, out2, out3, out4, out5, out6, out7: out std_logic_vector (15 downto 0));            
     end component; 

signal s, des0, des1, des2, src0, src1, src2, clk: std_logic;
signal dataIn : std_logic_vector (15 downto 0);
signal r0, r1, r2, r3, r4, r5, r6, r7 : std_logic_vector (15 downto 0);
constant clock_period: time := 10 ns;
signal stop_the_clock: boolean;

begin
regF : registerfile port map (s, des0, des1, des2, src0, src1, src2, clk, dataIn, r0, r1, r2, r3, r4, r5, r6, r7);

stim_proc: process
   begin		
      s <= '0';
      src0 <= '0';
      src1 <= '0';
      src2 <= '0';
      des0 <= '0';
      des1 <= '0';
      des2 <= '0';
      dataIn <= "0000000000000000";
      
      wait for 20 ns;	
      dataIn <= "0000000000000001";
      des0 <= '1';
      des1 <= '0';
      des2 <= '0';
      
      wait for 20 ns;	
	  dataIn <= "0000000000000010";
	  des0 <= '0';
      des1 <= '1';
      des2 <= '0';

      wait for 20 ns;	
	  dataIn <= "0000000000000011";
	  des0 <= '1';
      des1 <= '1';
      des2 <= '0';

      wait for 20 ns;	
	  dataIn <= "0000000000000100";
      des0 <= '0';
      des1 <= '0';
      des2 <= '1';
      
      wait for 20 ns;	
	  dataIn <= "0000000000000101";
      des0 <= '1';
      des1 <= '0';
      des2 <= '1';
      
      wait for 20 ns;	
	  dataIn <= "0000000000000110";
      des0 <= '0';
      des1 <= '1';
      des2 <= '1';
      
      wait for 20 ns;	
      dataIn <= "0000000000000111";
      des0 <= '1';
      des1 <= '1';
      des2 <= '1';
      
      wait for 20ns;
      s <='1';
      src0 <= '0';
      src1 <= '0';
      src2 <= '0';
      des0 <= '1';
      des1 <= '1';
      des2 <= '1';
      
      wait for 20ns;
      src0 <= '1';
      src1 <= '0';
      src2 <= '0';
      des0 <= '0';
      des1 <= '1';
      des2 <= '1';
      
      wait for 20ns;
      src0 <= '0';
      src1 <= '1';
      src2 <= '0';
      des0 <= '1';
      des1 <= '0';
      des2 <= '1';
      
      wait for 20ns;
      src0 <= '1';
      src1 <= '1';
      src2 <= '0';
      des0 <= '0';
      des1 <= '0';
      des2 <= '1';
      
     wait;
     
      -- wait for 10 ns;
 --     wait;
   end process;
   
  clocking: process
  begin
    while not stop_the_clock loop
      clk <= '0', '1' after clock_period / 2;
      wait for clock_period;
    end loop;
    wait;
  end process;
end Behavioral;
