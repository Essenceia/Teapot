# Basys3 rev D xdc

# Switches
set_property -dict { PACKAGE_PIN V17   IOSTANDARD LVCMOS33 PULLDOWN true } [get_ports {switch_i[0]}]
set_property -dict { PACKAGE_PIN V16   IOSTANDARD LVCMOS33 PULLDOWN true } [get_ports {switch_i[1]}]
set_property -dict { PACKAGE_PIN W16   IOSTANDARD LVCMOS33 PULLDOWN true } [get_ports {switch_i[2]}]

# LEDs
set_property -dict { PACKAGE_PIN U16   IOSTANDARD LVCMOS33 PULLDOWN true } [get_ports {led_o[0]}]
set_property -dict { PACKAGE_PIN E19   IOSTANDARD LVCMOS33 PULLDOWN true } [get_ports {led_o[1]}]
set_property -dict { PACKAGE_PIN U19   IOSTANDARD LVCMOS33 PULLDOWN true } [get_ports {led_o[2]}]
set_property -dict { PACKAGE_PIN V19   IOSTANDARD LVCMOS33 PULLDOWN true } [get_ports {led_o[3]}]
set_property -dict { PACKAGE_PIN W18   IOSTANDARD LVCMOS33 PULLDOWN true } [get_ports {led_o[4]}]
set_property -dict { PACKAGE_PIN U15   IOSTANDARD LVCMOS33 PULLDOWN true } [get_ports {led_o[5]}]
set_property -dict { PACKAGE_PIN U14   IOSTANDARD LVCMOS33 PULLDOWN true } [get_ports {led_o[6]}]
set_property -dict { PACKAGE_PIN V14   IOSTANDARD LVCMOS33 PULLDOWN true } [get_ports {led_o[7]}]
set_property -dict { PACKAGE_PIN V13   IOSTANDARD LVCMOS33 PULLDOWN true } [get_ports {led_o[8]}]
set_property -dict { PACKAGE_PIN V3    IOSTANDARD LVCMOS33 PULLDOWN true } [get_ports {led_o[9]}]
set_property -dict { PACKAGE_PIN W3    IOSTANDARD LVCMOS33 PULLDOWN true } [get_ports {led_o[10]}]
set_property -dict { PACKAGE_PIN U3    IOSTANDARD LVCMOS33 PULLDOWN true } [get_ports {led_o[11]}]
set_property -dict { PACKAGE_PIN P3    IOSTANDARD LVCMOS33 PULLDOWN true } [get_ports {led_o[12]}]
set_property -dict { PACKAGE_PIN N3    IOSTANDARD LVCMOS33 PULLDOWN true } [get_ports {led_o[13]}]
set_property -dict { PACKAGE_PIN P1    IOSTANDARD LVCMOS33 PULLDOWN true } [get_ports {led_o[14]}]
set_property -dict { PACKAGE_PIN L1    IOSTANDARD LVCMOS33 PULLDOWN true } [get_ports {led_o[15]}]

#Pmod Header JA
#set_property -dict { PACKAGE_PIN J1   IOSTANDARD LVCMOS33 PULLDOWN true} [get_ports {phy_tx_o[0]}];
#set_property -dict { PACKAGE_PIN L2   IOSTANDARD LVCMOS33 PULLDOWN true} [get_ports {phy_tx_o[1]}];
#set_property -dict { PACKAGE_PIN J2   IOSTANDARD LVCMOS33 PULLDOWN true} [get_ports {phy_tx_v_o}];

# set_property -dict { PACKAGE_PIN G2   IOSTANDARD LVCMOS33 } [get_ports {res_o[3]}];
# set_property -dict { PACKAGE_PIN H1   IOSTANDARD LVCMOS33 } [get_ports {res_o[4]}];
# set_property -dict { PACKAGE_PIN K2   IOSTANDARD LVCMOS33 } [get_ports {res_o[5]}];
# set_property -dict { PACKAGE_PIN H2   IOSTANDARD LVCMOS33 } [get_ports {res_o[6]}];
set_property -dict { PACKAGE_PIN G3   IOSTANDARD LVCMOS33 } [get_ports {phy_rst_n_o}];

#Pmod Header JB
set_property -dict { PACKAGE_PIN A14   IOSTANDARD LVCMOS33 } [get_ports {phy_rx_i[0]}];
set_property -dict { PACKAGE_PIN A16   IOSTANDARD LVCMOS33 } [get_ports {phy_rx_i[1]}];
set_property -dict { PACKAGE_PIN B15   IOSTANDARD LVCMOS33 } [get_ports {phy_rx_v_i}];
set_property -dict { PACKAGE_PIN B16   IOSTANDARD LVCMOS33 } [get_ports {phy_rx_err_i}];

#set_property -dict { PACKAGE_PIN A15  IOSTANDARD LVCMOS33 } [get_ports {phy_tx_o[0]}];
#set_property -dict { PACKAGE_PIN A17  IOSTANDARD LVCMOS33 } [get_ports {phy_tx_o[1]}];
#set_property -dict { PACKAGE_PIN C15  IOSTANDARD LVCMOS33 } [get_ports {pin_io[6]}]; // osc clk
#set_property -dict { PACKAGE_PIN C16   IOSTANDARD LVCMOS33 } [get_ports {phy_tx_v_o}];

# Pmod Header JC
# jtag
set_property -dict { PACKAGE_PIN K17   IOSTANDARD LVCMOS33  } [get_ports {tdi_i}];
set_property -dict { PACKAGE_PIN M18  IOSTANDARD LVCMOS33 PULLDOWN true } [get_ports {tck_i}];
create_clock -add -name tck_i -period 500.00 [get_ports tck_i]
set_property -dict { PACKAGE_PIN N17   IOSTANDARD LVCMOS33  } [get_ports {tms_i}];
set_property -dict { PACKAGE_PIN P18   IOSTANDARD LVCMOS33  } [get_ports {tdo_o}];

set_property -dict { PACKAGE_PIN L17   IOSTANDARD LVCMOS33 } [get_ports {clk_phy_tx_i}];

set_property -dict { PACKAGE_PIN M19   IOSTANDARD LVCMOS33 DRIVE 16 SLEW FAST PULLDOWN true } [get_ports {phy_tx_o[0]}];
set_property -dict { PACKAGE_PIN P17   IOSTANDARD LVCMOS33 DRIVE 16 SLEW FAST PULLDOWN true } [get_ports {phy_tx_o[1]}];
set_property -dict { PACKAGE_PIN R18   IOSTANDARD LVCMOS33 DRIVE 16 SLEW FAST PULLDOWN true } [get_ports {phy_tx_v_o}];

#Pmod Header JXADC
set_property -dict { PACKAGE_PIN J3   IOSTANDARD LVCMOS33 } [get_ports {JXADC_o[0]}];#Sch name = XA1_P
set_property -dict { PACKAGE_PIN L3   IOSTANDARD LVCMOS33 } [get_ports {JXADC_o[1]}];#Sch name = XA2_P
set_property -dict { PACKAGE_PIN M2   IOSTANDARD LVCMOS33 } [get_ports {JXADC_o[2]}];#Sch name = XA3_P
set_property -dict { PACKAGE_PIN N2   IOSTANDARD LVCMOS33 } [get_ports {JXADC_o[3]}];#Sch name = XA4_P
set_property -dict { PACKAGE_PIN K3   IOSTANDARD LVCMOS33 } [get_ports {JXADC_o[4]}];#Sch name = XA1_N
set_property -dict { PACKAGE_PIN M3   IOSTANDARD LVCMOS33 } [get_ports {JXADC_o[5]}];#Sch name = XA2_N
set_property -dict { PACKAGE_PIN M1   IOSTANDARD LVCMOS33 } [get_ports {JXADC_o[6]}];#Sch name = XA3_N
set_property -dict { PACKAGE_PIN N1   IOSTANDARD LVCMOS33 } [get_ports {JXADC_o[7]}];#Sch name = XA4_N

# tie unused pins
set_property -dict { PACKAGE_PIN W7   IOSTANDARD LVCMOS33 } [get_ports {unused_o[0]}]
set_property -dict { PACKAGE_PIN W6   IOSTANDARD LVCMOS33 } [get_ports {unused_o[1]}]
set_property -dict { PACKAGE_PIN U8   IOSTANDARD LVCMOS33 } [get_ports {unused_o[2]}]
set_property -dict { PACKAGE_PIN V8   IOSTANDARD LVCMOS33 } [get_ports {unused_o[3]}]
set_property -dict { PACKAGE_PIN U5   IOSTANDARD LVCMOS33 } [get_ports {unused_o[4]}]
set_property -dict { PACKAGE_PIN V5   IOSTANDARD LVCMOS33 } [get_ports {unused_o[5]}]
set_property -dict { PACKAGE_PIN U7   IOSTANDARD LVCMOS33 } [get_ports {unused_o[6]}]
set_property -dict { PACKAGE_PIN V7   IOSTANDARD LVCMOS33 } [get_ports {unused_o[7]}]
set_property -dict { PACKAGE_PIN U2   IOSTANDARD LVCMOS33 } [get_ports {unused_o[8]}]
set_property -dict { PACKAGE_PIN U4   IOSTANDARD LVCMOS33 } [get_ports {unused_o[9]}]
set_property -dict { PACKAGE_PIN V4   IOSTANDARD LVCMOS33 } [get_ports {unused_o[10]}]
set_property -dict { PACKAGE_PIN W4   IOSTANDARD LVCMOS33 } [get_ports {unused_o[11]}]

## Configuration options, can be used for all designs
set_property CONFIG_VOLTAGE 3.3 [current_design]
set_property CFGBVS VCCO [current_design]

## SPI configuration mode options for QSPI boot, can be used for all designs
set_property BITSTREAM.GENERAL.COMPRESS TRUE [current_design]
set_property BITSTREAM.CONFIG.CONFIGRATE 33 [current_design]
set_property CONFIG_MODE SPIx4 [current_design]

# oscillator
set rx_clk "clk_osc_i"
set_property -dict { PACKAGE_PIN C15   IOSTANDARD LVCMOS33 PULLDOWN true } [get_ports $rx_clk] 
create_clock -add -name $rx_clk -period 20.00 -waveform {0 10} [get_ports $rx_clk]

set tx_clk "clk_phy_tx_i"
create_clock -add -name $tx_clk -period 20.00 -waveform {0 10} [get_ports $tx_clk]

# pll clock creation infered by tools and pll params

# lan8720a configs
set phy_rx_pins [get_ports -regexp phy_rx.*]
set phy_tx_pins [get_ports -regexp phy_tx.*]

# LAN8720A RMII interface timing constraints in 100BASE-TX mode using REF_CLK IN MODE
# timing signal names will be following the LAN8720A datasheet naming, and so will be 
# expressed from the perspective of the PHY chip and not the ASIC 

# output direction (input to the ASIC) RXD[1:0], RXER, CRS_DV (RXV)
# valid from rising edge of refclk
set toval 14
# hold from rising edge of refclk
set tohold 3

set_input_delay -clock ${rx_clk} -max ${toval} $phy_rx_pins
set_input_delay -clock ${rx_clk} -min ${tohold} $phy_rx_pins 

# input direction (output from the ASIC) TXD[1:0] TXEN (TXV)  
# setup time to rising edge for the refclk
#set tsu 4
set tsu 6
# input hold time after rising edge of refclk
#set tihold -1.5
set tihold -3.0

set_output_delay -clock ${tx_clk} -max ${tsu} $phy_tx_pins
set_output_delay -clock ${tx_clk} -min ${tihold} $phy_tx_pins


