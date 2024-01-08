library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_arith.ALL;
use IEEE.STD_LOGIC_unsigned.ALL;

entity generador_vsync is
    Port ( clk50,rst : in  STD_LOGIC;
           v_cuenta : in  STD_LOGIC_VECTOR (9 downto 0);
           vsync : out  STD_LOGIC);
end generador_vsync;

architecture Behavioral of generador_vsync is
	
	signal v_cuenta_int : integer range 524 downto 0;
	
begin

	v_cuenta_int <= CONV_INTEGER (v_cuenta);

	process (clk50,rst,v_cuenta_int)
		begin
			if rst = '1' then
				vsync <= '1';
			elsif clk50 ='1' and clk50'event then
				if (v_cuenta_int >= 500) and (v_cuenta_int <= 502 ) then
					vsync <= '0';
				else
					vsync <= '1';
				end if;
			end if;
	end process;

end Behavioral;

