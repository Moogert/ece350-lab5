// this is an ADC, turning an 8-bit integer into a 
// sensor voltage from 0.0 to 5.0

module adc(IN, intOut, decOut); 
	input [7:0] IN; 
	output [7:0] OUT; 
	wire [4:0] intOut;
	wire [2:0] quot2, denomINT; // for integer
	wire [3:0] denomTnth, rem, rem2; 
	wire [7:0] IN2; 
	assign IN2 = IN; 
	
//	assign denom[3] = 1'b1; // 8
//	assign denom[2] = 1'b0; // 4
//	assign denom[1] = 1'b1; // 2 
//	assign denom[0] = 1'b0; 
	assign denomTnth = 4'b1010; // 51
	assign denomINT  = 3'b110; // 6
	
	j tnths(denom, IN, decOut, rem); 
	j2 int(denomINT, IN2, intOut, rem2);
	
	/*
	We only need 4 digits of output for tenths, since the 7-segment 
	display can only handle 10 individual numbers. 
	
	
	
	*/ 
	
	
	/*
	j	j_inst(.denom ( denom_sig ),
	.numer ( numer_sig ),
	.quotient ( quotient_sig ),
	.remain ( remain_sig )
	);
	*/
	



endmodule 