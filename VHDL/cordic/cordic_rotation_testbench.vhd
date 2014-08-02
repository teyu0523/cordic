--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   20:51:01 08/01/2014
-- Design Name:   
-- Module Name:   C:/Users/Owner/Documents/SENG 440/New folder/cordic/cordic_rotation_testbench.vhd
-- Project Name:  cordic
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: cordic_rotation
-- 
-- Dependencies:
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
--
-- Notes: 
-- This testbench has been automatically generated using types std_logic and
-- std_logic_vector for the ports of the unit under test.  Xilinx recommends
-- that these types always be used for the top-level I/O of a design in order
-- to guarantee that the testbench will bind correctly to the post-implementation 
-- simulation model.
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY cordic_rotation_testbench IS
END cordic_rotation_testbench;
 
ARCHITECTURE behavior OF cordic_rotation_testbench IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT cordic_rotation
    PORT(
         y : IN  std_logic_vector(31 downto 0);
         x : IN  std_logic_vector(31 downto 0);
         z : IN  std_logic_vector(31 downto 0);
         rotation_result_sin : OUT  std_logic_vector(31 downto 0);
         rotation_result_cos : OUT  std_logic_vector(31 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal y : std_logic_vector(31 downto 0) := (others => '0');
   signal x : std_logic_vector(31 downto 0) := (others => '0');
   signal z : std_logic_vector(31 downto 0) := (others => '0');

 	--Outputs
   signal rotation_result_sin : std_logic_vector(31 downto 0);
   signal rotation_result_cos : std_logic_vector(31 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: cordic_rotation PORT MAP (
          y => y,
          x => x,
          z => z,
          rotation_result_sin => rotation_result_sin,
          rotation_result_cos => rotation_result_cos
        );
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	


		x <= "00000000000000000000000000000001";
		y <= "00000000000000000000000000000000";
		z <= "00001011010000000000000000000000";

      wait;
   end process;

END;
