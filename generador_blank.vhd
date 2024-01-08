library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_arith.ALL;
use IEEE.STD_LOGIC_unsigned.ALL;

entity generador_blank is
    Port ( hctr : in  STD_LOGIC_VECTOR (10 downto 0);
           vctr : in  STD_LOGIC_VECTOR (9 downto 0);
           blank : out  STD_LOGIC);
end generador_blank;

architecture Behavioral of generador_blank is

	signal hctr_int : integer range 1586 downto 0;
	signal vctr_int : integer range 524 downto 0;

begin

	hctr_int <= CONV_INTEGER(hctr);
	vctr_int <= CONV_INTEGER(vctr);

	process (hctr_int,vctr_int)
		begin
			if ((hctr_int >= 1258) and (hctr_int <= 1586)) or
				((vctr_int >= 480) and (vctr_int <= 524)) then
				blank <='0';
			else 
				blank <='1';
			end if;
	end process;
	
end Behavioral;

