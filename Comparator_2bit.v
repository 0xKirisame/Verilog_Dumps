//-----------------------------------------------------------------------------
//
// Title       : Comparator_2bit
// Design      : MUX_4x1
// Author      : 0xkirisame
// Company     : KSU
//
//-----------------------------------------------------------------------------

`timescale 1ps / 1ps

//{{ Section below this comment is automatically maintained
//    and may be overwritten
//{module {Comparator_2bit}}

module Comparator_2bit (
	
	input  A[1:0], 
	input  B[1:0],
	output F[2:0]
	
	);
	
	assign F[2] = (A[1] & ~B[1]) | ((A[1] ~^ B[1]) & (A[0] & ~B[0]));
	assign F[1] = ((A[1] ~^ B[1]) & (A[0] ~^ B[0]));
	assign F[0] = (~A[1] & B[1]) | ((A[1] ~^ B[1]) & (~A[0] & B[0]));

//}} End of automatically maintained section

// Enter your statements here //

endmodule

