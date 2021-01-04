// megafunction wizard: %FIFO%
// GENERATION: STANDARD
// VERSION: WM1.0
// MODULE: scfifo 

// ============================================================
// File Name: lsu_wraddr_q.v
// Megafunction Name(s):
// 			scfifo
//
// Simulation Library Files(s):
// 			altera_mf
// ============================================================
// ************************************************************
// THIS IS A WIZARD-GENERATED FILE. DO NOT EDIT THIS FILE!
//
// 7.2 Build 151 09/26/2007 SJ Full Version
// ************************************************************


//Copyright (C) 1991-2007 Altera Corporation
//Your use of Altera Corporation's design tools, logic functions 
//and other software and tools, and its AMPP partner logic 
//functions, and any output files from any of the foregoing 
//(including device programming or simulation files), and any 
//associated documentation or information are expressly subject 
//to the terms and conditions of the Altera Program License 
//Subscription Agreement, Altera MegaCore Function License 
//Agreement, or other applicable license agreement, including, 
//without limitation, that your use is for the sole purpose of 
//programming logic devices manufactured by Altera and sold by 
//Altera or its authorized distributors.  Please refer to the 
//applicable agreement for further details.


// synopsys translate_off
`timescale 1 ps / 1 ps
// synopsys translate_on
module lsu_wraddr_q (
	clock,
	data,
	rdreq,
	wrreq,
	empty,
	full,
	q,
	usedw);

	input	  clock;
	input	[5:0]  data;
	input	  rdreq;
	input	  wrreq;
	output	  empty;
	output	  full;
	output	[5:0]  q;
	output	[1:0]  usedw;

	wire [1:0] sub_wire0;
	wire  sub_wire1;
	wire [5:0] sub_wire2;
	wire  sub_wire3;
	wire [1:0] usedw = sub_wire0[1:0];
	wire  empty = sub_wire1;
	wire [5:0] q = sub_wire2[5:0];
	wire  full = sub_wire3;

	scfifo	scfifo_component (
				.rdreq (rdreq),
				.clock (clock),
				.wrreq (wrreq),
				.data (data),
				.usedw (sub_wire0),
				.empty (sub_wire1),
				.q (sub_wire2),
				.full (sub_wire3)
				// synopsys translate_off
				,
				.aclr (),
				.almost_empty (),
				.almost_full (),
				.sclr ()
				// synopsys translate_on
				);
	defparam
		scfifo_component.add_ram_output_register = "OFF",
		scfifo_component.intended_device_family = "Stratix III",
		scfifo_component.lpm_numwords = 4,
		scfifo_component.lpm_showahead = "ON",
		scfifo_component.lpm_type = "scfifo",
		scfifo_component.lpm_width = 6,
		scfifo_component.lpm_widthu = 2,
		scfifo_component.overflow_checking = "ON",
		scfifo_component.underflow_checking = "ON",
		scfifo_component.use_eab = "ON";


endmodule

// ============================================================
// CNX file retrieval info
// ============================================================
// Retrieval info: PRIVATE: AlmostEmpty NUMERIC "0"
// Retrieval info: PRIVATE: AlmostEmptyThr NUMERIC "-1"
// Retrieval info: PRIVATE: AlmostFull NUMERIC "0"
// Retrieval info: PRIVATE: AlmostFullThr NUMERIC "-1"
// Retrieval info: PRIVATE: CLOCKS_ARE_SYNCHRONIZED NUMERIC "1"
// Retrieval info: PRIVATE: Clock NUMERIC "0"
// Retrieval info: PRIVATE: Depth NUMERIC "4"
// Retrieval info: PRIVATE: Empty NUMERIC "1"
// Retrieval info: PRIVATE: Full NUMERIC "1"
// Retrieval info: PRIVATE: INTENDED_DEVICE_FAMILY STRING "Stratix III"
// Retrieval info: PRIVATE: LE_BasedFIFO NUMERIC "0"
// Retrieval info: PRIVATE: LegacyRREQ NUMERIC "0"
// Retrieval info: PRIVATE: MAX_DEPTH_BY_9 NUMERIC "0"
// Retrieval info: PRIVATE: OVERFLOW_CHECKING NUMERIC "0"
// Retrieval info: PRIVATE: Optimize NUMERIC "2"
// Retrieval info: PRIVATE: RAM_BLOCK_TYPE NUMERIC "0"
// Retrieval info: PRIVATE: SYNTH_WRAPPER_GEN_POSTFIX STRING "0"
// Retrieval info: PRIVATE: UNDERFLOW_CHECKING NUMERIC "0"
// Retrieval info: PRIVATE: UsedW NUMERIC "1"
// Retrieval info: PRIVATE: Width NUMERIC "6"
// Retrieval info: PRIVATE: dc_aclr NUMERIC "0"
// Retrieval info: PRIVATE: diff_widths NUMERIC "0"
// Retrieval info: PRIVATE: msb_usedw NUMERIC "0"
// Retrieval info: PRIVATE: output_width NUMERIC "6"
// Retrieval info: PRIVATE: rsEmpty NUMERIC "1"
// Retrieval info: PRIVATE: rsFull NUMERIC "0"
// Retrieval info: PRIVATE: rsUsedW NUMERIC "0"
// Retrieval info: PRIVATE: sc_aclr NUMERIC "0"
// Retrieval info: PRIVATE: sc_sclr NUMERIC "0"
// Retrieval info: PRIVATE: wsEmpty NUMERIC "0"
// Retrieval info: PRIVATE: wsFull NUMERIC "1"
// Retrieval info: PRIVATE: wsUsedW NUMERIC "0"
// Retrieval info: CONSTANT: ADD_RAM_OUTPUT_REGISTER STRING "OFF"
// Retrieval info: CONSTANT: INTENDED_DEVICE_FAMILY STRING "Stratix III"
// Retrieval info: CONSTANT: LPM_NUMWORDS NUMERIC "4"
// Retrieval info: CONSTANT: LPM_SHOWAHEAD STRING "ON"
// Retrieval info: CONSTANT: LPM_TYPE STRING "scfifo"
// Retrieval info: CONSTANT: LPM_WIDTH NUMERIC "6"
// Retrieval info: CONSTANT: LPM_WIDTHU NUMERIC "2"
// Retrieval info: CONSTANT: OVERFLOW_CHECKING STRING "ON"
// Retrieval info: CONSTANT: UNDERFLOW_CHECKING STRING "ON"
// Retrieval info: CONSTANT: USE_EAB STRING "ON"
// Retrieval info: USED_PORT: clock 0 0 0 0 INPUT NODEFVAL clock
// Retrieval info: USED_PORT: data 0 0 6 0 INPUT NODEFVAL data[5..0]
// Retrieval info: USED_PORT: empty 0 0 0 0 OUTPUT NODEFVAL empty
// Retrieval info: USED_PORT: full 0 0 0 0 OUTPUT NODEFVAL full
// Retrieval info: USED_PORT: q 0 0 6 0 OUTPUT NODEFVAL q[5..0]
// Retrieval info: USED_PORT: rdreq 0 0 0 0 INPUT NODEFVAL rdreq
// Retrieval info: USED_PORT: usedw 0 0 2 0 OUTPUT NODEFVAL usedw[1..0]
// Retrieval info: USED_PORT: wrreq 0 0 0 0 INPUT NODEFVAL wrreq
// Retrieval info: CONNECT: @data 0 0 6 0 data 0 0 6 0
// Retrieval info: CONNECT: q 0 0 6 0 @q 0 0 6 0
// Retrieval info: CONNECT: @wrreq 0 0 0 0 wrreq 0 0 0 0
// Retrieval info: CONNECT: @rdreq 0 0 0 0 rdreq 0 0 0 0
// Retrieval info: CONNECT: @clock 0 0 0 0 clock 0 0 0 0
// Retrieval info: CONNECT: full 0 0 0 0 @full 0 0 0 0
// Retrieval info: CONNECT: empty 0 0 0 0 @empty 0 0 0 0
// Retrieval info: CONNECT: usedw 0 0 2 0 @usedw 0 0 2 0
// Retrieval info: LIBRARY: altera_mf altera_mf.altera_mf_components.all
// Retrieval info: GEN_FILE: TYPE_NORMAL lsu_wraddr_q.v TRUE
// Retrieval info: GEN_FILE: TYPE_NORMAL lsu_wraddr_q.inc FALSE
// Retrieval info: GEN_FILE: TYPE_NORMAL lsu_wraddr_q.cmp FALSE
// Retrieval info: GEN_FILE: TYPE_NORMAL lsu_wraddr_q.bsf FALSE
// Retrieval info: GEN_FILE: TYPE_NORMAL lsu_wraddr_q_inst.v TRUE
// Retrieval info: GEN_FILE: TYPE_NORMAL lsu_wraddr_q_bb.v FALSE
// Retrieval info: GEN_FILE: TYPE_NORMAL lsu_wraddr_q_waveforms.html FALSE
// Retrieval info: GEN_FILE: TYPE_NORMAL lsu_wraddr_q_wave*.jpg FALSE
// Retrieval info: LIB_FILE: altera_mf
