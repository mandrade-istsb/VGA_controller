
-- VHDL Instantiation Created from source file generador_blank.vhd -- 14:48:01 01/08/2024
--
-- Notes: 
-- 1) This instantiation template has been automatically generated using types
-- std_logic and std_logic_vector for the ports of the instantiated module
-- 2) To use this template to instantiate this entity, cut-and-paste and then edit

	COMPONENT generador_blank
	PORT(
		hctr : IN std_logic_vector(10 downto 0);
		vctr : IN std_logic_vector(9 downto 0);          
		blank : OUT std_logic
		);
	END COMPONENT;

	Inst_generador_blank: generador_blank PORT MAP(
		hctr => ,
		vctr => ,
		blank => 
	);


