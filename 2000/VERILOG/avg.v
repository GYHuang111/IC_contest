`timescale 1ns/10ps
module avg(din, reset, clk, ready, dout);
input reset, clk;
input [15:0] din;
output ready;
output [15:0] dout;
wire [15:0] FF0,FF1,FF2,FF3,FF4,FF5,FF6,FF7,FF8,FF9,FF10,FF11,davg,din,dout,next_dout;
wire [1:0] state;
wire [3:0] count;
wire reset,clk,start_flag;
parameter S0=2'b00,S1=2'b01;
// ==========================================
//  Enter your design below
// ==========================================

FSM FSM1(reset,clk,start_flag,state);
counter counter1(reset,clk,count);
FIFO FIFO1(din,reset,clk,FF0,FF1,FF2,FF3,FF4,FF5,FF6,FF7,FF8,FF9,FF10,FF11);
avg_maker avg_maker1(FF0,FF1,FF2,FF3,FF4,FF5,FF6,FF7,FF8,FF9,FF10,FF11,davg);
avg_compare avg_compare1(davg,FF0,FF1,FF2,FF3,FF4,FF5,FF6,FF7,FF8,FF9,FF10,FF11,next_dout);
FF FF_out(next_dout,reset,clk,dout);
assign start_flag = (count==4'd11)?1'b1:1'b0;
assign ready = (state==S1)?1'b1:1'b0;

endmodule
////////////////////////////////////////////
module FF(in,reset,clk,out);
input reset,clk;
input [15:0] in;
output [15:0] out;
reg [15:0] out;
always @(posedge clk or posedge reset) begin
		if (reset) begin
			out<=4'd0;
		end
		else begin
			out<=in;
		end
	end
endmodule
////////////////////////////////////////////
module counter(reset,clk,count);
input reset,clk;
output [3:0] count;
reg [3:0] count;
	always @(posedge clk or posedge reset) begin
		if (reset) begin
			count<=4'd0;
		end
		else begin
			count<=count+4'd1;
		end
	end
endmodule
////////////////////////////////////////////
module FSM(reset,clk,start_flag,state);
input reset,clk,start_flag;
output [1:0] state;
reg [1:0] state,next_state;
parameter S0=2'b00,S1=2'b01;

always @(posedge clk) begin
	if (reset) begin
		state<=S0;
	end
	else begin
		state<=next_state;
	end
end

always @(*) begin
	case (state)
		S0:if (start_flag) begin
				next_state<=S1;
			end
			else begin
				next_state<=S0;
			end
		S1:next_state<=S1;
		default:next_state<=S0;
	endcase
end

endmodule
//////////////////////////////////////////
module FIFO (in,reset,clk,FF0,FF1,FF2,FF3,FF4,FF5,FF6,FF7,FF8,FF9,FF10,FF11);
input [15:0] in;
input reset,clk;
output [15:0] FF0,FF1,FF2,FF3,FF4,FF5,FF6,FF7,FF8,FF9,FF10,FF11;
reg [15:0] FF0,FF1,FF2,FF3,FF4,FF5,FF6,FF7,FF8,FF9,FF10,FF11;
always @ (posedge clk or posedge reset) begin
	if (reset) begin
		FF0<=16'b0000000000000000;
		FF1<=16'b0000000000000000;
		FF2<=16'b0000000000000000;
		FF3<=16'b0000000000000000;
		FF4<=16'b0000000000000000;
		FF5<=16'b0000000000000000;
		FF6<=16'b0000000000000000;
		FF7<=16'b0000000000000000;
		FF8<=16'b0000000000000000;
		FF9<=16'b0000000000000000;
		FF10<=16'b0000000000000000;
		FF11<=16'b0000000000000000;
	end
	else begin
		FF0<=in;
		FF1<=FF0;
		FF2<=FF1;
		FF3<=FF2;
		FF4<=FF3;
		FF5<=FF4;
		FF6<=FF5;
		FF7<=FF6;
		FF8<=FF7;
		FF9<=FF8;
		FF10<=FF9;
		FF11<=FF10;
	end
end //end always
endmodule 
////////////////////////////////////////////////////////
module avg_maker(d0,d1,d2,d3,d4,d5,d6,d7,d8,d9,d10,d11,dout);
input [15:0] d0,d1,d2,d3,d4,d5,d6,d7,d8,d9,d10,d11;
output [15:0] dout;
wire [15:0] dout;
wire [20:0] dout_1;
assign dout_1 = ((d0+d1+d2+d3+d4+d5+d6+d7+d8+d9+d10+d11)>>2)/3;
assign dout = {dout_1[15:0]};
endmodule
/////////////////////////////////////////////////////////
module avg_compare(din,d0,d1,d2,d3,d4,d5,d6,d7,d8,d9,d10,d11,dout);
input [15:0] din,d0,d1,d2,d3,d4,d5,d6,d7,d8,d9,d10,d11;
output [15:0] dout;
wire [15:0] d0_diff,d1_diff,d2_diff,d3_diff,d4_diff,d5_diff,d6_diff,d7_diff,d8_diff,d9_diff,d10_diff,d11_diff;
wire [15:0] d0_diff_abs,d1_diff_abs,d2_diff_abs,d3_diff_abs,d4_diff_abs,d5_diff_abs,d6_diff_abs,d7_diff_abs,d8_diff_abs,d9_diff_abs,d10_diff_abs,d11_diff_abs;
wire [15:0] compare_mux1,compare_mux2,compare_mux3,compare_mux4,compare_mux5,compare_mux6,compare_mux7,compare_mux8,compare_mux9,compare_mux10,dout;
wire [15:0] compare_mux1_in,compare_mux2_in,compare_mux3_in,compare_mux4_in,compare_mux5_in,compare_mux6_in,compare_mux7_in,compare_mux8_in,compare_mux9_in,compare_mux10_in;
wire [15:0] compare_mux1_in_diff,compare_mux2_in_diff,compare_mux3_in_diff,compare_mux4_in_diff,compare_mux5_in_diff,compare_mux6_in_diff,compare_mux7_in_diff,compare_mux8_in_diff,
compare_mux9_in_diff,compare_mux10_in_diff;
wire compare_mux1_sel,compare_mux2_sel,compare_mux3_sel,compare_mux4_sel,compare_mux5_sel,compare_mux6_sel,compare_mux7_sel,compare_mux8_sel,compare_mux9_sel,compare_mux10_sel,compare_mux11_sel;
assign d0_diff = din - d0 ;
assign d1_diff = din - d1 ;
assign d2_diff = din - d2 ;
assign d3_diff = din - d3 ;
assign d4_diff = din - d4 ;
assign d5_diff = din - d5 ;
assign d6_diff = din - d6 ;
assign d7_diff = din - d7 ;
assign d8_diff = din - d8 ;
assign d9_diff = din - d9 ;
assign d10_diff = din - d10 ;
assign d11_diff = din - d11 ;
assign d0_diff_abs = (d0_diff[15])?~d0_diff+16'd1:d0_diff;
assign d1_diff_abs = (d1_diff[15])?~d1_diff+16'd1:d1_diff;
assign d2_diff_abs = (d2_diff[15])?~d2_diff+16'd1:d2_diff;
assign d3_diff_abs = (d3_diff[15])?~d3_diff+16'd1:d3_diff;
assign d4_diff_abs = (d4_diff[15])?~d4_diff+16'd1:d4_diff;
assign d5_diff_abs = (d5_diff[15])?~d5_diff+16'd1:d5_diff;
assign d6_diff_abs = (d6_diff[15])?~d6_diff+16'd1:d6_diff;
assign d7_diff_abs = (d7_diff[15])?~d7_diff+16'd1:d7_diff;
assign d8_diff_abs = (d8_diff[15])?~d8_diff+16'd1:d8_diff;
assign d9_diff_abs = (d9_diff[15])?~d9_diff+16'd1:d9_diff;
assign d10_diff_abs = (d10_diff[15])?~d10_diff+16'd1:d10_diff;
assign d11_diff_abs = (d11_diff[15])?~d11_diff+16'd1:d11_diff;

assign compare_mux1_sel = (d0_diff_abs==d1_diff_abs)?((d0_diff[15])?1'd1:1'd0):((d0_diff_abs>d1_diff_abs)?1'd1:1'd0);
assign compare_mux2_sel = (d2_diff_abs==d3_diff_abs)?((d2_diff[15])?1'd1:1'd0):((d2_diff_abs>d3_diff_abs)?1'd1:1'd0);
assign compare_mux3_sel = (d4_diff_abs==d5_diff_abs)?((d4_diff[15])?1'd1:1'd0):((d4_diff_abs>d5_diff_abs)?1'd1:1'd0);
assign compare_mux4_sel = (d6_diff_abs==d7_diff_abs)?((d6_diff[15])?1'd1:1'd0):((d6_diff_abs>d7_diff_abs)?1'd1:1'd0);
assign compare_mux5_sel = (d8_diff_abs==d9_diff_abs)?((d8_diff[15])?1'd1:1'd0):((d8_diff_abs>d9_diff_abs)?1'd1:1'd0);
assign compare_mux6_sel = (d10_diff_abs==d11_diff_abs)?((d10_diff[15])?1'd1:1'd0):((d10_diff_abs>d11_diff_abs)?1'd1:1'd0);

assign compare_mux1 = (compare_mux1_sel)?d1:d0;
assign compare_mux2 = (compare_mux2_sel)?d3:d2;
assign compare_mux3 = (compare_mux3_sel)?d5:d4;
assign compare_mux4 = (compare_mux4_sel)?d7:d6;
assign compare_mux5 = (compare_mux5_sel)?d9:d8;
assign compare_mux6 = (compare_mux6_sel)?d11:d10;

assign compare_mux1_in = (compare_mux1_sel)?d1_diff_abs:d0_diff_abs;
assign compare_mux2_in = (compare_mux2_sel)?d3_diff_abs:d2_diff_abs;
assign compare_mux3_in = (compare_mux3_sel)?d5_diff_abs:d4_diff_abs;
assign compare_mux4_in = (compare_mux4_sel)?d7_diff_abs:d6_diff_abs;
assign compare_mux5_in = (compare_mux5_sel)?d9_diff_abs:d8_diff_abs;
assign compare_mux6_in = (compare_mux6_sel)?d11_diff_abs:d10_diff_abs;

assign compare_mux1_in_diff = (compare_mux1_sel)?d1_diff:d0_diff;
assign compare_mux2_in_diff = (compare_mux2_sel)?d3_diff:d2_diff;
assign compare_mux3_in_diff = (compare_mux3_sel)?d5_diff:d4_diff;
assign compare_mux4_in_diff = (compare_mux4_sel)?d7_diff:d6_diff;
assign compare_mux5_in_diff = (compare_mux5_sel)?d9_diff:d8_diff;
assign compare_mux6_in_diff = (compare_mux6_sel)?d11_diff:d10_diff;
//////////////////////////////////////////////////////////////////////////////
assign compare_mux7_sel = (compare_mux1_in==compare_mux2_in)?((compare_mux1_in_diff[15])?1'd1:1'd0):((compare_mux1_in>compare_mux2_in)?1'd1:1'd0);
assign compare_mux8_sel = (compare_mux3_in==compare_mux4_in)?((compare_mux3_in_diff[15])?1'd1:1'd0):((compare_mux3_in>compare_mux4_in)?1'd1:1'd0);
assign compare_mux9_sel = (compare_mux5_in==compare_mux6_in)?((compare_mux5_in_diff[15])?1'd1:1'd0):((compare_mux5_in>compare_mux6_in)?1'd1:1'd0);

assign compare_mux7 = (compare_mux7_sel)?compare_mux2:compare_mux1;
assign compare_mux8 = (compare_mux8_sel)?compare_mux4:compare_mux3;
assign compare_mux9 = (compare_mux9_sel)?compare_mux6:compare_mux5;

assign compare_mux7_in = (compare_mux7_sel)?compare_mux2_in:compare_mux1_in;
assign compare_mux8_in = (compare_mux8_sel)?compare_mux4_in:compare_mux3_in;
assign compare_mux9_in = (compare_mux9_sel)?compare_mux6_in:compare_mux5_in;

assign compare_mux7_in_diff = (compare_mux7_sel)?compare_mux2_in_diff:compare_mux1_in_diff;
assign compare_mux8_in_diff = (compare_mux8_sel)?compare_mux4_in_diff:compare_mux3_in_diff;
assign compare_mux9_in_diff = (compare_mux9_sel)?compare_mux6_in_diff:compare_mux5_in_diff;
///////////////////////////////////////////////////////////////////////////////
assign compare_mux10_sel = (compare_mux7_in==compare_mux8_in)?((compare_mux7_in_diff[15])?1'd1:1'd0):((compare_mux7_in>compare_mux8_in)?1'd1:1'd0);

assign compare_mux10 = (compare_mux10_sel)?compare_mux8:compare_mux7;

assign compare_mux10_in = (compare_mux10_sel)?compare_mux8_in:compare_mux7_in;

assign compare_mux10_in_diff = (compare_mux10_sel)?compare_mux8_in_diff:compare_mux7_in_diff;
//////////////////////////////////////////////////////////////////////////////////
assign compare_mux11_sel = (compare_mux9_in==compare_mux10_in)?((compare_mux9_in_diff[15])?1'd1:1'd0):((compare_mux9_in>compare_mux10_in)?1'd1:1'd0);

assign dout = (compare_mux11_sel)?compare_mux10:compare_mux9;
endmodule