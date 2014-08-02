----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    16:46:18 08/01/2014 
-- Design Name: 
-- Module Name:    cordic_vector - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
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
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity cordic_vector is
    Port ( y : in  STD_LOGIC_VECTOR (31 downto 0);
			  x : in  STD_LOGIC_VECTOR (31 downto 0);
			  z : in  STD_LOGIC_VECTOR (31 downto 0);
           vector_result : out  STD_LOGIC_VECTOR (31 downto 0));
end cordic_vector;

architecture Behavioral of cordic_vector is
	type ARC_VALUES is array (0 to 28) of SIGNED(31 downto 0);
	constant ARC_TAN_TABLE : ARC_VALUES := (TO_SIGNED(188743680,32), TO_SIGNED(111421901,32), TO_SIGNED(58872272,32),
	                                        TO_SIGNED(29884485,32), TO_SIGNED(15000234,32), TO_SIGNED(7507429,32),
														 TO_SIGNED(3754631,32), TO_SIGNED(1877430,32), TO_SIGNED(938729,32),
														 TO_SIGNED(469366,32), TO_SIGNED(234683,32), TO_SIGNED(117342,32),
														 TO_SIGNED(58671,32), TO_SIGNED(29335,32), TO_SIGNED(14668,32),
														 TO_SIGNED(7334,32), TO_SIGNED(3667,32), TO_SIGNED(1833,32),
														 TO_SIGNED(917,32), TO_SIGNED(458,32), TO_SIGNED(229,32),TO_SIGNED(115,32),
														 TO_SIGNED(57,32), TO_SIGNED(29,32), TO_SIGNED(14,32), TO_SIGNED(7,32),
														 TO_SIGNED(4,32), TO_SIGNED(2,32), TO_SIGNED(1,32));

begin

	Vector_mode : process(x,y,z) is
		variable x_curr, x_new, y_curr, y_new, z_curr, arc_tan : SIGNED(31 downto 0);
	begin
	
		x_curr := SIGNED(x);
		y_curr := SIGNED(y);
		z_curr := SIGNED(z);
		
		for i in 0 to 28 loop
			arc_tan := ARC_TAN_TABLE(i);
			if (y_curr >= 0) then
				x_new := x_curr + (SHIFT_RIGHT(y_curr, i));
				y_new := y_curr - (SHIFT_RIGHT(x_curr, i));
				z_curr := z_curr + arc_tan;
			else
				x_new := x_curr - (SHIFT_RIGHT(y_curr, i));
				y_new := y_curr + (SHIFT_RIGHT(x_curr, i));
				z_curr := z_curr - arc_tan;
			end if;
			x_curr := x_new;
			y_curr := y_new;
		end loop;
		vector_result <= STD_LOGIC_VECTOR(z_curr);
	
	end process;


end Behavioral;

