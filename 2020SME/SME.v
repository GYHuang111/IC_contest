`timescale 1ns/10ps
module SME(clk,reset,chardata,isstring,ispattern,valid,match,match_index);
input clk;
input reset;
input [7:0] chardata;
input isstring;
input ispattern;
output match;
output [4:0] match_index;
output valid;
wire clk,reset,full,head_space,String_reset_en,String_left_shift_en,
String_right_shift_en,EOL,Pattern_reset_en,Pattern_right_shift_en,valid,valid_next,
backup_en,reload_en,head_space_trigger,counter_reset,counter_en;
wire [7:0] p1_0,p1_1,p1_2,p1_3,p1_4,p1_5,p1_6,p1_7,p2_0,p2_1,p2_2,p2_3,p2_4,p2_5,p2_6,p2_7,s0,s1,s2,s3,s4,s5,
s6,s7,s8,s9,s10,s11,s12,s13,s14,s15,s16,s17,s18,s19,s20,s21,s22,s23,s24,
s25,s26,s27,s28,s29,s30,s31,s32;

wire [7:0] check,chardata,dinPSR1,dinPSR2,checkPSR1,checkPSR2,string_din;
wire push_completePSR1_out,push_completePSR2_out,push_complete_ok,PSR1_en1,PSR1_en2,push_completePSR1,push_completePSR2,star_occur,push_complete_ok1,push_complete_ok2;
wire isstring,ispattern,match_en;
wire [5:0] match_out1,match_out2;
wire [4:0] c_out,match_index,pattern_length,c_out2,string_length,string_length_out,pattern_length_out,match_index_out;
wire pattern1_empty,pattern2_empty;
wire [31:0] match_in1;
wire [31:0] match1,match2;
wire match1_space,string_shift_en2,fill_space,match;
reg match_next;
Pattern_Shift_RegisterG PSR1 (clk,reset,ispattern,pattern_reset_en,PSR1_en1,dinPSR1,p1_0,p1_1,p1_2,p1_3,p1_4,p1_5,p1_6,p1_7,checkPSR1,push_completePSR1);
Pattern_Shift_RegisterG PSR2 (clk,reset,ispattern,pattern_reset_en,PSR1_en2,dinPSR2,p2_0,p2_1,p2_2,p2_3,p2_4,p2_5,p2_6,p2_7,checkPSR2,push_completePSR2);
String_Shift_Register SSR1 (clk,reset,string_shift_en,isstring,string_din,s0,s1,s2,s3,s4,s5,
s6,s7,s8,s9,s10,s11,s12,s13,s14,s15,s16,s17,s18,s19,s20,s21,s22,s23,s24,
s25,s26,s27,s28,s29,s30,s31,s32);
is_star IS (clk,reset,pattern_reset_en,chardata,star_detected);
is_openning IP (clk,reset,pattern_reset_en,chardata,opening_detected);
counter ctr (clk,reset,counter_reset,string_full);

FSM FSM1 (clk,reset,isstring,ispattern,push_complete_ok1,push_complete_ok2,string_full,string_shift_en,Pattern_right_shift_en1,Pattern_right_shift_en2,
pattern_reset_en,counter_reset,valid,fill_space);

Pattern_String_Comparator PSC1 (s0,s1,s2,s3,s4,s5,
s6,s7,s8,s9,s10,s11,s12,s13,s14,s15,s16,s17,s18,s19,s20,s21,s22,s23,s24,
s25,s26,s27,s28,s29,s30,s31,s32,p1_0,p1_1,p1_2,p1_3,p1_4,p1_5,p1_6,p1_7,checkPSR1,match1,match1_space);

Pattern_String_Comparator PSC2  (s0,s1,s2,s3,s4,s5,
s6,s7,s8,s9,s10,s11,s12,s13,s14,s15,s16,s17,s18,s19,s20,s21,s22,s23,s24,
s25,s26,s27,s28,s29,s30,s31,s32,p2_0,p2_1,p2_2,p2_3,p2_4,p2_5,p2_6,p2_7,checkPSR2,match2,match2_space);

priority_encoder_pattern1 PEP1 (match_in1,match_out1);
priority_encoder_pattern2 PEP2 (match2,match_out2);
FF5 FF5_1 (clk,reset,match_out1[4:0],match_index);
FF FF_1 (clk,reset,match_next,match);
//assign string_shift_en2 = string_shift_en&&(~string_full);
assign string_din = (fill_space)?8'd32:chardata;
assign push_complete_ok1 = (((!ispattern)&&(p1_0==8'd0)&&(p1_1==8'd0)&&(p1_2==8'd0)&&(p1_3==8'd0)&&(p1_4==8'd0)&&(p1_5==8'd0)&&(p1_6==8'd0)&&(p1_7==8'd0))||push_completePSR1);
assign push_complete_ok2 = (((!ispattern)&&(p2_0==8'd0)&&(p2_1==8'd0)&&(p2_2==8'd0)&&(p2_3==8'd0)&&(p2_4==8'd0)&&(p2_5==8'd0)&&(p2_6==8'd0)&&(p2_7==8'd0))||push_completePSR2);
assign pattern1_empty = ((p1_0==8'd0)&&(p1_1==8'd0)&&(p1_2==8'd0)&&(p1_3==8'd0)&&(p1_4==8'd0)&&(p1_5==8'd0)&&(p1_6==8'd0)&&(p1_7==8'd0));
assign pattern2_empty = ((p2_0==8'd0)&&(p2_1==8'd0)&&(p2_2==8'd0)&&(p2_3==8'd0)&&(p2_4==8'd0)&&(p2_5==8'd0)&&(p2_6==8'd0)&&(p2_7==8'd0));
assign PSR1_en1 = ((ispattern||Pattern_right_shift_en1)&&(~star_occur)&&(~push_completePSR1));
assign PSR1_en2 = ((ispattern||Pattern_right_shift_en2)&&(~star_occur)&&(~push_completePSR2));
assign star_occur = ((chardata==8'd42)&&(ispattern))?1'b1:1'b0;
assign dinPSR1 = (star_detected)?8'd0:chardata;
assign dinPSR2 = (star_detected)?chardata:8'd0;
assign match_in1 = (opening_detected)?{match1[30:0],match1_space}:match1;
//assign match_index = match_out1;
always @ (*) begin
case (star_detected)
	1'b0:match_next = |match_in1;
	1'b1:if (pattern1_empty&&(|match2)) begin
		match_next =1'b1;
		end
		else if (pattern2_empty&&(|match_in1)) begin
		match_next =1'b1;
		end
		else if ((match_out2>match_out1)&&(match_out1!=6'd63)&&(match_out2!=6'd63)) begin
		match_next = 1'b1;
		end
		else  match_next = 1'b0;
endcase	
end
endmodule
//////////////////////////////////////
module FF (clk,reset,din,dout);
input clk,reset,din;
output dout;
reg dout;
always @(posedge clk or posedge reset) begin
	if (reset) begin
		dout<=1'b0;
	end
	else begin
		dout<=din;
	end	
end
endmodule
///////////////////////////////////
module FF5 (clk,reset,din,dout);
input clk,reset;
input [4:0] din;
output [4:0] dout;
reg [4:0] dout;
always @(posedge clk or posedge reset) begin
	if (reset) begin
		dout<=5'b0;
	end
	else begin
		dout<=din;
	end	
end
endmodule
///////////////////////////////////////
module is_star(clk,reset,rst,chardata,star_detected);
input clk,reset,rst;
input [7:0] chardata;
output star_detected;
wire en;
wire [1:0] sel;

reg star_detected,star_detected_next;
assign en=(chardata==48'd42)?1'b1:1'b0;
assign sel = {rst,en};
always @ (posedge clk or posedge reset) begin
	if (reset) begin
		star_detected <= 1'b0;
	end
	else begin
		star_detected <= star_detected_next;
	end
end
always @ (*) begin
	case (sel)
	2'b01:star_detected_next = 1'b1;
	2'b10:star_detected_next = 1'b0;
	2'b00:star_detected_next = star_detected;
	default:star_detected_next = 1'b0;
	endcase
end
endmodule
//////////////////////////////////////////
module is_openning(clk,reset,rst,chardata,opening_detected);
input clk,reset,rst;
input [7:0] chardata;
output opening_detected;
wire en;
wire [1:0] sel;

reg opening_detected,opening_detected_next;
assign en=(chardata==48'd94)?1'b1:1'b0;
assign sel = {rst,en};
always @ (posedge clk or posedge reset) begin
	if (reset) begin
		opening_detected <= 1'b0;
	end
	else begin
		opening_detected <= opening_detected_next;
	end
end
always @ (*) begin
	case (sel)
	2'b01:opening_detected_next = 1'b1;
	2'b10:opening_detected_next = 1'b0;
	2'b00:opening_detected_next = opening_detected;
	default:opening_detected_next = 1'b0;
	endcase
end
endmodule
////////////////////////////////////////
module Pattern_Shift_RegisterG(clk,reset,ispattern,reset_en,right_shift_en,
din,s0,s1,s2,s3,s4,s5,s6,s7,check,push_complete);
input clk,reset,reset_en,right_shift_en,ispattern;
input [7:0] din;
output [7:0] s0,s1,s2,s3,s4,s5,s6,s7,check;
output push_complete;
reg [7:0] s0,s1,s2,s3,s4,s5,s6,s7;
reg [7:0] s0_next,s1_next,s2_next,s3_next,s4_next,s5_next,s6_next,s7_next;
reg [7:0] check,check_next;
wire check_in,push_complete;
wire [7:0] din_out;
wire [2:0] sel;
//assign din_out = ((din==8'd36)||(din==8'd94))? 8'd32:(~ispattern)?8'd0:din; //if din=="^"or^$^
assign din_out = (~ispattern)?8'd0:((din==8'd36)||(din==8'd94))?8'd32:din; //if din=="^"or^$^
//assign head_space = (din==8'd94)?1'b1:1'b0;
assign check_in = ((din==8'd46)||(din_out==8'd0))?1'b0:1'b1; //if din=="." or "0"
assign push_complete = (s7!=8'd0)?1'b1:1'b0;
//assign right_shift_en2 = ((right_shift_en)||(~push_complete));
assign sel = {reset_en,right_shift_en};
always @ (posedge clk or posedge reset) begin
	if (reset) begin
		s0<=8'd0;
		s1<=8'd0;
		s2<=8'd0;
		s3<=8'd0;
		s4<=8'd0;
		s5<=8'd0;
		s6<=8'd0;
		s7<=8'd0;
		check<=8'd0;
	end
	else begin
		s0<=s0_next;
		s1<=s1_next;
		s2<=s2_next;
		s3<=s3_next;
		s4<=s4_next;
		s5<=s5_next;
		s6<=s6_next;
		s7<=s7_next;
		check<=check_next;
	end
end

always @ (*) begin
	case (sel)
		2'b01: begin //right shift mode
				s0_next=din_out;
				s1_next=s0;
				s2_next=s1;
				s3_next=s2;
				s4_next=s3;
				s5_next=s4;
				s6_next=s5;
				s7_next=s6;
				check_next={check[6:0],check_in};
				end		
		2'b10:begin //reset mode
				s0_next=8'd0;
				s1_next=8'd0;
				s2_next=8'd0;
				s3_next=8'd0;
				s4_next=8'd0;
				s5_next=8'd0;
				s6_next=8'd0;
				s7_next=8'd0;
				check_next=8'd0;
				end
		2'd00: begin //stay mode
				s0_next=s0;
				s1_next=s1;
				s2_next=s2;
				s3_next=s3;
				s4_next=s4;
				s5_next=s5;
				s6_next=s6;
				s7_next=s7;
				check_next=check;
				end
		default:begin 
				s0_next=s0;
				s1_next=s1;
				s2_next=s2;
				s3_next=s3;
				s4_next=s4;
				s5_next=s5;
				s6_next=s6;
				s7_next=s7;
				check_next=check;
				end	
	endcase
end
endmodule
///////////////////////////////////////
module FSM(clk,reset,isstring,ispattern,push_complete_ok1,push_complete_ok2,string_full,string_shift_en,Pattern_right_shift_en1,Pattern_right_shift_en2,
pattern_reset_en,counter_reset,valid,fill_space);

input clk,reset,isstring,ispattern,push_complete_ok1,push_complete_ok2,string_full;
output string_shift_en,Pattern_right_shift_en1,Pattern_right_shift_en2,pattern_reset_en,counter_reset,valid,fill_space;
wire counter_reset,string_shift_en,Pattern_right_shift_en1,Pattern_right_shift_en2,pattern_reset_en,valid,fill_space;
reg [2:0] state,state_next;
reg match_en;
parameter S0=3'd0,S1=3'd1,S2=3'd2,S3=3'd3,S4=3'd4,S5=3'd5,S6=3'd6,S7=3'd7;
assign counter_reset = (state==S4)?1'b1:1'b0;
assign string_shift_en = (state==S1||isstring||state==S7)?1'b1:1'b0;
assign Pattern_right_shift_en1 = (state==S2)?1'b1:1'b0;
assign Pattern_right_shift_en2 = (state==S3)?1'b1:1'b0;
assign pattern_reset_en = (state==S4)?1'b1:1'b0;
assign valid = (state==S5)?1'b1:1'b0;
assign fill_space = (state==S7)?1'b1:1'b0;
always @ (posedge clk or posedge reset) begin
	if (reset) begin
		state <= 3'd0;
	end
	else begin
		state <= state_next;
	end
end
always @ (*) begin
	case (state)
		S0: if (!isstring) begin
			state_next = S7;
			match_en =1'b0;
			end
			else begin
			state_next = S0;
			match_en =1'b0;
			end
		S7:	if (string_full) begin //input string counting start
			state_next = S2;
			match_en =1'b0;
			end
			else begin
			state_next = S1;
			match_en =1'b0;
			end	
		S1: if (string_full) begin //input string counting start
			state_next = S2;
			match_en =1'b0;
			end
			else begin
			state_next = S1;
			match_en =1'b0;
			end
		S2:	 if (push_complete_ok1&&(!ispattern)) begin //shift pattern1 start
			state_next = S3;
			match_en =1'b0;
			end
			else begin
			state_next = S2;
			match_en =1'b0;
			end
		S3:	 if (push_complete_ok2&&(!ispattern)) begin //shift pattern2 start
			state_next = S6;
			match_en =1'b0;
			end
			else begin
			state_next = S3;
			match_en =1'b0;
			end	
		S6:	 begin
			state_next = S4;
			match_en =1'b0;
			end
		S4: begin
			state_next = S5;
			match_en =1'b1;
			end
		S5: if (isstring) begin	  //compare finish && pull up valid
			state_next = S0;
			match_en =1'b0;
			end
			else if (ispattern) begin
			state_next = S2;
			match_en =1'b0;
			end	
			else begin
			state_next = S5;
			match_en =1'b0;
			end
		default: begin 
				state_next = S0;
				match_en =1'b0; 
				end
	endcase
end
endmodule
/////////////////////////////////
module String_Shift_Register(clk,reset,right_shift_en,isstring,din,s0,s1,s2,s3,s4,s5,
s6,s7,s8,s9,s10,s11,s12,s13,s14,s15,s16,s17,s18,s19,s20,s21,s22,s23,s24,
s25,s26,s27,s28,s29,s30,s31,s32);
input clk,reset,right_shift_en,isstring;
input [7:0] din;
output [7:0] s0,s1,s2,s3,s4,s5,
s6,s7,s8,s9,s10,s11,s12,s13,s14,s15,s16,s17,s18,s19,s20,s21,s22,s23,s24,
s25,s26,s27,s28,s29,s30,s31,s32;
reg [7:0] s0,s1,s2,s3,s4,s5,
s6,s7,s8,s9,s10,s11,s12,s13,s14,s15,s16,s17,s18,s19,s20,s21,s22,s23,s24,
s25,s26,s27,s28,s29,s30,s31,s32;
reg [7:0] s0_next,s1_next,s2_next,s3_next,s4_next,s5_next,
s6_next,s7_next,s8_next,s9_next,s10_next,s11_next,s12_next,s13_next,s14_next,s15_next,
s16_next,s17_next,s18_next,s19_next,s20_next,s21_next,s22_next,s23_next,s24_next,
s25_next,s26_next,s27_next,s28_next,s29_next,s30_next,s31_next,s32_next;
wire [7:0] din_out;
wire [3:0] sel;
//assign din_out = (EOL)? 8'd32:din;
assign din_out = (!isstring&&(din!=8'd32))?8'd0:din; //if din=="^"or^$^
//assign sel = {reload_en,reset_en,left_shift_en,right_shift_en};
//assign sel = {left_shift_en,right_shift_en};
always @ (posedge clk or posedge reset) begin
	if (reset) begin
		s0<=8'd0;
		s1<=8'd0;
		s2<=8'd0;
		s3<=8'd0;
		s4<=8'd0;
		s5<=8'd0;
		s6<=8'd0;
		s7<=8'd0;
		s8<=8'd0;
		s9<=8'd0;
		s10<=8'd0;
		s11<=8'd0;
		s12<=8'd0;
		s13<=8'd0;
		s14<=8'd0;
		s15<=8'd0;
		s16<=8'd0;
		s17<=8'd0;
		s18<=8'd0;
		s19<=8'd0;
		s20<=8'd0;
		s21<=8'd0;
		s22<=8'd0;
		s23<=8'd0;
		s24<=8'd0;
		s25<=8'd0;
		s26<=8'd0;
		s27<=8'd0;
		s28<=8'd0;
		s29<=8'd0;
		s30<=8'd0;
		s31<=8'd0;
		s32<=8'd0;
		
	end
	else begin
		s0<=s0_next;
		s1<=s1_next;
		s2<=s2_next;
		s3<=s3_next;
		s4<=s4_next;
		s5<=s5_next;
		s6<=s6_next;
		s7<=s7_next;
		s8<=s8_next;
		s9<=s9_next;
		s10<=s10_next;
		s11<=s11_next;
		s12<=s12_next;
		s13<=s13_next;
		s14<=s14_next;
		s15<=s15_next;
		s16<=s16_next;
		s17<=s17_next;
		s18<=s18_next;
		s19<=s19_next;
		s20<=s20_next;
		s21<=s21_next;
		s22<=s22_next;
		s23<=s23_next;
		s24<=s24_next;
		s25<=s25_next;
		s26<=s26_next;
		s27<=s27_next;
		s28<=s28_next;
		s29<=s29_next;
		s30<=s30_next;
		s31<=s31_next;
		s32<=s32_next;
	end
end

always @ (*) begin
	case (right_shift_en)
		1'b1: begin //right shift mode
				s0_next=din_out;
				s1_next=s0;
				s2_next=s1;
				s3_next=s2;
				s4_next=s3;
				s5_next=s4;
				s6_next=s5;
				s7_next=s6;
				s8_next=s7;
				s9_next=s8;
				s10_next=s9;
				s11_next=s10;
				s12_next=s11;
				s13_next=s12;
				s14_next=s13;
				s15_next=s14;
				s16_next=s15;
				s17_next=s16;
				s18_next=s17;
				s19_next=s18;
				s20_next=s19;
				s21_next=s20;
				s22_next=s21;
				s23_next=s22;
				s24_next=s23;
				s25_next=s24;
				s26_next=s25;
				s27_next=s26;
				s28_next=s27;
				s29_next=s28;
				s30_next=s29;
				s31_next=s30;
				s32_next=s31;
				end
		
		1'b0:   begin //stay mode
				s0_next=s0;
				s1_next=s1;
				s2_next=s2;
				s3_next=s3;
				s4_next=s4;
				s5_next=s5;
				s6_next=s6;
				s7_next=s7;
				s8_next=s8;
				s9_next=s9;
				s10_next=s10;
				s11_next=s11;
				s12_next=s12;
				s13_next=s13;
				s14_next=s14;
				s15_next=s15;
				s16_next=s16;
				s17_next=s17;
				s18_next=s18;
				s19_next=s19;
				s20_next=s20;
				s21_next=s21;
				s22_next=s22;
				s23_next=s23;
				s24_next=s24;
				s25_next=s25;
				s26_next=s26;
				s27_next=s27;
				s28_next=s28;
				s29_next=s29;
				s30_next=s30;
				s31_next=s31;
				s32_next=s32;
				end
		default:begin 
				s0_next=s0;
				s1_next=s1;
				s2_next=s2;
				s3_next=s3;
				s4_next=s4;
				s5_next=s5;
				s6_next=s6;
				s7_next=s7;
				s8_next=s8;
				s9_next=s9;
				s10_next=s10;
				s11_next=s11;
				s12_next=s12;
				s13_next=s13;
				s14_next=s14;
				s15_next=s15;
				s16_next=s16;
				s17_next=s17;
				s18_next=s18;
				s19_next=s19;
				s20_next=s20;
				s21_next=s21;
				s22_next=s22;
				s23_next=s23;
				s24_next=s24;
				s25_next=s25;
				s26_next=s26;
				s27_next=s27;
				s28_next=s28;
				s29_next=s29;
				s30_next=s29;
				s31_next=s31;
				s32_next=s32;
				end		
	endcase			
end


endmodule
/////////////////////////////////////////
module counter (clk,reset,counter_reset,full);
input clk,reset,counter_reset;
output full;
wire full;
reg [5:0] c_out,c_out_next;
assign full = (c_out == 6'd33)?1'b1:1'b0;
always @ (posedge clk or posedge reset) begin
	if (reset) begin
		c_out <= 6'b000000;
	end
	else begin
		c_out <= c_out_next;
	end
end
always @ (*) begin
	case (counter_reset)
	1'b1:c_out_next = 6'b000000;
	1'b0:c_out_next = c_out+6'd1;
	default:c_out_next = 6'b000000;
	endcase
end
endmodule
//////////////////////////////////////////////////////////
module counter_pattern1 (clk,reset,counter_reset,full);
input clk,reset,counter_reset;
output full;
wire full;
reg [5:0] c_out,c_out_next;
assign full = (c_out == 6'd7)?1'b1:1'b0;
always @ (posedge clk or posedge reset) begin
	if (reset) begin
		c_out <= 6'b000000;
	end
	else begin
		c_out <= c_out_next;
	end
end
always @ (*) begin
	case (counter_reset)
	1'b1:c_out_next = 6'b000000;
	1'b0:c_out_next = c_out+6'd1;
	default:c_out_next = 6'b000000;
	endcase
end
endmodule
/////////////////////////////////////////////////////////////
module Pattern_String_Comparator_Cell(s7,s6,s5,s4,s3,s2,s1,s0,p7,p6,p5,p4,p3,p2,p1,p0,check,match);
input [7:0] s0,s1,s2,s3,s4,s5,s6,s7,p0,p1,p2,p3,p4,p5,p6,p7,check;
output match;
wire compare0,compare1,compare2,compare3,compare4,compare5,compare6,compare7,match;
wire [7:0] compare_total;
assign compare0 = (check[0])?((s0==p0)?1'b1:1'b0):1'b1;
assign compare1 = (check[1])?((s1==p1)?1'b1:1'b0):1'b1;
assign compare2 = (check[2])?((s2==p2)?1'b1:1'b0):1'b1;
assign compare3 = (check[3])?((s3==p3)?1'b1:1'b0):1'b1;
assign compare4 = (check[4])?((s4==p4)?1'b1:1'b0):1'b1;
assign compare5 = (check[5])?((s5==p5)?1'b1:1'b0):1'b1;
assign compare6 = (check[6])?((s6==p6)?1'b1:1'b0):1'b1;
assign compare7 = (check[7])?((s7==p7)?1'b1:1'b0):1'b1;
assign compare_total = {compare0,compare1,compare2,compare3,compare4,compare5,compare6,compare7};
assign match = &compare_total;
endmodule
//////////////////////////////////////////////////////
module Pattern_String_Comparator(s0,s1,s2,s3,s4,s5,
s6,s7,s8,s9,s10,s11,s12,s13,s14,s15,s16,s17,s18,s19,s20,s21,s22,s23,s24,
s25,s26,s27,s28,s29,s30,s31,s32,p1_0,p1_1,p1_2,p1_3,p1_4,p1_5,p1_6,p1_7,check1,match1,match1_space);
input [7:0] s0,s1,s2,s3,s4,s5,
s6,s7,s8,s9,s10,s11,s12,s13,s14,s15,s16,s17,s18,s19,s20,s21,s22,s23,s24,
s25,s26,s27,s28,s29,s30,s31,s32,p1_0,p1_1,p1_2,p1_3,p1_4,p1_5,p1_6,p1_7,check1;
output [31:0] match1;
output match1_space;
wire [7:0] s0,s1,s2,s3,s4,s5,
s6,s7,s8,s9,s10,s11,s12,s13,s14,s15,s16,s17,s18,s19,s20,s21,s22,s23,s24,
s25,s26,s27,s28,s29,s30,s31,s32,p1_0,p1_1,p1_2,p1_3,p1_4,p1_5,p1_6,p1_7;

wire [7:0] space,nothing;
wire [7:0] check1;
wire match1_space;
assign space = 8'd32;
assign nothing = 8'd0;

Pattern_String_Comparator_Cell PSC_Cell1_space (space,s32,s31,s30,s29,s28,s27,s26,p1_7,p1_6,p1_5,p1_4,p1_3,p1_2,p1_1,p1_0,check1,match1_space);
Pattern_String_Comparator_Cell PSC_Cell00 (s32,s31,s30,s29,s28,s27,s26,s25,p1_7,p1_6,p1_5,p1_4,p1_3,p1_2,p1_1,p1_0,check1,match1[0]);
Pattern_String_Comparator_Cell PSC_Cell0 (s31,s30,s29,s28,s27,s26,s25,s24,p1_7,p1_6,p1_5,p1_4,p1_3,p1_2,p1_1,p1_0,check1,match1[1]);
Pattern_String_Comparator_Cell PSC_Cell1 (s30,s29,s28,s27,s26,s25,s24,s23,p1_7,p1_6,p1_5,p1_4,p1_3,p1_2,p1_1,p1_0,check1,match1[2]);
Pattern_String_Comparator_Cell PSC_Cell2 (s29,s28,s27,s26,s25,s24,s23,s22,p1_7,p1_6,p1_5,p1_4,p1_3,p1_2,p1_1,p1_0,check1,match1[3]);
Pattern_String_Comparator_Cell PSC_Cell3 (s28,s27,s26,s25,s24,s23,s22,s21,p1_7,p1_6,p1_5,p1_4,p1_3,p1_2,p1_1,p1_0,check1,match1[4]);
Pattern_String_Comparator_Cell PSC_Cell4 (s27,s26,s25,s24,s23,s22,s21,s20,p1_7,p1_6,p1_5,p1_4,p1_3,p1_2,p1_1,p1_0,check1,match1[5]);
Pattern_String_Comparator_Cell PSC_Cell5 (s26,s25,s24,s23,s22,s21,s20,s19,p1_7,p1_6,p1_5,p1_4,p1_3,p1_2,p1_1,p1_0,check1,match1[6]);
Pattern_String_Comparator_Cell PSC_Cell6 (s25,s24,s23,s22,s21,s20,s19,s18,p1_7,p1_6,p1_5,p1_4,p1_3,p1_2,p1_1,p1_0,check1,match1[7]);
Pattern_String_Comparator_Cell PSC_Cell7 (s24,s23,s22,s21,s20,s19,s18,s17,p1_7,p1_6,p1_5,p1_4,p1_3,p1_2,p1_1,p1_0,check1,match1[8]);
Pattern_String_Comparator_Cell PSC_Cell8 (s23,s22,s21,s20,s19,s18,s17,s16,p1_7,p1_6,p1_5,p1_4,p1_3,p1_2,p1_1,p1_0,check1,match1[9]);
Pattern_String_Comparator_Cell PSC_Cell9 (s22,s21,s20,s19,s18,s17,s16,s15,p1_7,p1_6,p1_5,p1_4,p1_3,p1_2,p1_1,p1_0,check1,match1[10]);
Pattern_String_Comparator_Cell PSC_Cell10 (s21,s20,s19,s18,s17,s16,s15,s14,p1_7,p1_6,p1_5,p1_4,p1_3,p1_2,p1_1,p1_0,check1,match1[11]);
Pattern_String_Comparator_Cell PSC_Cell11 (s20,s19,s18,s17,s16,s15,s14,s13,p1_7,p1_6,p1_5,p1_4,p1_3,p1_2,p1_1,p1_0,check1,match1[12]);
Pattern_String_Comparator_Cell PSC_Cell12 (s19,s18,s17,s16,s15,s14,s13,s12,p1_7,p1_6,p1_5,p1_4,p1_3,p1_2,p1_1,p1_0,check1,match1[13]);
Pattern_String_Comparator_Cell PSC_Cell13 (s18,s17,s16,s15,s14,s13,s12,s11,p1_7,p1_6,p1_5,p1_4,p1_3,p1_2,p1_1,p1_0,check1,match1[14]);
Pattern_String_Comparator_Cell PSC_Cell14 (s17,s16,s15,s14,s13,s12,s11,s10,p1_7,p1_6,p1_5,p1_4,p1_3,p1_2,p1_1,p1_0,check1,match1[15]);
Pattern_String_Comparator_Cell PSC_Cell15 (s16,s15,s14,s13,s12,s11,s10,s9,p1_7,p1_6,p1_5,p1_4,p1_3,p1_2,p1_1,p1_0,check1,match1[16]);
Pattern_String_Comparator_Cell PSC_Cell16 (s15,s14,s13,s12,s11,s10,s9,s8,p1_7,p1_6,p1_5,p1_4,p1_3,p1_2,p1_1,p1_0,check1,match1[17]);
Pattern_String_Comparator_Cell PSC_Cell17 (s14,s13,s12,s11,s10,s9,s8,s7,p1_7,p1_6,p1_5,p1_4,p1_3,p1_2,p1_1,p1_0,check1,match1[18]);
Pattern_String_Comparator_Cell PSC_Cell18 (s13,s12,s11,s10,s9,s8,s7,s6,p1_7,p1_6,p1_5,p1_4,p1_3,p1_2,p1_1,p1_0,check1,match1[19]);
Pattern_String_Comparator_Cell PSC_Cell19 (s12,s11,s10,s9,s8,s7,s6,s5,p1_7,p1_6,p1_5,p1_4,p1_3,p1_2,p1_1,p1_0,check1,match1[20]);
Pattern_String_Comparator_Cell PSC_Cell20 (s11,s10,s9,s8,s7,s6,s5,s4,p1_7,p1_6,p1_5,p1_4,p1_3,p1_2,p1_1,p1_0,check1,match1[21]);
Pattern_String_Comparator_Cell PSC_Cell21 (s10,s9,s8,s7,s6,s5,s4,s3,p1_7,p1_6,p1_5,p1_4,p1_3,p1_2,p1_1,p1_0,check1,match1[22]);
Pattern_String_Comparator_Cell PSC_Cell22 (s9,s8,s7,s6,s5,s4,s3,s2,p1_7,p1_6,p1_5,p1_4,p1_3,p1_2,p1_1,p1_0,check1,match1[23]);
Pattern_String_Comparator_Cell PSC_Cell23 (s8,s7,s6,s5,s4,s3,s2,s1,p1_7,p1_6,p1_5,p1_4,p1_3,p1_2,p1_1,p1_0,check1,match1[24]);
Pattern_String_Comparator_Cell PSC_Cell24 (s7,s6,s5,s4,s3,s2,s1,s0,p1_7,p1_6,p1_5,p1_4,p1_3,p1_2,p1_1,p1_0,check1,match1[25]);
Pattern_String_Comparator_Cell PSC_Cell25 (s6,s5,s4,s3,s2,s1,s0,space,p1_7,p1_6,p1_5,p1_4,p1_3,p1_2,p1_1,p1_0,check1,match1[26]);
Pattern_String_Comparator_Cell PSC_Cell26 (s5,s4,s3,s2,s1,s0,space,nothing,p1_7,p1_6,p1_5,p1_4,p1_3,p1_2,p1_1,p1_0,check1,match1[27]);
Pattern_String_Comparator_Cell PSC_Cell27 (s4,s3,s2,s1,s0,space,nothing,nothing,p1_7,p1_6,p1_5,p1_4,p1_3,p1_2,p1_1,p1_0,check1,match1[28]);
Pattern_String_Comparator_Cell PSC_Cell28 (s3,s2,s1,s0,space,nothing,nothing,nothing,p1_7,p1_6,p1_5,p1_4,p1_3,p1_2,p1_1,p1_0,check1,match1[29]);
Pattern_String_Comparator_Cell PSC_Cell29 (s2,s1,s0,space,nothing,nothing,nothing,nothing,p1_7,p1_6,p1_5,p1_4,p1_3,p1_2,p1_1,p1_0,check1,match1[30]);
Pattern_String_Comparator_Cell PSC_Cell30 (s1,s0,space,nothing,nothing,nothing,nothing,nothing,p1_7,p1_6,p1_5,p1_4,p1_3,p1_2,p1_1,p1_0,check1,match1[31]);
//Pattern_String_Comparator_Cell PSC_Cell31 (s0,space,nothing,nothing,nothing,nothing,nothing,nothing,p1_7,p1_6,p1_5,p1_4,p1_3,p1_2,p1_1,p1_0,check1,match1[31]);



endmodule

module priority_encoder_Cell(din0,din1,din2,din3,dout,trigger);
input  din0,din1,din2,din3;
output [1:0] dout;
output trigger;
reg [1:0] dout;
reg trigger;
always @ (*) begin
	if (din0) begin
		dout = 2'd0;
		trigger=1'd1;
	end
	else if (din1) begin
		dout = 2'd1;
		trigger=1'd1;
	end
	else if (din2) begin
		dout = 2'd2;
		trigger=1'd1;
	end
	else if (din3) begin
		dout = 2'd3;
		trigger=1'd1;
	end
	else begin
		dout = 2'd0;
		trigger=1'd0;
	end
end
endmodule

module priority_encoder_pattern1(din,dout);
input [31:0] din;
output [5:0] dout;
wire [7:0] trigger;
wire [15:0] pri;
reg [5:0] dout; 
priority_encoder_Cell PEC0 (din[0],din[1],din[2],din[3],pri[1:0],trigger[0]);
priority_encoder_Cell PEC4 (din[4],din[5],din[6],din[7],pri[3:2],trigger[1]);
priority_encoder_Cell PEC8 (din[8],din[9],din[10],din[11],pri[5:4],trigger[2]);
priority_encoder_Cell PEC12 (din[12],din[13],din[14],din[15],pri[7:6],trigger[3]);
priority_encoder_Cell PEC16 (din[16],din[17],din[18],din[19],pri[9:8],trigger[4]);
priority_encoder_Cell PEC20 (din[20],din[21],din[22],din[23],pri[11:10],trigger[5]);
priority_encoder_Cell PEC24 (din[24],din[25],din[26],din[27],pri[13:12],trigger[6]);
priority_encoder_Cell PEC28 (din[28],din[29],din[30],din[31],pri[15:14],trigger[7]);
always @ (*) begin
	if(trigger[0])begin
		case (pri[1:0])
		2'd0:dout = 6'd0;
		2'd1:dout = 6'd1;
		2'd2:dout = 6'd2;
		2'd3:dout = 6'd3;
		endcase
	end
	else if(trigger[1])begin
		case (pri[3:2])
		2'd0:dout = 6'd4;
		2'd1:dout = 6'd5;
		2'd2:dout = 6'd6;
		2'd3:dout = 6'd7;
		endcase
	end
	else if(trigger[2])begin
		case (pri[5:4])
		2'd0:dout = 6'd8;
		2'd1:dout = 6'd9;
		2'd2:dout = 6'd10;
		2'd3:dout = 6'd11;
		endcase
	end
	else if(trigger[3])begin
		case (pri[7:6])
		2'd0:dout = 6'd12;
		2'd1:dout = 6'd13;
		2'd2:dout = 6'd14;
		2'd3:dout = 6'd15;
		endcase
	end
	else if(trigger[4])begin
		case (pri[9:8])
		2'd0:dout = 6'd16;
		2'd1:dout = 6'd17;
		2'd2:dout = 6'd18;
		2'd3:dout = 6'd19;
		endcase
	end
	else if(trigger[5])begin
		case (pri[11:10])
		2'd0:dout = 6'd20;
		2'd1:dout = 6'd21;
		2'd2:dout = 6'd22;
		2'd3:dout = 6'd23;
		endcase
	end
	else if(trigger[6])begin
		case (pri[13:12])
		2'd0:dout = 6'd24;
		2'd1:dout = 6'd25;
		2'd2:dout = 6'd26;
		2'd3:dout = 6'd27;
		endcase
	end
	else if(trigger[7])begin
		case (pri[15:14])
		2'd0:dout = 6'd28;
		2'd1:dout = 6'd29;
		2'd2:dout = 6'd30;
		2'd3:dout = 6'd31;
		endcase
	end
	else begin
		dout = 6'd63;
	end
end

endmodule
///////////////////////////
module priority_encoder_pattern2(din,dout);
input [31:0] din;
output [5:0] dout;
wire [7:0] trigger;
wire [15:0] pri;
reg [5:0] dout;
priority_encoder_Cell PEC0 (din[0],din[1],din[2],din[3],pri[1:0],trigger[0]);
priority_encoder_Cell PEC4 (din[4],din[5],din[6],din[7],pri[3:2],trigger[1]);
priority_encoder_Cell PEC8 (din[8],din[9],din[10],din[11],pri[5:4],trigger[2]);
priority_encoder_Cell PEC12 (din[12],din[13],din[14],din[15],pri[7:6],trigger[3]);
priority_encoder_Cell PEC16 (din[16],din[17],din[18],din[19],pri[9:8],trigger[4]);
priority_encoder_Cell PEC20 (din[20],din[21],din[22],din[23],pri[11:10],trigger[5]);
priority_encoder_Cell PEC24 (din[24],din[25],din[26],din[27],pri[13:12],trigger[6]);
priority_encoder_Cell PEC28 (din[28],din[29],din[30],din[31],pri[15:14],trigger[7]);
always @ (*) begin
	if(trigger[7])begin
		case (pri[15:14])
		2'd0:dout = 6'd28;
		2'd1:dout = 6'd29;
		2'd2:dout = 6'd30;
		2'd3:dout = 6'd31;
		endcase
	end
	else if(trigger[6])begin
		case (pri[13:12])
		2'd0:dout = 6'd24;
		2'd1:dout = 6'd25;
		2'd2:dout = 6'd26;
		2'd3:dout = 6'd27;
		endcase
	end
	else if(trigger[5])begin
		case (pri[11:10])
		2'd0:dout = 6'd20;
		2'd1:dout = 6'd21;
		2'd2:dout = 6'd22;
		2'd3:dout = 6'd23;
		endcase
	end
	else if(trigger[4])begin
		case (pri[9:8])
		2'd0:dout = 6'd16;
		2'd1:dout = 6'd17;
		2'd2:dout = 6'd18;
		2'd3:dout = 6'd19;
		endcase
	end
	else if(trigger[3])begin
		case (pri[7:6])
		2'd0:dout = 6'd12;
		2'd1:dout = 6'd13;
		2'd2:dout = 6'd14;
		2'd3:dout = 6'd15;
		endcase
	end
	else if(trigger[2])begin
		case (pri[5:4])
		2'd0:dout = 6'd8;
		2'd1:dout = 6'd9;
		2'd2:dout = 6'd10;
		2'd3:dout = 6'd11;
		endcase
	end
	else if(trigger[1])begin
		case (pri[3:2])
		2'd0:dout = 6'd4;
		2'd1:dout = 6'd5;
		2'd2:dout = 6'd6;
		2'd3:dout = 6'd7;
		endcase
	end
	else if(trigger[0])begin
		case (pri[1:0])
		2'd0:dout = 6'd0;
		2'd1:dout = 6'd1;
		2'd2:dout = 6'd2;
		2'd3:dout = 6'd3;
		endcase
	end
	else begin
		dout = 6'd63;
	end
	
end

endmodule
