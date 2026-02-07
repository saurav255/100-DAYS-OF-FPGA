set_property -dict { PACKAGE_PIN M18   IOSTANDARD LVCMOS33 } [get_ports { a[0] }]; #IO_L4N_T0_D05_14 Sch=btnu
set_property -dict { PACKAGE_PIN P17   IOSTANDARD LVCMOS33 } [get_ports { a[1] }]; #IO_L12P_T1_MRCC_14 Sch=btnl
set_property -dict { PACKAGE_PIN M17   IOSTANDARD LVCMOS33 } [get_ports { b[0] }]; #IO_L10N_T1_D15_14 Sch=btnr
set_property -dict { PACKAGE_PIN P18   IOSTANDARD LVCMOS33 } [get_ports { b[1] }]; #IO_L9N_T1_DQS_D13_14 Sch=btnd

set_property -dict { PACKAGE_PIN H17   IOSTANDARD LVCMOS33 } [get_ports { y1 }]; #IO_L18P_T2_A24_15 Sch=led[0]
set_property -dict { PACKAGE_PIN K15   IOSTANDARD LVCMOS33 } [get_ports { y2 }]; #IO_L24P_T3_RS1_15 Sch=led[1]
set_property -dict { PACKAGE_PIN J13   IOSTANDARD LVCMOS33 } [get_ports { y3 }]; #IO_L17N_T2_A25_15 Sch=led[2]