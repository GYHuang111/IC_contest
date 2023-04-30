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
wire clk,reset,full,head_space,match_next,String_reset_en,String_left_shift_en,
String_right_shift_en,EOL,Pattern_reset_en,Pattern_right_shift_en,valid,valid_next,
backup_en,reload_en,head_space_trigger,counter_reset,counter_en;
wire [7:0] s0,s1,s2,s3,s4,s5,s6,s7,p0,p1,p2,p3,p4,p5,p6,p7;
wire [7:0] check,chardata;
wire isstring,ispattern,match_en;
wire match_out,match_out2,match_out3,star_detected,opening_detected;
wire [4:0] c_out,match_index,pattern_length,c_out2,string_length,string_length_out,pattern_length_out,match_index_out;
FSM FSM1 (clk,reset,isstring,ispattern,full,head_space,match_next,String_reset_en,String_left_shift_en,
String_right_shift_en,EOL,Pattern_reset_en,Pattern_right_shift_en,valid_next,
backup_en,reload_en,head_space_trigger,counter_reset,counter_en,match_out,match_en);

Pattern_String_Comparator PSC (s0,s1,s2,s3,s4,s5,s6,s7,p0,p1,p2,p3,p4,p5,p6,p7,
check,match_next);

Pattern_Shift_Register PSR (clk,reset,Pattern_reset_en,Pattern_right_shift_en,
chardata,p0,p1,p2,p3,p4,p5,p6,p7,check,head_space);

String_Shift_Register SSR (clk,reset,String_reset_en,String_left_shift_en,String_right_shift_en,
EOL,reload_en,backup_en,chardata,s0,s1,s2,s3,s4,s5,s6,s7);

counter counter1 (clk,reset,counter_en,head_space_trigger,counter_reset,c_out,full);
counter_pattern CP (clk,reset,Pattern_reset_en,ispattern,pattern_length);
counter_string  CS (clk,reset,String_reset_en,isstring,backup_en,reload_en,string_length);
match_index_out MIO (clk,reset,string_length,c_out,pattern_length,match_en,match_index_out);
is_star is (clk,reset,Pattern_reset_en,chardata,star_detected);
is_openning io (clk,reset,Pattern_reset_en,chardata,opening_detected);
FF FF_1  (clk,reset,match_out,match_out2);
FF FF_3  (clk,reset,match_out2,match_out3);
FF FF_4  (clk,reset,match_out3,match);
FF FF_2  (clk,reset,valid_next,valid);
FF5 FF5_1  (clk,reset,match_index_out,match_index);
//FF5 FF5_1  (clk,reset,c_out2,match_index);
//FF5 FF5_2  (clk,reset,string_length,string_length_out);
//FF5 FF5_3  (clk,reset,pattern_length,pattern_length_out);
//FF5 FF5_4  (clk,reset,string_length_out,string_length_out2);
//FF5 FF5_5  (clk,reset,pattern_length_out,pattern_length_out2);
//assign c_out2=string_length_out2-c_out-pattern_length_out2;
wire push_completePSR1,push_completePSR2,star_occur;
wire [7:0] dinPSR1,dinPSR2,checkPSR1,checkPSR2;
Pattern_Shift_RegisterG PSR1 (clk,reset,Pattern_reset_en,ispattern,dinPSR1,s0,s1,s2,s3,s4,s5,s6,s7,checkPSR1,push_completePSR1);
Pattern_Shift_RegisterG PSR2 (clk,reset,Pattern_reset_en,ispattern,dinPSR2,s0,s1,s2,s3,s4,s5,s6,s7,checkPSR2,push_completePSR2);
//is_star IS (clk,reset,rst,chardata,star_detected);
assign star_occur = (chardata==8'd42)?1'b0:1'b1;
assign dinPSR1 = (star_detected)?8'd0:chardata;
assign dinPSR2 = (star_detected)?chardata:8'd0;

endmodule
/////////////////////
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
////////////////////////////////////////////////
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
//////////////////////
module match_index_out(clk,reset,string_length,c_out,pattern_length,en,match_index);
input clk,reset,en;
input [4:0] string_length,c_out,pattern_length;
output [4:0] match_index;
reg [4:0] match_index,match_index_next;
always @ (posedge clk or posedge reset) begin
	if (reset) begin
		match_index <= 5'b00000;
	end
	else begin
		match_index <= match_index_next;
	end
end
always @ (*) begin
	case (en)
	1'b0:match_index_next = 5'b00000;
	1'b1:match_index_next = c_out-(5'd30-string_length);
	default:match_index_next = 5'b00000;
	endcase
end

endmodule
///////////////////
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
///////////////////
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
///////////////////
module FSM (clk,reset,isstring,ispattern,full,head_space,match,String_reset_en,String_left_shift_en,
String_right_shift_en,EOL,Pattern_reset_en,Pattern_right_shift_en,valid,
backup_en,reload_en,head_space_trigger,counter_reset,counter_en,match_out,match_en);
input clk,reset,head_space,full,match,isstring,ispattern;
output String_reset_en,String_left_shift_en,
String_right_shift_en,EOL,Pattern_reset_en,Pattern_right_shift_en,valid,
backup_en,reload_en,head_space_trigger,counter_reset,counter_en,match_out,match_en;
parameter S0=3'd0,S1=3'd1,S2=3'd2,S3=3'd3,S4=3'd4,S5=3'd5,S6=3'd6,S7=3'd7;
wire String_reset_en,String_left_shift_en,String_right_shift_en;
wire EOL,Pattern_reset_en,Pattern_right_shift_en,backup_en,reload_en,valid;
wire head_space_trigger,counter_reset,counter_en,match_out;
reg [2:0] state,state_next;
reg match_en;
assign String_reset_en=(state==S7)?1'b1:1'b0;
assign String_left_shift_en=(state==S4)?1'b1:1'b0;				  //start compare
//assign String_right_shift_en=((state==S1)||(state==S2))?1'b1:1'b0;//input string
assign String_right_shift_en=(isstring||(state==S2))?1'b1:1'b0;
assign EOL=(state==S2)?1'b1:1'b0;
assign Pattern_reset_en=(state==S7)?1'b1:1'b0;
//assign Pattern_right_shift_en=((state==S2)||(state==S3)||(state==S6))?1'b1:1'b0;//input pattern
assign Pattern_right_shift_en=(ispattern)?1'b1:1'b0;//input pattern
assign backup_en = (state==S3)?1'b1:1'b0;
assign reload_en = (state==S6)?1'b1:1'b0;
assign valid=(state==S5)?1'b1:1'b0;
assign head_space_trigger = (((state==S5)||(state==S6))&&(head_space))?1'b1:1'b0;
assign counter_reset = (((state==S2)||(state==S3))&&(!head_space))?1'b1:1'b0;
assign counter_en = (state==S4)?1'b1:1'b0;
assign match_out=(match&&((state==S4)||(state==S7)));
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
		S0: if (isstring) begin
			state_next = S1;
			match_en =1'b0;
			end
			else begin
			state_next = S0;
			match_en =1'b0;
			end
		S1: if (!isstring) begin //input string
			state_next = S2;
			match_en =1'b0;
			end
			else begin
			state_next = S1;
			match_en =1'b0;
			end
		S2:	begin
			state_next = S3;	  //EOL trigger
			match_en =1'b0;
			end
		S3: if (!ispattern) begin //input pattern
			state_next = S4;
			match_en =1'b0;
			end
			else begin
			state_next = S3;
			match_en =1'b0;
			end
		S4: if (full||match) begin			  //start compare
			state_next = S7;
			match_en =1'b0;
			end
			else begin
			state_next = S4;
			match_en =1'b0;
			end	
		S7: begin
			state_next = S5;
			match_en =1'b1;
			end
		S5: if (isstring) begin	  //compare finish && pull up valid
			state_next = S1;
			match_en =1'b0;
			end
			else if (ispattern) begin
			state_next = S6;
			match_en =1'b0;
			end	
			else begin
			state_next = S5;
			match_en =1'b0;
			end
		S6: begin //input pattern & reload String
			state_next = S3; 
			match_en =1'b0; 
			end
		default: begin 
				state_next = S0;
				match_en =1'b0; 
				end
	endcase
end

endmodule
///////////////////
module Pattern_String_Comparator(s0,s1,s2,s3,s4,s5,s6,s7,p0,p1,p2,p3,p4,p5,p6,p7,
check,match);
input [7:0] s0,s1,s2,s3,s4,s5,s6,s7,p0,p1,p2,p3,p4,p5,p6,p7,
check;
output match;
wire compare0,compare1,compare2,compare3,compare4,
compare5,compare6,compare7,match;
wire [7:0] compare_total;
assign compare0 = (check[0])?((s0==p0)?1'b1:1'b0):1'b1;
assign compare1 = (check[1])?((s1==p1)?1'b1:1'b0):1'b1;
assign compare2 = (check[2])?((s2==p2)?1'b1:1'b0):1'b1;
assign compare3 = (check[3])?((s3==p3)?1'b1:1'b0):1'b1;
assign compare4 = (check[4])?((s4==p4)?1'b1:1'b0):1'b1;
assign compare5 = (check[5])?((s5==p5)?1'b1:1'b0):1'b1;
assign compare6 = (check[6])?((s6==p6)?1'b1:1'b0):1'b1;
assign compare7 = (check[7])?((s7==p7)?1'b1:1'b0):1'b1;
assign compare_total = {compare0,compare1,compare2,compare3,compare4,
compare5,compare6,compare7};
assign match = &compare_total;
endmodule
///////////////////
module Pattern_Shift_Register(clk,reset,reset_en,right_shift_en,
din,s0,s1,s2,s3,s4,s5,
s6,s7,check,head_space);
input clk,reset,reset_en,right_shift_en;
input [7:0] din;
output [7:0] s0,s1,s2,s3,s4,s5,s6,s7,check;
output head_space;
reg [7:0] s0,s1,s2,s3,s4,s5,s6,s7;
reg [7:0] s0_next,s1_next,s2_next,s3_next,s4_next,s5_next,s6_next,s7_next;
reg [7:0] check,check_next;
wire check_in,head_space;
wire [7:0] din_out;
wire [2:0] sel;
assign din_out = ((din==8'd36)||(din==8'd94))? 8'd32:din; //if din=="^"or^$^
assign head_space = (din==8'd94)?1'b1:1'b0;
assign check_in = (din==8'd46)?1'b0:1'b1; //if din=="."
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

module String_Shift_Register(clk,reset,reset_en,left_shift_en,right_shift_en,
EOL,reload_en,backup_en,din,s26,s27,s28,s29,s30,s31,s32,s33);
input clk,reset,reset_en,left_shift_en,right_shift_en,
EOL,reload_en,backup_en;
input [7:0] din;
output [7:0] s26,s27,s28,s29,s30,s31,s32,s33;
reg [7:0] s0,s1,s2,s3,s4,s5,
s6,s7,s8,s9,s10,s11,s12,s13,s14,s15,s16,s17,s18,s19,s20,s21,s22,s23,s24,
s25,s26,s27,s28,s29,s30,s31,s32,s33;
reg [7:0] s0_next,s1_next,s2_next,s3_next,s4_next,s5_next,
s6_next,s7_next,s8_next,s9_next,s10_next,s11_next,s12_next,s13_next,s14_next,s15_next,
s16_next,s17_next,s18_next,s19_next,s20_next,s21_next,s22_next,s23_next,s24_next,
s25_next,s26_next,s27_next,s28_next,s29_next,s30_next,s31_next,s32_next,s33_next;
reg [7:0] s0_backup,s1_backup,s2_backup,s3_backup,s4_backup,s5_backup,
s6_backup,s7_backup,s8_backup,s9_backup,s10_backup,s11_backup,s12_backup,
s13_backup,s14_backup,s15_backup,s16_backup,s17_backup,s18_backup,s19_backup,
s20_backup,s21_backup,s22_backup,s23_backup,s24_backup,s25_backup,s26_backup,
s27_backup,s28_backup,s29_backup,s30_backup,s31_backup,s32_backup,s33_backup;
wire [7:0] din_out;
wire [3:0] sel;
assign din_out = (EOL)? 8'd32:din;
assign sel = {reload_en,reset_en,left_shift_en,right_shift_en};
always @ (posedge clk or posedge reset) begin
	if (reset) begin
		s0<=8'd32;
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
		s33<=8'd0;		
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
		s33<=s33_next;
	end
end

always @ (*) begin
	case (sel)
		4'b0001: begin //right shift mode
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
				s33_next=s32;
				end
		4'b0010: begin //right shift mode2
				s0_next=8'd0;
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
				s33_next=s32;
				end		
		4'b0100:begin //reset mode
				s0_next=8'd32; //fill space in the beginning
				s1_next=8'd0;
				s2_next=8'd0;
				s3_next=8'd0;
				s4_next=8'd0;
				s5_next=8'd0;
				s6_next=8'd0;
				s7_next=8'd0;
				s8_next=8'd0;
				s9_next=8'd0;
				s10_next=8'd0;
				s11_next=8'd0;
				s12_next=8'd0;
				s13_next=8'd0;
				s14_next=8'd0;
				s15_next=8'd0;
				s16_next=8'd0;
				s17_next=8'd0;
				s18_next=8'd0;
				s19_next=8'd0;
				s20_next=8'd0;
				s21_next=8'd0;
				s22_next=8'd0;
				s23_next=8'd0;
				s24_next=8'd0;
				s25_next=8'd0;
				s26_next=8'd0;
				s27_next=8'd0;
				s28_next=8'd0;
				s29_next=8'd0;
				s30_next=8'd0;
				s31_next=8'd0;
				s32_next=8'd0;
				s33_next=8'd0;
				end
		4'b1000: begin //reload mode
				s0_next=s0_backup;
				s1_next=s1_backup;
				s2_next=s2_backup;
				s3_next=s3_backup;
				s4_next=s4_backup;
				s5_next=s5_backup;
				s6_next=s6_backup;
				s7_next=s7_backup;
				s8_next=s8_backup;
				s9_next=s9_backup;
				s10_next=s10_backup;
				s11_next=s11_backup;
				s12_next=s12_backup;
				s13_next=s13_backup;
				s14_next=s14_backup;
				s15_next=s15_backup;
				s16_next=s16_backup;
				s17_next=s17_backup;
				s18_next=s18_backup;
				s19_next=s19_backup;
				s20_next=s20_backup;
				s21_next=s21_backup;
				s22_next=s22_backup;
				s23_next=s23_backup;
				s24_next=s24_backup;
				s25_next=s25_backup;
				s26_next=s26_backup;
				s27_next=s27_backup;
				s28_next=s28_backup;
				s29_next=s29_backup;
				s30_next=s30_backup;
				s31_next=s31_backup;
				s32_next=s32_backup;
				end
		4'b0000: begin //stay mode
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

always @ (posedge clk or posedge reset) begin
	if (reset) begin
		s0_backup<=8'd0;
		s1_backup<=8'd0;
		s2_backup<=8'd0;
		s3_backup<=8'd0;
		s4_backup<=8'd0;
		s5_backup<=8'd0;
		s6_backup<=8'd0;
		s7_backup<=8'd0;
		s8_backup<=8'd0;
		s9_backup<=8'd0;
		s10_backup<=8'd0;
		s11_backup<=8'd0;
		s12_backup<=8'd0;
		s13_backup<=8'd0;
		s14_backup<=8'd0;
		s15_backup<=8'd0;
		s16_backup<=8'd0;
		s17_backup<=8'd0;
		s18_backup<=8'd0;
		s19_backup<=8'd0;
		s20_backup<=8'd0;
		s21_backup<=8'd0;
		s22_backup<=8'd0;
		s23_backup<=8'd0;
		s24_backup<=8'd0;
		s25_backup<=8'd0;
		s26_backup<=8'd0;
		s27_backup<=8'd0;
		s28_backup<=8'd0;
		s29_backup<=8'd0;
		s30_backup<=8'd0;
		s31_backup<=8'd0;
		s32_backup<=8'd0;
		s33_backup<=8'd0;		
	end
	else if (backup_en) begin
		s0_backup<=s0;
		s1_backup<=s1;
		s2_backup<=s2;
		s3_backup<=s3;
		s4_backup<=s4;
		s5_backup<=s5;
		s6_backup<=s6;
		s7_backup<=s7;
		s8_backup<=s8;
		s9_backup<=s9;
		s10_backup<=s10;
		s11_backup<=s11;
		s12_backup<=s12;
		s13_backup<=s13;
		s14_backup<=s14;
		s15_backup<=s15;
		s16_backup<=s16;
		s17_backup<=s17;
		s18_backup<=s18;
		s19_backup<=s19;
		s20_backup<=s20;
		s21_backup<=s21;
		s22_backup<=s22;
		s23_backup<=s23;
		s24_backup<=s24;
		s25_backup<=s25;
		s26_backup<=s26;
		s27_backup<=s27;
		s28_backup<=s28;
		s29_backup<=s29;
		s30_backup<=s30;
		s31_backup<=s31;
		s32_backup<=s32;
		s33_backup<=s33;
	end
end
endmodule
//////////////////////////////////////////////////////////////////////////////
module counter (clk,reset,counter_en,head_space_trigger,counter_reset,c_out2,full);
input clk,reset,counter_en,head_space_trigger,counter_reset;
output full;
output [4:0] c_out2;
wire [2:0] sel;
wire full;
reg [5:0] c_out,c_out_next;
assign c_out2 = c_out[4:0];
assign sel = {counter_en,head_space_trigger,counter_reset};
assign full = (c_out == 6'd31)?1'b1:1'b0;
always @ (posedge clk or posedge reset) begin
	if (reset) begin
		c_out <= 6'b000000;
	end
	else begin
		c_out <= c_out_next;
	end
end
always @ (*) begin
	case (sel)
	3'b001:c_out_next = 6'b000000;
	3'b010:c_out_next = 6'b000000;
	3'b100:c_out_next = c_out+6'd1;
	3'b000:c_out_next = c_out;
	default:c_out_next = 6'b000000;
	endcase
end
endmodule
///////////////////////////////////////////
module counter_pattern (clk,reset,Pattern_reset_en,ispattern,c_out);
input clk,reset,Pattern_reset_en,ispattern;
output [4:0] c_out;
wire [1:0] sel;
reg [4:0] c_out,c_out_next;
assign sel = {ispattern,Pattern_reset_en};

always @ (posedge clk or posedge reset) begin
	if (reset) begin
		c_out <= 5'b00000;
	end
	else begin
		c_out <= c_out_next;
	end
end
always @ (*) begin
	case (sel)
	2'b01:c_out_next = 5'b00000;
	2'b10:c_out_next = c_out+5'd1;
	2'b00:c_out_next = c_out;
	default:c_out_next = 5'b00000;
	endcase
end
endmodule
////////////////////////////////////////////
module counter_string (clk,reset,String_reset_en,isstring,backup_en,reload_en,c_out);
input clk,reset,String_reset_en,isstring,backup_en,reload_en;
output [4:0] c_out;
wire [2:0] sel;
reg [4:0] c_out,c_out_next,c_out_backup;
assign sel = {reload_en,isstring,String_reset_en};

always @ (posedge clk or posedge reset) begin
	if (reset) begin
		c_out <= 5'b00000;
	end
	else begin
		c_out <= c_out_next;
	end
end
always @ (*) begin
	case (sel)
	3'b001:c_out_next = 5'b00000;
	3'b010:c_out_next = c_out+5'd1;
	3'b100:c_out_next = c_out_backup;
	3'b000:c_out_next = c_out;
	default:c_out_next = 5'b00000;
	endcase
end

always @(posedge clk or posedge reset) begin
 if (reset) begin
	c_out_backup <=5'd0;
 end
 else if (backup_en) begin
	c_out_backup <=c_out;
 end
end

endmodule
module Pattern_Shift_RegisterG(clk,reset,reset_en,right_shift_en,
din,s0,s1,s2,s3,s4,s5,s6,s7,check,push_complete);
input clk,reset,reset_en,right_shift_en;
input [7:0] din;
output [7:0] s0,s1,s2,s3,s4,s5,s6,s7,check;
output push_complete;
reg [7:0] s0,s1,s2,s3,s4,s5,s6,s7;
reg [7:0] s0_next,s1_next,s2_next,s3_next,s4_next,s5_next,s6_next,s7_next;
reg [7:0] check,check_next;
wire check_in,push_complete;
wire [7:0] din_out;
wire [2:0] sel;
assign din_out = ((din==8'd36)||(din==8'd94))? 8'd32:(!right_shift_en)?8'd0:din; //if din=="^"or^$^
assign head_space = (din==8'd94)?1'b1:1'b0;
assign check_in = ((din==8'd46)||(din==8'd0))?1'b0:1'b1; //if din=="."
assign push_complete = (s7!=8'd0)?1'b1:1'b0;
assign right_shift_en2 = ((right_shift_en)||(~push_complete));
assign sel = {reset_en,right_shift_en2};
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

Pattern_String_Comparator_Cell PSC_Cell32 (s0,s1,s2,s3,s4,s5,s6,s7,p2_0,p2_1,p2_2,p2_3,p2_4,p2_5,p2_6,p2_7,check2,match2[0]);
Pattern_String_Comparator_Cell PSC_Cell33 (s1,s2,s3,s4,s5,s6,s7,s8,p2_0,p2_1,p2_2,p2_3,p2_4,p2_5,p2_6,p2_7,check2,match2[1]);
Pattern_String_Comparator_Cell PSC_Cell34 (s2,s3,s4,s5,s6,s7,s8,s9,p2_0,p2_1,p2_2,p2_3,p2_4,p2_5,p2_6,p2_7,check2,match2[2]);
Pattern_String_Comparator_Cell PSC_Cell35 (s3,s4,s5,s6,s7,s8,s9,s10,p2_0,p2_1,p2_2,p2_3,p2_4,p2_5,p2_6,p2_7,check2,match2[3]);
Pattern_String_Comparator_Cell PSC_Cell36 (s4,s5,s6,s7,s8,s9,s10,s11,p2_0,p2_1,p2_2,p2_3,p2_4,p2_5,p2_6,p2_7,check2,match2[4]);
Pattern_String_Comparator_Cell PSC_Cell37 (s5,s6,s7,s8,s9,s10,s11,s12,p2_0,p2_1,p2_2,p2_3,p2_4,p2_5,p2_6,p2_7,check2,match2[5]);
Pattern_String_Comparator_Cell PSC_Cell38 (s6,s7,s8,s9,s10,s11,s12,s13,p2_0,p2_1,p2_2,p2_3,p2_4,p2_5,p2_6,p2_7,check2,match2[6]);
Pattern_String_Comparator_Cell PSC_Cell39 (s7,s8,s9,s10,s11,s12,s13,s14,p2_0,p2_1,p2_2,p2_3,p2_4,p2_5,p2_6,p2_7,check2,match2[7]);
Pattern_String_Comparator_Cell PSC_Cell40 (s8,s9,s10,s11,s12,s13,s14,s15,p2_0,p2_1,p2_2,p2_3,p2_4,p2_5,p2_6,p2_7,check2,match2[8]);
Pattern_String_Comparator_Cell PSC_Cell41 (s9,s10,s11,s12,s13,s14,s15,s16,p2_0,p2_1,p2_2,p2_3,p2_4,p2_5,p2_6,p2_7,check2,match2[9]);
Pattern_String_Comparator_Cell PSC_Cell42 (s10,s11,s12,s13,s14,s15,s16,s17,p2_0,p2_1,p2_2,p2_3,p2_4,p2_5,p2_6,p2_7,check2,match2[10]);
Pattern_String_Comparator_Cell PSC_Cell43 (s11,s12,s13,s14,s15,s16,s17,s18,p2_0,p2_1,p2_2,p2_3,p2_4,p2_5,p2_6,p2_7,check2,match2[11]);
Pattern_String_Comparator_Cell PSC_Cell44 (s12,s13,s14,s15,s16,s17,s18,s19,p2_0,p2_1,p2_2,p2_3,p2_4,p2_5,p2_6,p2_7,check2,match2[12]);
Pattern_String_Comparator_Cell PSC_Cell45 (s13,s14,s15,s16,s17,s18,s19,s20,p2_0,p2_1,p2_2,p2_3,p2_4,p2_5,p2_6,p2_7,check2,match2[13]);
Pattern_String_Comparator_Cell PSC_Cell46 (s14,s15,s16,s17,s18,s19,s20,s21,p2_0,p2_1,p2_2,p2_3,p2_4,p2_5,p2_6,p2_7,check2,match2[14]);
Pattern_String_Comparator_Cell PSC_Cell47 (s15,s16,s17,s18,s19,s20,s21,s22,p2_0,p2_1,p2_2,p2_3,p2_4,p2_5,p2_6,p2_7,check2,match2[15]);
Pattern_String_Comparator_Cell PSC_Cell48 (s16,s17,s18,s19,s20,s21,s22,s23,p2_0,p2_1,p2_2,p2_3,p2_4,p2_5,p2_6,p2_7,check2,match2[16]);
Pattern_String_Comparator_Cell PSC_Cell49 (s17,s18,s19,s20,s21,s22,s23,s24,p2_0,p2_1,p2_2,p2_3,p2_4,p2_5,p2_6,p2_7,check2,match2[17]);
Pattern_String_Comparator_Cell PSC_Cell50 (s18,s19,s20,s21,s22,s23,s24,s25,p2_0,p2_1,p2_2,p2_3,p2_4,p2_5,p2_6,p2_7,check2,match2[18]);
Pattern_String_Comparator_Cell PSC_Cell51 (s19,s20,s21,s22,s23,s24,s25,s26,p2_0,p2_1,p2_2,p2_3,p2_4,p2_5,p2_6,p2_7,check2,match2[19]);
Pattern_String_Comparator_Cell PSC_Cell52 (s20,s21,s22,s23,s24,s25,s26,s27,p2_0,p2_1,p2_2,p2_3,p2_4,p2_5,p2_6,p2_7,check2,match2[20]);
Pattern_String_Comparator_Cell PSC_Cell53 (s21,s22,s23,s24,s25,s26,s27,s28,p2_0,p2_1,p2_2,p2_3,p2_4,p2_5,p2_6,p2_7,check2,match2[21]);
Pattern_String_Comparator_Cell PSC_Cell54 (s22,s23,s24,s25,s26,s27,s28,s29,p2_0,p2_1,p2_2,p2_3,p2_4,p2_5,p2_6,p2_7,check2,match2[22]);
Pattern_String_Comparator_Cell PSC_Cell55 (s23,s24,s25,s26,s27,s28,s29,s30,p2_0,p2_1,p2_2,p2_3,p2_4,p2_5,p2_6,p2_7,check2,match2[23]);
Pattern_String_Comparator_Cell PSC_Cell56 (s24,s25,s26,s27,s28,s29,s30,s31,p2_0,p2_1,p2_2,p2_3,p2_4,p2_5,p2_6,p2_7,check2,match2[24]);
Pattern_String_Comparator_Cell PSC_Cell57 (s25,s26,s27,s28,s29,s30,s31,space,p2_0,p2_1,p2_2,p2_3,p2_4,p2_5,p2_6,p2_7,check2,match2[25]);
Pattern_String_Comparator_Cell PSC_Cell58 (s26,s27,s28,s29,s30,s31,space,nothing,p2_0,p2_1,p2_2,p2_3,p2_4,p2_5,p2_6,p2_7,check2,match2[26]);
Pattern_String_Comparator_Cell PSC_Cell59 (s27,s28,s29,s30,s31,space,nothing,nothing,p2_0,p2_1,p2_2,p2_3,p2_4,p2_5,p2_6,p2_7,check2,match2[27]);
Pattern_String_Comparator_Cell PSC_Cell60 (s28,s29,s30,s31,space,nothing,nothing,nothing,p2_0,p2_1,p2_2,p2_3,p2_4,p2_5,p2_6,p2_7,check2,match2[28]);
Pattern_String_Comparator_Cell PSC_Cell61 (s29,s30,s31,space,nothing,nothing,nothing,nothing,p2_0,p2_1,p2_2,p2_3,p2_4,p2_5,p2_6,p2_7,check2,match2[29]);
Pattern_String_Comparator_Cell PSC_Cell62 (s30,s31,space,nothing,nothing,nothing,nothing,nothing,p2_0,p2_1,p2_2,p2_3,p2_4,p2_5,p2_6,p2_7,check2,match2[30]);
Pattern_String_Comparator_Cell PSC_Cell63 (s31,space,nothing,nothing,nothing,nothing,nothing,nothing,p2_0,p2_1,p2_2,p2_3,p2_4,p2_5,p2_6,p2_7,check2,match2[31]);

for(int i=0;i<32;i++){
        printf("Pattern_String_Comparator_Cell PSC_Cell%d (s%d,s%d,s%d,s%d,s%d,s%d,s%d,s%d,p0,p1,p2,p3,p4,p5,p6,p7,check,match);\n",i,i,i+1,i+2,i+3,i+4,i+5,i+6,i+7);
    }
	for(int i=0;i<32;i++){
        printf("Pattern_String_Comparator_Cell PSC_Cell%d (s%d,s%d,s%d,s%d,s%d,s%d,s%d,s%d,p0,p1,p2,p3,p4,p5,p6,p7,check,match);\n",i,i,i+1,i+2,i+3,i+4,i+5,i+6,i+7);
    }
Pattern_String_Comparator_Cell PSC_Cell1_space (space,s0,s1,s2,s3,s4,s5,s6,p1_0,p1_1,p1_2,p1_3,p1_4,p1_5,p1_6,p1_7,check1,match1_space);
Pattern_String_Comparator_Cell PSC_Cell0 (s0,s1,s2,s3,s4,s5,s6,s7,p1_0,p1_1,p1_2,p1_3,p1_4,p1_5,p1_6,p1_7,check1,match1[0]);
Pattern_String_Comparator_Cell PSC_Cell1 (s1,s2,s3,s4,s5,s6,s7,s8,p1_0,p1_1,p1_2,p1_3,p1_4,p1_5,p1_6,p1_7,check1,match1[1]);
Pattern_String_Comparator_Cell PSC_Cell2 (s2,s3,s4,s5,s6,s7,s8,s9,p1_0,p1_1,p1_2,p1_3,p1_4,p1_5,p1_6,p1_7,check1,match1[2]);
Pattern_String_Comparator_Cell PSC_Cell3 (s3,s4,s5,s6,s7,s8,s9,s10,p1_0,p1_1,p1_2,p1_3,p1_4,p1_5,p1_6,p1_7,check1,match1[3]);
Pattern_String_Comparator_Cell PSC_Cell4 (s4,s5,s6,s7,s8,s9,s10,s11,p1_0,p1_1,p1_2,p1_3,p1_4,p1_5,p1_6,p1_7,check1,match1[4]);
Pattern_String_Comparator_Cell PSC_Cell5 (s5,s6,s7,s8,s9,s10,s11,s12,p1_0,p1_1,p1_2,p1_3,p1_4,p1_5,p1_6,p1_7,check1,match1[5]);
Pattern_String_Comparator_Cell PSC_Cell6 (s6,s7,s8,s9,s10,s11,s12,s13,p1_0,p1_1,p1_2,p1_3,p1_4,p1_5,p1_6,p1_7,check1,match1[6]);
Pattern_String_Comparator_Cell PSC_Cell7 (s7,s8,s9,s10,s11,s12,s13,s14,p1_0,p1_1,p1_2,p1_3,p1_4,p1_5,p1_6,p1_7,check1,match1[7]);
Pattern_String_Comparator_Cell PSC_Cell8 (s8,s9,s10,s11,s12,s13,s14,s15,p1_0,p1_1,p1_2,p1_3,p1_4,p1_5,p1_6,p1_7,check1,match1[8]);
Pattern_String_Comparator_Cell PSC_Cell9 (s9,s10,s11,s12,s13,s14,s15,s16,p1_0,p1_1,p1_2,p1_3,p1_4,p1_5,p1_6,p1_7,check1,match1[9]);
Pattern_String_Comparator_Cell PSC_Cell10 (s10,s11,s12,s13,s14,s15,s16,s17,p1_0,p1_1,p1_2,p1_3,p1_4,p1_5,p1_6,p1_7,check1,match1[10]);
Pattern_String_Comparator_Cell PSC_Cell11 (s11,s12,s13,s14,s15,s16,s17,s18,p1_0,p1_1,p1_2,p1_3,p1_4,p1_5,p1_6,p1_7,check1,match1[11]);
Pattern_String_Comparator_Cell PSC_Cell12 (s12,s13,s14,s15,s16,s17,s18,s19,p1_0,p1_1,p1_2,p1_3,p1_4,p1_5,p1_6,p1_7,check1,match1[12]);
Pattern_String_Comparator_Cell PSC_Cell13 (s13,s14,s15,s16,s17,s18,s19,s20,p1_0,p1_1,p1_2,p1_3,p1_4,p1_5,p1_6,p1_7,check1,match1[13]);
Pattern_String_Comparator_Cell PSC_Cell14 (s14,s15,s16,s17,s18,s19,s20,s21,p1_0,p1_1,p1_2,p1_3,p1_4,p1_5,p1_6,p1_7,check1,match1[14]);
Pattern_String_Comparator_Cell PSC_Cell15 (s15,s16,s17,s18,s19,s20,s21,s22,p1_0,p1_1,p1_2,p1_3,p1_4,p1_5,p1_6,p1_7,check1,match1[15]);
Pattern_String_Comparator_Cell PSC_Cell16 (s16,s17,s18,s19,s20,s21,s22,s23,p1_0,p1_1,p1_2,p1_3,p1_4,p1_5,p1_6,p1_7,check1,match1[16]);
Pattern_String_Comparator_Cell PSC_Cell17 (s17,s18,s19,s20,s21,s22,s23,s24,p1_0,p1_1,p1_2,p1_3,p1_4,p1_5,p1_6,p1_7,check1,match1[17]);
Pattern_String_Comparator_Cell PSC_Cell18 (s18,s19,s20,s21,s22,s23,s24,s25,p1_0,p1_1,p1_2,p1_3,p1_4,p1_5,p1_6,p1_7,check1,match1[18]);
Pattern_String_Comparator_Cell PSC_Cell19 (s19,s20,s21,s22,s23,s24,s25,s26,p1_0,p1_1,p1_2,p1_3,p1_4,p1_5,p1_6,p1_7,check1,match1[19]);
Pattern_String_Comparator_Cell PSC_Cell20 (s20,s21,s22,s23,s24,s25,s26,s27,p1_0,p1_1,p1_2,p1_3,p1_4,p1_5,p1_6,p1_7,check1,match1[20]);
Pattern_String_Comparator_Cell PSC_Cell21 (s21,s22,s23,s24,s25,s26,s27,s28,p1_0,p1_1,p1_2,p1_3,p1_4,p1_5,p1_6,p1_7,check1,match1[21]);
Pattern_String_Comparator_Cell PSC_Cell22 (s22,s23,s24,s25,s26,s27,s28,s29,p1_0,p1_1,p1_2,p1_3,p1_4,p1_5,p1_6,p1_7,check1,match1[22]);
Pattern_String_Comparator_Cell PSC_Cell23 (s23,s24,s25,s26,s27,s28,s29,s30,p1_0,p1_1,p1_2,p1_3,p1_4,p1_5,p1_6,p1_7,check1,match1[23]);
Pattern_String_Comparator_Cell PSC_Cell24 (s24,s25,s26,s27,s28,s29,s30,s31,p1_0,p1_1,p1_2,p1_3,p1_4,p1_5,p1_6,p1_7,check1,match1[24]);
Pattern_String_Comparator_Cell PSC_Cell25 (s25,s26,s27,s28,s29,s30,s31,space,p1_0,p1_1,p1_2,p1_3,p1_4,p1_5,p1_6,p1_7,check1,match1[25]);
Pattern_String_Comparator_Cell PSC_Cell26 (s26,s27,s28,s29,s30,s31,space,nothing,p1_0,p1_1,p1_2,p1_3,p1_4,p1_5,p1_6,p1_7,check1,match1[26]);
Pattern_String_Comparator_Cell PSC_Cell27 (s27,s28,s29,s30,s31,space,nothing,nothing,p1_0,p1_1,p1_2,p1_3,p1_4,p1_5,p1_6,p1_7,check1,match1[27]);
Pattern_String_Comparator_Cell PSC_Cell28 (s28,s29,s30,s31,space,nothing,nothing,nothing,p1_0,p1_1,p1_2,p1_3,p1_4,p1_5,p1_6,p1_7,check1,match1[28]);
Pattern_String_Comparator_Cell PSC_Cell29 (s29,s30,s31,space,nothing,nothing,nothing,nothing,p1_0,p1_1,p1_2,p1_3,p1_4,p1_5,p1_6,p1_7,check1,match1[29]);
Pattern_String_Comparator_Cell PSC_Cell30 (s30,s31,space,nothing,nothing,nothing,nothing,nothing,p1_0,p1_1,p1_2,p1_3,p1_4,p1_5,p1_6,p1_7,check1,match1[30]);
Pattern_String_Comparator_Cell PSC_Cell31 (s31,space,nothing,nothing,nothing,nothing,nothing,nothing,p1_0,p1_1,p1_2,p1_3,p1_4,p1_5,p1_6,p1_7,check1,match1[31]);
