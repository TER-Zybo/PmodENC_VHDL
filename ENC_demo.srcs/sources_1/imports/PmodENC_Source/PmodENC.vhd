library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;


entity PmodENC is
    Port (
		clk: in std_logic;
        pmod : in STD_LOGIC_VECTOR (3 downto 0);
		leds: inout STD_LOGIC_VECTOR (3 downto 0)
	);
end PmodENC;

architecture Behavioral of PmodENC is
    signal AO, BO: std_logic;

    begin
        C0: entity work.Debouncer port map ( 
                clk=>clk,
                Ain=>pmod(0),
                Bin=>pmod(1),
                Aout=> AO,
                Bout=> BO
            );
            
        C1: entity work.Encoder port map ( 
                clk=>clk,
                A=>AO,
                B=>BO,
                BTN=>pmod(2),
                LED=>leds
            );
end Behavioral;

