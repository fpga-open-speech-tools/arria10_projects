	pll u0 (
		.rst      (<connected-to-rst>),      //   reset.reset
		.refclk   (<connected-to-refclk>),   //  refclk.clk
		.locked   (<connected-to-locked>),   //  locked.export
		.outclk_0 (<connected-to-outclk_0>), // outclk0.clk
		.outclk_1 (<connected-to-outclk_1>), // outclk1.clk
		.outclk_2 (<connected-to-outclk_2>)  // outclk2.clk
	);

