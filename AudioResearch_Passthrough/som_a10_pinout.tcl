post_message "##################################################################################################"
post_message "# Processing assignments file starts."



########################################################################################################################
# HPS
########################################################################################################################

############################################################
# ETHERNET
############################################################
set_location_assignment PIN_L19  -to hps_io_phery_emac1_MDC
set_location_assignment PIN_K19  -to hps_io_phery_emac1_MDIO
set_location_assignment PIN_G20  -to hps_io_phery_emac1_RX_CLK
set_location_assignment PIN_F20  -to hps_io_phery_emac1_RX_CTL
set_location_assignment PIN_F19  -to hps_io_phery_emac1_RXD0
set_location_assignment PIN_E19  -to hps_io_phery_emac1_RXD1
set_location_assignment PIN_C20  -to hps_io_phery_emac1_RXD2
set_location_assignment PIN_D20  -to hps_io_phery_emac1_RXD3
set_location_assignment PIN_E17  -to hps_io_phery_emac1_TX_CLK
set_location_assignment PIN_E18  -to hps_io_phery_emac1_TX_CTL
set_location_assignment PIN_E21  -to hps_io_phery_emac1_TXD0
set_location_assignment PIN_D21  -to hps_io_phery_emac1_TXD1
set_location_assignment PIN_D22  -to hps_io_phery_emac1_TXD2
set_location_assignment PIN_C22  -to hps_io_phery_emac1_TXD3
set_location_assignment PIN_J21  -to hps_io_phery_emac2_MDC
set_location_assignment PIN_K21  -to hps_io_phery_emac2_MDIO
set_location_assignment PIN_A18  -to hps_io_phery_emac2_RX_CLK
set_location_assignment PIN_B18  -to hps_io_phery_emac2_RX_CTL
set_location_assignment PIN_B22  -to hps_io_phery_emac2_RXD0
set_location_assignment PIN_A21  -to hps_io_phery_emac2_RXD1
set_location_assignment PIN_C19  -to hps_io_phery_emac2_RXD2
set_location_assignment PIN_D19  -to hps_io_phery_emac2_RXD3
set_location_assignment PIN_C18  -to hps_io_phery_emac2_TX_CLK
set_location_assignment PIN_D17  -to hps_io_phery_emac2_TX_CTL
set_location_assignment PIN_A19  -to hps_io_phery_emac2_TXD0
set_location_assignment PIN_A20  -to hps_io_phery_emac2_TXD1
set_location_assignment PIN_B21  -to hps_io_phery_emac2_TXD2
set_location_assignment PIN_B20  -to hps_io_phery_emac2_TXD3

set_instance_assignment -name IO_STANDARD "1.8V"                           -to hps_io_phery_emac1_MDC
set_instance_assignment -name IO_STANDARD "1.8V"                           -to hps_io_phery_emac1_MDIO
set_instance_assignment -name IO_STANDARD "1.8V"                           -to hps_io_phery_emac1_RX_CLK
set_instance_assignment -name IO_STANDARD "1.8V"                           -to hps_io_phery_emac1_RX_CTL
set_instance_assignment -name IO_STANDARD "1.8V"                           -to hps_io_phery_emac1_RXD0
set_instance_assignment -name IO_STANDARD "1.8V"                           -to hps_io_phery_emac1_RXD1
set_instance_assignment -name IO_STANDARD "1.8V"                           -to hps_io_phery_emac1_RXD2
set_instance_assignment -name IO_STANDARD "1.8V"                           -to hps_io_phery_emac1_RXD3
set_instance_assignment -name IO_STANDARD "1.8V"                           -to hps_io_phery_emac1_TX_CLK
set_instance_assignment -name IO_STANDARD "1.8V"                           -to hps_io_phery_emac1_TX_CTL
set_instance_assignment -name IO_STANDARD "1.8V"                           -to hps_io_phery_emac1_TXD0
set_instance_assignment -name IO_STANDARD "1.8V"                           -to hps_io_phery_emac1_TXD1
set_instance_assignment -name IO_STANDARD "1.8V"                           -to hps_io_phery_emac1_TXD2
set_instance_assignment -name IO_STANDARD "1.8V"                           -to hps_io_phery_emac1_TXD3
set_instance_assignment -name IO_STANDARD "1.8V"                           -to hps_io_phery_emac2_MDC
set_instance_assignment -name IO_STANDARD "1.8V"                           -to hps_io_phery_emac2_MDIO
set_instance_assignment -name IO_STANDARD "1.8V"                           -to hps_io_phery_emac2_RX_CLK
set_instance_assignment -name IO_STANDARD "1.8V"                           -to hps_io_phery_emac2_RX_CTL
set_instance_assignment -name IO_STANDARD "1.8V"                           -to hps_io_phery_emac2_RXD0
set_instance_assignment -name IO_STANDARD "1.8V"                           -to hps_io_phery_emac2_RXD1
set_instance_assignment -name IO_STANDARD "1.8V"                           -to hps_io_phery_emac2_RXD2
set_instance_assignment -name IO_STANDARD "1.8V"                           -to hps_io_phery_emac2_RXD3
set_instance_assignment -name IO_STANDARD "1.8V"                           -to hps_io_phery_emac2_TX_CLK
set_instance_assignment -name IO_STANDARD "1.8V"                           -to hps_io_phery_emac2_TX_CTL
set_instance_assignment -name IO_STANDARD "1.8V"                           -to hps_io_phery_emac2_TXD0
set_instance_assignment -name IO_STANDARD "1.8V"                           -to hps_io_phery_emac2_TXD1
set_instance_assignment -name IO_STANDARD "1.8V"                           -to hps_io_phery_emac2_TXD2
set_instance_assignment -name IO_STANDARD "1.8V"                           -to hps_io_phery_emac2_TXD3

############################################################
# SDMMC
############################################################
set_location_assignment PIN_D15  -to hps_io_phery_sdmmc_CCLK
set_location_assignment PIN_C17  -to hps_io_phery_sdmmc_CMD
set_location_assignment PIN_B15  -to hps_io_phery_sdmmc_D0
set_location_assignment PIN_B17  -to hps_io_phery_sdmmc_D1
set_location_assignment PIN_D16  -to hps_io_phery_sdmmc_D2
set_location_assignment PIN_A16  -to hps_io_phery_sdmmc_D3
set_location_assignment PIN_G16  -to hps_io_phery_sdmmc_D4
set_location_assignment PIN_A15  -to hps_io_phery_sdmmc_D5
set_location_assignment PIN_C15  -to hps_io_phery_sdmmc_D6
set_location_assignment PIN_F16  -to hps_io_phery_sdmmc_D7

set_instance_assignment -name IO_STANDARD "1.8V"                           -to hps_io_phery_sdmmc_CCLK
set_instance_assignment -name IO_STANDARD "1.8V"                           -to hps_io_phery_sdmmc_CMD
set_instance_assignment -name IO_STANDARD "1.8V"                           -to hps_io_phery_sdmmc_D0
set_instance_assignment -name IO_STANDARD "1.8V"                           -to hps_io_phery_sdmmc_D1
set_instance_assignment -name IO_STANDARD "1.8V"                           -to hps_io_phery_sdmmc_D2
set_instance_assignment -name IO_STANDARD "1.8V"                           -to hps_io_phery_sdmmc_D3
set_instance_assignment -name IO_STANDARD "1.8V"                           -to hps_io_phery_sdmmc_D4
set_instance_assignment -name IO_STANDARD "1.8V"                           -to hps_io_phery_sdmmc_D5
set_instance_assignment -name IO_STANDARD "1.8V"                           -to hps_io_phery_sdmmc_D6
set_instance_assignment -name IO_STANDARD "1.8V"                           -to hps_io_phery_sdmmc_D7

############################################################
# MISC
############################################################
set_location_assignment PIN_AE12 -to hps_good            
set_location_assignment PIN_M17  -to hps_io_phery_uart0_CTS_N
set_location_assignment PIN_M18  -to hps_io_phery_uart0_RTS_N
set_location_assignment PIN_L18  -to hps_io_phery_uart0_RX
set_location_assignment PIN_K18  -to hps_io_phery_uart0_TX
set_location_assignment PIN_J20  -to hps_io_phery_usb1_CLK
set_location_assignment PIN_H17  -to hps_io_phery_usb1_DATA0
set_location_assignment PIN_G21  -to hps_io_phery_usb1_DATA1
set_location_assignment PIN_G18  -to hps_io_phery_usb1_DATA2
set_location_assignment PIN_H18  -to hps_io_phery_usb1_DATA3
set_location_assignment PIN_F18  -to hps_io_phery_usb1_DATA4
set_location_assignment PIN_G17  -to hps_io_phery_usb1_DATA5
set_location_assignment PIN_J19  -to hps_io_phery_usb1_DATA6
set_location_assignment PIN_H19  -to hps_io_phery_usb1_DATA7
set_location_assignment PIN_J17  -to hps_io_phery_usb1_DIR
set_location_assignment PIN_F21  -to hps_io_phery_usb1_NXT
set_location_assignment PIN_H20  -to hps_io_phery_usb1_STP
set_location_assignment PIN_A26  -to hps_rst             
set_location_assignment PIN_F15  -to hps_usr_led_g_n     
set_location_assignment PIN_H15  -to hps_usr_led_r_n     
set_location_assignment PIN_L21  -to TPA6130_i2c_SCL     
set_location_assignment PIN_M21  -to TPA6130_i2c_SDA     

set_instance_assignment -name IO_STANDARD "1.2V"                           -to hps_good
set_instance_assignment -name IO_STANDARD "1.8V"                           -to hps_io_phery_uart0_CTS_N
set_instance_assignment -name IO_STANDARD "1.8V"                           -to hps_io_phery_uart0_RTS_N
set_instance_assignment -name IO_STANDARD "1.8V"                           -to hps_io_phery_uart0_RX
set_instance_assignment -name IO_STANDARD "1.8V"                           -to hps_io_phery_uart0_TX
set_instance_assignment -name IO_STANDARD "1.8V"                           -to hps_io_phery_usb1_CLK
set_instance_assignment -name IO_STANDARD "1.8V"                           -to hps_io_phery_usb1_DATA0
set_instance_assignment -name IO_STANDARD "1.8V"                           -to hps_io_phery_usb1_DATA1
set_instance_assignment -name IO_STANDARD "1.8V"                           -to hps_io_phery_usb1_DATA2
set_instance_assignment -name IO_STANDARD "1.8V"                           -to hps_io_phery_usb1_DATA3
set_instance_assignment -name IO_STANDARD "1.8V"                           -to hps_io_phery_usb1_DATA4
set_instance_assignment -name IO_STANDARD "1.8V"                           -to hps_io_phery_usb1_DATA5
set_instance_assignment -name IO_STANDARD "1.8V"                           -to hps_io_phery_usb1_DATA6
set_instance_assignment -name IO_STANDARD "1.8V"                           -to hps_io_phery_usb1_DATA7
set_instance_assignment -name IO_STANDARD "1.8V"                           -to hps_io_phery_usb1_DIR
set_instance_assignment -name IO_STANDARD "1.8V"                           -to hps_io_phery_usb1_NXT
set_instance_assignment -name IO_STANDARD "1.8V"                           -to hps_io_phery_usb1_STP
set_instance_assignment -name IO_STANDARD "1.2V"                           -to hps_rst
set_instance_assignment -name IO_STANDARD "1.8V"                           -to hps_usr_led_g_n
set_instance_assignment -name IO_STANDARD "1.8V"                           -to hps_usr_led_r_n
set_instance_assignment -name IO_STANDARD "1.8V"                           -to TPA6130_i2c_SCL
set_instance_assignment -name IO_STANDARD "1.8V"                           -to TPA6130_i2c_SDA

############################################################
# DDR4
############################################################
set_location_assignment PIN_H27  -to hps_ddr4_a[0]       
set_location_assignment PIN_G27  -to hps_ddr4_a[1]       
set_location_assignment PIN_G26  -to hps_ddr4_a[10]      
set_location_assignment PIN_F26  -to hps_ddr4_a[11]      
set_location_assignment PIN_F24  -to hps_ddr4_a[12]      
set_location_assignment PIN_E27  -to hps_ddr4_a[13]      
set_location_assignment PIN_D27  -to hps_ddr4_a[14]      
set_location_assignment PIN_E22  -to hps_ddr4_a[15]      
set_location_assignment PIN_F23  -to hps_ddr4_a[16]      
set_location_assignment PIN_G23  -to hps_ddr4_a[2]       
set_location_assignment PIN_G22  -to hps_ddr4_a[3]       
set_location_assignment PIN_H25  -to hps_ddr4_a[4]       
set_location_assignment PIN_G25  -to hps_ddr4_a[5]       
set_location_assignment PIN_H24  -to hps_ddr4_a[6]       
set_location_assignment PIN_H23  -to hps_ddr4_a[7]       
set_location_assignment PIN_H22  -to hps_ddr4_a[8]       
set_location_assignment PIN_J22  -to hps_ddr4_a[9]       
set_location_assignment PIN_J24  -to hps_ddr4_act_n[0]   
set_location_assignment PIN_AN20 -to hps_ddr4_alert_n[0] 
set_location_assignment PIN_D26  -to hps_ddr4_ba[0]      
set_location_assignment PIN_D25  -to hps_ddr4_ba[1]      
set_location_assignment PIN_C25  -to hps_ddr4_bg[0]      
set_location_assignment PIN_M24  -to hps_ddr4_bg[1]      
set_location_assignment PIN_M23  -to hps_ddr4_ck_n[0]    
set_location_assignment PIN_L23  -to hps_ddr4_ck[0]      
set_location_assignment PIN_J27  -to hps_ddr4_cke[0]     
set_location_assignment PIN_K24  -to hps_ddr4_cs_n[0]    
set_location_assignment PIN_AP24 -to hps_ddr4_dbi_n[0]   
set_location_assignment PIN_AE23 -to hps_ddr4_dbi_n[1]   
set_location_assignment PIN_AM27 -to hps_ddr4_dbi_n[2]   
set_location_assignment PIN_AD25 -to hps_ddr4_dbi_n[3]   
set_location_assignment PIN_AP21 -to hps_ddr4_dq[0]      
set_location_assignment PIN_AN24 -to hps_ddr4_dq[1]      
set_location_assignment PIN_AK22 -to hps_ddr4_dq[10]     
set_location_assignment PIN_AK24 -to hps_ddr4_dq[11]     
set_location_assignment PIN_AF23 -to hps_ddr4_dq[12]     
set_location_assignment PIN_AJ24 -to hps_ddr4_dq[13]     
set_location_assignment PIN_AG23 -to hps_ddr4_dq[14]     
set_location_assignment PIN_AL23 -to hps_ddr4_dq[15]     
set_location_assignment PIN_AP26 -to hps_ddr4_dq[16]     
set_location_assignment PIN_AL26 -to hps_ddr4_dq[17]     
set_location_assignment PIN_AP27 -to hps_ddr4_dq[18]     
set_location_assignment PIN_AK26 -to hps_ddr4_dq[19]     
set_location_assignment PIN_AP22 -to hps_ddr4_dq[2]      
set_location_assignment PIN_AP25 -to hps_ddr4_dq[20]     
set_location_assignment PIN_AK27 -to hps_ddr4_dq[21]     
set_location_assignment PIN_AN25 -to hps_ddr4_dq[22]     
set_location_assignment PIN_AN27 -to hps_ddr4_dq[23]     
set_location_assignment PIN_AJ27 -to hps_ddr4_dq[24]     
set_location_assignment PIN_AD24 -to hps_ddr4_dq[25]     
set_location_assignment PIN_AJ26 -to hps_ddr4_dq[26]     
set_location_assignment PIN_AH27 -to hps_ddr4_dq[27]     
set_location_assignment PIN_AJ25 -to hps_ddr4_dq[28]     
set_location_assignment PIN_AE24 -to hps_ddr4_dq[29]     
set_location_assignment PIN_AL24 -to hps_ddr4_dq[3]      
set_location_assignment PIN_AH25 -to hps_ddr4_dq[30]     
set_location_assignment PIN_AH26 -to hps_ddr4_dq[31]     
set_location_assignment PIN_AP20 -to hps_ddr4_dq[4]      
set_location_assignment PIN_AL25 -to hps_ddr4_dq[5]      
set_location_assignment PIN_AM23 -to hps_ddr4_dq[6]      
set_location_assignment PIN_AN23 -to hps_ddr4_dq[7]      
set_location_assignment PIN_AK23 -to hps_ddr4_dq[8]      
set_location_assignment PIN_AF24 -to hps_ddr4_dq[9]      
set_location_assignment PIN_AN22 -to hps_ddr4_dqs_n[0]   
set_location_assignment PIN_AH24 -to hps_ddr4_dqs_n[1]   
set_location_assignment PIN_AM26 -to hps_ddr4_dqs_n[2]   
set_location_assignment PIN_AF25 -to hps_ddr4_dqs_n[3]   
set_location_assignment PIN_AM22 -to hps_ddr4_dqs[0]     
set_location_assignment PIN_AH23 -to hps_ddr4_dqs[1]     
set_location_assignment PIN_AM25 -to hps_ddr4_dqs[2]     
set_location_assignment PIN_AG25 -to hps_ddr4_dqs[3]     
set_location_assignment PIN_F25  -to hps_ddr4_oct_rzqin  
set_location_assignment PIN_K25  -to hps_ddr4_odt[0]     
set_location_assignment PIN_K22  -to hps_ddr4_par[0]     
set_location_assignment PIN_AL27 -to hps_ddr4_pll_ref_clk
set_location_assignment PIN_L24  -to hps_ddr4_reset_n[0] 

set_instance_assignment -name IO_STANDARD "SSTL-12"                        -to hps_ddr4_a[0]
set_instance_assignment -name IO_STANDARD "SSTL-12"                        -to hps_ddr4_a[1]
set_instance_assignment -name IO_STANDARD "SSTL-12"                        -to hps_ddr4_a[10]
set_instance_assignment -name IO_STANDARD "SSTL-12"                        -to hps_ddr4_a[11]
set_instance_assignment -name IO_STANDARD "SSTL-12"                        -to hps_ddr4_a[12]
set_instance_assignment -name IO_STANDARD "SSTL-12"                        -to hps_ddr4_a[13]
set_instance_assignment -name IO_STANDARD "SSTL-12"                        -to hps_ddr4_a[14]
set_instance_assignment -name IO_STANDARD "SSTL-12"                        -to hps_ddr4_a[15]
set_instance_assignment -name IO_STANDARD "SSTL-12"                        -to hps_ddr4_a[16]
set_instance_assignment -name IO_STANDARD "SSTL-12"                        -to hps_ddr4_a[2]
set_instance_assignment -name IO_STANDARD "SSTL-12"                        -to hps_ddr4_a[3]
set_instance_assignment -name IO_STANDARD "SSTL-12"                        -to hps_ddr4_a[4]
set_instance_assignment -name IO_STANDARD "SSTL-12"                        -to hps_ddr4_a[5]
set_instance_assignment -name IO_STANDARD "SSTL-12"                        -to hps_ddr4_a[6]
set_instance_assignment -name IO_STANDARD "SSTL-12"                        -to hps_ddr4_a[7]
set_instance_assignment -name IO_STANDARD "SSTL-12"                        -to hps_ddr4_a[8]
set_instance_assignment -name IO_STANDARD "SSTL-12"                        -to hps_ddr4_a[9]
set_instance_assignment -name IO_STANDARD "SSTL-12"                        -to hps_ddr4_act_n[0]
set_instance_assignment -name IO_STANDARD "SSTL-12"                        -to hps_ddr4_alert_n[0]
set_instance_assignment -name IO_STANDARD "SSTL-12"                        -to hps_ddr4_ba[0]
set_instance_assignment -name IO_STANDARD "SSTL-12"                        -to hps_ddr4_ba[1]
set_instance_assignment -name IO_STANDARD "SSTL-12"                        -to hps_ddr4_bg[0]
set_instance_assignment -name IO_STANDARD "SSTL-12"                        -to hps_ddr4_bg[1]
set_instance_assignment -name IO_STANDARD "DIFFERENTIAL 1.2-V SSTL"        -to hps_ddr4_ck_n[0]
set_instance_assignment -name IO_STANDARD "DIFFERENTIAL 1.2-V SSTL"        -to hps_ddr4_ck[0]
set_instance_assignment -name IO_STANDARD "SSTL-12"                        -to hps_ddr4_cke[0]
set_instance_assignment -name IO_STANDARD "SSTL-12"                        -to hps_ddr4_cs_n[0]
set_instance_assignment -name IO_STANDARD "1.2-V POD"                      -to hps_ddr4_dbi_n[0]
set_instance_assignment -name IO_STANDARD "1.2-V POD"                      -to hps_ddr4_dbi_n[1]
set_instance_assignment -name IO_STANDARD "1.2-V POD"                      -to hps_ddr4_dbi_n[2]
set_instance_assignment -name IO_STANDARD "1.2-V POD"                      -to hps_ddr4_dbi_n[3]
set_instance_assignment -name IO_STANDARD "1.2-V POD"                      -to hps_ddr4_dq[0]
set_instance_assignment -name IO_STANDARD "1.2-V POD"                      -to hps_ddr4_dq[1]
set_instance_assignment -name IO_STANDARD "1.2-V POD"                      -to hps_ddr4_dq[10]
set_instance_assignment -name IO_STANDARD "1.2-V POD"                      -to hps_ddr4_dq[11]
set_instance_assignment -name IO_STANDARD "1.2-V POD"                      -to hps_ddr4_dq[12]
set_instance_assignment -name IO_STANDARD "1.2-V POD"                      -to hps_ddr4_dq[13]
set_instance_assignment -name IO_STANDARD "1.2-V POD"                      -to hps_ddr4_dq[14]
set_instance_assignment -name IO_STANDARD "1.2-V POD"                      -to hps_ddr4_dq[15]
set_instance_assignment -name IO_STANDARD "1.2-V POD"                      -to hps_ddr4_dq[16]
set_instance_assignment -name IO_STANDARD "1.2-V POD"                      -to hps_ddr4_dq[17]
set_instance_assignment -name IO_STANDARD "1.2-V POD"                      -to hps_ddr4_dq[18]
set_instance_assignment -name IO_STANDARD "1.2-V POD"                      -to hps_ddr4_dq[19]
set_instance_assignment -name IO_STANDARD "1.2-V POD"                      -to hps_ddr4_dq[2]
set_instance_assignment -name IO_STANDARD "1.2-V POD"                      -to hps_ddr4_dq[20]
set_instance_assignment -name IO_STANDARD "1.2-V POD"                      -to hps_ddr4_dq[21]
set_instance_assignment -name IO_STANDARD "1.2-V POD"                      -to hps_ddr4_dq[22]
set_instance_assignment -name IO_STANDARD "1.2-V POD"                      -to hps_ddr4_dq[23]
set_instance_assignment -name IO_STANDARD "1.2-V POD"                      -to hps_ddr4_dq[24]
set_instance_assignment -name IO_STANDARD "1.2-V POD"                      -to hps_ddr4_dq[25]
set_instance_assignment -name IO_STANDARD "1.2-V POD"                      -to hps_ddr4_dq[26]
set_instance_assignment -name IO_STANDARD "1.2-V POD"                      -to hps_ddr4_dq[27]
set_instance_assignment -name IO_STANDARD "1.2-V POD"                      -to hps_ddr4_dq[28]
set_instance_assignment -name IO_STANDARD "1.2-V POD"                      -to hps_ddr4_dq[29]
set_instance_assignment -name IO_STANDARD "1.2-V POD"                      -to hps_ddr4_dq[3]
set_instance_assignment -name IO_STANDARD "1.2-V POD"                      -to hps_ddr4_dq[30]
set_instance_assignment -name IO_STANDARD "1.2-V POD"                      -to hps_ddr4_dq[31]
set_instance_assignment -name IO_STANDARD "1.2-V POD"                      -to hps_ddr4_dq[4]
set_instance_assignment -name IO_STANDARD "1.2-V POD"                      -to hps_ddr4_dq[5]
set_instance_assignment -name IO_STANDARD "1.2-V POD"                      -to hps_ddr4_dq[6]
set_instance_assignment -name IO_STANDARD "1.2-V POD"                      -to hps_ddr4_dq[7]
set_instance_assignment -name IO_STANDARD "1.2-V POD"                      -to hps_ddr4_dq[8]
set_instance_assignment -name IO_STANDARD "1.2-V POD"                      -to hps_ddr4_dq[9]
set_instance_assignment -name IO_STANDARD "DIFFERENTIAL 1.2-V POD"         -to hps_ddr4_dqs_n[0]
set_instance_assignment -name IO_STANDARD "DIFFERENTIAL 1.2-V POD"         -to hps_ddr4_dqs_n[1]
set_instance_assignment -name IO_STANDARD "DIFFERENTIAL 1.2-V POD"         -to hps_ddr4_dqs_n[2]
set_instance_assignment -name IO_STANDARD "DIFFERENTIAL 1.2-V POD"         -to hps_ddr4_dqs_n[3]
set_instance_assignment -name IO_STANDARD "DIFFERENTIAL 1.2-V POD"         -to hps_ddr4_dqs[0]
set_instance_assignment -name IO_STANDARD "DIFFERENTIAL 1.2-V POD"         -to hps_ddr4_dqs[1]
set_instance_assignment -name IO_STANDARD "DIFFERENTIAL 1.2-V POD"         -to hps_ddr4_dqs[2]
set_instance_assignment -name IO_STANDARD "DIFFERENTIAL 1.2-V POD"         -to hps_ddr4_dqs[3]
set_instance_assignment -name IO_STANDARD "1.2V"                           -to hps_ddr4_oct_rzqin
set_instance_assignment -name IO_STANDARD "SSTL-12"                        -to hps_ddr4_odt[0]
set_instance_assignment -name IO_STANDARD "SSTL-12"                        -to hps_ddr4_par[0]
set_instance_assignment -name IO_STANDARD "1.2V"                           -to hps_ddr4_pll_ref_clk
set_instance_assignment -name IO_STANDARD "1.2V"                           -to hps_ddr4_reset_n[0]


########################################################################################################################
# LPC
########################################################################################################################

############################################################
# CLK
############################################################
set_location_assignment PIN_AL15 -to AD1939_ADC_ABCLK    
set_location_assignment PIN_AM15 -to AD1939_DAC_DBCLK    
set_location_assignment PIN_AD11 -to AD1939_MCLK         
set_location_assignment PIN_AD10 -to lpc_clk1_m2c        

set_instance_assignment -name IO_STANDARD "LVDS"                           -to AD1939_ADC_ABCLK
set_instance_assignment -name IO_STANDARD "LVDS"                           -to AD1939_DAC_DBCLK
set_instance_assignment -name IO_STANDARD "LVDS"                           -to AD1939_MCLK
set_instance_assignment -name IO_STANDARD "LVDS"                           -to lpc_clk1_m2c

############################################################
# IO
############################################################
set_location_assignment PIN_R9   -to AD1939_ADC_ALRCLK   
set_location_assignment PIN_T10  -to AD1939_ADC_ASDATA1  
set_location_assignment PIN_U10  -to AD1939_ADC_ASDATA2  
set_location_assignment PIN_U8   -to AD1939_DAC_DLRCLK   
set_location_assignment PIN_AH19 -to AD1939_DAC_DSDATA1  
set_location_assignment PIN_AJ15 -to AD1939_DAC_DSDATA2  
set_location_assignment PIN_AH18 -to AD1939_DAC_DSDATA3  
set_location_assignment PIN_AG18 -to AD1939_DAC_DSDATA4  
set_location_assignment PIN_AF18 -to AD1939_RESET_n      
set_location_assignment PIN_L8   -to AD1939_spi_CCLK     
set_location_assignment PIN_R7   -to AD1939_spi_CIN      
set_location_assignment PIN_V9   -to AD1939_spi_CLATCH_n 
set_location_assignment PIN_V8   -to AD1939_spi_COUT     
set_location_assignment PIN_AG16 -to INMP621_mic_CLK     
set_location_assignment PIN_AF16 -to INMP621_mic_DATA    
set_location_assignment PIN_AN18 -to lpc_la_n[0]         
set_location_assignment PIN_AP17 -to lpc_la_n[1]         
set_location_assignment PIN_AH15 -to lpc_la_n[10]        
set_location_assignment PIN_AD17 -to lpc_la_n[11]        
set_location_assignment PIN_AH17 -to lpc_la_n[12]        
set_location_assignment PIN_T8   -to lpc_la_n[13]        
set_location_assignment PIN_AH14 -to lpc_la_n[14]        
set_location_assignment PIN_M8   -to lpc_la_n[15]        
set_location_assignment PIN_P9   -to lpc_la_n[16]        
set_location_assignment PIN_W9   -to lpc_la_n[17]        
set_location_assignment PIN_T6   -to lpc_la_n[18]        
set_location_assignment PIN_U7   -to lpc_la_n[19]        
set_location_assignment PIN_AL18 -to lpc_la_n[2]         
set_location_assignment PIN_W7   -to lpc_la_n[20]        
set_location_assignment PIN_L6   -to lpc_la_n[21]        
set_location_assignment PIN_M7   -to lpc_la_n[22]        
set_location_assignment PIN_P7   -to lpc_la_n[23]        
set_location_assignment PIN_L5   -to lpc_la_n[24]        
set_location_assignment PIN_AH5  -to lpc_la_n[25]        
set_location_assignment PIN_AP15 -to lpc_la_n[3]         
set_location_assignment PIN_AE18 -to lpc_la_n[4]         
set_location_assignment PIN_AN17 -to lpc_la_n[5]         
set_location_assignment PIN_AP14 -to lpc_la_n[6]         
set_location_assignment PIN_AE19 -to lpc_la_n[8]         
set_location_assignment PIN_AK17 -to lpc_la_n[9]         
set_location_assignment PIN_AM16 -to lpc_la_n[9]         
set_location_assignment PIN_AM18 -to lpc_la_p[0]         
set_location_assignment PIN_AP16 -to lpc_la_p[1]         
set_location_assignment PIN_AC17 -to lpc_la_p[10]        
set_location_assignment PIN_AG17 -to lpc_la_p[11]        
set_location_assignment PIN_AJ14 -to lpc_la_p[12]        
set_location_assignment PIN_R8   -to lpc_la_p[13]        
set_location_assignment PIN_T9   -to lpc_la_p[14]        
set_location_assignment PIN_N8   -to lpc_la_p[15]        
set_location_assignment PIN_N9   -to lpc_la_p[16]        
set_location_assignment PIN_W10  -to lpc_la_p[17]        
set_location_assignment PIN_V7   -to lpc_la_p[18]        
set_location_assignment PIN_W6   -to lpc_la_p[19]        
set_location_assignment PIN_AK18 -to lpc_la_p[2]         
set_location_assignment PIN_K6   -to lpc_la_p[20]        
set_location_assignment PIN_K7   -to lpc_la_p[21]        
set_location_assignment PIN_M6   -to lpc_la_p[22]        
set_location_assignment PIN_N7   -to lpc_la_p[23]        
set_location_assignment PIN_M5   -to lpc_la_p[24]        
set_location_assignment PIN_AJ5  -to lpc_la_p[25]        
set_location_assignment PIN_AN15 -to lpc_la_p[3]         
set_location_assignment PIN_AD19 -to lpc_la_p[4]         
set_location_assignment PIN_AM17 -to lpc_la_p[5]         
set_location_assignment PIN_AN14 -to lpc_la_p[6]         
set_location_assignment PIN_AF19 -to lpc_la_p[7]         
set_location_assignment PIN_AL16 -to lpc_la_p[8]         
set_location_assignment PIN_AJ17 -to lpc_la_p[9]         
set_location_assignment PIN_T5   -to TPA6130_power_off   

set_instance_assignment -name IO_STANDARD "1.8V"                           -to AD1939_ADC_ALRCLK
set_instance_assignment -name IO_STANDARD "1.8V"                           -to AD1939_ADC_ASDATA1
set_instance_assignment -name IO_STANDARD "1.8V"                           -to AD1939_ADC_ASDATA2
set_instance_assignment -name IO_STANDARD "1.8V"                           -to AD1939_DAC_DLRCLK
set_instance_assignment -name IO_STANDARD "1.8V"                           -to AD1939_DAC_DSDATA1
set_instance_assignment -name IO_STANDARD "1.8V"                           -to AD1939_DAC_DSDATA2
set_instance_assignment -name IO_STANDARD "1.8V"                           -to AD1939_DAC_DSDATA3
set_instance_assignment -name IO_STANDARD "1.8V"                           -to AD1939_DAC_DSDATA4
set_instance_assignment -name IO_STANDARD "1.8V"                           -to AD1939_RESET_n
set_instance_assignment -name IO_STANDARD "1.8V"                           -to AD1939_spi_CCLK
set_instance_assignment -name IO_STANDARD "1.8V"                           -to AD1939_spi_CIN
set_instance_assignment -name IO_STANDARD "1.8V"                           -to AD1939_spi_CLATCH_n
set_instance_assignment -name IO_STANDARD "1.8V"                           -to AD1939_spi_COUT
set_instance_assignment -name IO_STANDARD "1.8V"                           -to INMP621_mic_CLK
set_instance_assignment -name IO_STANDARD "1.8V"                           -to INMP621_mic_DATA
set_instance_assignment -name IO_STANDARD "1.8V"                           -to lpc_la_n[0]
set_instance_assignment -name IO_STANDARD "1.8V"                           -to lpc_la_n[1]
set_instance_assignment -name IO_STANDARD "1.8V"                           -to lpc_la_n[10]
set_instance_assignment -name IO_STANDARD "1.8V"                           -to lpc_la_n[11]
set_instance_assignment -name IO_STANDARD "1.8V"                           -to lpc_la_n[12]
set_instance_assignment -name IO_STANDARD "1.8V"                           -to lpc_la_n[13]
set_instance_assignment -name IO_STANDARD "1.8V"                           -to lpc_la_n[14]
set_instance_assignment -name IO_STANDARD "1.8V"                           -to lpc_la_n[15]
set_instance_assignment -name IO_STANDARD "1.8V"                           -to lpc_la_n[16]
set_instance_assignment -name IO_STANDARD "1.8V"                           -to lpc_la_n[17]
set_instance_assignment -name IO_STANDARD "1.8V"                           -to lpc_la_n[18]
set_instance_assignment -name IO_STANDARD "1.8V"                           -to lpc_la_n[19]
set_instance_assignment -name IO_STANDARD "1.8V"                           -to lpc_la_n[2]
set_instance_assignment -name IO_STANDARD "1.8V"                           -to lpc_la_n[20]
set_instance_assignment -name IO_STANDARD "1.8V"                           -to lpc_la_n[21]
set_instance_assignment -name IO_STANDARD "1.8V"                           -to lpc_la_n[22]
set_instance_assignment -name IO_STANDARD "1.8V"                           -to lpc_la_n[23]
set_instance_assignment -name IO_STANDARD "1.8V"                           -to lpc_la_n[24]
set_instance_assignment -name IO_STANDARD "1.2V"                           -to lpc_la_n[25]
set_instance_assignment -name IO_STANDARD "1.8V"                           -to lpc_la_n[3]
set_instance_assignment -name IO_STANDARD "1.8V"                           -to lpc_la_n[4]
set_instance_assignment -name IO_STANDARD "1.8V"                           -to lpc_la_n[5]
set_instance_assignment -name IO_STANDARD "1.8V"                           -to lpc_la_n[6]
set_instance_assignment -name IO_STANDARD "1.8V"                           -to lpc_la_n[8]
set_instance_assignment -name IO_STANDARD "1.8V"                           -to lpc_la_n[9]
set_instance_assignment -name IO_STANDARD "1.8V"                           -to lpc_la_n[9]
set_instance_assignment -name IO_STANDARD "1.8V"                           -to lpc_la_p[0]
set_instance_assignment -name IO_STANDARD "1.8V"                           -to lpc_la_p[1]
set_instance_assignment -name IO_STANDARD "1.8V"                           -to lpc_la_p[10]
set_instance_assignment -name IO_STANDARD "1.8V"                           -to lpc_la_p[11]
set_instance_assignment -name IO_STANDARD "1.8V"                           -to lpc_la_p[12]
set_instance_assignment -name IO_STANDARD "1.8V"                           -to lpc_la_p[13]
set_instance_assignment -name IO_STANDARD "1.8V"                           -to lpc_la_p[14]
set_instance_assignment -name IO_STANDARD "1.8V"                           -to lpc_la_p[15]
set_instance_assignment -name IO_STANDARD "1.8V"                           -to lpc_la_p[16]
set_instance_assignment -name IO_STANDARD "1.8V"                           -to lpc_la_p[17]
set_instance_assignment -name IO_STANDARD "1.8V"                           -to lpc_la_p[18]
set_instance_assignment -name IO_STANDARD "1.8V"                           -to lpc_la_p[19]
set_instance_assignment -name IO_STANDARD "1.8V"                           -to lpc_la_p[2]
set_instance_assignment -name IO_STANDARD "1.8V"                           -to lpc_la_p[20]
set_instance_assignment -name IO_STANDARD "1.8V"                           -to lpc_la_p[21]
set_instance_assignment -name IO_STANDARD "1.8V"                           -to lpc_la_p[22]
set_instance_assignment -name IO_STANDARD "1.8V"                           -to lpc_la_p[23]
set_instance_assignment -name IO_STANDARD "1.8V"                           -to lpc_la_p[24]
set_instance_assignment -name IO_STANDARD "1.2V"                           -to lpc_la_p[25]
set_instance_assignment -name IO_STANDARD "1.8V"                           -to lpc_la_p[3]
set_instance_assignment -name IO_STANDARD "1.8V"                           -to lpc_la_p[4]
set_instance_assignment -name IO_STANDARD "1.8V"                           -to lpc_la_p[5]
set_instance_assignment -name IO_STANDARD "1.8V"                           -to lpc_la_p[6]
set_instance_assignment -name IO_STANDARD "1.8V"                           -to lpc_la_p[7]
set_instance_assignment -name IO_STANDARD "1.8V"                           -to lpc_la_p[8]
set_instance_assignment -name IO_STANDARD "1.8V"                           -to lpc_la_p[9]
set_instance_assignment -name IO_STANDARD "1.8V"                           -to TPA6130_power_off

############################################################
# XCVR
############################################################
# set_location_assignment PIN_AP32 -to lpc_dp_c2m[0]       
# set_location_assignment PIN_AP31 -to lpc_dp_c2m[0](n)    
# set_location_assignment PIN_AM32 -to lpc_dp_c2m[1]       
# set_location_assignment PIN_AM31 -to lpc_dp_c2m[1](n)    
# set_location_assignment PIN_AK32 -to lpc_dp_c2m[2]       
# set_location_assignment PIN_AK31 -to lpc_dp_c2m[2](n)    
# set_location_assignment PIN_AH32 -to lpc_dp_c2m[3]       
# set_location_assignment PIN_AH31 -to lpc_dp_c2m[3](n)    
# set_location_assignment PIN_AN34 -to lpc_dp_c2m[4]       
# set_location_assignment PIN_AN33 -to lpc_dp_c2m[4](n)    
# set_location_assignment PIN_AL34 -to lpc_dp_c2m[5]       
# set_location_assignment PIN_AL33 -to lpc_dp_c2m[5](n)    
# set_location_assignment PIN_AJ34 -to lpc_dp_c2m[6]       
# set_location_assignment PIN_AJ33 -to lpc_dp_c2m[6](n)    
# set_location_assignment PIN_AG34 -to lpc_dp_c2m[7]       
# set_location_assignment PIN_AG33 -to lpc_dp_c2m[7](n)    
# set_location_assignment PIN_AE34 -to lpc_dp_c2m[8]       
# set_location_assignment PIN_AE33 -to lpc_dp_c2m[8](n)    
# set_location_assignment PIN_AC34 -to lpc_dp_c2m[9]       
# set_location_assignment PIN_AC33 -to lpc_dp_c2m[9](n)    
# set_location_assignment PIN_AL30 -to lpc_dp_m2c[0]       
# set_location_assignment PIN_AL29 -to lpc_dp_m2c[0](n)    
# set_location_assignment PIN_AJ30 -to lpc_dp_m2c[1]       
# set_location_assignment PIN_AJ29 -to lpc_dp_m2c[1](n)    
# set_location_assignment PIN_AG30 -to lpc_dp_m2c[2]       
# set_location_assignment PIN_AG29 -to lpc_dp_m2c[2](n)    
# set_location_assignment PIN_AF32 -to lpc_dp_m2c[3]       
# set_location_assignment PIN_AF31 -to lpc_dp_m2c[3](n)    
# set_location_assignment PIN_AE30 -to lpc_dp_m2c[4]       
# set_location_assignment PIN_AE29 -to lpc_dp_m2c[4](n)    
# set_location_assignment PIN_AD32 -to lpc_dp_m2c[5]       
# set_location_assignment PIN_AD31 -to lpc_dp_m2c[5](n)    
# set_location_assignment PIN_AC30 -to lpc_dp_m2c[6]       
# set_location_assignment PIN_AC29 -to lpc_dp_m2c[6](n)    
# set_location_assignment PIN_AB32 -to lpc_dp_m2c[7]       
# set_location_assignment PIN_AB31 -to lpc_dp_m2c[7](n)    
# set_location_assignment PIN_AA30 -to lpc_dp_m2c[8]       
# set_location_assignment PIN_AA29 -to lpc_dp_m2c[8](n)    
# set_location_assignment PIN_Y32  -to lpc_dp_m2c[9]       
# set_location_assignment PIN_Y31  -to lpc_dp_m2c[9](n)    
# set_location_assignment PIN_T28  -to lpc_gbtclk0_m2c     
# set_location_assignment PIN_T27  -to lpc_gbtclk0_m2c(n)  
# set_location_assignment PIN_AF28 -to lpc_gbtclk1_m2c     
# set_location_assignment PIN_AF27 -to lpc_gbtclk1_m2c(n)  

# set_instance_assignment -name IO_STANDARD "HIGH SPEED DIFFERENTIAL I/O"    -to lpc_dp_c2m[0]
# set_instance_assignment -name IO_STANDARD "HIGH SPEED DIFFERENTIAL I/O"    -to lpc_dp_c2m[0](n)
# set_instance_assignment -name IO_STANDARD "HIGH SPEED DIFFERENTIAL I/O"    -to lpc_dp_c2m[1]
# set_instance_assignment -name IO_STANDARD "HIGH SPEED DIFFERENTIAL I/O"    -to lpc_dp_c2m[1](n)
# set_instance_assignment -name IO_STANDARD "HIGH SPEED DIFFERENTIAL I/O"    -to lpc_dp_c2m[2]
# set_instance_assignment -name IO_STANDARD "HIGH SPEED DIFFERENTIAL I/O"    -to lpc_dp_c2m[2](n)
# set_instance_assignment -name IO_STANDARD "HIGH SPEED DIFFERENTIAL I/O"    -to lpc_dp_c2m[3]
# set_instance_assignment -name IO_STANDARD "HIGH SPEED DIFFERENTIAL I/O"    -to lpc_dp_c2m[3](n)
# set_instance_assignment -name IO_STANDARD "HIGH SPEED DIFFERENTIAL I/O"    -to lpc_dp_c2m[4]
# set_instance_assignment -name IO_STANDARD "HIGH SPEED DIFFERENTIAL I/O"    -to lpc_dp_c2m[4](n)
# set_instance_assignment -name IO_STANDARD "HIGH SPEED DIFFERENTIAL I/O"    -to lpc_dp_c2m[5]
# set_instance_assignment -name IO_STANDARD "HIGH SPEED DIFFERENTIAL I/O"    -to lpc_dp_c2m[5](n)
# set_instance_assignment -name IO_STANDARD "HIGH SPEED DIFFERENTIAL I/O"    -to lpc_dp_c2m[6]
# set_instance_assignment -name IO_STANDARD "HIGH SPEED DIFFERENTIAL I/O"    -to lpc_dp_c2m[6](n)
# set_instance_assignment -name IO_STANDARD "HIGH SPEED DIFFERENTIAL I/O"    -to lpc_dp_c2m[7]
# set_instance_assignment -name IO_STANDARD "HIGH SPEED DIFFERENTIAL I/O"    -to lpc_dp_c2m[7](n)
# set_instance_assignment -name IO_STANDARD "HIGH SPEED DIFFERENTIAL I/O"    -to lpc_dp_c2m[8]
# set_instance_assignment -name IO_STANDARD "HIGH SPEED DIFFERENTIAL I/O"    -to lpc_dp_c2m[8](n)
# set_instance_assignment -name IO_STANDARD "HIGH SPEED DIFFERENTIAL I/O"    -to lpc_dp_c2m[9]
# set_instance_assignment -name IO_STANDARD "HIGH SPEED DIFFERENTIAL I/O"    -to lpc_dp_c2m[9](n)
# set_instance_assignment -name IO_STANDARD "HIGH SPEED DIFFERENTIAL I/O"    -to lpc_dp_m2c[0]
# set_instance_assignment -name IO_STANDARD "HIGH SPEED DIFFERENTIAL I/O"    -to lpc_dp_m2c[0](n)
# set_instance_assignment -name IO_STANDARD "HIGH SPEED DIFFERENTIAL I/O"    -to lpc_dp_m2c[1]
# set_instance_assignment -name IO_STANDARD "HIGH SPEED DIFFERENTIAL I/O"    -to lpc_dp_m2c[1](n)
# set_instance_assignment -name IO_STANDARD "HIGH SPEED DIFFERENTIAL I/O"    -to lpc_dp_m2c[2]
# set_instance_assignment -name IO_STANDARD "HIGH SPEED DIFFERENTIAL I/O"    -to lpc_dp_m2c[2](n)
# set_instance_assignment -name IO_STANDARD "HIGH SPEED DIFFERENTIAL I/O"    -to lpc_dp_m2c[3]
# set_instance_assignment -name IO_STANDARD "HIGH SPEED DIFFERENTIAL I/O"    -to lpc_dp_m2c[3](n)
# set_instance_assignment -name IO_STANDARD "HIGH SPEED DIFFERENTIAL I/O"    -to lpc_dp_m2c[4]
# set_instance_assignment -name IO_STANDARD "HIGH SPEED DIFFERENTIAL I/O"    -to lpc_dp_m2c[4](n)
# set_instance_assignment -name IO_STANDARD "HIGH SPEED DIFFERENTIAL I/O"    -to lpc_dp_m2c[5]
# set_instance_assignment -name IO_STANDARD "HIGH SPEED DIFFERENTIAL I/O"    -to lpc_dp_m2c[5](n)
# set_instance_assignment -name IO_STANDARD "HIGH SPEED DIFFERENTIAL I/O"    -to lpc_dp_m2c[6]
# set_instance_assignment -name IO_STANDARD "HIGH SPEED DIFFERENTIAL I/O"    -to lpc_dp_m2c[6](n)
# set_instance_assignment -name IO_STANDARD "HIGH SPEED DIFFERENTIAL I/O"    -to lpc_dp_m2c[7]
# set_instance_assignment -name IO_STANDARD "HIGH SPEED DIFFERENTIAL I/O"    -to lpc_dp_m2c[7](n)
# set_instance_assignment -name IO_STANDARD "HIGH SPEED DIFFERENTIAL I/O"    -to lpc_dp_m2c[8]
# set_instance_assignment -name IO_STANDARD "HIGH SPEED DIFFERENTIAL I/O"    -to lpc_dp_m2c[8](n)
# set_instance_assignment -name IO_STANDARD "HIGH SPEED DIFFERENTIAL I/O"    -to lpc_dp_m2c[9]
# set_instance_assignment -name IO_STANDARD "HIGH SPEED DIFFERENTIAL I/O"    -to lpc_dp_m2c[9](n)
# set_instance_assignment -name IO_STANDARD "LVDS"                           -to lpc_gbtclk0_m2c
# set_instance_assignment -name IO_STANDARD "LVDS"                           -to lpc_gbtclk0_m2c(n)
# set_instance_assignment -name IO_STANDARD "LVDS"                           -to lpc_gbtclk1_m2c
# set_instance_assignment -name IO_STANDARD "LVDS"                           -to lpc_gbtclk1_m2c(n)


########################################################################################################################
# HPC
########################################################################################################################

############################################################
# CLK
############################################################
# set_location_assignment PIN_AK7  -to hpc_clk_dir         
set_location_assignment PIN_R6   -to hpc_clk0_m2c        
set_location_assignment PIN_P6   -to hpc_clk0_m2c(n)     
set_location_assignment PIN_W1   -to hpc_clk1_m2c        
set_location_assignment PIN_W2   -to hpc_clk1_m2c(n)     
set_location_assignment PIN_G5   -to hpc_clk2_bidir      
set_location_assignment PIN_G6   -to hpc_clk2_bidir(n)   
set_location_assignment PIN_D11  -to hpc_clk3_bidir      
set_location_assignment PIN_D10  -to hpc_clk3_bidir(n)   

# set_instance_assignment -name IO_STANDARD "1.8V"                           -to hpc_clk_dir
set_instance_assignment -name IO_STANDARD "LVDS"                           -to hpc_clk0_m2c
set_instance_assignment -name IO_STANDARD "LVDS"                           -to hpc_clk0_m2c(n)
set_instance_assignment -name IO_STANDARD "LVDS"                           -to hpc_clk1_m2c
set_instance_assignment -name IO_STANDARD "LVDS"                           -to hpc_clk1_m2c(n)
set_instance_assignment -name IO_STANDARD "LVDS"                           -to hpc_clk2_bidir
set_instance_assignment -name IO_STANDARD "LVDS"                           -to hpc_clk2_bidir(n)
set_instance_assignment -name IO_STANDARD "LVDS"                           -to hpc_clk3_bidir
set_instance_assignment -name IO_STANDARD "LVDS"                           -to hpc_clk3_bidir(n)

############################################################
# MISC
############################################################
set_location_assignment PIN_AG1  -to fmc_std_scl         
set_location_assignment PIN_AK3  -to fmc_std_sda         

set_instance_assignment -name IO_STANDARD "1.2V"                           -to fmc_std_scl
set_instance_assignment -name IO_STANDARD "1.2V"                           -to fmc_std_sda

############################################################
# IO
############################################################
set_location_assignment PIN_A11  -to hpc_ha_n[0]         
set_location_assignment PIN_A9   -to hpc_ha_n[1]         
set_location_assignment PIN_B7   -to hpc_ha_n[10]        
set_location_assignment PIN_C4   -to hpc_ha_n[11]        
set_location_assignment PIN_D7   -to hpc_ha_n[12]        
set_location_assignment PIN_E12  -to hpc_ha_n[13]        
set_location_assignment PIN_C9   -to hpc_ha_n[14]        
set_location_assignment PIN_G11  -to hpc_ha_n[15]        
set_location_assignment PIN_F13  -to hpc_ha_n[16]        
set_location_assignment PIN_E9   -to hpc_ha_n[17]        
set_location_assignment PIN_K13  -to hpc_ha_n[18]        
set_location_assignment PIN_J12  -to hpc_ha_n[19]        
set_location_assignment PIN_B12  -to hpc_ha_n[2]         
set_location_assignment PIN_M13  -to hpc_ha_n[20]        
set_location_assignment PIN_E11  -to hpc_ha_n[21]        
set_location_assignment PIN_H13  -to hpc_ha_n[22]        
set_location_assignment PIN_M10  -to hpc_ha_n[23]        
set_location_assignment PIN_B10  -to hpc_ha_n[3]         
set_location_assignment PIN_C13  -to hpc_ha_n[4]         
set_location_assignment PIN_A6   -to hpc_ha_n[5]         
set_location_assignment PIN_A4   -to hpc_ha_n[6]         
set_location_assignment PIN_B8   -to hpc_ha_n[7]         
set_location_assignment PIN_C5   -to hpc_ha_n[8]         
set_location_assignment PIN_A5   -to hpc_ha_n[9]         
set_location_assignment PIN_A10  -to hpc_ha_p[0]         
set_location_assignment PIN_A8   -to hpc_ha_p[1]         
set_location_assignment PIN_C7   -to hpc_ha_p[10]        
set_location_assignment PIN_D4   -to hpc_ha_p[11]        
set_location_assignment PIN_D6   -to hpc_ha_p[12]        
set_location_assignment PIN_D12  -to hpc_ha_p[13]        
set_location_assignment PIN_D9   -to hpc_ha_p[14]        
set_location_assignment PIN_G12  -to hpc_ha_p[15]        
set_location_assignment PIN_E13  -to hpc_ha_p[16]        
set_location_assignment PIN_E8   -to hpc_ha_p[17]        
set_location_assignment PIN_K12  -to hpc_ha_p[18]        
set_location_assignment PIN_H12  -to hpc_ha_p[19]        
set_location_assignment PIN_B11  -to hpc_ha_p[2]         
set_location_assignment PIN_L13  -to hpc_ha_p[20]        
set_location_assignment PIN_F11  -to hpc_ha_p[21]        
set_location_assignment PIN_G13  -to hpc_ha_p[22]        
set_location_assignment PIN_N10  -to hpc_ha_p[23]        
set_location_assignment PIN_C10  -to hpc_ha_p[3]         
set_location_assignment PIN_C12  -to hpc_ha_p[4]         
set_location_assignment PIN_B6   -to hpc_ha_p[5]         
set_location_assignment PIN_A3   -to hpc_ha_p[6]         
set_location_assignment PIN_C8   -to hpc_ha_p[7]         
set_location_assignment PIN_D5   -to hpc_ha_p[8]         
set_location_assignment PIN_B5   -to hpc_ha_p[9]         
set_location_assignment PIN_F9   -to hpc_hb_n[0]         
set_location_assignment PIN_E3   -to hpc_hb_n[1]         
set_location_assignment PIN_L11  -to hpc_hb_n[10]        
set_location_assignment PIN_D2   -to hpc_hb_n[11]        
set_location_assignment PIN_H4   -to hpc_hb_n[12]        
set_location_assignment PIN_H7   -to hpc_hb_n[13]        
set_location_assignment PIN_D1   -to hpc_hb_n[14]        
set_location_assignment PIN_F1   -to hpc_hb_n[15]        
set_location_assignment PIN_J9   -to hpc_hb_n[16]        
set_location_assignment PIN_J7   -to hpc_hb_n[17]        
set_location_assignment PIN_H8   -to hpc_hb_n[18]        
set_location_assignment PIN_L10  -to hpc_hb_n[19]        
set_location_assignment PIN_F5   -to hpc_hb_n[2]         
set_location_assignment PIN_J11  -to hpc_hb_n[20]        
set_location_assignment PIN_H10  -to hpc_hb_n[21]        
set_location_assignment PIN_E4   -to hpc_hb_n[3]         
set_location_assignment PIN_G7   -to hpc_hb_n[4]         
set_location_assignment PIN_E6   -to hpc_hb_n[5]         
set_location_assignment PIN_F10  -to hpc_hb_n[6]         
set_location_assignment PIN_B3   -to hpc_hb_n[7]         
set_location_assignment PIN_H2   -to hpc_hb_n[8]         
set_location_assignment PIN_G3   -to hpc_hb_n[9]         
set_location_assignment PIN_F8   -to hpc_hb_p[0]         
set_location_assignment PIN_F3   -to hpc_hb_p[1]         
set_location_assignment PIN_M11  -to hpc_hb_p[10]        
set_location_assignment PIN_E2   -to hpc_hb_p[11]        
set_location_assignment PIN_H5   -to hpc_hb_p[12]        
set_location_assignment PIN_J6   -to hpc_hb_p[13]        
set_location_assignment PIN_E1   -to hpc_hb_p[14]        
set_location_assignment PIN_G1   -to hpc_hb_p[15]        
set_location_assignment PIN_K9   -to hpc_hb_p[16]        
set_location_assignment PIN_K8   -to hpc_hb_p[17]        
set_location_assignment PIN_H9   -to hpc_hb_p[18]        
set_location_assignment PIN_L9   -to hpc_hb_p[19]        
set_location_assignment PIN_F6   -to hpc_hb_p[2]         
set_location_assignment PIN_K11  -to hpc_hb_p[20]        
set_location_assignment PIN_J10  -to hpc_hb_p[21]        
set_location_assignment PIN_F4   -to hpc_hb_p[3]         
set_location_assignment PIN_G8   -to hpc_hb_p[4]         
set_location_assignment PIN_E7   -to hpc_hb_p[5]         
set_location_assignment PIN_G10  -to hpc_hb_p[6]         
set_location_assignment PIN_C3   -to hpc_hb_p[7]         
set_location_assignment PIN_H3   -to hpc_hb_p[8]         
set_location_assignment PIN_G2   -to hpc_hb_p[9]         
set_location_assignment PIN_K2   -to hpc_la_n[0]         
set_location_assignment PIN_K4   -to hpc_la_n[1]         
set_location_assignment PIN_R3   -to hpc_la_n[10]        
set_location_assignment PIN_R2   -to hpc_la_n[11]        
set_location_assignment PIN_P1   -to hpc_la_n[12]        
set_location_assignment PIN_R4   -to hpc_la_n[13]        
set_location_assignment PIN_U5   -to hpc_la_n[14]        
set_location_assignment PIN_T1   -to hpc_la_n[15]        
set_location_assignment PIN_V3   -to hpc_la_n[16]        
set_location_assignment PIN_V4   -to hpc_la_n[17]        
set_location_assignment PIN_Y4   -to hpc_la_n[18]        
set_location_assignment PIN_Y2   -to hpc_la_n[19]        
set_location_assignment PIN_J5   -to hpc_la_n[2]         
set_location_assignment PIN_U2   -to hpc_la_n[20]        
set_location_assignment PIN_AC2  -to hpc_la_n[21]        
set_location_assignment PIN_AB3  -to hpc_la_n[22]        
set_location_assignment PIN_AA1  -to hpc_la_n[23]        
set_location_assignment PIN_Y7   -to hpc_la_n[24]        
set_location_assignment PIN_AA6  -to hpc_la_n[25]        
set_location_assignment PIN_AA4  -to hpc_la_n[26]        
set_location_assignment PIN_W5   -to hpc_la_n[27]        
set_location_assignment PIN_AA9  -to hpc_la_n[28]        
set_location_assignment PIN_Y9   -to hpc_la_n[29]        
set_location_assignment PIN_J2   -to hpc_la_n[3]         
set_location_assignment PIN_AK14 -to hpc_la_n[30]        
set_location_assignment PIN_AK13 -to hpc_la_n[31]        
set_location_assignment PIN_AM13 -to hpc_la_n[32]        
set_location_assignment PIN_AP12 -to hpc_la_n[33]        
set_location_assignment PIN_L1   -to hpc_la_n[4]         
set_location_assignment PIN_N5   -to hpc_la_n[5]         
set_location_assignment PIN_K3   -to hpc_la_n[6]         
set_location_assignment PIN_M3   -to hpc_la_n[7]         
set_location_assignment PIN_N3   -to hpc_la_n[8]         
set_location_assignment PIN_P5   -to hpc_la_n[9]         
set_location_assignment PIN_K1   -to hpc_la_p[0]         
set_location_assignment PIN_L4   -to hpc_la_p[1]         
set_location_assignment PIN_T3   -to hpc_la_p[10]        
set_location_assignment PIN_P2   -to hpc_la_p[11]        
set_location_assignment PIN_R1   -to hpc_la_p[12]        
set_location_assignment PIN_T4   -to hpc_la_p[13]        
set_location_assignment PIN_U6   -to hpc_la_p[14]        
set_location_assignment PIN_U1   -to hpc_la_p[15]        
set_location_assignment PIN_U3   -to hpc_la_p[16]        
set_location_assignment PIN_V5   -to hpc_la_p[17]        
set_location_assignment PIN_Y3   -to hpc_la_p[18]        
set_location_assignment PIN_Y1   -to hpc_la_p[19]        
set_location_assignment PIN_J4   -to hpc_la_p[2]         
set_location_assignment PIN_V2   -to hpc_la_p[20]        
set_location_assignment PIN_AC3  -to hpc_la_p[21]        
set_location_assignment PIN_AB2  -to hpc_la_p[22]        
set_location_assignment PIN_AB1  -to hpc_la_p[23]        
set_location_assignment PIN_Y6   -to hpc_la_p[24]        
set_location_assignment PIN_AA5  -to hpc_la_p[25]        
set_location_assignment PIN_AA3  -to hpc_la_p[26]        
set_location_assignment PIN_W4   -to hpc_la_p[27]        
set_location_assignment PIN_AA8  -to hpc_la_p[28]        
set_location_assignment PIN_Y8   -to hpc_la_p[29]        
set_location_assignment PIN_J1   -to hpc_la_p[3]         
set_location_assignment PIN_AL14 -to hpc_la_p[30]        
set_location_assignment PIN_AL13 -to hpc_la_p[31]        
set_location_assignment PIN_AN13 -to hpc_la_p[32]        
set_location_assignment PIN_AN12 -to hpc_la_p[33]        
set_location_assignment PIN_M1   -to hpc_la_p[4]         
set_location_assignment PIN_N4   -to hpc_la_p[5]         
set_location_assignment PIN_L3   -to hpc_la_p[6]         
set_location_assignment PIN_M2   -to hpc_la_p[7]         
set_location_assignment PIN_N2   -to hpc_la_p[8]         
set_location_assignment PIN_P4   -to hpc_la_p[9]         

set_instance_assignment -name IO_STANDARD "1.8V"                           -to hpc_ha_n[0]
set_instance_assignment -name IO_STANDARD "1.8V"                           -to hpc_ha_n[1]
set_instance_assignment -name IO_STANDARD "1.8V"                           -to hpc_ha_n[10]
set_instance_assignment -name IO_STANDARD "1.8V"                           -to hpc_ha_n[11]
set_instance_assignment -name IO_STANDARD "1.8V"                           -to hpc_ha_n[12]
set_instance_assignment -name IO_STANDARD "1.8V"                           -to hpc_ha_n[13]
set_instance_assignment -name IO_STANDARD "1.8V"                           -to hpc_ha_n[14]
set_instance_assignment -name IO_STANDARD "1.8V"                           -to hpc_ha_n[15]
set_instance_assignment -name IO_STANDARD "1.8V"                           -to hpc_ha_n[16]
set_instance_assignment -name IO_STANDARD "1.8V"                           -to hpc_ha_n[17]
set_instance_assignment -name IO_STANDARD "1.8V"                           -to hpc_ha_n[18]
set_instance_assignment -name IO_STANDARD "1.8V"                           -to hpc_ha_n[19]
set_instance_assignment -name IO_STANDARD "1.8V"                           -to hpc_ha_n[2]
set_instance_assignment -name IO_STANDARD "1.8V"                           -to hpc_ha_n[20]
set_instance_assignment -name IO_STANDARD "1.8V"                           -to hpc_ha_n[21]
set_instance_assignment -name IO_STANDARD "1.8V"                           -to hpc_ha_n[22]
set_instance_assignment -name IO_STANDARD "1.8V"                           -to hpc_ha_n[23]
set_instance_assignment -name IO_STANDARD "1.8V"                           -to hpc_ha_n[3]
set_instance_assignment -name IO_STANDARD "1.8V"                           -to hpc_ha_n[4]
set_instance_assignment -name IO_STANDARD "1.8V"                           -to hpc_ha_n[5]
set_instance_assignment -name IO_STANDARD "1.8V"                           -to hpc_ha_n[6]
set_instance_assignment -name IO_STANDARD "1.8V"                           -to hpc_ha_n[7]
set_instance_assignment -name IO_STANDARD "1.8V"                           -to hpc_ha_n[8]
set_instance_assignment -name IO_STANDARD "1.8V"                           -to hpc_ha_n[9]
set_instance_assignment -name IO_STANDARD "1.8V"                           -to hpc_ha_p[0]
set_instance_assignment -name IO_STANDARD "1.8V"                           -to hpc_ha_p[1]
set_instance_assignment -name IO_STANDARD "1.8V"                           -to hpc_ha_p[10]
set_instance_assignment -name IO_STANDARD "1.8V"                           -to hpc_ha_p[11]
set_instance_assignment -name IO_STANDARD "1.8V"                           -to hpc_ha_p[12]
set_instance_assignment -name IO_STANDARD "1.8V"                           -to hpc_ha_p[13]
set_instance_assignment -name IO_STANDARD "1.8V"                           -to hpc_ha_p[14]
set_instance_assignment -name IO_STANDARD "1.8V"                           -to hpc_ha_p[15]
set_instance_assignment -name IO_STANDARD "1.8V"                           -to hpc_ha_p[16]
set_instance_assignment -name IO_STANDARD "1.8V"                           -to hpc_ha_p[17]
set_instance_assignment -name IO_STANDARD "1.8V"                           -to hpc_ha_p[18]
set_instance_assignment -name IO_STANDARD "1.8V"                           -to hpc_ha_p[19]
set_instance_assignment -name IO_STANDARD "1.8V"                           -to hpc_ha_p[2]
set_instance_assignment -name IO_STANDARD "1.8V"                           -to hpc_ha_p[20]
set_instance_assignment -name IO_STANDARD "1.8V"                           -to hpc_ha_p[21]
set_instance_assignment -name IO_STANDARD "1.8V"                           -to hpc_ha_p[22]
set_instance_assignment -name IO_STANDARD "1.8V"                           -to hpc_ha_p[23]
set_instance_assignment -name IO_STANDARD "1.8V"                           -to hpc_ha_p[3]
set_instance_assignment -name IO_STANDARD "1.8V"                           -to hpc_ha_p[4]
set_instance_assignment -name IO_STANDARD "1.8V"                           -to hpc_ha_p[5]
set_instance_assignment -name IO_STANDARD "1.8V"                           -to hpc_ha_p[6]
set_instance_assignment -name IO_STANDARD "1.8V"                           -to hpc_ha_p[7]
set_instance_assignment -name IO_STANDARD "1.8V"                           -to hpc_ha_p[8]
set_instance_assignment -name IO_STANDARD "1.8V"                           -to hpc_ha_p[9]
set_instance_assignment -name IO_STANDARD "1.8V"                           -to hpc_hb_n[0]
set_instance_assignment -name IO_STANDARD "1.8V"                           -to hpc_hb_n[1]
set_instance_assignment -name IO_STANDARD "1.8V"                           -to hpc_hb_n[10]
set_instance_assignment -name IO_STANDARD "1.8V"                           -to hpc_hb_n[11]
set_instance_assignment -name IO_STANDARD "1.8V"                           -to hpc_hb_n[12]
set_instance_assignment -name IO_STANDARD "1.8V"                           -to hpc_hb_n[13]
set_instance_assignment -name IO_STANDARD "1.8V"                           -to hpc_hb_n[14]
set_instance_assignment -name IO_STANDARD "1.8V"                           -to hpc_hb_n[15]
set_instance_assignment -name IO_STANDARD "1.8V"                           -to hpc_hb_n[16]
set_instance_assignment -name IO_STANDARD "1.8V"                           -to hpc_hb_n[17]
set_instance_assignment -name IO_STANDARD "1.8V"                           -to hpc_hb_n[18]
set_instance_assignment -name IO_STANDARD "1.8V"                           -to hpc_hb_n[19]
set_instance_assignment -name IO_STANDARD "1.8V"                           -to hpc_hb_n[2]
set_instance_assignment -name IO_STANDARD "1.8V"                           -to hpc_hb_n[20]
set_instance_assignment -name IO_STANDARD "1.8V"                           -to hpc_hb_n[21]
set_instance_assignment -name IO_STANDARD "1.8V"                           -to hpc_hb_n[3]
set_instance_assignment -name IO_STANDARD "1.8V"                           -to hpc_hb_n[4]
set_instance_assignment -name IO_STANDARD "1.8V"                           -to hpc_hb_n[5]
set_instance_assignment -name IO_STANDARD "1.8V"                           -to hpc_hb_n[6]
set_instance_assignment -name IO_STANDARD "1.8V"                           -to hpc_hb_n[7]
set_instance_assignment -name IO_STANDARD "1.8V"                           -to hpc_hb_n[8]
set_instance_assignment -name IO_STANDARD "1.8V"                           -to hpc_hb_n[9]
set_instance_assignment -name IO_STANDARD "1.8V"                           -to hpc_hb_p[0]
set_instance_assignment -name IO_STANDARD "1.8V"                           -to hpc_hb_p[1]
set_instance_assignment -name IO_STANDARD "1.8V"                           -to hpc_hb_p[10]
set_instance_assignment -name IO_STANDARD "1.8V"                           -to hpc_hb_p[11]
set_instance_assignment -name IO_STANDARD "1.8V"                           -to hpc_hb_p[12]
set_instance_assignment -name IO_STANDARD "1.8V"                           -to hpc_hb_p[13]
set_instance_assignment -name IO_STANDARD "1.8V"                           -to hpc_hb_p[14]
set_instance_assignment -name IO_STANDARD "1.8V"                           -to hpc_hb_p[15]
set_instance_assignment -name IO_STANDARD "1.8V"                           -to hpc_hb_p[16]
set_instance_assignment -name IO_STANDARD "1.8V"                           -to hpc_hb_p[17]
set_instance_assignment -name IO_STANDARD "1.8V"                           -to hpc_hb_p[18]
set_instance_assignment -name IO_STANDARD "1.8V"                           -to hpc_hb_p[19]
set_instance_assignment -name IO_STANDARD "1.8V"                           -to hpc_hb_p[2]
set_instance_assignment -name IO_STANDARD "1.8V"                           -to hpc_hb_p[20]
set_instance_assignment -name IO_STANDARD "1.8V"                           -to hpc_hb_p[21]
set_instance_assignment -name IO_STANDARD "1.8V"                           -to hpc_hb_p[3]
set_instance_assignment -name IO_STANDARD "1.8V"                           -to hpc_hb_p[4]
set_instance_assignment -name IO_STANDARD "1.8V"                           -to hpc_hb_p[5]
set_instance_assignment -name IO_STANDARD "1.8V"                           -to hpc_hb_p[6]
set_instance_assignment -name IO_STANDARD "1.8V"                           -to hpc_hb_p[7]
set_instance_assignment -name IO_STANDARD "1.8V"                           -to hpc_hb_p[8]
set_instance_assignment -name IO_STANDARD "1.8V"                           -to hpc_hb_p[9]
set_instance_assignment -name IO_STANDARD "1.8V"                           -to hpc_la_n[0]
set_instance_assignment -name IO_STANDARD "1.8V"                           -to hpc_la_n[1]
set_instance_assignment -name IO_STANDARD "1.8V"                           -to hpc_la_n[10]
set_instance_assignment -name IO_STANDARD "1.8V"                           -to hpc_la_n[11]
set_instance_assignment -name IO_STANDARD "1.8V"                           -to hpc_la_n[12]
set_instance_assignment -name IO_STANDARD "1.8V"                           -to hpc_la_n[13]
set_instance_assignment -name IO_STANDARD "1.8V"                           -to hpc_la_n[14]
set_instance_assignment -name IO_STANDARD "1.8V"                           -to hpc_la_n[15]
set_instance_assignment -name IO_STANDARD "1.8V"                           -to hpc_la_n[16]
set_instance_assignment -name IO_STANDARD "1.8V"                           -to hpc_la_n[17]
set_instance_assignment -name IO_STANDARD "1.8V"                           -to hpc_la_n[18]
set_instance_assignment -name IO_STANDARD "1.8V"                           -to hpc_la_n[19]
set_instance_assignment -name IO_STANDARD "1.8V"                           -to hpc_la_n[2]
set_instance_assignment -name IO_STANDARD "1.8V"                           -to hpc_la_n[20]
set_instance_assignment -name IO_STANDARD "1.8V"                           -to hpc_la_n[21]
set_instance_assignment -name IO_STANDARD "1.8V"                           -to hpc_la_n[22]
set_instance_assignment -name IO_STANDARD "1.8V"                           -to hpc_la_n[23]
set_instance_assignment -name IO_STANDARD "1.8V"                           -to hpc_la_n[24]
set_instance_assignment -name IO_STANDARD "1.8V"                           -to hpc_la_n[25]
set_instance_assignment -name IO_STANDARD "1.8V"                           -to hpc_la_n[26]
set_instance_assignment -name IO_STANDARD "1.8V"                           -to hpc_la_n[27]
set_instance_assignment -name IO_STANDARD "1.8V"                           -to hpc_la_n[28]
set_instance_assignment -name IO_STANDARD "1.8V"                           -to hpc_la_n[29]
set_instance_assignment -name IO_STANDARD "1.8V"                           -to hpc_la_n[3]
set_instance_assignment -name IO_STANDARD "1.8V"                           -to hpc_la_n[30]
set_instance_assignment -name IO_STANDARD "1.8V"                           -to hpc_la_n[31]
set_instance_assignment -name IO_STANDARD "1.8V"                           -to hpc_la_n[32]
set_instance_assignment -name IO_STANDARD "1.8V"                           -to hpc_la_n[33]
set_instance_assignment -name IO_STANDARD "1.8V"                           -to hpc_la_n[4]
set_instance_assignment -name IO_STANDARD "1.8V"                           -to hpc_la_n[5]
set_instance_assignment -name IO_STANDARD "1.8V"                           -to hpc_la_n[6]
set_instance_assignment -name IO_STANDARD "1.8V"                           -to hpc_la_n[7]
set_instance_assignment -name IO_STANDARD "1.8V"                           -to hpc_la_n[8]
set_instance_assignment -name IO_STANDARD "1.8V"                           -to hpc_la_n[9]
set_instance_assignment -name IO_STANDARD "1.8V"                           -to hpc_la_p[0]
set_instance_assignment -name IO_STANDARD "1.8V"                           -to hpc_la_p[1]
set_instance_assignment -name IO_STANDARD "1.8V"                           -to hpc_la_p[10]
set_instance_assignment -name IO_STANDARD "1.8V"                           -to hpc_la_p[11]
set_instance_assignment -name IO_STANDARD "1.8V"                           -to hpc_la_p[12]
set_instance_assignment -name IO_STANDARD "1.8V"                           -to hpc_la_p[13]
set_instance_assignment -name IO_STANDARD "1.8V"                           -to hpc_la_p[14]
set_instance_assignment -name IO_STANDARD "1.8V"                           -to hpc_la_p[15]
set_instance_assignment -name IO_STANDARD "1.8V"                           -to hpc_la_p[16]
set_instance_assignment -name IO_STANDARD "1.8V"                           -to hpc_la_p[17]
set_instance_assignment -name IO_STANDARD "1.8V"                           -to hpc_la_p[18]
set_instance_assignment -name IO_STANDARD "1.8V"                           -to hpc_la_p[19]
set_instance_assignment -name IO_STANDARD "1.8V"                           -to hpc_la_p[2]
set_instance_assignment -name IO_STANDARD "1.8V"                           -to hpc_la_p[20]
set_instance_assignment -name IO_STANDARD "1.8V"                           -to hpc_la_p[21]
set_instance_assignment -name IO_STANDARD "1.8V"                           -to hpc_la_p[22]
set_instance_assignment -name IO_STANDARD "1.8V"                           -to hpc_la_p[23]
set_instance_assignment -name IO_STANDARD "1.8V"                           -to hpc_la_p[24]
set_instance_assignment -name IO_STANDARD "1.8V"                           -to hpc_la_p[25]
set_instance_assignment -name IO_STANDARD "1.8V"                           -to hpc_la_p[26]
set_instance_assignment -name IO_STANDARD "1.8V"                           -to hpc_la_p[27]
set_instance_assignment -name IO_STANDARD "1.8V"                           -to hpc_la_p[28]
set_instance_assignment -name IO_STANDARD "1.8V"                           -to hpc_la_p[29]
set_instance_assignment -name IO_STANDARD "1.8V"                           -to hpc_la_p[3]
set_instance_assignment -name IO_STANDARD "1.8V"                           -to hpc_la_p[30]
set_instance_assignment -name IO_STANDARD "1.8V"                           -to hpc_la_p[31]
set_instance_assignment -name IO_STANDARD "1.8V"                           -to hpc_la_p[32]
set_instance_assignment -name IO_STANDARD "1.8V"                           -to hpc_la_p[33]
set_instance_assignment -name IO_STANDARD "1.8V"                           -to hpc_la_p[4]
set_instance_assignment -name IO_STANDARD "1.8V"                           -to hpc_la_p[5]
set_instance_assignment -name IO_STANDARD "1.8V"                           -to hpc_la_p[6]
set_instance_assignment -name IO_STANDARD "1.8V"                           -to hpc_la_p[7]
set_instance_assignment -name IO_STANDARD "1.8V"                           -to hpc_la_p[8]
set_instance_assignment -name IO_STANDARD "1.8V"                           -to hpc_la_p[9]

############################################################
# XCVR
############################################################
# set_location_assignment PIN_F32  -to hpc_dp_c2m[0]       
# set_location_assignment PIN_F31  -to hpc_dp_c2m[0](n)    
# set_location_assignment PIN_H32  -to hpc_dp_c2m[1]       
# set_location_assignment PIN_H31  -to hpc_dp_c2m[1](n)    
# set_location_assignment PIN_C34  -to hpc_dp_c2m[2]       
# set_location_assignment PIN_C33  -to hpc_dp_c2m[2](n)    
# set_location_assignment PIN_E34  -to hpc_dp_c2m[3]       
# set_location_assignment PIN_E33  -to hpc_dp_c2m[3](n)    
# set_location_assignment PIN_G34  -to hpc_dp_c2m[4]       
# set_location_assignment PIN_G33  -to hpc_dp_c2m[4](n)    
# set_location_assignment PIN_J34  -to hpc_dp_c2m[5]       
# set_location_assignment PIN_J33  -to hpc_dp_c2m[5](n)    
# set_location_assignment PIN_L34  -to hpc_dp_c2m[6]       
# set_location_assignment PIN_L33  -to hpc_dp_c2m[6](n)    
# set_location_assignment PIN_N34  -to hpc_dp_c2m[7]       
# set_location_assignment PIN_N33  -to hpc_dp_c2m[7](n)    
# set_location_assignment PIN_R34  -to hpc_dp_c2m[8]       
# set_location_assignment PIN_R33  -to hpc_dp_c2m[8](n)    
# set_location_assignment PIN_U34  -to hpc_dp_c2m[9]       
# set_location_assignment PIN_U33  -to hpc_dp_c2m[9](n)    
# set_location_assignment PIN_G30  -to hpc_dp_m2c[0]       
# set_location_assignment PIN_G29  -to hpc_dp_m2c[0](n)    
# set_location_assignment PIN_J30  -to hpc_dp_m2c[1]       
# set_location_assignment PIN_J29  -to hpc_dp_m2c[1](n)    
# set_location_assignment PIN_K32  -to hpc_dp_m2c[2]       
# set_location_assignment PIN_K31  -to hpc_dp_m2c[2](n)    
# set_location_assignment PIN_L30  -to hpc_dp_m2c[3]       
# set_location_assignment PIN_L29  -to hpc_dp_m2c[3](n)    
# set_location_assignment PIN_M32  -to hpc_dp_m2c[4]       
# set_location_assignment PIN_M31  -to hpc_dp_m2c[4](n)    
# set_location_assignment PIN_N30  -to hpc_dp_m2c[5]       
# set_location_assignment PIN_N29  -to hpc_dp_m2c[5](n)    
# set_location_assignment PIN_P32  -to hpc_dp_m2c[6]       
# set_location_assignment PIN_P31  -to hpc_dp_m2c[6](n)    
# set_location_assignment PIN_R30  -to hpc_dp_m2c[7]       
# set_location_assignment PIN_R29  -to hpc_dp_m2c[7](n)    
# set_location_assignment PIN_T32  -to hpc_dp_m2c[8]       
# set_location_assignment PIN_T31  -to hpc_dp_m2c[8](n)    
# set_location_assignment PIN_U30  -to hpc_dp_m2c[9]       
# set_location_assignment PIN_U29  -to hpc_dp_m2c[9](n)    
# set_location_assignment PIN_AB28 -to hpc_gbtclk0_m2c     
# set_location_assignment PIN_AB27 -to hpc_gbtclk0_m2c(n)  
# set_location_assignment PIN_P28  -to hpc_gbtclk1_m2c     
# set_location_assignment PIN_P27  -to hpc_gbtclk1_m2c(n)  

# set_instance_assignment -name IO_STANDARD "HIGH SPEED DIFFERENTIAL I/O"    -to hpc_dp_c2m[0]
# set_instance_assignment -name IO_STANDARD "HIGH SPEED DIFFERENTIAL I/O"    -to hpc_dp_c2m[0](n)
# set_instance_assignment -name IO_STANDARD "HIGH SPEED DIFFERENTIAL I/O"    -to hpc_dp_c2m[1]
# set_instance_assignment -name IO_STANDARD "HIGH SPEED DIFFERENTIAL I/O"    -to hpc_dp_c2m[1](n)
# set_instance_assignment -name IO_STANDARD "HIGH SPEED DIFFERENTIAL I/O"    -to hpc_dp_c2m[2]
# set_instance_assignment -name IO_STANDARD "HIGH SPEED DIFFERENTIAL I/O"    -to hpc_dp_c2m[2](n)
# set_instance_assignment -name IO_STANDARD "HIGH SPEED DIFFERENTIAL I/O"    -to hpc_dp_c2m[3]
# set_instance_assignment -name IO_STANDARD "HIGH SPEED DIFFERENTIAL I/O"    -to hpc_dp_c2m[3](n)
# set_instance_assignment -name IO_STANDARD "HIGH SPEED DIFFERENTIAL I/O"    -to hpc_dp_c2m[4]
# set_instance_assignment -name IO_STANDARD "HIGH SPEED DIFFERENTIAL I/O"    -to hpc_dp_c2m[4](n)
# set_instance_assignment -name IO_STANDARD "HIGH SPEED DIFFERENTIAL I/O"    -to hpc_dp_c2m[5]
# set_instance_assignment -name IO_STANDARD "HIGH SPEED DIFFERENTIAL I/O"    -to hpc_dp_c2m[5](n)
# set_instance_assignment -name IO_STANDARD "HIGH SPEED DIFFERENTIAL I/O"    -to hpc_dp_c2m[6]
# set_instance_assignment -name IO_STANDARD "HIGH SPEED DIFFERENTIAL I/O"    -to hpc_dp_c2m[6](n)
# set_instance_assignment -name IO_STANDARD "HIGH SPEED DIFFERENTIAL I/O"    -to hpc_dp_c2m[7]
# set_instance_assignment -name IO_STANDARD "HIGH SPEED DIFFERENTIAL I/O"    -to hpc_dp_c2m[7](n)
# set_instance_assignment -name IO_STANDARD "HIGH SPEED DIFFERENTIAL I/O"    -to hpc_dp_c2m[8]
# set_instance_assignment -name IO_STANDARD "HIGH SPEED DIFFERENTIAL I/O"    -to hpc_dp_c2m[8](n)
# set_instance_assignment -name IO_STANDARD "HIGH SPEED DIFFERENTIAL I/O"    -to hpc_dp_c2m[9]
# set_instance_assignment -name IO_STANDARD "HIGH SPEED DIFFERENTIAL I/O"    -to hpc_dp_c2m[9](n)
# set_instance_assignment -name IO_STANDARD "HIGH SPEED DIFFERENTIAL I/O"    -to hpc_dp_m2c[0]
# set_instance_assignment -name IO_STANDARD "HIGH SPEED DIFFERENTIAL I/O"    -to hpc_dp_m2c[0](n)
# set_instance_assignment -name IO_STANDARD "HIGH SPEED DIFFERENTIAL I/O"    -to hpc_dp_m2c[1]
# set_instance_assignment -name IO_STANDARD "HIGH SPEED DIFFERENTIAL I/O"    -to hpc_dp_m2c[1](n)
# set_instance_assignment -name IO_STANDARD "HIGH SPEED DIFFERENTIAL I/O"    -to hpc_dp_m2c[2]
# set_instance_assignment -name IO_STANDARD "HIGH SPEED DIFFERENTIAL I/O"    -to hpc_dp_m2c[2](n)
# set_instance_assignment -name IO_STANDARD "HIGH SPEED DIFFERENTIAL I/O"    -to hpc_dp_m2c[3]
# set_instance_assignment -name IO_STANDARD "HIGH SPEED DIFFERENTIAL I/O"    -to hpc_dp_m2c[3](n)
# set_instance_assignment -name IO_STANDARD "HIGH SPEED DIFFERENTIAL I/O"    -to hpc_dp_m2c[4]
# set_instance_assignment -name IO_STANDARD "HIGH SPEED DIFFERENTIAL I/O"    -to hpc_dp_m2c[4](n)
# set_instance_assignment -name IO_STANDARD "HIGH SPEED DIFFERENTIAL I/O"    -to hpc_dp_m2c[5]
# set_instance_assignment -name IO_STANDARD "HIGH SPEED DIFFERENTIAL I/O"    -to hpc_dp_m2c[5](n)
# set_instance_assignment -name IO_STANDARD "HIGH SPEED DIFFERENTIAL I/O"    -to hpc_dp_m2c[6]
# set_instance_assignment -name IO_STANDARD "HIGH SPEED DIFFERENTIAL I/O"    -to hpc_dp_m2c[6](n)
# set_instance_assignment -name IO_STANDARD "HIGH SPEED DIFFERENTIAL I/O"    -to hpc_dp_m2c[7]
# set_instance_assignment -name IO_STANDARD "HIGH SPEED DIFFERENTIAL I/O"    -to hpc_dp_m2c[7](n)
# set_instance_assignment -name IO_STANDARD "HIGH SPEED DIFFERENTIAL I/O"    -to hpc_dp_m2c[8]
# set_instance_assignment -name IO_STANDARD "HIGH SPEED DIFFERENTIAL I/O"    -to hpc_dp_m2c[8](n)
# set_instance_assignment -name IO_STANDARD "HIGH SPEED DIFFERENTIAL I/O"    -to hpc_dp_m2c[9]
# set_instance_assignment -name IO_STANDARD "HIGH SPEED DIFFERENTIAL I/O"    -to hpc_dp_m2c[9](n)
# set_instance_assignment -name IO_STANDARD "LVDS"                           -to hpc_gbtclk0_m2c
# set_instance_assignment -name IO_STANDARD "LVDS"                           -to hpc_gbtclk0_m2c(n)
# set_instance_assignment -name IO_STANDARD "LVDS"                           -to hpc_gbtclk1_m2c
# set_instance_assignment -name IO_STANDARD "LVDS"                           -to hpc_gbtclk1_m2c(n)


########################################################################################################################
# MISC
########################################################################################################################

############################################################
# CLK
############################################################
set_location_assignment PIN_AJ9  -to clk_25mhz_fpga      
# set_location_assignment PIN_E23  -to clk_a10_0           
# set_location_assignment PIN_AH8  -to clk_a10_1           
# set_location_assignment PIN_AE17 -to clk_sync_pwr        
# set_location_assignment PIN_Y28  -to clk_xcvr[1]         
# set_location_assignment PIN_Y27  -to clk_xcvr[1](n)      
# set_location_assignment PIN_V28  -to clk_xcvr[2]         
# set_location_assignment PIN_V27  -to clk_xcvr[2](n)      
# set_location_assignment PIN_M28  -to clk_xcvr[3]         
# set_location_assignment PIN_M27  -to clk_xcvr[3](n)      

set_instance_assignment -name IO_STANDARD "1.2V"                           -to clk_25mhz_fpga
# set_instance_assignment -name IO_STANDARD "1.2V"                           -to clk_a10_0
# set_instance_assignment -name IO_STANDARD "1.2V"                           -to clk_a10_1
# set_instance_assignment -name IO_STANDARD "1.8 V"                          -to clk_sync_pwr
# set_instance_assignment -name IO_STANDARD "LVDS"                           -to clk_xcvr[1]
# set_instance_assignment -name IO_STANDARD "LVDS"                           -to clk_xcvr[1](n)
# set_instance_assignment -name IO_STANDARD "LVDS"                           -to clk_xcvr[2]
# set_instance_assignment -name IO_STANDARD "LVDS"                           -to clk_xcvr[2](n)
# set_instance_assignment -name IO_STANDARD "LVDS"                           -to clk_xcvr[3]
# set_instance_assignment -name IO_STANDARD "LVDS"                           -to clk_xcvr[3](n)

############################################################
# MISC
############################################################
# set_location_assignment PIN_L20  -to fpga_dsw_1          
# set_location_assignment PIN_M20  -to fpga_dsw_2          
set_location_assignment PIN_J25  -to led_usr_g_n         
set_location_assignment PIN_J26  -to led_usr_r_n         
set_location_assignment PIN_AG7  -to lnk_f2m_dat         
set_location_assignment PIN_AH7  -to lnk_m2f_dat         
set_location_assignment PIN_AK8  -to lnk_m2f_rst         

# set_instance_assignment -name IO_STANDARD "nan"                            -to fpga_dsw_1
# set_instance_assignment -name IO_STANDARD "nan"                            -to fpga_dsw_2
set_instance_assignment -name IO_STANDARD "1.2V"                           -to led_usr_g_n
set_instance_assignment -name IO_STANDARD "1.2V"                           -to led_usr_r_n
set_instance_assignment -name IO_STANDARD "1.2V"                           -to lnk_f2m_dat
set_instance_assignment -name IO_STANDARD "1.2V"                           -to lnk_m2f_dat
set_instance_assignment -name IO_STANDARD "1.2V"                           -to lnk_m2f_rst

############################################################
# DDR4
############################################################
# set_location_assignment PIN_AH3  -to ddr4_a[0]           
# set_location_assignment PIN_AG3  -to ddr4_a[1]           
# set_location_assignment PIN_AE2  -to ddr4_a[10]          
# set_location_assignment PIN_AE3  -to ddr4_a[11]          
# set_location_assignment PIN_AE7  -to ddr4_a[12]          
# set_location_assignment PIN_AC8  -to ddr4_a[13]          
# set_location_assignment PIN_AD9  -to ddr4_a[14]          
# set_location_assignment PIN_AC9  -to ddr4_a[15]          
# set_location_assignment PIN_AC10 -to ddr4_a[16]          
# set_location_assignment PIN_AG6  -to ddr4_a[2]           
# set_location_assignment PIN_AF6  -to ddr4_a[3]           
# set_location_assignment PIN_AF1  -to ddr4_a[4]           
# set_location_assignment PIN_AE1  -to ddr4_a[5]           
# set_location_assignment PIN_AF4  -to ddr4_a[6]           
# set_location_assignment PIN_AF3  -to ddr4_a[7]           
# set_location_assignment PIN_AG5  -to ddr4_a[8]           
# set_location_assignment PIN_AF5  -to ddr4_a[9]           
# set_location_assignment PIN_AJ2  -to ddr4_act_n[0]       
# set_location_assignment PIN_AH4  -to ddr4_alert_n        
# set_location_assignment PIN_AH4  -to ddr4_alert_n[0]     
# set_location_assignment PIN_AD6  -to ddr4_ba[0]          
# set_location_assignment PIN_AD7  -to ddr4_ba[1]          
# set_location_assignment PIN_AC7  -to ddr4_bg[0]          
# set_location_assignment PIN_AL1  -to ddr4_bg[1]          
# set_location_assignment PIN_AH2  -to ddr4_ck_n[0]        
# set_location_assignment PIN_AJ1  -to ddr4_ck[0]          
# set_location_assignment PIN_AJ4  -to ddr4_cke[0]         
# set_location_assignment PIN_AK2  -to ddr4_cs_n[0]        
# set_location_assignment PIN_AM6  -to ddr4_dbi_n[0]       
# set_location_assignment PIN_AN5  -to ddr4_dbi_n[1]       
# set_location_assignment PIN_AE9  -to ddr4_dbi_n[2]       
# set_location_assignment PIN_AD1  -to ddr4_dbi_n[3]       
# set_location_assignment PIN_AM3  -to ddr4_dq[0]          
# set_location_assignment PIN_AL6  -to ddr4_dq[1]          
# set_location_assignment PIN_AP6  -to ddr4_dq[10]         
# set_location_assignment PIN_AL9  -to ddr4_dq[11]         
# set_location_assignment PIN_AP5  -to ddr4_dq[12]         
# set_location_assignment PIN_AP7  -to ddr4_dq[13]         
# set_location_assignment PIN_AM8  -to ddr4_dq[14]         
# set_location_assignment PIN_AM7  -to ddr4_dq[15]         
# set_location_assignment PIN_AH10 -to ddr4_dq[16]         
# set_location_assignment PIN_AE8  -to ddr4_dq[17]         
# set_location_assignment PIN_AG11 -to ddr4_dq[18]         
# set_location_assignment PIN_AF9  -to ddr4_dq[19]         
# set_location_assignment PIN_AL3  -to ddr4_dq[2]          
# set_location_assignment PIN_AH9  -to ddr4_dq[20]         
# set_location_assignment PIN_AE11 -to ddr4_dq[21]         
# set_location_assignment PIN_AF8  -to ddr4_dq[22]         
# set_location_assignment PIN_AF11 -to ddr4_dq[23]         
# set_location_assignment PIN_AB5  -to ddr4_dq[24]         
# set_location_assignment PIN_AB11 -to ddr4_dq[25]         
# set_location_assignment PIN_AD4  -to ddr4_dq[26]         
# set_location_assignment PIN_AB6  -to ddr4_dq[27]         
# set_location_assignment PIN_AD2  -to ddr4_dq[28]         
# set_location_assignment PIN_AB10 -to ddr4_dq[29]         
# set_location_assignment PIN_AM5  -to ddr4_dq[3]          
# set_location_assignment PIN_AE4  -to ddr4_dq[30]         
# set_location_assignment PIN_AC5  -to ddr4_dq[31]         
# set_location_assignment PIN_AP4  -to ddr4_dq[4]          
# set_location_assignment PIN_AK6  -to ddr4_dq[5]          
# set_location_assignment PIN_AN4  -to ddr4_dq[6]          
# set_location_assignment PIN_AL4  -to ddr4_dq[7]          
# set_location_assignment PIN_AL8  -to ddr4_dq[8]          
# set_location_assignment PIN_AN8  -to ddr4_dq[9]          
# set_location_assignment PIN_AM1  -to ddr4_dqs[0]         
# set_location_assignment PIN_AM2  -to ddr4_dqs[0](n)      
# set_location_assignment PIN_AP9  -to ddr4_dqs[1]         
# set_location_assignment PIN_AN9  -to ddr4_dqs[1](n)      
# set_location_assignment PIN_AG10 -to ddr4_dqs[2]         
# set_location_assignment PIN_AF10 -to ddr4_dqs[2](n)      
# set_location_assignment PIN_AB8  -to ddr4_dqs[3]         
# set_location_assignment PIN_AB7  -to ddr4_dqs[3](n)      
# set_location_assignment PIN_AJ7  -to ddr4_oct_rzqin      
# set_location_assignment PIN_AK4  -to ddr4_odt[0]         
# set_location_assignment PIN_AG2  -to ddr4_par[0]         
# set_location_assignment PIN_AL5  -to ddr4_pll_ref_clk    
# set_location_assignment PIN_AK1  -to ddr4_reset_n[0]     

# set_instance_assignment -name IO_STANDARD "SSTL-12"                        -to ddr4_a[0]
# set_instance_assignment -name IO_STANDARD "SSTL-12"                        -to ddr4_a[1]
# set_instance_assignment -name IO_STANDARD "SSTL-12"                        -to ddr4_a[10]
# set_instance_assignment -name IO_STANDARD "SSTL-12"                        -to ddr4_a[11]
# set_instance_assignment -name IO_STANDARD "SSTL-12"                        -to ddr4_a[12]
# set_instance_assignment -name IO_STANDARD "SSTL-12"                        -to ddr4_a[13]
# set_instance_assignment -name IO_STANDARD "SSTL-12"                        -to ddr4_a[14]
# set_instance_assignment -name IO_STANDARD "SSTL-12"                        -to ddr4_a[15]
# set_instance_assignment -name IO_STANDARD "SSTL-12"                        -to ddr4_a[16]
# set_instance_assignment -name IO_STANDARD "SSTL-12"                        -to ddr4_a[2]
# set_instance_assignment -name IO_STANDARD "SSTL-12"                        -to ddr4_a[3]
# set_instance_assignment -name IO_STANDARD "SSTL-12"                        -to ddr4_a[4]
# set_instance_assignment -name IO_STANDARD "SSTL-12"                        -to ddr4_a[5]
# set_instance_assignment -name IO_STANDARD "SSTL-12"                        -to ddr4_a[6]
# set_instance_assignment -name IO_STANDARD "SSTL-12"                        -to ddr4_a[7]
# set_instance_assignment -name IO_STANDARD "SSTL-12"                        -to ddr4_a[8]
# set_instance_assignment -name IO_STANDARD "SSTL-12"                        -to ddr4_a[9]
# set_instance_assignment -name IO_STANDARD "SSTL-12"                        -to ddr4_act_n[0]
# set_instance_assignment -name IO_STANDARD "SSTL-12"                        -to ddr4_alert_n
# set_instance_assignment -name IO_STANDARD "SSTL-12"                        -to ddr4_alert_n[0]
# set_instance_assignment -name IO_STANDARD "SSTL-12"                        -to ddr4_ba[0]
# set_instance_assignment -name IO_STANDARD "SSTL-12"                        -to ddr4_ba[1]
# set_instance_assignment -name IO_STANDARD "SSTL-12"                        -to ddr4_bg[0]
# set_instance_assignment -name IO_STANDARD "SSTL-12"                        -to ddr4_bg[1]
# set_instance_assignment -name IO_STANDARD "DIFFERENTIAL 1.2-V SSTL"        -to ddr4_ck_n[0]
# set_instance_assignment -name IO_STANDARD "DIFFERENTIAL 1.2-V SSTL"        -to ddr4_ck[0]
# set_instance_assignment -name IO_STANDARD "SSTL-12"                        -to ddr4_cke[0]
# set_instance_assignment -name IO_STANDARD "SSTL-12"                        -to ddr4_cs_n[0]
# set_instance_assignment -name IO_STANDARD "1.2-V POD"                      -to ddr4_dbi_n[0]
# set_instance_assignment -name IO_STANDARD "1.2-V POD"                      -to ddr4_dbi_n[1]
# set_instance_assignment -name IO_STANDARD "1.2-V POD"                      -to ddr4_dbi_n[2]
# set_instance_assignment -name IO_STANDARD "1.2-V POD"                      -to ddr4_dbi_n[3]
# set_instance_assignment -name IO_STANDARD "1.2-V POD"                      -to ddr4_dq[0]
# set_instance_assignment -name IO_STANDARD "1.2-V POD"                      -to ddr4_dq[1]
# set_instance_assignment -name IO_STANDARD "1.2-V POD"                      -to ddr4_dq[10]
# set_instance_assignment -name IO_STANDARD "1.2-V POD"                      -to ddr4_dq[11]
# set_instance_assignment -name IO_STANDARD "1.2-V POD"                      -to ddr4_dq[12]
# set_instance_assignment -name IO_STANDARD "1.2-V POD"                      -to ddr4_dq[13]
# set_instance_assignment -name IO_STANDARD "1.2-V POD"                      -to ddr4_dq[14]
# set_instance_assignment -name IO_STANDARD "1.2-V POD"                      -to ddr4_dq[15]
# set_instance_assignment -name IO_STANDARD "1.2-V POD"                      -to ddr4_dq[16]
# set_instance_assignment -name IO_STANDARD "1.2-V POD"                      -to ddr4_dq[17]
# set_instance_assignment -name IO_STANDARD "1.2-V POD"                      -to ddr4_dq[18]
# set_instance_assignment -name IO_STANDARD "1.2-V POD"                      -to ddr4_dq[19]
# set_instance_assignment -name IO_STANDARD "1.2-V POD"                      -to ddr4_dq[2]
# set_instance_assignment -name IO_STANDARD "1.2-V POD"                      -to ddr4_dq[20]
# set_instance_assignment -name IO_STANDARD "1.2-V POD"                      -to ddr4_dq[21]
# set_instance_assignment -name IO_STANDARD "1.2-V POD"                      -to ddr4_dq[22]
# set_instance_assignment -name IO_STANDARD "1.2-V POD"                      -to ddr4_dq[23]
# set_instance_assignment -name IO_STANDARD "1.2-V POD"                      -to ddr4_dq[24]
# set_instance_assignment -name IO_STANDARD "1.2-V POD"                      -to ddr4_dq[25]
# set_instance_assignment -name IO_STANDARD "1.2-V POD"                      -to ddr4_dq[26]
# set_instance_assignment -name IO_STANDARD "1.2-V POD"                      -to ddr4_dq[27]
# set_instance_assignment -name IO_STANDARD "1.2-V POD"                      -to ddr4_dq[28]
# set_instance_assignment -name IO_STANDARD "1.2-V POD"                      -to ddr4_dq[29]
# set_instance_assignment -name IO_STANDARD "1.2-V POD"                      -to ddr4_dq[3]
# set_instance_assignment -name IO_STANDARD "1.2-V POD"                      -to ddr4_dq[30]
# set_instance_assignment -name IO_STANDARD "1.2-V POD"                      -to ddr4_dq[31]
# set_instance_assignment -name IO_STANDARD "1.2-V POD"                      -to ddr4_dq[4]
# set_instance_assignment -name IO_STANDARD "1.2-V POD"                      -to ddr4_dq[5]
# set_instance_assignment -name IO_STANDARD "1.2-V POD"                      -to ddr4_dq[6]
# set_instance_assignment -name IO_STANDARD "1.2-V POD"                      -to ddr4_dq[7]
# set_instance_assignment -name IO_STANDARD "1.2-V POD"                      -to ddr4_dq[8]
# set_instance_assignment -name IO_STANDARD "1.2-V POD"                      -to ddr4_dq[9]
# set_instance_assignment -name IO_STANDARD "DIFFERENTIAL 1.2-V POD"         -to ddr4_dqs[0]
# set_instance_assignment -name IO_STANDARD "DIFFERENTIAL 1.2-V POD"         -to ddr4_dqs[0](n)
# set_instance_assignment -name IO_STANDARD "DIFFERENTIAL 1.2-V POD"         -to ddr4_dqs[1]
# set_instance_assignment -name IO_STANDARD "DIFFERENTIAL 1.2-V POD"         -to ddr4_dqs[1](n)
# set_instance_assignment -name IO_STANDARD "DIFFERENTIAL 1.2-V POD"         -to ddr4_dqs[2]
# set_instance_assignment -name IO_STANDARD "DIFFERENTIAL 1.2-V POD"         -to ddr4_dqs[2](n)
# set_instance_assignment -name IO_STANDARD "DIFFERENTIAL 1.2-V POD"         -to ddr4_dqs[3]
# set_instance_assignment -name IO_STANDARD "DIFFERENTIAL 1.2-V POD"         -to ddr4_dqs[3](n)
# set_instance_assignment -name IO_STANDARD "1.2V"                           -to ddr4_oct_rzqin
# set_instance_assignment -name IO_STANDARD "SSTL-12"                        -to ddr4_odt[0]
# set_instance_assignment -name IO_STANDARD "SSTL-12"                        -to ddr4_par[0]
# set_instance_assignment -name IO_STANDARD "1.2V"                           -to ddr4_pll_ref_clk
# set_instance_assignment -name IO_STANDARD "1.2V"                           -to ddr4_reset_n[0]


########################################################################################################################
# FX3
########################################################################################################################
# set_location_assignment PIN_AK21 -to fx3_a[0]            
# set_location_assignment PIN_AM21 -to fx3_a[1]            
# set_location_assignment PIN_AL19 -to fx3_dq[0]           
# set_location_assignment PIN_AN19 -to fx3_dq[1]           
# set_location_assignment PIN_AP19 -to fx3_dq[2]           
# set_location_assignment PIN_AM20 -to fx3_dq[3]           
# set_location_assignment PIN_AJ19 -to fx3_dq[4]           
# set_location_assignment PIN_AK19 -to fx3_dq[5]           
# set_location_assignment PIN_AL20 -to fx3_dq[6]           
# set_location_assignment PIN_AL21 -to fx3_dq[7]           
# set_location_assignment PIN_B26  -to fx3_flaga           
# set_location_assignment PIN_C24  -to fx3_flagb           
# set_location_assignment PIN_B23  -to fx3_flagc           
# set_location_assignment PIN_C23  -to fx3_flagd           
# set_location_assignment PIN_AC4  -to fx3_pclk            
# set_location_assignment PIN_AJ6  -to fx3_pktend_n        
# set_location_assignment PIN_AD5  -to fx3_slcs_n          
# set_location_assignment PIN_AJ21 -to fx3_sloe_n          
# set_location_assignment PIN_AJ20 -to fx3_slrd_n          
# set_location_assignment PIN_AE6  -to fx3_slwr_n          

# set_instance_assignment -name IO_STANDARD "1.8V"                           -to fx3_a[0]
# set_instance_assignment -name IO_STANDARD "1.8V"                           -to fx3_a[1]
# set_instance_assignment -name IO_STANDARD "1.8V"                           -to fx3_dq[0]
# set_instance_assignment -name IO_STANDARD "1.8V"                           -to fx3_dq[1]
# set_instance_assignment -name IO_STANDARD "1.8V"                           -to fx3_dq[2]
# set_instance_assignment -name IO_STANDARD "1.8V"                           -to fx3_dq[3]
# set_instance_assignment -name IO_STANDARD "1.8V"                           -to fx3_dq[4]
# set_instance_assignment -name IO_STANDARD "1.8V"                           -to fx3_dq[5]
# set_instance_assignment -name IO_STANDARD "1.8V"                           -to fx3_dq[6]
# set_instance_assignment -name IO_STANDARD "1.8V"                           -to fx3_dq[7]
# set_instance_assignment -name IO_STANDARD "1.2V"                           -to fx3_flaga
# set_instance_assignment -name IO_STANDARD "1.2V"                           -to fx3_flagb
# set_instance_assignment -name IO_STANDARD "1.2V"                           -to fx3_flagc
# set_instance_assignment -name IO_STANDARD "1.2V"                           -to fx3_flagd
# set_instance_assignment -name IO_STANDARD "1.2V"                           -to fx3_pclk
# set_instance_assignment -name IO_STANDARD "1.2V"                           -to fx3_pktend_n
# set_instance_assignment -name IO_STANDARD "1.2V"                           -to fx3_slcs_n
# set_instance_assignment -name IO_STANDARD "1.8V"                           -to fx3_sloe_n
# set_instance_assignment -name IO_STANDARD "1.8V"                           -to fx3_slrd_n
# set_instance_assignment -name IO_STANDARD "1.2V"                           -to fx3_slwr_n


########################################################################################################################
# PCIE
########################################################################################################################
# set_location_assignment PIN_AE16 -to pcie_0_perst_n      
# set_location_assignment PIN_AD28 -to pcie_0_refclk       
# set_location_assignment PIN_AD27 -to pcie_0_refclk(n)    
# set_location_assignment PIN_AE30 -to pcie_0_rx[0]        
# set_location_assignment PIN_AE29 -to pcie_0_rx[0](n)     
# set_location_assignment PIN_AD32 -to pcie_0_rx[1]        
# set_location_assignment PIN_AD31 -to pcie_0_rx[1](n)     
# set_location_assignment PIN_AC30 -to pcie_0_rx[2]        
# set_location_assignment PIN_AC29 -to pcie_0_rx[2](n)     
# set_location_assignment PIN_AB32 -to pcie_0_rx[3]        
# set_location_assignment PIN_AB31 -to pcie_0_rx[3](n)     
# set_location_assignment PIN_AA30 -to pcie_0_rx[4]        
# set_location_assignment PIN_AA29 -to pcie_0_rx[4](n)     
# set_location_assignment PIN_Y32  -to pcie_0_rx[5]        
# set_location_assignment PIN_Y31  -to pcie_0_rx[5](n)     
# set_location_assignment PIN_W30  -to pcie_0_rx[6]        
# set_location_assignment PIN_W29  -to pcie_0_rx[6](n)     
# set_location_assignment PIN_V32  -to pcie_0_rx[7]        
# set_location_assignment PIN_V31  -to pcie_0_rx[7](n)     
# set_location_assignment PIN_AN34 -to pcie_0_tx[0]        
# set_location_assignment PIN_AN33 -to pcie_0_tx[0](n)     
# set_location_assignment PIN_AL34 -to pcie_0_tx[1]        
# set_location_assignment PIN_AL33 -to pcie_0_tx[1](n)     
# set_location_assignment PIN_AJ34 -to pcie_0_tx[2]        
# set_location_assignment PIN_AJ33 -to pcie_0_tx[2](n)     
# set_location_assignment PIN_AG34 -to pcie_0_tx[3]        
# set_location_assignment PIN_AG33 -to pcie_0_tx[3](n)     
# set_location_assignment PIN_AE34 -to pcie_0_tx[4]        
# set_location_assignment PIN_AE33 -to pcie_0_tx[4](n)     
# set_location_assignment PIN_AC34 -to pcie_0_tx[5]        
# set_location_assignment PIN_AC33 -to pcie_0_tx[5](n)     
# set_location_assignment PIN_AA34 -to pcie_0_tx[6]        
# set_location_assignment PIN_AA33 -to pcie_0_tx[6](n)     
# set_location_assignment PIN_W34  -to pcie_0_tx[7]        
# set_location_assignment PIN_W33  -to pcie_0_tx[7](n)     

# set_instance_assignment -name IO_STANDARD "1.8 V"                          -to pcie_0_perst_n
# set_instance_assignment -name IO_STANDARD "LVDS"                           -to pcie_0_refclk
# set_instance_assignment -name IO_STANDARD "LVDS"                           -to pcie_0_refclk(n)
# set_instance_assignment -name IO_STANDARD "HIGH SPEED DIFFERENTIAL I/O"    -to pcie_0_rx[0]
# set_instance_assignment -name IO_STANDARD "HIGH SPEED DIFFERENTIAL I/O"    -to pcie_0_rx[0](n)
# set_instance_assignment -name IO_STANDARD "HIGH SPEED DIFFERENTIAL I/O"    -to pcie_0_rx[1]
# set_instance_assignment -name IO_STANDARD "HIGH SPEED DIFFERENTIAL I/O"    -to pcie_0_rx[1](n)
# set_instance_assignment -name IO_STANDARD "HIGH SPEED DIFFERENTIAL I/O"    -to pcie_0_rx[2]
# set_instance_assignment -name IO_STANDARD "HIGH SPEED DIFFERENTIAL I/O"    -to pcie_0_rx[2](n)
# set_instance_assignment -name IO_STANDARD "HIGH SPEED DIFFERENTIAL I/O"    -to pcie_0_rx[3]
# set_instance_assignment -name IO_STANDARD "HIGH SPEED DIFFERENTIAL I/O"    -to pcie_0_rx[3](n)
# set_instance_assignment -name IO_STANDARD "HIGH SPEED DIFFERENTIAL I/O"    -to pcie_0_rx[4]
# set_instance_assignment -name IO_STANDARD "HIGH SPEED DIFFERENTIAL I/O"    -to pcie_0_rx[4](n)
# set_instance_assignment -name IO_STANDARD "HIGH SPEED DIFFERENTIAL I/O"    -to pcie_0_rx[5]
# set_instance_assignment -name IO_STANDARD "HIGH SPEED DIFFERENTIAL I/O"    -to pcie_0_rx[5](n)
# set_instance_assignment -name IO_STANDARD "HIGH SPEED DIFFERENTIAL I/O"    -to pcie_0_rx[6]
# set_instance_assignment -name IO_STANDARD "HIGH SPEED DIFFERENTIAL I/O"    -to pcie_0_rx[6](n)
# set_instance_assignment -name IO_STANDARD "HIGH SPEED DIFFERENTIAL I/O"    -to pcie_0_rx[7]
# set_instance_assignment -name IO_STANDARD "HIGH SPEED DIFFERENTIAL I/O"    -to pcie_0_rx[7](n)
# set_instance_assignment -name IO_STANDARD "HIGH SPEED DIFFERENTIAL I/O"    -to pcie_0_tx[0]
# set_instance_assignment -name IO_STANDARD "HIGH SPEED DIFFERENTIAL I/O"    -to pcie_0_tx[0](n)
# set_instance_assignment -name IO_STANDARD "HIGH SPEED DIFFERENTIAL I/O"    -to pcie_0_tx[1]
# set_instance_assignment -name IO_STANDARD "HIGH SPEED DIFFERENTIAL I/O"    -to pcie_0_tx[1](n)
# set_instance_assignment -name IO_STANDARD "HIGH SPEED DIFFERENTIAL I/O"    -to pcie_0_tx[2]
# set_instance_assignment -name IO_STANDARD "HIGH SPEED DIFFERENTIAL I/O"    -to pcie_0_tx[2](n)
# set_instance_assignment -name IO_STANDARD "HIGH SPEED DIFFERENTIAL I/O"    -to pcie_0_tx[3]
# set_instance_assignment -name IO_STANDARD "HIGH SPEED DIFFERENTIAL I/O"    -to pcie_0_tx[3](n)
# set_instance_assignment -name IO_STANDARD "HIGH SPEED DIFFERENTIAL I/O"    -to pcie_0_tx[4]
# set_instance_assignment -name IO_STANDARD "HIGH SPEED DIFFERENTIAL I/O"    -to pcie_0_tx[4](n)
# set_instance_assignment -name IO_STANDARD "HIGH SPEED DIFFERENTIAL I/O"    -to pcie_0_tx[5]
# set_instance_assignment -name IO_STANDARD "HIGH SPEED DIFFERENTIAL I/O"    -to pcie_0_tx[5](n)
# set_instance_assignment -name IO_STANDARD "HIGH SPEED DIFFERENTIAL I/O"    -to pcie_0_tx[6]
# set_instance_assignment -name IO_STANDARD "HIGH SPEED DIFFERENTIAL I/O"    -to pcie_0_tx[6](n)
# set_instance_assignment -name IO_STANDARD "HIGH SPEED DIFFERENTIAL I/O"    -to pcie_0_tx[7]
# set_instance_assignment -name IO_STANDARD "HIGH SPEED DIFFERENTIAL I/O"    -to pcie_0_tx[7](n)





post_message "# Processing assignments file ends."
post_message "##################################################################################################"
