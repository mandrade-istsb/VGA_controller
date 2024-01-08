library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_arith.ALL;
use IEEE.STD_LOGIC_unsigned.ALL;

entity contador_vertical is
    Port ( clk50,rst,hsync : in  STD_LOGIC;
           v_cuenta : out  STD_LOGIC_VECTOR (9 downto 0));
end contador_vertical;

architecture Behavioral of contador_vertical is

	signal hsync_s,hsync_t_1,fa_hsync:std_logic;
	signal v_cuenta_int : integer range 528 downto 0;

begin
	v_cuenta <= CONV_STD_LOGIC_VECTOR(v_cuenta_int, 10);
		-- detector de flanco de la seal hsync
	process (rst,clk50,hsync_s,hsync_t_1)
		begin
			if rst = '1' then
				hsync_s <= '0';
				hsync_t_1 <= '0';
			elsif clk50 ='1' and clk50'event then
				hsync_t_1 <= hsync_s;
				hsync_s <= hsync;
			end if;
			
			fa_hsync <= hsync_s and not hsync_t_1;
	end process;
	
	-- comntador vertical
	process (fa_hsync,rst,v_cuenta_int,clk50)
		begin
			if rst = '1' then 
				v_cuenta_int <= 0;
			elsif clk50 ='1' and clk50'event then
				if fa_hsync = '1' then
					if v_cuenta_int = 528 then
						v_cuenta_int <= 0;
					else 
						v_cuenta_int <= v_cuenta_int + 1;
					end if;
				end if;
			end if;
	end process;

end Behavioral;

