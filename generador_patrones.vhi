
-- VHDL Instantiation Created from source file generador_patrones.vhd -- 14:48:43 01/08/2024
--
-- Notes: 
-- 1) This instantiation template has been automatically generated using types
-- std_logic and std_logic_vector for the ports of the instantiated module
-- 2) To use this template to instantiate this entity, cut-and-paste and then edit

	COMPONENT generador_patrones
	PORT(
		hctr : IN std_logic_vector(10 downto 0);
		vctr : IN std_logic_vector(9 downto 0);
		blank : IN std_logic;
		clk50 : IN std_logic;
		rst : IN std_logic;          
		R : OUT std_logic;
		G : OUT std_logic;
		B : OUT std_logic
		);
	END COMPONENT;

	Inst_generador_patrones: generador_patrones PORT MAP(
		hctr => ,
		vctr => ,
		blank => ,
		clk50 => ,
		rst => ,
		R => ,
		G => ,
		B => 
	);


