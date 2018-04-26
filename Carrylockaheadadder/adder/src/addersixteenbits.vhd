-------------------------------------------------------------------------------
--
-- Title       : addersixteen_ent
-- Design      : adder
-- Author      : khater
-- Company     : TFE
--
-------------------------------------------------------------------------------
--
-- File        : addersixteenbits.vhd
-- Generated   : Sun Feb 18 20:23:56 2018
-- From        : interface description file
-- By          : Itf2Vhdl ver. 1.20
--
-------------------------------------------------------------------------------
--
-- Description : 
--
-------------------------------------------------------------------------------

--{{ Section below this comment is automatically maintained
--   and may be overwritten
--{entity {addersixteen_ent} architecture {addersixteent_arch}}

library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity addersixteen_ent is
	 port(
		 cin : in STD_LOGIC;
		 x : in STD_LOGIC_VECTOR(15 downto 0);
		 y : in STD_LOGIC_VECTOR(15 downto 0);
		 s : out STD_LOGIC_VECTOR(15 downto 0)
	     );
end addersixteen_ent;

--}} End of automatically maintained section

architecture addersixteent_arch of addersixteen_ent is	  
Signal C:std_logic_Vector (4 downto 1);		
Signal p:STd_logic_Vector (15 downto 0);
Signal g:std_logic_vector (15 downto 0);  
Signal pi:std_logic_vector (3 downto 0);
Signal gi:std_logic_vector (3 downto 0);
component adder_ent is
	 port(
		 cin : in STD_LOGIC;
		 x : in STD_LOGIC_VECTOR(3 downto 0);
		 y : in STD_LOGIC_VECTOR(3 downto 0);
		 s : out STD_LOGIC_VECTOR(3 downto 0);
		 gi : out Std_logic;
		 pi : out Std_logic
	     );
end component;
Component Carry_ent is
	 port(
		 cin : in STD_LOGIC;
		 G : in STD_LOGIC_VECTOR(3 downto 0);
		 P : in STD_LOGIC_VECTOR(3 downto 0);
		 cout : out STD_LOGIC_VECTOR(4 downto 1)
	     );
end Component;
begin

	-- enter your statements here -- 
	
CLA0 : Carry_ent port map(cin, gi, pi, C);
CLA1 : adder_ent port map(cin,x(3 downto 0), y(3 downto 0), s(3 downto 0), gi(0), pi(0));
CLA2 : adder_ent port map(C(1), x(7 downto 4), y(7 downto 4), s(7 downto 4), gi(1), pi(1));
CLA3 : adder_ent port map(C(2), x(11 downto 8), y(11 downto 8), s(11 downto 8), gi(2), pi(2));
CLA4 : adder_ent port map(C(3), x(15 downto 12), y(15 downto 12), s(15 downto 12), gi(3), pi(3));

end addersixteent_arch;
