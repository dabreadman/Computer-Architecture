----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 02/11/2020 05:44:10 PM
-- Design Name: 
-- Module Name: registerfile - Behavioral
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

entity registerfile is
    Port ( s, des0, des1, des2, src0, src1, src2, clk : in STD_LOGIC;
           dataIn : in std_logic_vector (15 downto 0);
           out0, out1, out2, out3, out4, out5, out6, out7: out std_logic_vector (15 downto 0));  
end registerfile;

architecture Behavioral of registerfile is

component dec3_8 
 Port( des: in std_logic_vector (2 downto 0);
		z : out std_logic_vector (7 downto 0));
end component;

component mux2 
  Port ( s : in STD_LOGIC;
           reg, src : in std_logic_vector (15 downto 0);
           z : out std_logic_vector (15 downto 0));
end component;

component mux8
  Port ( in0, in1, in2, in3, in4, in5, in6, in7 : in std_logic_vector (15 downto 0);
        src0, src1, src2 : in std_logic;
        z : out std_logic_vector (15 downto 0)
          );
end component;

component reg16
  port ( D : in std_logic_vector(15 downto 0);
  load, Clk : in std_logic;
  Q : out std_logic_vector(15 downto 0));
end component;

signal outMux2, outMux8, outR0, outR1, outR2, outR3, outR4, outR5, outR6, outR7 : std_logic_vector (15 downto 0);
signal outDec: std_logic_vector (7 downto 0);
signal concat: std_logic_vector (2 downto 0);
 
begin
concat <= des2 & des1 & des0;
dec: dec3_8 port map (concat, outDec);
mux2_1: mux2 port map (s, outMux8, dataIn, outMux2);
mux8_1: mux8 port map (outR0, outR1, outR2, outR3, outR4, outR5, outR6, outR7, 
                     src0, src1, src2, outMux8);
reg0: reg16 port map (outMux2, outDec(0), clk, outR0);
reg1: reg16 port map (outMux2, outDec(1), clk, outR1);
reg2: reg16 port map (outMux2, outDec(2), clk, outR2);
reg3: reg16 port map (outMux2, outDec(3), clk, outR3);
reg4: reg16 port map (outMux2, outDec(4), clk, outR4);
reg5: reg16 port map (outMux2, outDec(5), clk, outR5);
reg6: reg16 port map (outMux2, outDec(6), clk, outR6);
reg7: reg16 port map (outMux2, outDec(7), clk, outR7);

out0 <= outR0;
out1 <= outR1;
out2 <= outR2;
out3 <= outR3;
out4 <= outR4;
out5 <= outR5;
out6 <= outR6;
out7 <= outR7;

end Behavioral;
