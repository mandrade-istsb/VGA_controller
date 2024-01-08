library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity VGA_CONTROLER is
    Port ( CLK,RESET : in  STD_LOGIC;
           R,G,B : out  STD_LOGIC;
           HSYNC,VSYNC : out  STD_LOGIC);
end VGA_CONTROLER;

architecture Behavioral of VGA_CONTROLER is

	COMPONENT contador_horizontal
	PORT(
		clk50 : IN std_logic;
		rst : IN std_logic;          
		h_cuenta : OUT std_logic_vector(10 downto 0)
		);
	END COMPONENT;

	COMPONENT gnerador_hsync
	PORT(
		clk50 : IN std_logic;
		rst : IN std_logic;
		h_cuenta : IN std_logic_vector(10 downto 0);          
		hsync : OUT std_logic
		);
	END COMPONENT;

	COMPONENT contador_vertical
	PORT(
		clk50 : IN std_logic;
		rst : IN std_logic;
		hsync : IN std_logic;          
		v_cuenta : OUT std_logic_vector(9 downto 0)
		);
	END COMPONENT;

	COMPONENT generador_vsync
	PORT(
		clk50 : IN std_logic;
		rst : IN std_logic;
		v_cuenta : IN std_logic_vector(9 downto 0);          
		vsync : OUT std_logic
		);
	END COMPONENT;

	COMPONENT generador_blank
	PORT(
		hctr : IN std_logic_vector(10 downto 0);
		vctr : IN std_logic_vector(9 downto 0);          
		blank : OUT std_logic
		);
	END COMPONENT;

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
	
	SIGNAL h_cuenta_MASTER : std_logic_vector(10 downto 0);
	SIGNAL v_cuenta_MASTER : std_logic_vector(9 downto 0);
	SIGNAL hsync_MASTER, blank_MASTER : std_logic;
begin

	U1: contador_horizontal PORT MAP(
		clk50 => CLK,
		rst => RESET,
		h_cuenta => h_cuenta_MASTER
	);

	U2: gnerador_hsync PORT MAP(
		clk50 => CLK,
		rst => RESET,
		h_cuenta => h_cuenta_MASTER,
		hsync => hsync_MASTER
	);

	U3: contador_vertical PORT MAP(
		clk50 => CLK,
		rst => RESET,
		hsync => hsync_MASTER,
		v_cuenta => v_cuenta_MASTER
	);
	
	U4: generador_vsync PORT MAP(
		clk50 => CLK,
		rst => RESET,
		v_cuenta => v_cuenta_MASTER,
		vsync => VSYNC
	);	
	
	U5: generador_blank PORT MAP(
		hctr => h_cuenta_MASTER,
		vctr => v_cuenta_MASTER,
		blank => blank_MASTER
	);	
	
	U6: generador_patrones PORT MAP(
		hctr => h_cuenta_MASTER,
		vctr => v_cuenta_MASTER,
		blank => blank_MASTER,
		clk50 => CLK,
		rst => RESET,
		R => R,
		G => G,
		B => B
	);
	
	HSYNC <= hsync_MASTER;
	
end Behavioral;

