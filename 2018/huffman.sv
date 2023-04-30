`timescale 1ns/10ps
module huffman(clk, reset, gray_valid, gray_data, CNT_valid, CNT1, CNT2, CNT3, CNT4, CNT5, CNT6,
    code_valid, HC1, HC2, HC3, HC4, HC5, HC6, M1, M2, M3, M4, M5, M6);

input clk;
input reset;
input gray_valid;
input [7:0] gray_data;
output wire CNT_valid;
output logic [7:0] CNT1, CNT2, CNT3, CNT4, CNT5, CNT6;
output logic code_valid;
output logic [7:0] HC1, HC2, HC3, HC4, HC5, HC6;
output logic [7:0] M1, M2, M3, M4, M5, M6;
///////////////////////////////start///////////////////////////////
logic [7:0] CNT [5:0];
logic [7:0] CNT_out [5:0];

logic [14:0] data_min_1st;
logic [14:0] data_min_2nd;

logic [14:0] CNT1_reg; 
logic [14:0] CNT2_reg; 
logic [14:0] CNT3_reg; 
logic [14:0] CNT4_reg; 
logic [14:0] CNT5_reg; 
logic [14:0] CNT6_reg; 

assign CNT1 = CNT[0];
assign CNT2 = CNT[1];
assign CNT3 = CNT[2];
assign CNT4 = CNT[3];
assign CNT5 = CNT[4];
assign CNT6 = CNT[5];

logic sorting_start;
logic clear;
logic sorting_finish;
typedef enum logic [2:0] {IDLE,INPUT_COUNT,OUTPUT_CNT,ENCODING,OUTPUT_ENCODING,FIN} FSMstate;
FSMstate state,next_state;
assign clear = (state == FIN)?1'd1:1'd0;
/*
counter A1 (
.reset(reset),
.clk(clk),
.clear(clear),
.gray_valid(gray_valid),
.gray_data(gray_data),
.symbol(8'd1),
.CNT(CNT[0])
);

counter A2 (
.reset(reset),
.clk(clk),
.clear(clear),
.gray_valid(gray_valid),
.gray_data(gray_data),
.symbol(8'd2),
.CNT(CNT[1])
);

counter A3 (
.reset(reset),
.clk(clk),
.clear(clear),
.gray_valid(gray_valid),
.gray_data(gray_data),
.symbol(8'd3),
.CNT(CNT[2])
);

counter A4 (
.reset(reset),
.clk(clk),
.clear(clear),
.gray_valid(gray_valid),
.gray_data(gray_data),
.symbol(8'd4),
.CNT(CNT[3])
);

counter A5 (
.reset(reset),
.clk(clk),
.clear(clear),
.gray_valid(gray_valid),
.gray_data(gray_data),
.symbol(8'd5),
.CNT(CNT[4])
);

counter A6 (
.reset(reset),
.clk(clk),
.clear(clear),
.gray_valid(gray_valid),
.gray_data(gray_data),
.symbol(8'd6),
.CNT(CNT[5])
);
*/
sorting_machine SORTING_MACHINE (
.clk(clk),
.reset(reset),
.sorting_start(sorting_start),
.data_1(CNT1_reg),
.data_2(CNT2_reg),
.data_3(CNT3_reg),
.data_4(CNT4_reg),
.data_5(CNT5_reg),
.data_6(CNT6_reg),
.data_min_1st(data_min_1st),
.data_min_2nd(data_min_2nd),
.sorting_finish(sorting_finish)
);
always_ff@(posedge clk) begin
	if (reset) begin
		CNT[0] <= 8'd0;
		CNT[1] <= 8'd0;
		CNT[2] <= 8'd0;
		CNT[3] <= 8'd0;
		CNT[4] <= 8'd0;
		CNT[5] <= 8'd0;
	end
	else if (clear) begin
		CNT[0] <= 8'd0;
		CNT[1] <= 8'd0;
		CNT[2] <= 8'd0;
		CNT[3] <= 8'd0;
		CNT[4] <= 8'd0;
		CNT[5] <= 8'd0;
	end
	else if (gray_valid) begin
		if (gray_data == 8'd1) begin
			CNT[0] <= CNT[0] + 8'd1;
		end
		if (gray_data == 8'd2) begin
			CNT[1] <= CNT[1] + 8'd1;
		end
		if (gray_data == 8'd3) begin
			CNT[2] <= CNT[2] + 8'd1;
		end
		if (gray_data == 8'd4) begin
			CNT[3] <= CNT[3] + 8'd1;
		end
		if (gray_data == 8'd5) begin
			CNT[4] <= CNT[4] + 8'd1;
		end
		if (gray_data == 8'd6) begin
			CNT[5] <= CNT[5] + 8'd1;
		end
	end
end


logic [2:0] cnt;
logic encoding_fin;

assign CNT_valid = (state == OUTPUT_CNT)?1'd1:1'd0;
assign encoding_fin = (cnt == 3'd5)?1'd1:1'd0;
assign code_valid = (state == OUTPUT_ENCODING)?1'd1:1'd0;
assign sorting_start = (state == ENCODING)?1'd1:1'd0;

always_ff@(posedge clk) begin
	if (reset) begin
		state <= IDLE;
	end	
	else begin
		state <= next_state;
	end
end

always_comb begin 
	case(state)
	IDLE:
		if (gray_valid) begin
			next_state = INPUT_COUNT;
		end
		else begin
			next_state = IDLE;
		end
	INPUT_COUNT:
		if (~gray_valid) begin
			next_state = OUTPUT_CNT;
		end
		else begin
			next_state = INPUT_COUNT;
		end
	OUTPUT_CNT:
			next_state = ENCODING;
	ENCODING:
		if (encoding_fin) begin
			next_state = OUTPUT_ENCODING;
		end
		else begin
			next_state = ENCODING;
		end
	OUTPUT_ENCODING:
			next_state = IDLE;
	default:
			next_state = IDLE;
	endcase
end

always_ff@(posedge clk) begin
	if (reset) begin
		cnt <= 3'd0;
	end
	else if (state == IDLE) begin
		cnt <= 3'd0;
	end
	else if ((state == ENCODING)&&sorting_finish) begin
		cnt <= cnt+3'd1;
	end
end




always_ff@(posedge clk) begin
	if (reset) begin
		CNT1_reg <= 15'd0;
		CNT2_reg <= 15'd0;
		CNT3_reg <= 15'd0;
		CNT4_reg <= 15'd0;
		CNT5_reg <= 15'd0;
		CNT6_reg <= 15'd0;
	end
	else if (state == OUTPUT_CNT) begin
		CNT1_reg <= {1'd0,6'b000001,CNT[0]};
		CNT2_reg <= {1'd0,6'b000010,CNT[1]};
		CNT3_reg <= {1'd0,6'b000100,CNT[2]};
		CNT4_reg <= {1'd0,6'b001000,CNT[3]};
		CNT5_reg <= {1'd0,6'b010000,CNT[4]};
		CNT6_reg <= {1'd0,6'b100000,CNT[5]};
	end
	else if (state == ENCODING && sorting_finish) begin
		if (data_min_1st[8]) begin //1
			CNT1_reg <= 15'd255;
		end 
		else if (data_min_2nd[8] && (CNT1_reg!=15'd255)) begin
			CNT1_reg <= {1'd1,data_min_1st[13:8]^data_min_2nd[13:8] ,data_min_1st[7:0]+data_min_2nd[7:0]};
		end
		if (data_min_1st[9]) begin  //2
			CNT2_reg <= 15'd255;
		end 
		else if (data_min_2nd[9] && (CNT2_reg!=15'd255)) begin
			CNT2_reg <= {1'd1,data_min_1st[13:8]^data_min_2nd[13:8],data_min_1st[7:0]+data_min_2nd[7:0]};
		end
		if (data_min_1st[10]) begin  //3
			CNT3_reg <= 15'd255;
		end 
		else if (data_min_2nd[10] && (CNT3_reg!=15'd255)) begin
			CNT3_reg <= {1'd1,data_min_1st[13:8]^data_min_2nd[13:8],data_min_1st[7:0]+data_min_2nd[7:0]};
		end
		if (data_min_1st[11]) begin  //4
			CNT4_reg <= 15'd255;
		end 
		else if (data_min_2nd[11] && (CNT4_reg!=15'd255)) begin
			CNT4_reg <= {1'd1,data_min_1st[13:8]^data_min_2nd[13:8],data_min_1st[7:0]+data_min_2nd[7:0]};
		end
		if (data_min_1st[12]) begin  //5
			CNT5_reg <= 15'd255;
		end 
		else if (data_min_2nd[12] && (CNT5_reg!=15'd255)) begin
			CNT5_reg <= {1'd1,data_min_1st[13:8]^data_min_2nd[13:8],data_min_1st[7:0]+data_min_2nd[7:0]};
		end
		if (data_min_1st[13]) begin  //6
			CNT6_reg <= 15'd255;
		end 
		else if (data_min_2nd[13] && (CNT6_reg!=15'd255)) begin
			CNT6_reg <= {1'd1,data_min_1st[13:8]^data_min_2nd[13:8],data_min_1st[7:0]+data_min_2nd[7:0]};
		end
	end
end

logic [2:0] HC1_cnt;
logic [2:0] HC2_cnt;
logic [2:0] HC3_cnt;
logic [2:0] HC4_cnt;
logic [2:0] HC5_cnt;
logic [2:0] HC6_cnt;

always_ff@(posedge clk) begin
	if (reset) begin
		HC1 <= 8'd0;
		HC2 <= 8'd0;
		HC3 <= 8'd0;
		HC4 <= 8'd0;
		HC5 <= 8'd0;
		HC6 <= 8'd0;
		M1	<= 8'd0;
		M2	<= 8'd0;
		M3	<= 8'd0;
		M4	<= 8'd0;
		M5	<= 8'd0;
		M6	<= 8'd0;
		HC1_cnt <= 3'd0;
		HC2_cnt <= 3'd0;
		HC3_cnt <= 3'd0;
		HC4_cnt <= 3'd0;
		HC5_cnt <= 3'd0;
		HC6_cnt <= 3'd0;
	end
	else if (state == ENCODING && sorting_finish) begin
		if (data_min_1st[8]|data_min_2nd[8]) begin
			HC1 <= HC1 | ({7'd0,data_min_1st[8]}<<HC1_cnt);
			M1 	<= M1 | (8'd1<<HC1_cnt);
			HC1_cnt <= HC1_cnt+3'd1;
		end
		if (data_min_1st[9]|data_min_2nd[9]) begin
			HC2 <= HC2 | ({7'd0,data_min_1st[9]}<<HC2_cnt);
			M2 	<= M2 | (8'd1<<HC2_cnt);
			HC2_cnt <= HC2_cnt+3'd1;
		end
		if (data_min_1st[10]|data_min_2nd[10]) begin
			HC3 <= HC3 | ({7'd0,data_min_1st[10]}<<HC3_cnt);
			M3 	<= M3 | (8'd1<<HC3_cnt);
			HC3_cnt <= HC3_cnt+3'd1;
		end
		if (data_min_1st[11]|data_min_2nd[11]) begin
			HC4 <= HC4 | ({7'd0,data_min_1st[11]}<<HC4_cnt);
			M4 	<= M4 | (8'd1<<HC4_cnt);
			HC4_cnt <= HC4_cnt+3'd1;
		end
		if (data_min_1st[12]|data_min_2nd[12]) begin
			HC5 <= HC5 | ({7'd0,data_min_1st[12]}<<HC5_cnt);
			M5 	<= M5 | (8'd1<<HC5_cnt);
			HC5_cnt <= HC5_cnt+3'd1;
		end
		if (data_min_1st[13]|data_min_2nd[13]) begin
			HC6 <= HC6 | ({7'd0,data_min_1st[13]}<<HC6_cnt);
			M6 	<= M6 | (8'd1<<HC6_cnt);
			HC6_cnt <= HC6_cnt+3'd1;
		end
	end
end

endmodule

module counter(
input reset,
input clk,
input clear,
input gray_valid,
input [7:0] gray_data,
input [7:0] symbol,
output logic [7:0] CNT
);

always_ff@(posedge clk) begin
	if (reset) begin
		CNT <= 8'd0;
	end
	else if (clear) begin
		CNT <= 8'd0;
	end
	else if (gray_data == symbol) begin
		CNT <= CNT + 8'd1;
	end
end

endmodule

module sorting_machine(
input clk,
input reset,
input sorting_start,
input [14:0] data_1,
input [14:0] data_2,
input [14:0] data_3,
input [14:0] data_4,
input [14:0] data_5,
input [14:0] data_6,
output logic [14:0] data_min_1st,
output logic [14:0] data_min_2nd,
output logic sorting_finish
);

logic [14:0] next_min_1st;
logic [14:0] next_min_2nd;
logic [2:0] cnt;



typedef enum {IDLE,LOAD_INPUT,SORTING,SORTING_FIN} sorting_FSMstate;
sorting_FSMstate state,next_state;
logic finish;
assign sorting_finish = (state == SORTING_FIN)?1'd1:1'd0;
assign finish = (cnt == 3'd5)?1'd1:1'd0;

always_ff@(posedge clk) begin
	if (reset) begin
		state <= IDLE;
	end
	else begin
		state <= next_state;
	end
end

always_comb begin
	case(state)
		IDLE:
			begin
				if (sorting_start) begin
					next_state = SORTING;
				end
				else begin
					next_state = IDLE;
				end
			end
		LOAD_INPUT:
				next_state = SORTING;
		SORTING:
			begin
				if (finish) begin
					next_state = SORTING_FIN;
				end
				else begin
					next_state = SORTING;
				end
			end
		SORTING_FIN:
			next_state = IDLE;
		default:
			next_state = IDLE;
	endcase
end

always_ff@(posedge clk) begin //Fetch input
	if (reset) begin
		data_min_1st <= {7'd0,8'd255};
		data_min_2nd <= {7'd0,8'd255};
	end
	if (state == IDLE) begin
		data_min_1st <= {7'd0,8'd255};
		data_min_2nd <= {7'd0,8'd255};
	end
	else if (state == SORTING) begin
		data_min_1st <= next_min_1st;
		data_min_2nd <= next_min_2nd;
	end
end

always_ff@ (posedge clk) begin
	if (reset) begin
		cnt <= 3'd0;
	end
	else if (state == IDLE) begin
		cnt <= 3'd0;
	end	
	else if (state == SORTING) begin
		cnt <= cnt + 3'd1;
	end
end

always_comb begin
	case(cnt) 
		3'd0:
		begin
			if((data_1[7:0] <= data_min_1st[7:0]) && (data_1[7:0] <= data_min_2nd[7:0]))
			begin
				if ((data_1[7:0] == data_min_1st[7:0]) && data_min_1st[14]) begin
					next_min_1st = data_min_1st;
					next_min_2nd = data_1;
				end
				else begin
					next_min_1st = data_1;
					next_min_2nd = data_min_1st;
				end
			end
			else if ((data_1[7:0] > data_min_1st[7:0]) && (data_1[7:0] <= data_min_2nd[7:0]))
			begin
				next_min_1st = data_min_1st;
				next_min_2nd = data_1;
			end			
			else 
			begin
				next_min_1st = data_min_1st;
				next_min_2nd = data_min_2nd;
			end	
		end
		3'd1:
		begin
			if((data_2[7:0] <= data_min_1st[7:0]) && (data_2[7:0] <= data_min_2nd[7:0]))
			begin
				if ((data_2[7:0] == data_min_1st[7:0]) && data_min_1st[14]) begin
					next_min_1st = data_min_1st;
					next_min_2nd = data_2;
				end
				else begin
					next_min_1st = data_2;
					next_min_2nd = data_min_1st;
				end
			end
			else if ((data_2[7:0] > data_min_1st[7:0]) && (data_2[7:0] <= data_min_2nd[7:0]))
			begin
				next_min_1st = data_min_1st;
				next_min_2nd = data_2;
			end			
			else 
			begin
				next_min_1st = data_min_1st;
				next_min_2nd = data_min_2nd;
			end	
		end
		3'd2:
		begin
		if((data_3[7:0] <= data_min_1st[7:0]) && (data_3[7:0] <= data_min_2nd[7:0]))
			begin
				if ((data_3[7:0] == data_min_1st[7:0]) && data_min_1st[14]) begin
					next_min_1st = data_min_1st;
					next_min_2nd = data_3;
				end
				else begin
					next_min_1st = data_3;
					next_min_2nd = data_min_1st;
				end	
			end
		else if ((data_3[7:0] > data_min_1st[7:0]) && (data_3[7:0] <= data_min_2nd[7:0]))
		begin
			next_min_1st = data_min_1st;
			next_min_2nd = data_3;
		end			
		else 
		begin
			next_min_1st = data_min_1st;
			next_min_2nd = data_min_2nd;
		end	
		end
		3'd3:
		begin
		if((data_4[7:0] <= data_min_1st[7:0]) && (data_4[7:0] <= data_min_2nd[7:0]))
			begin
				if ((data_4[7:0] == data_min_1st[7:0]) && data_min_1st[14]) begin
					next_min_1st = data_min_1st;
					next_min_2nd = data_4;
				end
				else begin
					next_min_1st = data_4;
					next_min_2nd = data_min_1st;
				end	
			end
			else if ((data_4[7:0] > data_min_1st[7:0]) && (data_4[7:0] <= data_min_2nd[7:0]))
			begin
				next_min_1st = data_min_1st;
				next_min_2nd = data_4;
			end			
			else 
			begin
				next_min_1st = data_min_1st;
				next_min_2nd = data_min_2nd;
			end	
		end
		3'd4:
		begin
		if((data_5[7:0] <= data_min_1st[7:0]) && (data_5[7:0] <= data_min_2nd[7:0]))
			begin
				if ((data_5[7:0] == data_min_1st[7:0]) && data_min_1st[14]) begin
					next_min_1st = data_min_1st;
					next_min_2nd = data_5;
				end
				else begin
				next_min_1st = data_5;
				next_min_2nd = data_min_1st;
				end
			end
			else if ((data_5[7:0] > data_min_1st[7:0]) && (data_5[7:0] <= data_min_2nd[7:0]))
			begin
				next_min_1st = data_min_1st;
				next_min_2nd = data_5;
			end			
			else 
			begin
				next_min_1st = data_min_1st;
				next_min_2nd = data_min_2nd;
			end	
		end
		default:	//3'd5
		begin
		if((data_6[7:0] <= data_min_1st[7:0]) && (data_6[7:0] <= data_min_2nd[7:0]))
			begin
				if ((data_6[7:0] == data_min_1st[7:0]) && data_min_1st[14]) begin
					next_min_1st = data_min_1st;
					next_min_2nd = data_6;
				end
				else begin
				next_min_1st = data_6;
				next_min_2nd = data_min_1st;
				end
			end
			else if ((data_6[7:0] > data_min_1st[7:0]) && (data_6[7:0] <= data_min_2nd[7:0]))
			begin
				next_min_1st = data_min_1st;
				next_min_2nd = data_6;
			end			
			else 
			begin
				next_min_1st = data_min_1st;
				next_min_2nd = data_min_2nd;
			end	
		end
	endcase
end

endmodule