
-- VHDL Instantiation Created from source file contador_vertical.vhd -- 14:46:40 01/08/2024
--
-- Notes: 
-- 1) This instantiation template has been automatically generated using types
-- std_logic and std_logic_vector for the ports of the instantiated module
-- 2) To use this template to instantiate this entity, cut-and-paste and then edit

	COMPONENT contador_vertical
	PORT(
		clk50 : IN std_logic;
		rst : IN std_logic;
		hsync : IN std_logic;          
		v_cuenta : OUT std_logic_vector(9 downto 0)
		);
	END COMPONENT;

	Inst_contador_vertical: contador_vertical PORT MAP(
		clk50 => ,
		rst => ,
		hsync => ,
		v_cuenta => 
	);


