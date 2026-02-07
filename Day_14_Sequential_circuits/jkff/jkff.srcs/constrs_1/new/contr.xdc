## Clock signal
set_property -dict { PACKAGE_PIN E3    IOSTANDARD LVCMOS33 } [get_ports { clk }]; #IO_L12P_T1_MRCC_35 Sch=clk100mhz
create_clock -add -name sys_clk_pin -period 10.00 -waveform {0 5} [get_ports {clk}];

set_property -dict { PACKAGE_PIN N17   IOSTANDARD LVCMOS33 } [get_ports { rst }]; #IO_L9P_T1_DQS_14 Sch=btnc

set_property -dict { PACKAGE_PIN J15   IOSTANDARD LVCMOS33 } [get_ports { j }]; #IO_L24N_T3_RS0_15 Sch=sw[0]
set_property -dict { PACKAGE_PIN L16   IOSTANDARD LVCMOS33 } [get_ports { k }]; #IO_L3N_T0_DQS_EMCCLK_14 Sch=sw[1]


set_property -dict { PACKAGE_PIN R12   IOSTANDARD LVCMOS33 } [get_ports { q }]; #IO_L5P_T0_D06_14 Sch=led16_b