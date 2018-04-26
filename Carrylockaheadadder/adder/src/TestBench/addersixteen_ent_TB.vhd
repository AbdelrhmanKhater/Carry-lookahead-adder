library ieee;
use ieee.std_logic_1164.all;

	-- Add your library and packages declaration here ...

entity addersixteen_ent_tb is
end addersixteen_ent_tb;

architecture TB_ARCHITECTURE of addersixteen_ent_tb is
	-- Component declaration of the tested unit
	component addersixteen_ent
	port(
		cin : in STD_LOGIC;
		x : in STD_LOGIC_VECTOR(15 downto 0);
		y : in STD_LOGIC_VECTOR(15 downto 0);
		s : out STD_LOGIC_VECTOR(15 downto 0) );
	end component;

	-- Stimulus signals - signals mapped to the input and inout ports of tested entity
	signal cin : STD_LOGIC;
	signal x : STD_LOGIC_VECTOR(15 downto 0);
	signal y : STD_LOGIC_VECTOR(15 downto 0);
	-- Observed signals - signals mapped to the output ports of tested entity
	signal s : STD_LOGIC_VECTOR(15 downto 0);

	-- Add your code here ...

begin

	-- Unit Under Test port map
	UUT : addersixteen_ent
		port map (
			cin => cin,
			x => x,
			y => y,
			s => s
		);

	-- Add your stimulus here ...
	process
	begin
		x <= "0000000000010100";
		y <= "0000000000001000";
		cin <= '0';
		wait for 100 ns;
	end process;
end TB_ARCHITECTURE;

configuration TESTBENCH_FOR_addersixteen_ent of addersixteen_ent_tb is
	for TB_ARCHITECTURE
		for UUT : addersixteen_ent
			use entity work.addersixteen_ent(addersixteent_arch);
		end for;
	end for;
end TESTBENCH_FOR_addersixteen_ent;

