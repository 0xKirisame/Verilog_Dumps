//-----------------------------------------------------------------------------
//
// Title       : MUX_2x1
// Design      : MUX_4x1_2_bit
// Author      : 0xkirisame
// Company     : KSU
//
//-----------------------------------------------------------------------------
//
// File        : c:/My_Designs/Lab4/MUX_4x1_2_bit/src/MUX_2x1.v
// Generated   : Sun Oct  5 09:09:00 2025
// From        : Interface description file
// By          : ItfToHdl ver. 1.0
//
//-----------------------------------------------------------------------------
//
// Description : 
//
//-----------------------------------------------------------------------------

`timescale 1ps / 1ps

//{{ Section below this comment is automatically maintained
//    and may be overwritten
//{module {MUX_2x1}}

module MUX_2x1 (a, b, s0, f);
	
	input a, b, s0;
	output f;
	
	assign f = a & ~s0 | b & s0;

endmodule
