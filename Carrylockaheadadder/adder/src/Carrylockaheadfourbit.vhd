-------------------------------------------------------------------------------
--
-- Title       : Carry_ent
-- Design      : adder
-- Author      : khater
-- Company     : TFE
--
-------------------------------------------------------------------------------
--
-- File        : Carrylockaheadfourbit.vhd
-- Generated   : Sun Feb 18 18:21:14 2018
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
--{entity {Carry_ent} architecture {Carry_arch}}

library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity Carry_ent is
	 port(
		 cin : in STD_LOGIC;
		 G : in STD_LOGIC_VECTOR(3 downto 0);
		 P : in STD_LOGIC_VECTOR(3 downto 0);
		 cout : out STD_LOGIC_VECTOR(4 downto 1)
	     );
end Carry_ent;

--}} End of automatically maintained section

architecture Carry_arch of Carry_ent is
begin

		cout(1) <= G(0) or (P(0) and cin);
		cout(2) <= G(1) or (P(1) and G(0)) or (P(1) and P(0) and cin);
		cout(3) <= G(2) or (P(2) and G(1)) or (P(2) and P(1) and G(0)) or (P(2) and P(1) and P(0) and cin);	
		cout(4) <= G(3) or (P(3) and G(2)) or (P(3) and P(2) and G(1)) or (P(3) and P(2) and P(1) and G(0)) or (P(3) and P(2) and P(1) and P(0) and cin); 
end Carry_arch;
