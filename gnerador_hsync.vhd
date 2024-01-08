library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_arith.ALL;
use IEEE.STD_LOGIC_unsigned.ALL;

entity gnerador_hsync is
    Port ( clk50,rst : in  STD_LOGIC;
           h_cuenta : in  STD_LOGIC_VECTOR (10 downto 0);
           hsync : out  STD_LOGIC);
end gnerador_hsync;

architecture Behavioral of gnerador_hsync is

	signal h_cuenta_int : integer range 1586 downto 0;
	signal hsync_aux, change_h: std_logic;

begin
 
	hsync <= hsync_aux;
	h_cuenta_int <= CONV_INTEGER(h_cuenta);
	
	process (clk50,rst,change_h)
		begin
			if rst = '1' then
				hsync_aux <= '1';
			elsif clk50 ='1' and clk50'event then
				if change_h = '1' then
					hsync_aux <= not hsync_aux;
				else 
					hsync_aux <= hsync_aux;
				end if;
			end if;
	end process;
	
	process (h_cuenta_int)
		begin
			if (h_cuenta_int = 1326) or (h_cuenta_int = 1514) then
				change_h <= '1';
			else
				change_h <= '0';
			end if;
	end process;

end Behavioral;

