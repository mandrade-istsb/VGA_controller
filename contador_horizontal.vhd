library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_arith.ALL;
use IEEE.STD_LOGIC_unsigned.ALL;

entity contador_horizontal is
    Port ( clk50,rst : in  STD_LOGIC;
           h_cuenta : out  STD_LOGIC_VECTOR (10 downto 0));
end contador_horizontal;

architecture Behavioral of contador_horizontal is

	signal h_cuenta_int : integer range 1586 downto 0;
	
begin
	
	h_cuenta <= CONV_STD_LOGIC_VECTOR(h_cuenta_int, 11);

	process (clk50,rst,h_cuenta_int)
		begin
		if rst = '1' then
			h_cuenta_int <= 0;
		elsif clk50 ='1' and clk50'event then
			if h_cuenta_int = 1586 then
				h_cuenta_int <= 0;
			else 
				h_cuenta_int <= h_cuenta_int + 1;
			end if;
		end if;
	end process;

end Behavioral;

