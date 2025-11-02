module ALU_64bit(A, B, opcode, F);
	
	input [2:0] A, B;
	input [2:0] opcode;
	output reg [2:0] F;
	
	always @(*) begin
		
		case(opcode)
			
			3'd0: F = A & B;
			3'd1: F = A | B;	 
			3'd2: F = A ^ B;
			3'd3: F = ~(A ^ B); 
			3'd4: F = A + B;  
			3'd5: F = A - B;
			3'd6: F = A >> B; 
			3'd7: F = A << B;  
			
		endcase
	
	end
	
endmodule