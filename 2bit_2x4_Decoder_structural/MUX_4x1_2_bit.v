module MUX_4x1_2_bit (a1, a0, b1, b0, c1, c0, d1, d0, s0, s1, f1, f0);
	
	input a1, a0, b1, b0, c1, c0, d1, d0, s0, s1;
	output f1, f0;
	
	MUX_4x1 m0(a0, b0, c0, d0, s0, s1, f0);
	MUX_4x1 m1(a1, b1, c1, d1, s0, s1, f1);
	
endmodule