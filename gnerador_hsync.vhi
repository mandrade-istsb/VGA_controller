
-- VHDL Instantiation Created from source file gnerador_hsync.vhd -- 14:46:04 01/08/2024
--
-- Notes: 
-- 1) This instantiation template has been automatically generated using types
-- std_logic and std_logic_vector for the ports of the instantiated module
-- 2) To use this template to instantiate this entity, cut-and-paste and then edit

	COMPONENT gnerador_hsync
	PORT(
		clk50 : IN std_logic;
		rst : IN std_logic;
		h_cuenta : IN std_logic_vector(10 downto 0);          
		hsync : OUT std_logic
		);
	END COMPONENT;

	Inst_gnerador_hsync: gnerador_hsync PORT MAP(
		clk50 => ,
		rst => ,
		h_cuenta => ,
		hsync => 
	);


