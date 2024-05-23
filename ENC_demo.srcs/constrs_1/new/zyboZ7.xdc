create_clock -period 100.000 -name clk [get_ports clk]
set_property PACKAGE_PIN K17 [get_ports clk]
set_property IOSTANDARD LVCMOS33 [get_ports clk]

## LEDs
set_property -dict { PACKAGE_PIN M14   IOSTANDARD LVCMOS33 } [get_ports {leds[0]}]
set_property -dict { PACKAGE_PIN M15   IOSTANDARD LVCMOS33 } [get_ports {leds[1]}]
set_property -dict { PACKAGE_PIN G14   IOSTANDARD LVCMOS33 } [get_ports {leds[2]}]
set_property -dict { PACKAGE_PIN D18   IOSTANDARD LVCMOS33 } [get_ports {leds[3]}]

## JE
set_property PACKAGE_PIN V12      [get_ports {pmod[0]}]					
set_property IOSTANDARD LVCMOS33 [get_ports {pmod[0]}]
set_property PACKAGE_PIN W16      [get_ports {pmod[1]}]					
set_property IOSTANDARD LVCMOS33 [get_ports {pmod[1]}]
set_property PACKAGE_PIN J15      [get_ports {pmod[2]}]					
set_property IOSTANDARD LVCMOS33 [get_ports {pmod[2]}]
set_property PACKAGE_PIN H15      [get_ports {pmod[3]}]					
set_property IOSTANDARD LVCMOS33 [get_ports {pmod[3]}]
