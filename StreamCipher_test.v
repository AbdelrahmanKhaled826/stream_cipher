`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   01:12:42 09/06/2023
// Design Name:   StreamCipher
// Module Name:   C:/example_verilog/d_ff/StreamCipher_test.v
// Project Name:  strem cipher
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: StreamCipher
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module StreamCipher_test;

	// Inputs
	reg clk;
	reg reset;
	reg encryption_en;
	reg decryption_en;
	reg [7:0] message;

	// Outputs
	wire [7:0] message_out;

	// Instantiate the Unit Under Test (UUT)
	StreamCipher uut (
		.clk(clk), 
		.reset(reset), 
		.encryption_en(encryption_en), 
		.decryption_en(decryption_en), 
		.message(message), 
		.message_out(message_out)
	);

	
	initial begin
		
		clk = 0;
		reset=1;
		#20
		reset=0;
		#10000 
		$stop;
	end

	initial begin
		encryption_en=0;
		decryption_en=0;
		#100
		encryption_en=1;
		decryption_en=0;
		#100
		encryption_en=1;
		decryption_en=1;
		#100
		encryption_en=0;
		decryption_en=1;
		#100
		encryption_en=0;
		decryption_en=0;
		#100
		encryption_en=1;
		decryption_en=1;
		#100
		encryption_en=0;
		decryption_en=1;
		
	end
	initial 
	begin
		repeat(100)@(negedge clk)
		message= $random;
	end	
	
 always #5 clk=~clk;

endmodule

