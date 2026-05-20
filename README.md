# Teapot Project


## Assumptions 

Desgin will be using the [official microchip LAN8720A daughter board](https://www.microchip.com/en-us/development-tool/AC320004-3#Overview) for testing.

This ASIC will be supporting 100Mbps ethernet using the following assumptions: 
- PHY will be implemented used the microchip LAN8720A(I) chips
- External network is full duplex 
		- dropping CRS support in asic 
- No 10Mbps support
	- dissabling auto-negociation
- LAN8720A clk is provided by the rpi
	- allowing cheaper scalling to more than 1 ethernet port
	- might require to unsolder the pmod oscillator and replace the second 33ohm resitor with a wire
