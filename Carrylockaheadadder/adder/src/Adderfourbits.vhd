-------------------------------------------------------------------------------
--
-- Title       : adder_ent
-- Design      : adder
-- Author      : khater
-- Company     : TFE
--
-------------------------------------------------------------------------------
--
-- File        : Adderfourbits.vhd
-- Generated   : Sun Feb 18 19:18:47 2018
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
--{entity {adder_ent} architecture {adder_arch}}

library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity adder_ent is
	 port(
		 cin : in STD_LOGIC;
		 x : in STD_LOGIC_VECTOR(3 downto 0);
		 y : in STD_LOGIC_VECTOR(3 downto 0);
		 s : out STD_LOGIC_VECTOR(3 downto 0);
		 gi : out Std_logic;
		 pi : out Std_logic
	     );
end adder_ent;

--}} End of automatically maintained section

architecture adder_arch of adder_ent is		 
Signal c: std_logic_vector(4 downto 1);
Signal P: std_logic_vector(3 downto 0);
Signal G: std_logic_vector(3 downto 0);	  
Component adderone_ent is
	port(
		 x : in STD_LOGIC;
		 y : in STD_LOGIC;
		 c : in STD_LOGIC;	
		 p : out std_logic;
		 g : out std_logic; 
		 s : out STD_LOGIC 
	     );
end Component;
component  Carry_ent is
	 port(
		 cin : in STD_LOGIC;
		 G : in STD_LOGIC_VECTOR(3 downto 0);
		 P : in STD_LOGIC_VECTOR(3 downto 0);
		 cout : out STD_LOGIC_VECTOR(4 downto 1)
	     );
end component;
begin
	
	-- enter your statements here --
	CAHA: Carry_ent port map(cin, G, P, c);
	S1: adderone_ent port map(x(0), y(0), cin, P(0), G(0), s(0));
	S2: adderone_ent port map(x(1), y(1), c(1), P(1), G(1), s(1));
	S3: adderone_ent port map(x(2), y(2), c(2), P(2), G(2), s(2));
	S4: adderone_ent port map(x(3), y(3), c(3), P(3), G(3), s(3));	
	pi <= P(0) and P(1) and P(2) and P(3);
	gi <= G(3) or (P(3) and G(2)) or (P(3) and P(2) and G(1)) or (P(3) and P(2) and P(1) and G(0)); 
	end adder_arch;
