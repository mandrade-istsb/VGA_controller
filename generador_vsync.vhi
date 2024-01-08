
-- VHDL Instantiation Created from source file generador_vsync.vhd -- 14:47:15 01/08/2024
--
-- Notes: 
-- 1) This instantiation template has been automatically generated using types
-- std_logic and std_logic_vector for the ports of the instantiated module
-- 2) To use this template to instantiate this entity, cut-and-paste and then edit

	COMPONENT generador_vsync
	PORT(
		clk50 : IN std_logic;
		rst : IN std_logic;
		v_cuenta : IN std_logic_vector(9 downto 0);          
		vsync : OUT std_logic
		);
	END COMPONENT;

	Inst_generador_vsync: generador_vsync PORT MAP(
		clk50 => ,
		rst => ,
		v_cuenta => ,
		vsync => 
	);


