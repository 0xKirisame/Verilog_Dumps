//-----------------------------------------------------------------------------
//
// Title       : MUX_4x2
// Design      : MUX_4x1_2_bit
// Author      : 0xkirisame
// Company     : KSU
//
//-----------------------------------------------------------------------------
//
// File        : c:/My_Designs/Lab4/MUX_4x1_2_bit/src/MUX_4x2.v
// Generated   : Sun Oct  5 09:12:14 2025
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
//{module {MUX_4x2}}

module MUX_4x1 (a, b, c, d, s0, s1, f);
	
	input a, b, c, d, s0, s1;
	output f;
	wire s0, s1, f0, f1;
	
	MUX_2x1 m0(a, b, s0, f0);		
	MUX_2x1 m1(c, d, s0, f1);
	MUX_2x1 m2(f0, f1, s1, f);

endmodule
