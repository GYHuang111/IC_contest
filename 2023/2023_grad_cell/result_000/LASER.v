module LASER (
input CLK,
input RST,
input [3:0] X,
input [3:0] Y,
output reg [3:0] C1X,
output reg [3:0] C1Y,
output reg [3:0] C2X,
output reg [3:0] C2Y,
output wire DONE
);
reg [8:0]i;
reg [3:0] X_reg [39:0];
reg [3:0] Y_reg [39:0];
reg [5:0] fetch_data_cnt;
reg [2:0] switch_counter;
reg [1:0] STATE;
reg [1:0] NEXT_STATE;
parameter IDLE=2'd0,FETCH_INPUT=2'd1,CAL=2'd2,OUTPUT_RESULT=2'd3;
assign DONE = (STATE==OUTPUT_RESULT)?1'd1:1'd0;
always@(posedge CLK) begin
	if (RST) begin
		for(i=0;i<40;i=i+1)begin
			X_reg[i]<=4'd0;
		end
		for(i=0;i<40;i=i+1)begin
			Y_reg[i]<=4'd0;
		end
		fetch_data_cnt<=6'd0;
	end
	else if ((fetch_data_cnt!=6'd40)&&((STATE==FETCH_INPUT)||(STATE==IDLE)))begin
		X_reg[fetch_data_cnt]<=X;
		Y_reg[fetch_data_cnt]<=Y;
		fetch_data_cnt<=fetch_data_cnt+6'd1;
	end
end

always@(posedge CLK)begin
	if(RST) begin
		STATE <= IDLE;
	end
	else begin
		STATE <= NEXT_STATE;
	end
end
always@(*)begin
	case(STATE)
	IDLE:NEXT_STATE=FETCH_INPUT;
	FETCH_INPUT:begin
		if(fetch_data_cnt==6'd40)begin
			NEXT_STATE=CAL;
		end
		else begin
			NEXT_STATE=FETCH_INPUT;
		end
	end
	CAL:if (switch_counter==4'd6) begin
			NEXT_STATE=OUTPUT_RESULT;
		end
		else begin
			NEXT_STATE=CAL;
		end
	default:NEXT_STATE = OUTPUT_RESULT;
	//default:NEXT_STATE=IDLE;
	endcase
end
reg [3:0] X_position;
reg [3:0] Y_position;
reg [5:0] cal_cnt;
always@(posedge CLK) begin //cord generator
	if(RST)begin
		X_position <=4'd0;
		Y_position <=4'd0;
	end
	else if (((STATE == CAL)&&(cal_cnt==6'd19)))begin
		X_position<=X_position+4'd1;
		if(X_position == 4'd15)begin
			Y_position<=Y_position+4'd1;
		end
	end
end
reg [3:0] X_abs;
reg [8:0] square_out1;
always@(*) begin //table1
	if(X_reg[cal_cnt]>X_position)begin
		X_abs = X_reg[cal_cnt]-X_position;
	end
	else begin
		X_abs = X_position-X_reg[cal_cnt];
	end
	case(X_abs)
		4'd0:square_out1 = 9'd0;
		4'd1:square_out1 = 9'd1;
		4'd2:square_out1 = 9'd4;
		4'd3:square_out1 = 9'd9;
		4'd4:square_out1 = 9'd16;
		4'd5:square_out1 = 9'd25;
		4'd6:square_out1 = 9'd36;
		4'd7:square_out1 = 9'd49;
		4'd8:square_out1 = 9'd64;
		4'd9:square_out1 = 9'd81;
		4'd10:square_out1 = 9'd100;
		4'd11:square_out1 = 9'd121;
		4'd12:square_out1 = 9'd144;
		4'd13:square_out1 = 9'd169;
		4'd14:square_out1 = 9'd196;
		4'd15:square_out1 = 9'd225;
		default:square_out1 = 9'd0;
	endcase
end
reg [3:0] Y_abs;
reg [8:0] square_out2;
always@(*) begin //table2
	if(Y_reg[cal_cnt]>Y_position)begin
		Y_abs = Y_reg[cal_cnt]-Y_position;
	end
	else begin
		Y_abs = Y_position-Y_reg[cal_cnt];
	end
	case(Y_abs)
		4'd0:square_out2 = 9'd0;
		4'd1:square_out2 = 9'd1;
		4'd2:square_out2 = 9'd4;
		4'd3:square_out2 = 9'd9;
		4'd4:square_out2 = 9'd16;
		4'd5:square_out2 = 9'd25;
		4'd6:square_out2 = 9'd36;
		4'd7:square_out2 = 9'd49;
		4'd8:square_out2 = 9'd64;
		4'd9:square_out2 = 9'd81;
		4'd10:square_out2 = 9'd100;
		4'd11:square_out2 = 9'd121;
		4'd12:square_out2 = 9'd144;
		4'd13:square_out2 = 9'd169;
		4'd14:square_out2 = 9'd196;
		4'd15:square_out2 = 9'd225;
		default:square_out2 = 9'd0;
	endcase
end
reg [3:0] X_abs2;
reg [8:0] square_out1_2;
reg [5:0] cal_cnt_upper;
always@(*) begin //table1_2
	cal_cnt_upper = cal_cnt+6'd20;
	if(X_reg[cal_cnt_upper]>X_position)begin
		X_abs2 = X_reg[cal_cnt_upper]-X_position;
	end
	else begin
		X_abs2 = X_position-X_reg[cal_cnt_upper];
	end
	case(X_abs2)
		4'd0:square_out1_2 = 9'd0;
		4'd1:square_out1_2 = 9'd1;
		4'd2:square_out1_2 = 9'd4;
		4'd3:square_out1_2 = 9'd9;
		4'd4:square_out1_2 = 9'd16;
		4'd5:square_out1_2 = 9'd25;
		4'd6:square_out1_2 = 9'd36;
		4'd7:square_out1_2 = 9'd49;
		4'd8:square_out1_2 = 9'd64;
		4'd9:square_out1_2 = 9'd81;
		4'd10:square_out1_2 = 9'd100;
		4'd11:square_out1_2 = 9'd121;
		4'd12:square_out1_2 = 9'd144;
		4'd13:square_out1_2 = 9'd169;
		4'd14:square_out1_2 = 9'd196;
		4'd15:square_out1_2 = 9'd225;
		default:square_out1_2 = 9'd0;
	endcase
end
reg [3:0] Y_abs2;
reg [8:0] square_out2_2;
always@(*) begin //table2_2
	if(Y_reg[cal_cnt_upper]>Y_position)begin
		Y_abs2 = Y_reg[cal_cnt_upper]-Y_position;
	end
	else begin
		Y_abs2 = Y_position-Y_reg[cal_cnt_upper];
	end
	case(Y_abs2)
		4'd0:square_out2_2 = 9'd0;
		4'd1:square_out2_2 = 9'd1;
		4'd2:square_out2_2 = 9'd4;
		4'd3:square_out2_2 = 9'd9;
		4'd4:square_out2_2 = 9'd16;
		4'd5:square_out2_2 = 9'd25;
		4'd6:square_out2_2 = 9'd36;
		4'd7:square_out2_2 = 9'd49;
		4'd8:square_out2_2 = 9'd64;
		4'd9:square_out2_2 = 9'd81;
		4'd10:square_out2_2 = 9'd100;
		4'd11:square_out2_2 = 9'd121;
		4'd12:square_out2_2 = 9'd144;
		4'd13:square_out2_2 = 9'd169;
		4'd14:square_out2_2 = 9'd196;
		4'd15:square_out2_2 = 9'd225;
		default:square_out2_2 = 9'd0;
	endcase
end
reg [3:0] fixed_X_abs;
reg [8:0] square_out3;
reg [3:0] fixed_X_position;
always@(*) begin //table3
	if(X_reg[cal_cnt]>fixed_X_position)begin
		fixed_X_abs = X_reg[cal_cnt]-fixed_X_position;
	end
	else begin
		fixed_X_abs = fixed_X_position-X_reg[cal_cnt];
	end
	case(fixed_X_abs)
		4'd0:square_out3 = 9'd0;
		4'd1:square_out3 = 9'd1;
		4'd2:square_out3 = 9'd4;
		4'd3:square_out3 = 9'd9;
		4'd4:square_out3 = 9'd16;
		4'd5:square_out3 = 9'd25;
		4'd6:square_out3 = 9'd36;
		4'd7:square_out3 = 9'd49;
		4'd8:square_out3 = 9'd64;
		4'd9:square_out3 = 9'd81;
		4'd10:square_out3 = 9'd100;
		4'd11:square_out3 = 9'd121;
		4'd12:square_out3 = 9'd144;
		4'd13:square_out3 = 9'd169;
		4'd14:square_out3 = 9'd196;
		4'd15:square_out3 = 9'd225;
		default:square_out3 = 9'd0;
	endcase
end
reg [3:0] fixed_Y_abs;
reg [8:0] square_out4;
reg [3:0] fixed_Y_position;
always@(*) begin //table4
	if(Y_reg[cal_cnt]>fixed_Y_position)begin
		fixed_Y_abs = Y_reg[cal_cnt]-fixed_Y_position;
	end
	else begin
		fixed_Y_abs = fixed_Y_position-Y_reg[cal_cnt];
	end
	case(fixed_Y_abs)
		4'd0:square_out4 = 9'd0;
		4'd1:square_out4 = 9'd1;
		4'd2:square_out4 = 9'd4;
		4'd3:square_out4 = 9'd9;
		4'd4:square_out4 = 9'd16;
		4'd5:square_out4 = 9'd25;
		4'd6:square_out4 = 9'd36;
		4'd7:square_out4 = 9'd49;
		4'd8:square_out4 = 9'd64;
		4'd9:square_out4 = 9'd81;
		4'd10:square_out4 = 9'd100;
		4'd11:square_out4 = 9'd121;
		4'd12:square_out4 = 9'd144;
		4'd13:square_out4 = 9'd169;
		4'd14:square_out4 = 9'd196;
		4'd15:square_out4 = 9'd225;
		default:square_out4 = 9'd0;
	endcase
end
reg [3:0] fixed_X_abs2;
reg [8:0] square_out3_2;
always@(*) begin //table3
	if(X_reg[cal_cnt_upper]>fixed_X_position)begin
		fixed_X_abs2 = X_reg[cal_cnt_upper]-fixed_X_position;
	end
	else begin
		fixed_X_abs2 = fixed_X_position-X_reg[cal_cnt_upper];
	end
	case(fixed_X_abs2)
		4'd0:square_out3_2 = 9'd0;
		4'd1:square_out3_2 = 9'd1;
		4'd2:square_out3_2 = 9'd4;
		4'd3:square_out3_2 = 9'd9;
		4'd4:square_out3_2 = 9'd16;
		4'd5:square_out3_2 = 9'd25;
		4'd6:square_out3_2 = 9'd36;
		4'd7:square_out3_2 = 9'd49;
		4'd8:square_out3_2 = 9'd64;
		4'd9:square_out3_2 = 9'd81;
		4'd10:square_out3_2 = 9'd100;
		4'd11:square_out3_2 = 9'd121;
		4'd12:square_out3_2 = 9'd144;
		4'd13:square_out3_2 = 9'd169;
		4'd14:square_out3_2 = 9'd196;
		4'd15:square_out3_2 = 9'd225;
		default:square_out3_2 = 9'd0;
	endcase
end
reg [3:0] fixed_Y_abs2;
reg [8:0] square_out4_2;
always@(*) begin //table4_2
	if(Y_reg[cal_cnt_upper]>fixed_Y_position)begin
		fixed_Y_abs2 = Y_reg[cal_cnt_upper]-fixed_Y_position;
	end
	else begin
		fixed_Y_abs2 = fixed_Y_position-Y_reg[cal_cnt_upper];
	end
	case(fixed_Y_abs2)
		4'd0:square_out4_2 = 9'd0;
		4'd1:square_out4_2 = 9'd1;
		4'd2:square_out4_2 = 9'd4;
		4'd3:square_out4_2 = 9'd9;
		4'd4:square_out4_2 = 9'd16;
		4'd5:square_out4_2 = 9'd25;
		4'd6:square_out4_2 = 9'd36;
		4'd7:square_out4_2 = 9'd49;
		4'd8:square_out4_2 = 9'd64;
		4'd9:square_out4_2 = 9'd81;
		4'd10:square_out4_2 = 9'd100;
		4'd11:square_out4_2 = 9'd121;
		4'd12:square_out4_2 = 9'd144;
		4'd13:square_out4_2 = 9'd169;
		4'd14:square_out4_2 = 9'd196;
		4'd15:square_out4_2 = 9'd225;
		default:square_out4_2 = 9'd0;
	endcase
end
always@(posedge CLK)begin
	if(RST) begin
		cal_cnt<= 6'd0;
	end
	else if (cal_cnt==6'd19)begin
		cal_cnt<= 6'd0;
	end
	else if (STATE == CAL)begin
		cal_cnt<= cal_cnt+6'd1;
	end
end
reg [5:0] inside_counter;
always@(posedge CLK) begin
	if(RST) begin
		inside_counter <=6'd0;
	end
	else if (cal_cnt==6'd19) begin
		inside_counter <=6'd0;
	end
	else if(((((square_out1+square_out2)<=9'd16)||((square_out3+square_out4)<=9'd16))&&(((square_out1_2+square_out2_2)<=9'd16)||((square_out3_2+square_out4_2)<=9'd16)))&&(STATE==CAL))begin
		inside_counter <=inside_counter+6'd2;
	end
	else if(((((square_out1+square_out2)<=9'd16)||((square_out3+square_out4)<=9'd16))||(((square_out1_2+square_out2_2)<=9'd16)||((square_out3_2+square_out4_2)<=9'd16)))&&(STATE==CAL))begin
		inside_counter <=inside_counter+6'd1;
	end
end
reg [5:0] inside_counter_max;
always@(posedge CLK) begin
	if (RST) begin
		C1X<= 4'd0;
		C1Y<= 4'd0;
		inside_counter_max<= 6'd0;
		C2X<= 4'd0;
		C2Y<= 4'd0;
	end
	else if ((STATE==CAL)&&(cal_cnt==6'd19))begin
		if (inside_counter>=inside_counter_max) begin
			if (!switch_counter[0]) begin
				C1X<= X_position;
				C1Y<= Y_position;
				inside_counter_max<= inside_counter;
			end
			else begin
				C2X<= X_position;
				C2Y<= Y_position;
				inside_counter_max<= inside_counter;
				
			end
		end
	end
end
always@(posedge CLK)begin
	if (RST) begin
		switch_counter <= 3'd0;
		fixed_Y_position <= 4'd0;
		fixed_X_position <= 4'd0;
	end
	else if ((STATE==CAL)&&(cal_cnt==6'd19)&&(X_position==4'd15)&&(Y_position==4'd15))begin
		switch_counter <= switch_counter+3'd1;
		if (!switch_counter[0]) begin
			fixed_X_position <= C1X;
			fixed_Y_position <= C1Y;
		end
		else begin
			fixed_X_position <= C2X;
			fixed_Y_position <= C2Y;
		end
	end
end
endmodule



