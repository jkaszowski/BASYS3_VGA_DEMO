## This file is a general .xdc for the Basys3 rev B board
## To use it in a project:
## - uncomment the lines corresponding to used pins
## - rename the used ports (in each line, after get_ports) according to the top level signal names in the project

# Clock signal
set_property PACKAGE_PIN W5 [get_ports CLK100MHZ]							
	set_property IOSTANDARD LVCMOS33 [get_ports CLK100MHZ]
	create_clock -add -name sys_clk_pin -period 10.00 -waveform {0 5} [get_ports CLK100MHZ]
 

#VGA Connector
set_property PACKAGE_PIN G19 [get_ports {vgaRed[0]}]				
	set_property IOSTANDARD LVCMOS33 [get_ports {vgaRed[0]}]
set_property PACKAGE_PIN H19 [get_ports {vgaRed[1]}]				
	set_property IOSTANDARD LVCMOS33 [get_ports {vgaRed[1]}]
set_property PACKAGE_PIN J19 [get_ports {vgaRed[2]}]				
	set_property IOSTANDARD LVCMOS33 [get_ports {vgaRed[2]}]
set_property PACKAGE_PIN N19 [get_ports {vgaRed[3]}]				
	set_property IOSTANDARD LVCMOS33 [get_ports {vgaRed[3]}]
set_property PACKAGE_PIN N18 [get_ports {vgaBlue[0]}]				
	set_property IOSTANDARD LVCMOS33 [get_ports {vgaBlue[0]}]
set_property PACKAGE_PIN L18 [get_ports {vgaBlue[1]}]				
	set_property IOSTANDARD LVCMOS33 [get_ports {vgaBlue[1]}]
set_property PACKAGE_PIN K18 [get_ports {vgaBlue[2]}]				
	set_property IOSTANDARD LVCMOS33 [get_ports {vgaBlue[2]}]
set_property PACKAGE_PIN J18 [get_ports {vgaBlue[3]}]				
	set_property IOSTANDARD LVCMOS33 [get_ports {vgaBlue[3]}]
set_property PACKAGE_PIN J17 [get_ports {vgaGreen[0]}]				
	set_property IOSTANDARD LVCMOS33 [get_ports {vgaGreen[0]}]
set_property PACKAGE_PIN H17 [get_ports {vgaGreen[1]}]				
	set_property IOSTANDARD LVCMOS33 [get_ports {vgaGreen[1]}]
set_property PACKAGE_PIN G17 [get_ports {vgaGreen[2]}]				
	set_property IOSTANDARD LVCMOS33 [get_ports {vgaGreen[2]}]
set_property PACKAGE_PIN D17 [get_ports {vgaGreen[3]}]				
	set_property IOSTANDARD LVCMOS33 [get_ports {vgaGreen[3]}]
set_property PACKAGE_PIN P19 [get_ports Hsync]						
	set_property IOSTANDARD LVCMOS33 [get_ports Hsync]
set_property PACKAGE_PIN R19 [get_ports Vsync]						
	set_property IOSTANDARD LVCMOS33 [get_ports Vsync]


# # Switches
# set_property PACKAGE_PIN V17 [get_ports {sw[0]}]					
# 	set_property IOSTANDARD LVCMOS33 [get_ports {sw[0]}]
# set_property PACKAGE_PIN V16 [get_ports {sw[1]}]					
# 	set_property IOSTANDARD LVCMOS33 [get_ports {sw[1]}]
#set_property PACKAGE_PIN W16 [get_ports {sw[2]}]					
	#set_property IOSTANDARD LVCMOS33 [get_ports {sw[2]}]
#set_property PACKAGE_PIN W17 [get_ports {sw[3]}]					
	#set_property IOSTANDARD LVCMOS33 [get_ports {sw[3]}]
#set_property PACKAGE_PIN W15 [get_ports {sw[4]}]					
	#set_property IOSTANDARD LVCMOS33 [get_ports {sw[4]}]
#set_property PACKAGE_PIN V15 [get_ports {sw[5]}]					
	#set_property IOSTANDARD LVCMOS33 [get_ports {sw[5]}]
#set_property PACKAGE_PIN W14 [get_ports {sw[6]}]					
	#set_property IOSTANDARD LVCMOS33 [get_ports {sw[6]}]
#set_property PACKAGE_PIN W13 [get_ports {sw[7]}]					
	#set_property IOSTANDARD LVCMOS33 [get_ports {sw[7]}]
#set_property PACKAGE_PIN V2 [get_ports {sw[8]}]					
	#set_property IOSTANDARD LVCMOS33 [get_ports {sw[8]}]
#set_property PACKAGE_PIN T3 [get_ports {sw[9]}]					
	#set_property IOSTANDARD LVCMOS33 [get_ports {sw[9]}]
#set_property PACKAGE_PIN T2 [get_ports {sw[10]}]					
	#set_property IOSTANDARD LVCMOS33 [get_ports {sw[10]}]
#set_property PACKAGE_PIN R3 [get_ports {sw[11]}]					
	#set_property IOSTANDARD LVCMOS33 [get_ports {sw[11]}]
#set_property PACKAGE_PIN W2 [get_ports {sw[12]}]					
	#set_property IOSTANDARD LVCMOS33 [get_ports {sw[12]}]
#set_property PACKAGE_PIN U1 [get_ports {sw[13]}]					
	#set_property IOSTANDARD LVCMOS33 [get_ports {sw[13]}]
#set_property PACKAGE_PIN T1 [get_ports {sw[14]}]					
	#set_property IOSTANDARD LVCMOS33 [get_ports {sw[14]}]
#set_property PACKAGE_PIN R2 [get_ports {sw[15]}]					
	#set_property IOSTANDARD LVCMOS33 [get_ports {sw[15]}]
 

# # LEDs
# set_property PACKAGE_PIN U16 [get_ports {LED[0]}]					
# 	set_property IOSTANDARD LVCMOS33 [get_ports {LED[0]}]
# set_property PACKAGE_PIN E19 [get_ports {LED[1]}]					
# 	set_property IOSTANDARD LVCMOS33 [get_ports {LED[1]}]
# set_property PACKAGE_PIN U19 [get_ports {LED[2]}]					
# 	set_property IOSTANDARD LVCMOS33 [get_ports {LED[2]}]
# set_property PACKAGE_PIN V19 [get_ports {LED[3]}]					
# 	set_property IOSTANDARD LVCMOS33 [get_ports {LED[3]}]
# set_property PACKAGE_PIN W18 [get_ports {LED[4]}]					
# 	set_property IOSTANDARD LVCMOS33 [get_ports {LED[4]}]
# set_property PACKAGE_PIN U15 [get_ports {LED[5]}]					
# 	set_property IOSTANDARD LVCMOS33 [get_ports {LED[5]}]
# set_property PACKAGE_PIN U14 [get_ports {LED[6]}]					
# 	set_property IOSTANDARD LVCMOS33 [get_ports {LED[6]}]
# set_property PACKAGE_PIN V14 [get_ports {LED[7]}]					
# 	set_property IOSTANDARD LVCMOS33 [get_ports {LED[7]}]
# set_property PACKAGE_PIN V13 [get_ports {LED[8]}]					
# 	set_property IOSTANDARD LVCMOS33 [get_ports {LED[8]}]
# set_property PACKAGE_PIN V3 [get_ports {LED[9]}]					
# 	set_property IOSTANDARD LVCMOS33 [get_ports {LED[9]}]
# set_property PACKAGE_PIN W3 [get_ports {LED[10]}]					
# 	set_property IOSTANDARD LVCMOS33 [get_ports {LED[10]}]
# set_property PACKAGE_PIN U3 [get_ports {LED[11]}]					
# 	set_property IOSTANDARD LVCMOS33 [get_ports {LED[11]}]
# set_property PACKAGE_PIN P3 [get_ports {LED[12]}]					
# 	set_property IOSTANDARD LVCMOS33 [get_ports {LED[12]}]
# set_property PACKAGE_PIN N3 [get_ports {LED[13]}]					
# 	set_property IOSTANDARD LVCMOS33 [get_ports {LED[13]}]
# set_property PACKAGE_PIN P1 [get_ports {LED[14]}]					
# 	set_property IOSTANDARD LVCMOS33 [get_ports {LED[14]}]
# set_property PACKAGE_PIN L1 [get_ports {LED[15]}]					
# 	set_property IOSTANDARD LVCMOS33 [get_ports {LED[15]}]
	
	
# #7 segment display
# set_property PACKAGE_PIN W7 [get_ports {seg[0]}]					
# 	set_property IOSTANDARD LVCMOS33 [get_ports {seg[0]}]
# set_property PACKAGE_PIN W6 [get_ports {seg[1]}]					
# 	set_property IOSTANDARD LVCMOS33 [get_ports {seg[1]}]
# set_property PACKAGE_PIN U8 [get_ports {seg[2]}]					
# 	set_property IOSTANDARD LVCMOS33 [get_ports {seg[2]}]
# set_property PACKAGE_PIN V8 [get_ports {seg[3]}]					
# 	set_property IOSTANDARD LVCMOS33 [get_ports {seg[3]}]
# set_property PACKAGE_PIN U5 [get_ports {seg[4]}]					
# 	set_property IOSTANDARD LVCMOS33 [get_ports {seg[4]}]
# set_property PACKAGE_PIN V5 [get_ports {seg[5]}]					
# 	set_property IOSTANDARD LVCMOS33 [get_ports {seg[5]}]
# set_property PACKAGE_PIN U7 [get_ports {seg[6]}]					
# 	set_property IOSTANDARD LVCMOS33 [get_ports {seg[6]}]

# set_property PACKAGE_PIN V7 [get_ports dp]							
# 	set_property IOSTANDARD LVCMOS33 [get_ports dp]

# set_property PACKAGE_PIN U2 [get_ports {an[0]}]					
# 	set_property IOSTANDARD LVCMOS33 [get_ports {an[0]}]
# set_property PACKAGE_PIN U4 [get_ports {an[1]}]					
# 	set_property IOSTANDARD LVCMOS33 [get_ports {an[1]}]
# set_property PACKAGE_PIN V4 [get_ports {an[2]}]					
# 	set_property IOSTANDARD LVCMOS33 [get_ports {an[2]}]
# set_property PACKAGE_PIN W4 [get_ports {an[3]}]					
# 	set_property IOSTANDARD LVCMOS33 [get_ports {an[3]}]


##Buttons
#set_property PACKAGE_PIN U18 [get_ports btnC]						
	#set_property IOSTANDARD LVCMOS33 [get_ports btnC]
#set_property PACKAGE_PIN T18 [get_ports btnU]						
	#set_property IOSTANDARD LVCMOS33 [get_ports btnU]
#set_property PACKAGE_PIN W19 [get_ports btnL]						
	#set_property IOSTANDARD LVCMOS33 [get_ports btnL]
#set_property PACKAGE_PIN T17 [get_ports btnR]						
	#set_property IOSTANDARD LVCMOS33 [get_ports btnR]
#set_property PACKAGE_PIN U17 [get_ports btnD]						
	#set_property IOSTANDARD LVCMOS33 [get_ports btnD]
 


##Pmod Header JA
##Sch name = JA1
#set_property PACKAGE_PIN J1 [get_ports {JA[0]}]					
	#set_property IOSTANDARD LVCMOS33 [get_ports {JA[0]}]
##Sch name = JA2
#set_property PACKAGE_PIN L2 [get_ports {JA[1]}]					
	#set_property IOSTANDARD LVCMOS33 [get_ports {JA[1]}]
##Sch name = JA3
#set_property PACKAGE_PIN J2 [get_ports {JA[2]}]					
	#set_property IOSTANDARD LVCMOS33 [get_ports {JA[2]}]
##Sch name = JA4
#set_property PACKAGE_PIN G2 [get_ports {JA[3]}]					
	#set_property IOSTANDARD LVCMOS33 [get_ports {JA[3]}]
##Sch name = JA7
#set_property PACKAGE_PIN H1 [get_ports {JA[4]}]					
	#set_property IOSTANDARD LVCMOS33 [get_ports {JA[4]}]
##Sch name = JA8
#set_property PACKAGE_PIN K2 [get_ports {JA[5]}]					
	#set_property IOSTANDARD LVCMOS33 [get_ports {JA[5]}]
##Sch name = JA9
#set_property PACKAGE_PIN H2 [get_ports {JA[6]}]					
	#set_property IOSTANDARD LVCMOS33 [get_ports {JA[6]}]
##Sch name = JA10
#set_property PACKAGE_PIN G3 [get_ports {JA[7]}]					
	#set_property IOSTANDARD LVCMOS33 [get_ports {JA[7]}]

##USB-RS232 Interface
#set_property PACKAGE_PIN B18 [get_ports RsRx]						
	#set_property IOSTANDARD LVCMOS33 [get_ports RsRx]
#set_property PACKAGE_PIN A18 [get_ports RsTx]						
	#set_property IOSTANDARD LVCMOS33 [get_ports RsTx]