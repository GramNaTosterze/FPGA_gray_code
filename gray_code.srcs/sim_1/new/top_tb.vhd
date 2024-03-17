----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03/12/2024 05:58:59 PM
-- Design Name: 
-- Module Name: tb - Behavioral
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

entity tb is
--  Port ( );
end tb;

architecture Behavioral of tb is
    component top
        Port(
            clk_i : in STD_LOGIC;
            rst_i : in STD_LOGIC;
            led_o : out STD_LOGIC_VECTOR (2 downto 0)
        );
    end component;
    
    signal clk_i: STD_LOGIC := '0';
    signal rst_i: STD_LOGIC := '0';
    signal led_o: STD_LOGIC_VECTOR (2 downto 0); 
begin

    -- Unit Under Test
    uut: top port map (
        clk_i => clk_i,
        rst_i => rst_i,
        led_o => led_o
    );

    gray_sim: process
    begin
        clk_i <= '1';
      	wait for 10ns;
      	clk_i <= '0';
      	  
        wait for 100ns;
    end process;

    reset_sim: process
    begin
        -- start rst
        rst_i <= '1';
      	wait for 10ns;
      	rst_i <= '0';
        
        
        wait for 400ns;
        rst_i <= '1';
        wait for 10ns;
        rst_i <= '0';
        
        wait;
    end process;

end Behavioral;
