## Clock signal
set_property -dict { PACKAGE_PIN E3    IOSTANDARD LVCMOS33 } [get_ports { clk }]; #IO_L12P_T1_MRCC_35 Sch=clk100mhz
create_clock -add -name sys_clk_pin -period 10.00 -waveform {0 5} [get_ports {clk}];

set_property -dict { PACKAGE_PIN N17   IOSTANDARD LVCMOS33 } [get_ports { rst }]; #IO_L9P_T1_DQS_14 Sch=btnc


set_property -dict { PACKAGE_PIN M18   IOSTANDARD LVCMOS33 } [get_ports { t }]; #IO_L4N_T0_D05_14 Sch=btnu

set_property -dict { PACKAGE_PIN R12   IOSTANDARD LVCMOS33 } [get_ports { q }]; #IO_L5P_T0_D06_14 Sch=led16_b