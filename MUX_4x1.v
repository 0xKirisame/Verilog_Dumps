//-----------------------------------------------------------------------------
//
// Title       : MUX_4x1
// Design      : MUX_4x1
// Author      : 0xkirisame
// Company     : KSU
//
//-----------------------------------------------------------------------------
//
// File        : c:/My_Designs/Lab2/MUX_4x1/src/MUX_4x1.v
// Generated   : Sun Sep 14 20:42:17 2025
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
//{module {MUX_4x1}}

module MUX_4x1 (A, B, C, D, S1, S0, F);
	
	input A, B, C, D, S1, S0;
	output F;
	
	assign F = (S1 == 0 && S0 == 0) ? A:
			   (S1 == 0 && S0 == 1) ? B:
			   (S1 == 1 && S0 == 0) ? C:
			   						  D;
			   
//}} End of automatically maintained section

// Enter your statements here //

endmodule
