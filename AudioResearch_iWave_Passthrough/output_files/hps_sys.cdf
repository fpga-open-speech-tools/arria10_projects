/* Quartus Prime Version 17.0.0 Build 290 04/26/2017 SJ Pro Edition */
JedecChain;
	FileRevision(JESD32A);
	DefaultMfr(6E);

	P ActionCode(Cfg)
		Device PartName(10AS048H3F34) Path("F:/PRFAZ/iW-PRFAZ-ED-02-R2.0-REL0.2/output_files/") File("hps_sys.sof") MfrSpec(OpMask(1));
	P ActionCode(Ign)
		Device PartName(SOCVHPS) MfrSpec(OpMask(0));

ChainEnd;

AlteraBegin;
	ChainType(JTAG);
AlteraEnd;
