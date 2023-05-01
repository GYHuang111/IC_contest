module SET (clk ,rst, en,central,radius, mode, busy, valid, candidate);
input clk;
input rst;
input en;
input [23:0] central;
input [11:0] radius;
input [1:0]mode;
output busy;
output valid;
output [7:0]candidate;
wire clk,rst,en,busy,valid;
wire counting_reset_x_next,counting_reset_y_next,finish_trigger,counting_reset,counting_en_y_next;
wire counting_en,counting_reset_x,counting_reset_y,counting_en_y;
wire [23:0] central,central_next;
wire [11:0] radius,radius_next;
wire [1:0] mode,mode_next;
wire [3:0] x_diff1,y_diff1,x_diff2,y_diff2,x_diff3,y_diff3,radius1,radius2,radius3,cout_x,cout_y;
wire [3:0] x1,x2,x3,y1,y2,y3;
wire [7:0] x_diff1_out,y_diff1_out,x_diff2_out,y_diff2_out,x_diff3_out,y_diff3_out,xy_sqr1,xy_sqr2,xy_sqr3;
wire [7:0] r1_sqr,r2_sqr,r3_sqr;
wire [7:0] candidate;
wire [1:0] state;
wire counting_en_set;
parameter S0=2'b00,S1=2'b01,S2=2'b10,S3=2'b11;

din_FF din_FF1 (clk,rst,en,central_next,radius_next,mode_next,central,radius,mode);
//FF FF1 (clk,rst,counting_reset_x_next,counting_reset_y_next,counting_en_y_next,counting_reset_x,counting_reset_y,counting_en_y);
set_counting_enable SCE (xy_sqr1,xy_sqr2,xy_sqr3,r1_sqr,r2_sqr,r3_sqr,mode_next,counting_en);
FSM FSM1 (clk,rst,finish_trigger,en,state);

multi_table MT1 (x_diff1,x_diff1_out);
multi_table MT2 (y_diff1,y_diff1_out);
multi_table MT3 (x_diff2,x_diff2_out);
multi_table MT4 (y_diff2,y_diff2_out);
multi_table MT5 (x_diff3,x_diff3_out);
multi_table MT6 (y_diff3,y_diff3_out);
multi_table MT7 (radius1,r1_sqr);
multi_table MT8 (radius2,r2_sqr);
multi_table MT9 (radius3,r3_sqr);

counter counter_x (clk,rst,counting_reset_x,cout_x);
counter2 counter_y (clk,rst,counting_reset_y,counting_en_y,cout_y);
set_counter SC (clk,rst,counting_reset,counting_en_set,candidate);

assign x1 = central_next[23:20];
assign y1 = central_next[19:16];
assign x2 = central_next[15:12];
assign y2 = central_next[11:8];
assign x3 = central_next[7:4];
assign y3 = central_next[3:0];
assign x_diff1 = x1-cout_x;
assign y_diff1 = y1-cout_y;
assign x_diff2 = x2-cout_x;
assign y_diff2 = y2-cout_y;
assign x_diff3 = x3-cout_x;
assign y_diff3 = y3-cout_y;
assign xy_sqr1 = x_diff1_out+y_diff1_out;
assign xy_sqr2 = x_diff2_out+y_diff2_out;
assign xy_sqr3 = x_diff3_out+y_diff3_out;
assign radius1 = radius_next[11:8];
assign radius2 = radius_next[7:4];
assign radius3 = radius_next[3:0];
//assign counting_reset_x_next = ((state==S0)||(state==S1)||(cout_x==4'b1000))?1'b1:1'b0;
assign counting_reset_x = ((state==S0)||(state==S1)||(cout_x==4'b1000))?1'b1:1'b0;
//assign counting_reset_y_next = ((state==S0)||(state==S1))?1'b1:1'b0;
assign counting_reset_y = ((state==S0))?1'b1:1'b0;
assign counting_reset = (state==S0)?1'b1:1'b0;
//assign counting_en_y_next = (cout_x==4'b1000)?1'b1:1'b0;
assign counting_en_y = ((cout_x==4'b1000)||(state==S1))?1'b1:1'b0;
assign finish_trigger = ((cout_x==4'b1000)&&(cout_y==4'b1000))?1'b1:1'b0;
assign busy = ((state==S2)||(state==S3))?1'b1:1'b0;
assign valid = (state==S3)?1'b1:1'b0;
assign counting_en_set = ((counting_en)&&(state==S2))?1'b1:1'b0;
endmodule
///////////////////////////////////////////
module din_FF(clk,reset,en,central_next,radius_next,mode_next,central,radius,mode);
input clk,reset,en;
input [23:0] central;
input [11:0] radius;
input [1:0] mode;
output [23:0] central_next;
output [11:0] radius_next;
output [1:0] mode_next;
reg [23:0] central_next;
reg [11:0] radius_next;
reg [1:0] mode_next;
always @ (posedge clk or posedge reset) begin
	if (reset) begin
		central_next<=24'd0;
		radius_next<=12'd0;
		mode_next<=2'd0;
	end
	else if (en) begin
		central_next<=central;
		radius_next<=radius;
		mode_next<=mode;
	end
end
endmodule 
///////////////////////////////////////////////
/*
module FF(clk,reset,counting_reset_x_next,counting_reset_y_next,counting_en_y_next,counting_reset_x,counting_reset_y,counting_en_y);
input clk,reset,counting_reset_x_next,counting_reset_y_next,counting_en_y_next;
output counting_reset_x,counting_reset_y,counting_en_y;
reg counting_reset_x,counting_reset_y,counting_en_y;
always @ (posedge clk or posedge reset) begin
	if (reset) begin
		counting_reset_x<=1'b0;
		counting_reset_y<=1'b0;
		counting_en_y<=1'b0;
	end
	else  begin
		counting_reset_x<=counting_reset_x_next;
		counting_reset_y<=counting_reset_y_next;
		counting_en_y<=counting_en_y_next;
	end
end
endmodule 
///////////////////////////////////////////////
*/
module set_counting_enable(xy_sqr1,xy_sqr2,xy_sqr3,r1_sqr,r2_sqr,r3_sqr,mode,count_en);
input [7:0] xy_sqr1,xy_sqr2,xy_sqr3,r1_sqr,r2_sqr,r3_sqr;
input [1:0] mode;
output count_en;
reg count_en;
parameter S0=2'b00,S1=2'b01,S2=2'b10,S3=2'b11;
assign xy_inside1 = (xy_sqr1<=r1_sqr)?1'b1:1'b0;
assign xy_inside2 = (xy_sqr2<=r2_sqr)?1'b1:1'b0;
assign xy_inside3 = (xy_sqr3<=r3_sqr)?1'b1:1'b0;
always @ (*) begin
	case (mode)
		S0:if (xy_inside1) begin
			count_en = 1'b1;
			end
			else begin
			count_en = 1'b0;
			end
		S1:if (xy_inside1&&xy_inside2) begin
			count_en = 1'b1;
			end
			else begin
			count_en = 1'b0;
			end
		S2:if ((xy_inside1||xy_inside2)&&(~(xy_inside1&&xy_inside2))) begin
			count_en = 1'b1;
			end
			else begin
			count_en = 1'b0;
			end
		S3:if (((xy_inside1&&xy_inside2)||(xy_inside2&&xy_inside3)||(xy_inside1&&xy_inside3))&&(~(xy_inside1&&xy_inside2&&xy_inside3))) begin
			count_en = 1'b1;
			end
			else begin
			count_en = 1'b0;
			end
		default:count_en = 1'b0;
	endcase
end
endmodule
///////////////////////////////////////////////
module FSM(clk,reset,finish_trigger,en,state);
input clk,reset,finish_trigger,en;
output [1:0] state;
reg [1:0] state,next_state;
parameter S0=2'b00,S1=2'b01,S2=2'b10,S3=2'b11;

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
		S0:if (en) begin
				next_state<=S1;
			end
			else begin
				next_state<=S0;
			end
		S1:if (!en) begin				//input data
				next_state<=S2;
			end
			else begin
				next_state<=S1;
			end
		S2:if (finish_trigger) begin	//busy pull up 
				next_state<=S3;
			end
			else begin
				next_state<=S2;
			end
		S3:	next_state<=S0;				//busy & valid pull up			
		default:next_state<=S0;
	endcase
end
endmodule
///////////////////////////////////////////////
module multi_table (in,out);
input [3:0] in;
output [7:0] out;
reg [7:0] out;
parameter S0=4'd0,S1=4'd1,S2=4'd2,S3=4'd3,S4=4'd4,S5=4'd5,S6=4'd6,S7=4'd7,S8=4'd8,S9=4'b1111,S10=4'b1110,S11=4'b1101,S12=4'b1100,S13=4'b1011,S14=4'b1010,S15=4'b1001,S16=4'b1000;
always @(*) begin
	case (in)
		S0:out = 8'd0;
		S1:out = 8'd1;
		S9:out = 8'd1;
		S2:out = 8'd4;
		S10:out = 8'd4;
		S3:out = 8'd9;
		S11:out = 8'd9;
		S4:out = 8'd16;
		S12:out = 8'd16;
		S5:out = 8'd25;
		S13:out = 8'd25;
		S6:out = 8'd36;
		S14:out = 8'd36;
		S7:out = 8'd49;
		S15:out = 8'd49;
		S8:out = 8'd64;
		S16:out = 8'd64;
		default:out = 8'd0;
	endcase
end
endmodule
/////////////////////////////////////////////////
module counter(clk,reset,counting_reset,cout);
input clk,reset,counting_reset;
output [3:0] cout;
reg [3:0] cout;
always @ (posedge clk or posedge reset) begin
	if (reset) begin
		cout<=4'd1;
	end
	else if (counting_reset) begin
		cout<=4'd1;
	end
	else begin
		cout<=cout+4'd1;
	end
end
endmodule
//////////////////////////////////////////////////
module counter2(clk,reset,counting_reset,counting_en,cout);
input clk,reset,counting_reset,counting_en;
output [3:0] cout;
reg [3:0] cout;
always @ (posedge clk or posedge reset) begin
	if (reset) begin
		cout<=4'd0;
	end
	else if (counting_reset) begin
		cout<=4'd0;
	end
	else if (counting_en) begin
		cout<=cout+4'd1;
	end
end
endmodule
//////////////////////////////////////////////////
module set_counter(clk,reset,counting_reset,counting_en,cout);
input clk,reset,counting_en,counting_reset;
output [7:0] cout;
reg [7:0] cout;
always @ (posedge clk or posedge reset) begin
	if (reset) begin
		cout<=8'd0;
	end
	else if (counting_reset) begin
		cout<=8'd0;
	end
	else if (counting_en)begin
		cout<=cout+8'd1;
	end
end
endmodule