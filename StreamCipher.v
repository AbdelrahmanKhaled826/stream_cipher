`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    01:11:36 09/06/2023 
// Design Name: 
// Module Name:    StreamCipher 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module StreamCipher#(
parameter N=8
)(
input clk,reset,
input encryption_en,decryption_en,
input [N-1:0] message, 
output  [N-1:0] message_out
);
 
reg [N-1:0] key;
reg [N-1:0] ciphertext;

reg [N-1:0] next,current;
always @( posedge clk)begin
	if(encryption_en | decryption_en )  
		current[N-1:0]<=next[N-1:0];
	else 	
		current[N-1:0]<=current[N-1:0];
	end

always @(posedge clk  )begin
	if(encryption_en & decryption_en)begin
	ciphertext[N-1:0]=message [N-1:0] ^ key[N-1:0];
	next[N-1:0]= ciphertext[N-1:0] ^ key[N-1:0];

	end
	else if(encryption_en & !decryption_en) begin
	next[N-1:0]= message[N-1:0] ^ key[N-1:0];

	end
	else  begin
	next[N-1:0]= message[N-1:0] ;
	end
	
end
assign message_out[N-1:0]=	next[N-1:0];

//********************************************************
// generation key

reg [1:N] temp;


wire feedback;   
    
assign feedback= key[7] ^ key[5] ^ key[4] ^ key[3] ;


always @(posedge clk or posedge reset)
begin
		if(reset) begin
			key<= 8'hCD; //deafult
			end
		else 
			key<=temp;
end


always @(message)
begin		
		if(!reset)
			temp<= {key[N-1:1],feedback};
end


endmodule
