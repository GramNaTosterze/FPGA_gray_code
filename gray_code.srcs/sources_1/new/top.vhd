----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03/12/2024 05:44:56 PM
-- Design Name: 
-- Module Name: top - Behavioral
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
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity top is
    Port (
        clk_i : in STD_LOGIC;
        rst_i : in STD_LOGIC;
        led_o : out STD_LOGIC_VECTOR (2 downto 0) := "000"
    );
end top;

architecture Behavioral of top is
    signal x: STD_LOGIC_VECTOR(2 downto 0) := "000";
begin


    process(clk_i, rst_i, x)
        variable y: STD_LOGIC_VECTOR(2 downto 0);
    begin
        if rst_i = '1' then 
            x <= "000";
            led_o  <= "000";
    
        if rising_edge(clk_i) then
            x <= x+1;
            y := x+1;
            led_o(2) <= y(2);
            led_o(1) <= y(2) xor y(1);
            led_o(0) <= y(1) xor y(0);
        end if;
        
        end if; 
    end process;
end Behavioral;
