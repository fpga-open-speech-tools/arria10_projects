// soc_system_altera_arria10_hps_io_180_geofrnq.v

// This file was auto-generated from altera_hps_arria10_io_hw.tcl.  If you edit it your changes
// will probably be lost.
// 
// Generated using ACDS version 18.0 614

`timescale 1 ps / 1 ps
module soc_system_altera_arria10_hps_io_180_geofrnq (
		output wire  hps_io_phery_emac1_TX_CLK, // hps_io.hps_io_phery_emac1_TX_CLK
		output wire  hps_io_phery_emac1_TXD0,   //       .hps_io_phery_emac1_TXD0
		output wire  hps_io_phery_emac1_TXD1,   //       .hps_io_phery_emac1_TXD1
		output wire  hps_io_phery_emac1_TXD2,   //       .hps_io_phery_emac1_TXD2
		output wire  hps_io_phery_emac1_TXD3,   //       .hps_io_phery_emac1_TXD3
		input  wire  hps_io_phery_emac1_RX_CTL, //       .hps_io_phery_emac1_RX_CTL
		output wire  hps_io_phery_emac1_TX_CTL, //       .hps_io_phery_emac1_TX_CTL
		input  wire  hps_io_phery_emac1_RX_CLK, //       .hps_io_phery_emac1_RX_CLK
		input  wire  hps_io_phery_emac1_RXD0,   //       .hps_io_phery_emac1_RXD0
		input  wire  hps_io_phery_emac1_RXD1,   //       .hps_io_phery_emac1_RXD1
		input  wire  hps_io_phery_emac1_RXD2,   //       .hps_io_phery_emac1_RXD2
		input  wire  hps_io_phery_emac1_RXD3,   //       .hps_io_phery_emac1_RXD3
		inout  wire  hps_io_phery_emac1_MDIO,   //       .hps_io_phery_emac1_MDIO
		output wire  hps_io_phery_emac1_MDC,    //       .hps_io_phery_emac1_MDC
		output wire  hps_io_phery_emac2_TX_CLK, //       .hps_io_phery_emac2_TX_CLK
		output wire  hps_io_phery_emac2_TXD0,   //       .hps_io_phery_emac2_TXD0
		output wire  hps_io_phery_emac2_TXD1,   //       .hps_io_phery_emac2_TXD1
		output wire  hps_io_phery_emac2_TXD2,   //       .hps_io_phery_emac2_TXD2
		output wire  hps_io_phery_emac2_TXD3,   //       .hps_io_phery_emac2_TXD3
		input  wire  hps_io_phery_emac2_RX_CTL, //       .hps_io_phery_emac2_RX_CTL
		output wire  hps_io_phery_emac2_TX_CTL, //       .hps_io_phery_emac2_TX_CTL
		input  wire  hps_io_phery_emac2_RX_CLK, //       .hps_io_phery_emac2_RX_CLK
		input  wire  hps_io_phery_emac2_RXD0,   //       .hps_io_phery_emac2_RXD0
		input  wire  hps_io_phery_emac2_RXD1,   //       .hps_io_phery_emac2_RXD1
		input  wire  hps_io_phery_emac2_RXD2,   //       .hps_io_phery_emac2_RXD2
		input  wire  hps_io_phery_emac2_RXD3,   //       .hps_io_phery_emac2_RXD3
		inout  wire  hps_io_phery_emac2_MDIO,   //       .hps_io_phery_emac2_MDIO
		output wire  hps_io_phery_emac2_MDC,    //       .hps_io_phery_emac2_MDC
		inout  wire  hps_io_phery_sdmmc_CMD,    //       .hps_io_phery_sdmmc_CMD
		inout  wire  hps_io_phery_sdmmc_D0,     //       .hps_io_phery_sdmmc_D0
		inout  wire  hps_io_phery_sdmmc_D1,     //       .hps_io_phery_sdmmc_D1
		inout  wire  hps_io_phery_sdmmc_D2,     //       .hps_io_phery_sdmmc_D2
		inout  wire  hps_io_phery_sdmmc_D3,     //       .hps_io_phery_sdmmc_D3
		inout  wire  hps_io_phery_sdmmc_D4,     //       .hps_io_phery_sdmmc_D4
		inout  wire  hps_io_phery_sdmmc_D5,     //       .hps_io_phery_sdmmc_D5
		inout  wire  hps_io_phery_sdmmc_D6,     //       .hps_io_phery_sdmmc_D6
		inout  wire  hps_io_phery_sdmmc_D7,     //       .hps_io_phery_sdmmc_D7
		output wire  hps_io_phery_sdmmc_CCLK,   //       .hps_io_phery_sdmmc_CCLK
		inout  wire  hps_io_phery_usb1_DATA0,   //       .hps_io_phery_usb1_DATA0
		inout  wire  hps_io_phery_usb1_DATA1,   //       .hps_io_phery_usb1_DATA1
		inout  wire  hps_io_phery_usb1_DATA2,   //       .hps_io_phery_usb1_DATA2
		inout  wire  hps_io_phery_usb1_DATA3,   //       .hps_io_phery_usb1_DATA3
		inout  wire  hps_io_phery_usb1_DATA4,   //       .hps_io_phery_usb1_DATA4
		inout  wire  hps_io_phery_usb1_DATA5,   //       .hps_io_phery_usb1_DATA5
		inout  wire  hps_io_phery_usb1_DATA6,   //       .hps_io_phery_usb1_DATA6
		inout  wire  hps_io_phery_usb1_DATA7,   //       .hps_io_phery_usb1_DATA7
		input  wire  hps_io_phery_usb1_CLK,     //       .hps_io_phery_usb1_CLK
		output wire  hps_io_phery_usb1_STP,     //       .hps_io_phery_usb1_STP
		input  wire  hps_io_phery_usb1_DIR,     //       .hps_io_phery_usb1_DIR
		input  wire  hps_io_phery_usb1_NXT,     //       .hps_io_phery_usb1_NXT
		input  wire  hps_io_phery_uart0_RX,     //       .hps_io_phery_uart0_RX
		output wire  hps_io_phery_uart0_TX,     //       .hps_io_phery_uart0_TX
		input  wire  hps_io_phery_uart0_CTS_N,  //       .hps_io_phery_uart0_CTS_N
		output wire  hps_io_phery_uart0_RTS_N   //       .hps_io_phery_uart0_RTS_N
	);

	soc_system_altera_arria10_interface_generator_140_5g7ekiy border (
		.hps_io_phery_emac1_TX_CLK (hps_io_phery_emac1_TX_CLK), // hps_io.hps_io_phery_emac1_TX_CLK
		.hps_io_phery_emac1_TXD0   (hps_io_phery_emac1_TXD0),   //       .hps_io_phery_emac1_TXD0
		.hps_io_phery_emac1_TXD1   (hps_io_phery_emac1_TXD1),   //       .hps_io_phery_emac1_TXD1
		.hps_io_phery_emac1_TXD2   (hps_io_phery_emac1_TXD2),   //       .hps_io_phery_emac1_TXD2
		.hps_io_phery_emac1_TXD3   (hps_io_phery_emac1_TXD3),   //       .hps_io_phery_emac1_TXD3
		.hps_io_phery_emac1_RX_CTL (hps_io_phery_emac1_RX_CTL), //       .hps_io_phery_emac1_RX_CTL
		.hps_io_phery_emac1_TX_CTL (hps_io_phery_emac1_TX_CTL), //       .hps_io_phery_emac1_TX_CTL
		.hps_io_phery_emac1_RX_CLK (hps_io_phery_emac1_RX_CLK), //       .hps_io_phery_emac1_RX_CLK
		.hps_io_phery_emac1_RXD0   (hps_io_phery_emac1_RXD0),   //       .hps_io_phery_emac1_RXD0
		.hps_io_phery_emac1_RXD1   (hps_io_phery_emac1_RXD1),   //       .hps_io_phery_emac1_RXD1
		.hps_io_phery_emac1_RXD2   (hps_io_phery_emac1_RXD2),   //       .hps_io_phery_emac1_RXD2
		.hps_io_phery_emac1_RXD3   (hps_io_phery_emac1_RXD3),   //       .hps_io_phery_emac1_RXD3
		.hps_io_phery_emac1_MDIO   (hps_io_phery_emac1_MDIO),   //       .hps_io_phery_emac1_MDIO
		.hps_io_phery_emac1_MDC    (hps_io_phery_emac1_MDC),    //       .hps_io_phery_emac1_MDC
		.hps_io_phery_emac2_TX_CLK (hps_io_phery_emac2_TX_CLK), //       .hps_io_phery_emac2_TX_CLK
		.hps_io_phery_emac2_TXD0   (hps_io_phery_emac2_TXD0),   //       .hps_io_phery_emac2_TXD0
		.hps_io_phery_emac2_TXD1   (hps_io_phery_emac2_TXD1),   //       .hps_io_phery_emac2_TXD1
		.hps_io_phery_emac2_TXD2   (hps_io_phery_emac2_TXD2),   //       .hps_io_phery_emac2_TXD2
		.hps_io_phery_emac2_TXD3   (hps_io_phery_emac2_TXD3),   //       .hps_io_phery_emac2_TXD3
		.hps_io_phery_emac2_RX_CTL (hps_io_phery_emac2_RX_CTL), //       .hps_io_phery_emac2_RX_CTL
		.hps_io_phery_emac2_TX_CTL (hps_io_phery_emac2_TX_CTL), //       .hps_io_phery_emac2_TX_CTL
		.hps_io_phery_emac2_RX_CLK (hps_io_phery_emac2_RX_CLK), //       .hps_io_phery_emac2_RX_CLK
		.hps_io_phery_emac2_RXD0   (hps_io_phery_emac2_RXD0),   //       .hps_io_phery_emac2_RXD0
		.hps_io_phery_emac2_RXD1   (hps_io_phery_emac2_RXD1),   //       .hps_io_phery_emac2_RXD1
		.hps_io_phery_emac2_RXD2   (hps_io_phery_emac2_RXD2),   //       .hps_io_phery_emac2_RXD2
		.hps_io_phery_emac2_RXD3   (hps_io_phery_emac2_RXD3),   //       .hps_io_phery_emac2_RXD3
		.hps_io_phery_emac2_MDIO   (hps_io_phery_emac2_MDIO),   //       .hps_io_phery_emac2_MDIO
		.hps_io_phery_emac2_MDC    (hps_io_phery_emac2_MDC),    //       .hps_io_phery_emac2_MDC
		.hps_io_phery_sdmmc_CMD    (hps_io_phery_sdmmc_CMD),    //       .hps_io_phery_sdmmc_CMD
		.hps_io_phery_sdmmc_D0     (hps_io_phery_sdmmc_D0),     //       .hps_io_phery_sdmmc_D0
		.hps_io_phery_sdmmc_D1     (hps_io_phery_sdmmc_D1),     //       .hps_io_phery_sdmmc_D1
		.hps_io_phery_sdmmc_D2     (hps_io_phery_sdmmc_D2),     //       .hps_io_phery_sdmmc_D2
		.hps_io_phery_sdmmc_D3     (hps_io_phery_sdmmc_D3),     //       .hps_io_phery_sdmmc_D3
		.hps_io_phery_sdmmc_D4     (hps_io_phery_sdmmc_D4),     //       .hps_io_phery_sdmmc_D4
		.hps_io_phery_sdmmc_D5     (hps_io_phery_sdmmc_D5),     //       .hps_io_phery_sdmmc_D5
		.hps_io_phery_sdmmc_D6     (hps_io_phery_sdmmc_D6),     //       .hps_io_phery_sdmmc_D6
		.hps_io_phery_sdmmc_D7     (hps_io_phery_sdmmc_D7),     //       .hps_io_phery_sdmmc_D7
		.hps_io_phery_sdmmc_CCLK   (hps_io_phery_sdmmc_CCLK),   //       .hps_io_phery_sdmmc_CCLK
		.hps_io_phery_usb1_DATA0   (hps_io_phery_usb1_DATA0),   //       .hps_io_phery_usb1_DATA0
		.hps_io_phery_usb1_DATA1   (hps_io_phery_usb1_DATA1),   //       .hps_io_phery_usb1_DATA1
		.hps_io_phery_usb1_DATA2   (hps_io_phery_usb1_DATA2),   //       .hps_io_phery_usb1_DATA2
		.hps_io_phery_usb1_DATA3   (hps_io_phery_usb1_DATA3),   //       .hps_io_phery_usb1_DATA3
		.hps_io_phery_usb1_DATA4   (hps_io_phery_usb1_DATA4),   //       .hps_io_phery_usb1_DATA4
		.hps_io_phery_usb1_DATA5   (hps_io_phery_usb1_DATA5),   //       .hps_io_phery_usb1_DATA5
		.hps_io_phery_usb1_DATA6   (hps_io_phery_usb1_DATA6),   //       .hps_io_phery_usb1_DATA6
		.hps_io_phery_usb1_DATA7   (hps_io_phery_usb1_DATA7),   //       .hps_io_phery_usb1_DATA7
		.hps_io_phery_usb1_CLK     (hps_io_phery_usb1_CLK),     //       .hps_io_phery_usb1_CLK
		.hps_io_phery_usb1_STP     (hps_io_phery_usb1_STP),     //       .hps_io_phery_usb1_STP
		.hps_io_phery_usb1_DIR     (hps_io_phery_usb1_DIR),     //       .hps_io_phery_usb1_DIR
		.hps_io_phery_usb1_NXT     (hps_io_phery_usb1_NXT),     //       .hps_io_phery_usb1_NXT
		.hps_io_phery_uart0_RX     (hps_io_phery_uart0_RX),     //       .hps_io_phery_uart0_RX
		.hps_io_phery_uart0_TX     (hps_io_phery_uart0_TX),     //       .hps_io_phery_uart0_TX
		.hps_io_phery_uart0_CTS_N  (hps_io_phery_uart0_CTS_N),  //       .hps_io_phery_uart0_CTS_N
		.hps_io_phery_uart0_RTS_N  (hps_io_phery_uart0_RTS_N)   //       .hps_io_phery_uart0_RTS_N
	);

endmodule
