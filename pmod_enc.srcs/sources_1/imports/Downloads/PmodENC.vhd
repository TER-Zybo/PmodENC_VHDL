library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;



entity PmodENC is
    port (
        clk: in std_logic;
        JE : in STD_LOGIC_VECTOR (3 downto 0);  	-- the pmod is plugged in to the upper row of JE
        Led: out STD_LOGIC_VECTOR (3 downto 0)		-- Led counter 
    );
end PmodENC;



architecture Behavioral of PmodENC is
    signal AO, BO: std_logic;
begin
	
    C0: entity work.Debouncer 
        port map ( 
           clk=>clk, 
           Ain=>JE(0), 
           Bin=>JE(1), 
           Aout=> AO, 
           Bout=> BO 
        );
	   
    C1: entity work.Encoder 
        port map (
            clk=>clk, 
            A=>AO, 
            B=>BO, 
            BTN=>JE(2), 
            LED=>Led
        );

end Behavioral;

