library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_arith.ALL;
use IEEE.STD_LOGIC_unsigned.ALL;

entity generador_patrones is
    Port ( hctr : in  STD_LOGIC_VECTOR (10 downto 0);
           vctr : in  STD_LOGIC_VECTOR (9 downto 0);
           blank,clk50,rst : in  STD_LOGIC;
           R,G,B : out  STD_LOGIC);
end generador_patrones;

architecture Behavioral of generador_patrones is

	signal hctr_int : integer range 1586 downto 0;
	signal vctr_int : integer range 524 downto 0;
	signal R_int,G_int,B_int: std_logic;
	signal color: std_logic_vector(2 downto 0);
	
begin

	hctr_int <= conv_integer(hctr);
	vctr_int <= conv_integer(vctr);
	
	process(clk50,rst,R_int,G_int,B_int)
		begin
			if rst = '1' then
				R <= '0';
				G <= '0';
				B <= '0';
			elsif clk50 ='1' and clk50'event then
				R <= R_int;
				G <= G_int;
				B <= B_int;
			end if;
	end process;


	color <= "111" when ((hctr_int >= 0) and (hctr_int < 160) and (vctr_int >= 0) and (vctr_int < 400) and (blank = '1')) else
				"001" when ((hctr_int >= 160) and (hctr_int < 320) and (vctr_int >= 0) and (vctr_int < 400) and (blank = '1')) else
				"010" when ((hctr_int >= 320) and (hctr_int < 480) and (vctr_int >= 0) and (vctr_int < 400) and (blank = '1')) else
				"011" when ((hctr_int >= 480) and (hctr_int < 640) and (vctr_int >= 0) and (vctr_int < 400) and (blank = '1')) else
				"000" when ((hctr_int >= 640) and (hctr_int < 800) and (vctr_int >= 0) and (vctr_int < 400) and (blank = '1')) else
				"101" when ((hctr_int >= 800) and (hctr_int < 960) and (vctr_int >= 0) and (vctr_int < 400) and (blank = '1')) else
				"110" when ((hctr_int >= 960) and (hctr_int < 1120) and (vctr_int >= 0) and (vctr_int < 400) and (blank = '1')) else
				"100" when ((hctr_int >= 1120) and (hctr_int < 1280) and (vctr_int >= 0) and (vctr_int < 400) and (blank = '1')) else
				"100" when ((hctr_int >= 400) and (hctr_int < 560) and (vctr_int >= 0) and (vctr_int < 400) and (blank = '1')) else
				"000";
				
	R_int <= color(2);
	G_int <= color(1);
	B_int <= color(0);
	
end Behavioral;

