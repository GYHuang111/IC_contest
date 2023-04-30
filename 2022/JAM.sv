module JAM (
input CLK,
input RST,
output reg [2:0] W,
output reg [2:0] J,
input [6:0] Cost,
output reg [3:0] MatchCount,
output reg [9:0] MinCost,
output reg Valid );

logic [9:0] Cost_SUM;
logic [3:0] cnt;
logic [3:0] cnt_dly;
logic [2:0] W1;
logic [2:0] W2;
logic [2:0] W3;
logic [2:0] W4;
logic [2:0] W5;
logic [2:0] W6;
logic [2:0] W7;
logic [2:0] W8;
logic adress_change;
logic sorting_complete;

typedef enum {IDLE,FETCH_INPUT,ALL_SORTING,OUTPUT_RESULT,FIN} FSMstate;
FSMstate state,next_state,state_dly;//,state_dly2;

assign sorting_complete = ((W1 == 3'd7)&&(W2 == 3'd6)&&(W3 == 3'd5)&&(W4 == 3'd4)&&(W5 == 3'd3)&&(W6 == 3'd2)&&(W7 == 3'd1)&&(W8 == 3'd0))?1'd1:1'd0;
assign Valid = (state == OUTPUT_RESULT)?1'd1:1'd0;
assign adress_change = ((state == ALL_SORTING) && (cnt == 3'd7))?1'd1:1'd0;
always_ff@(posedge CLK) begin //FSM
	if (RST) begin
		state <= IDLE;
		state_dly <= IDLE;
		//state_dly2<= IDLE;
	end
	else begin
		state <= next_state;
		state_dly <= state;
		//state_dly2<= state_dly;
	end
end

always_comb begin
	case(state) 
		IDLE:
			next_state = ALL_SORTING;
		ALL_SORTING:
			begin
				if (sorting_complete) begin
					next_state = OUTPUT_RESULT;
				end
				else begin
					next_state = ALL_SORTING;
				end
			end
		OUTPUT_RESULT:
			next_state = FIN;
		FIN:
			next_state = IDLE;
		default:
			next_state = IDLE;
	endcase
end

always_ff@(posedge CLK) begin
	if (RST) begin
		Cost_SUM<= 10'd0;
		MinCost <= 10'd1023;
	end
	else if ((state_dly == ALL_SORTING)) begin
		if (cnt_dly == 4'd8) begin
			//Cost_SUM <= {3'd0,Cost};
			Cost_SUM <= {10'd0};
		end
		else if (cnt != 4'd0)begin
			Cost_SUM <= Cost_SUM+{3'd0,Cost};
		end
		if ((Cost_SUM < MinCost) && (cnt == 4'd0)) begin
				MinCost <= Cost_SUM;
		end
	end
end

always_ff@(posedge CLK) begin
	if (RST) begin
		MatchCount <= 4'd1;
	end
	else if (cnt_dly == 4'd8) begin
		if (MinCost == Cost_SUM) begin
			MatchCount <= MatchCount+4'd1;
		end
		else if (MinCost > Cost_SUM) begin
			MatchCount <= 4'd1;
		end
	end
end
always_ff@(posedge CLK) begin
	if (RST) begin
		cnt <= 4'd0;
		cnt_dly <= 4'd0;
	end
	else if (state == ALL_SORTING) begin
		if (cnt == 4'd8) begin
			cnt <= 4'd0;
			//cnt_dly <= 4'd0;
		end
		else begin
			cnt <= cnt+4'd1;
		end	
		cnt_dly <= cnt;
	end
end

always_comb begin
	if (state == ALL_SORTING) begin
		case (cnt)
		4'd0:
		begin 
			W <= W1;
			J <= 3'd0;
		end
		4'd1:
		begin
			W <= W2;
			J <= 3'd1;
		end
		4'd2:
		begin
			W <= W3;
			J <= 3'd2;
		end
		4'd3:
		begin
			W <= W4;
			J <= 3'd3;
		end
		4'd4:
		begin
			W <= W5;
			J <= 3'd4;
		end
		4'd5:
		begin
			W <= W6;
			J <= 3'd5;
		end
		4'd6:
		begin
			W <= W7;
			J <= 3'd6;
		end
		4'd7:
		begin
			W <= W8;
			J <= 3'd7;
		end
		default:
		begin
			W <= 3'd0;
			J <= 3'd0;
		end
		endcase 
	end
	else begin
		W <= 4'd0;
		J <= 4'd0;
	end
end
////////////////////all sorting machine/////////////////////////
logic [2:0] W67_sub;
logic [2:0] W68_sub;
logic [2:0] W56_sub;
logic [2:0] W57_sub;
logic [2:0] W58_sub;
logic [2:0] W45_sub;
logic [2:0] W46_sub;
logic [2:0] W47_sub;
logic [2:0] W48_sub;
logic [2:0] W34_sub;
logic [2:0] W35_sub;
logic [2:0] W36_sub;
logic [2:0] W37_sub;
logic [2:0] W38_sub;
logic [2:0] W23_sub;
logic [2:0] W24_sub;
logic [2:0] W25_sub;
logic [2:0] W26_sub;
logic [2:0] W27_sub;
logic [2:0] W28_sub;
logic [2:0] W12_sub;
logic [2:0] W13_sub;
logic [2:0] W14_sub;
logic [2:0] W15_sub;
logic [2:0] W16_sub;
logic [2:0] W17_sub;
logic [2:0] W18_sub;
assign W67_sub = (W7 < W6)?3'd7:W7-W6;
assign W68_sub = (W8 < W6)?3'd7:W8-W6;
assign W56_sub = (W6 < W5)?3'd7:W6-W5;
assign W57_sub = (W7 < W5)?3'd7:W7-W5;
assign W58_sub = (W8 < W5)?3'd7:W8-W5;
assign W45_sub = (W5 < W4)?3'd7:W5-W4;
assign W46_sub = (W6 < W4)?3'd7:W6-W4;
assign W47_sub = (W7 < W4)?3'd7:W7-W4;
assign W48_sub = (W8 < W4)?3'd7:W8-W4;
assign W34_sub = (W4 < W3)?3'd7:W4-W3;
assign W35_sub = (W5 < W3)?3'd7:W5-W3;
assign W36_sub = (W6 < W3)?3'd7:W6-W3;
assign W37_sub = (W7 < W3)?3'd7:W7-W3;
assign W38_sub = (W8 < W3)?3'd7:W8-W3;
assign W23_sub = (W3 < W2)?3'd7:W3-W2;
assign W24_sub = (W4 < W2)?3'd7:W4-W2;
assign W25_sub = (W5 < W2)?3'd7:W5-W2;
assign W26_sub = (W6 < W2)?3'd7:W6-W2;
assign W27_sub = (W7 < W2)?3'd7:W7-W2;
assign W28_sub = (W8 < W2)?3'd7:W8-W2;
assign W12_sub = (W2 < W1)?3'd7:W2-W1;
assign W13_sub = (W3 < W1)?3'd7:W3-W1;
assign W14_sub = (W4 < W1)?3'd7:W4-W1;
assign W15_sub = (W5 < W1)?3'd7:W5-W1;
assign W16_sub = (W6 < W1)?3'd7:W6-W1;
assign W17_sub = (W7 < W1)?3'd7:W7-W1;
assign W18_sub = (W8 < W1)?3'd7:W8-W1;

always_ff@(posedge CLK) begin
	if (RST) begin
		W1 <= 3'd0;
		W2 <= 3'd1;
		W3 <= 3'd2;
		W4 <= 3'd3;
		W5 <= 3'd4;
		W6 <= 3'd5;
		W7 <= 3'd6;
		W8 <= 3'd7;
	end
	else if (adress_change) begin
		if (W8 > W7) begin // 87
			W7 <= W8;
			W8 <= W7;
		end
		else if (W7 > W6) begin // 76
			if (W68_sub < W67_sub) begin // 8 min
				W6 <= W8;
				W7 <= W6;
				W8 <= W7;
			end
			else  begin		  // 7 min
				W6 <= W7;
				W7 <= W8;
				W8 <= W6;
			end
		end
		else if (W6 > W5) begin //65
			if ((W58_sub < W57_sub) && (W58_sub < W56_sub)) begin  //8 min
				W5 <= W8;
				W6 <= W5;
				W7 <= W7;
				W8 <= W6;
			end
			else if ((W57_sub < W58_sub) && (W57_sub < W56_sub)) begin // 7 min
				W5 <= W7;
				W6 <= W8;
				W7 <= W5;
				W8 <= W6;
			end
			else if ((W56_sub < W58_sub) && (W56_sub < W57_sub)) begin // 6 min
				W5 <= W6;
				W6 <= W8;
				W7 <= W7;
				W8 <= W5;
			end
		end	
		else if (W5 > W4) begin //54
			if ((W48_sub < W47_sub)&&(W48_sub < W46_sub)&&(W48_sub < W45_sub)) begin//8 min
				W4 <= W8;
				W5 <= W4;
				W6 <= W7;
				W7 <= W6;
				W8 <= W5;
			end
			else if ((W47_sub < W48_sub)&&(W47_sub < W46_sub)&&(W47_sub < W45_sub)) begin//7 min
				W4 <= W7;
				W5 <= W8;
				W6 <= W4;
				W7 <= W6;
				W8 <= W5;
			end
			else if ((W46_sub < W48_sub)&&(W46_sub < W47_sub)&&(W46_sub < W45_sub)) begin//6 min
				W4 <= W6;
				W5 <= W8;
				W6 <= W7;
				W7 <= W4;
				W8 <= W5;
			end
			else if ((W45_sub < W48_sub)&&(W45_sub < W47_sub)&&(W45_sub < W46_sub)) begin//5 min
				W4 <= W5;
				W5 <= W8;
				W6 <= W7;
				W7 <= W6;
				W8 <= W4;
			end
		end	
		else if (W4 > W3) begin //43
			if ((W38_sub < W37_sub) && (W38_sub < W36_sub) && (W38_sub < W35_sub) && (W38_sub < W34_sub)) begin //8 min
				W3 <= W8;
				W4 <= W3;
				W5 <= W7;
				W6 <= W6;
				W7 <= W5;
				W8 <= W4;
			end
			else if ((W37_sub < W38_sub) && (W37_sub < W36_sub) && (W37_sub < W35_sub) && (W37_sub < W34_sub)) begin //7 min
				W3 <= W7;
				W4 <= W8;
				W5 <= W3;
				W6 <= W6;
				W7 <= W5;
				W8 <= W4;
			end
			else if ((W36_sub < W38_sub) && (W36_sub < W37_sub) && (W36_sub < W35_sub) && (W36_sub < W34_sub)) begin //6 min
				W3 <= W6;
				W4 <= W8;
				W5 <= W7;
				W6 <= W3;
				W7 <= W5;
				W8 <= W4;
			end
			else if ((W35_sub < W38_sub) && (W35_sub < W37_sub) && (W35_sub < W36_sub) && (W35_sub < W34_sub)) begin //5 min
				W3 <= W5;
				W4 <= W8;
				W5 <= W7;
				W6 <= W6;
				W7 <= W3;
				W8 <= W4;
			end
			else if ((W34_sub < W38_sub) && (W34_sub < W37_sub) && (W34_sub < W36_sub) && (W34_sub < W35_sub)) begin //4 min
				W3 <= W4;
				W4 <= W8;
				W5 <= W7;
				W6 <= W6;
				W7 <= W5;
				W8 <= W3;
			end
		end
		else if (W3 > W2) begin //32
			if ((W28_sub < W27_sub) && (W28_sub < W26_sub) && (W28_sub < W25_sub) && (W28_sub < W24_sub) && (W28_sub < W23_sub)) begin //8 min
				W2 <= W8;
				W3 <= W2;
				W4 <= W7;
				W5 <= W6;
				W6 <= W5;
				W7 <= W4;
				W8 <= W3;
			end
			else if ((W27_sub < W28_sub) && (W27_sub < W26_sub) && (W27_sub < W25_sub) && (W27_sub < W24_sub) && (W27_sub < W23_sub)) begin // 7 min
				W2 <= W7;
				W3 <= W8;
				W4 <= W2;
				W5 <= W6;
				W6 <= W5;
				W7 <= W4;
				W8 <= W3;
			end
			else if ((W26_sub < W28_sub) && (W26_sub < W27_sub) && (W26_sub < W25_sub) && (W26_sub < W24_sub) && (W26_sub < W23_sub)) begin // 6 min
				W2 <= W6;
				W3 <= W8;
				W4 <= W7;
				W5 <= W2;
				W6 <= W5;
				W7 <= W4;
				W8 <= W3;
			end
			else if ((W25_sub < W28_sub) && (W25_sub < W27_sub) && (W25_sub < W26_sub) && (W25_sub < W24_sub) && (W25_sub < W23_sub)) begin // 5 min
				W2 <= W5;
				W3 <= W8;
				W4 <= W7;
				W5 <= W6;
				W6 <= W2;
				W7 <= W4;
				W8 <= W3;
			end
			else if ((W24_sub < W28_sub) && (W24_sub < W27_sub) && (W24_sub < W26_sub) && (W24_sub < W25_sub) && (W24_sub < W23_sub)) begin // 4 min
				W2 <= W4;
				W3 <= W8;
				W4 <= W7;
				W5 <= W6;
				W6 <= W5;
				W7 <= W2;
				W8 <= W3;
			end
			else if ((W23_sub < W28_sub) && (W23_sub < W27_sub) && (W23_sub < W26_sub) && (W23_sub < W25_sub) && (W23_sub < W24_sub)) begin // 3 min
				W2 <= W3;
				W3 <= W8;
				W4 <= W7;
				W5 <= W6;
				W6 <= W5;
				W7 <= W4;
				W8 <= W2;
			end
		end		
		else if (W2 > W1) begin //21
			if ((W18_sub < W17_sub) && (W18_sub < W16_sub) && (W18_sub < W15_sub) && (W18_sub < W14_sub) && (W18_sub < W13_sub) && (W18_sub < W12_sub)) begin //8 min
				W1 <= W8;
				W2 <= W1;
				W3 <= W7;
				W4 <= W6;
				W5 <= W5;
				W6 <= W4;
				W7 <= W3;
				W8 <= W2;
			end
			else if ((W17_sub < W18_sub) && (W17_sub < W16_sub) && (W17_sub < W15_sub) && (W17_sub < W14_sub) && (W17_sub < W13_sub) && (W17_sub < W12_sub)) begin //7 min
				W1 <= W7;
				W2 <= W8;
				W3 <= W1;
				W4 <= W6;
				W5 <= W5;
				W6 <= W4;
				W7 <= W3;
				W8 <= W2;
			end
			else if ((W16_sub < W18_sub) && (W16_sub < W17_sub) && (W16_sub < W15_sub) && (W16_sub < W14_sub) && (W16_sub < W13_sub) && (W16_sub < W12_sub)) begin //6 max
				W1 <= W6;
				W2 <= W8;
				W3 <= W7;
				W4 <= W1;
				W5 <= W5;
				W6 <= W4;
				W7 <= W3;
				W8 <= W2;
			end
			else if ((W15_sub < W18_sub) && (W15_sub < W17_sub) && (W15_sub < W16_sub) && (W15_sub < W14_sub) && (W15_sub < W13_sub) && (W15_sub < W12_sub)) begin //5 max
				W1 <= W5;
				W2 <= W8;
				W3 <= W7;
				W4 <= W6;
				W5 <= W1;
				W6 <= W4;
				W7 <= W3;
				W8 <= W2;
			end
			else if ((W14_sub < W18_sub) && (W14_sub < W17_sub) && (W14_sub < W16_sub) && (W14_sub < W15_sub) && (W14_sub < W13_sub) && (W14_sub < W12_sub)) begin //4 max
				W1 <= W4;
				W2 <= W8;
				W3 <= W7;
				W4 <= W6;
				W5 <= W5;
				W6 <= W1;
				W7 <= W3;
				W8 <= W2;
			end
			else if ((W13_sub < W18_sub) && (W13_sub < W17_sub) && (W13_sub < W16_sub) && (W13_sub < W15_sub) && (W13_sub < W14_sub) && (W13_sub < W12_sub)) begin //3 max
				W1 <= W3;
				W2 <= W8;
				W3 <= W7;
				W4 <= W6;
				W5 <= W5;
				W6 <= W4;
				W7 <= W1;
				W8 <= W2;
			end
			else if ((W12_sub < W18_sub) && (W12_sub < W17_sub) && (W12_sub < W16_sub) && (W12_sub < W15_sub) && (W12_sub < W14_sub) && (W12_sub < W13_sub)) begin //2 max
				W1 <= W2;
				W2 <= W8;
				W3 <= W7;
				W4 <= W6;
				W5 <= W5;
				W6 <= W4;
				W7 <= W3;
				W8 <= W1;
			end
		end
	end
end
endmodule

