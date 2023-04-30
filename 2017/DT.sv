module DT(
	input 			clk, 
	input			reset,
	output	logic		done ,
	output	logic		sti_rd ,
	output	logic 	[9:0]	sti_addr ,
	input		[15:0]	sti_di,
	output	logic		res_wr ,
	output	logic		res_rd ,
	output	logic 	[13:0]	res_addr ,
	output	logic 	[7:0]	res_do,
	input		[7:0]	res_di,
	output logic fwpass_finish
	);

//typedef enum logic [3:0] {IDLE,FETCH_DATA_FOWARD,FOWARD,FETCH_DATA_BACKWARD,BACKWARD,FIN} FSM_State; 
//FSM_State STATE,NEXT_STATE;
parameter IDLE=3'd0,FETCH_DATA_FOWARD=3'd1,FOWARD=3'd2,FETCH_DATA_BACKWARD=3'd3,BACKWARD=3'd4,FIN=3'd5;
logic [2:0] STATE;
logic [2:0] NEXT_STATE;
logic [7:0] min_pixel;
logic [6:0] sti_addr_row;
logic [6:0] sti_addr_col;
logic [13:0] res_addr_latch;
logic EDGE;
logic [3:0] DATA_CNT;
logic FIRST_ROW;
logic Object_flag;
logic [7:0] pixel_reg [4:0]; 
assign res_do = (Object_flag)?min_pixel:8'd0;
assign res_wr = ((STATE == FOWARD)||(STATE == BACKWARD))?1'd1:1'd0;
assign res_rd = ((STATE == FETCH_DATA_FOWARD)||(STATE == FETCH_DATA_BACKWARD))?1'd1:1'd0;
assign sti_rd = ((STATE == FETCH_DATA_FOWARD)||(STATE == FETCH_DATA_BACKWARD))?1'd1:1'd0;
assign sti_addr = {sti_addr_col,sti_addr_row[6:4]};
assign res_addr = ((STATE == FOWARD)||(STATE == BACKWARD))?res_addr_latch:{sti_addr_col,sti_addr_row};
assign done = (STATE == FIN)?1'd1:1'd0;
assign fwpass_finish = ((STATE != IDLE)&&(STATE != FETCH_DATA_FOWARD)&&(STATE != FOWARD))?1'd1:1'd0;
always_ff@(posedge clk) begin
	if (!reset) begin
		STATE <= IDLE;
	end
	else begin
		STATE <= NEXT_STATE;
	end
end//always

always_comb  begin
	case(STATE)
		IDLE:
			NEXT_STATE = FETCH_DATA_FOWARD;
		FETCH_DATA_FOWARD:
			if (EDGE) begin
				if (DATA_CNT==3'd4) begin
					NEXT_STATE = FOWARD;
				end
				else begin
					NEXT_STATE = FETCH_DATA_FOWARD;
				end
			end			
			else begin
				if (DATA_CNT==3'd1) begin
					NEXT_STATE = FOWARD;
				end
				else begin
					NEXT_STATE = FETCH_DATA_FOWARD;
				end
			end
		FOWARD:
			if ((sti_addr_col == 7'd127) && (sti_addr_row == 7'd127)) begin
				NEXT_STATE = FETCH_DATA_BACKWARD;
			end
			else begin
				NEXT_STATE = FETCH_DATA_FOWARD;
			end
		FETCH_DATA_BACKWARD:
			if (EDGE) begin
				if (DATA_CNT==3'd4) begin
					NEXT_STATE = BACKWARD;
				end
				else begin
					NEXT_STATE = FETCH_DATA_BACKWARD;
				end
			end
			else begin
				if (DATA_CNT==3'd1) begin
					NEXT_STATE = BACKWARD;
				end
				else begin
					NEXT_STATE = FETCH_DATA_BACKWARD;
				end
			end
		BACKWARD:
			if ((sti_addr_col == 7'd1) && (sti_addr_row == 7'd1)) begin
				NEXT_STATE = FIN;
			end
			else begin
				NEXT_STATE = FETCH_DATA_BACKWARD;
			end
		FIN:NEXT_STATE = FIN;
		default:NEXT_STATE = IDLE;
	endcase
end //always

always_ff@(posedge clk) begin //FETCH DATA ADDRESS
	if (!reset) begin
		sti_addr_row <= 7'd0;
		sti_addr_col <= 7'd0;
		EDGE <= 1'd1;
		FIRST_ROW <= 1'd1;
	end
	else if (STATE == FETCH_DATA_FOWARD) begin
		if (EDGE) begin
			case(DATA_CNT)
				3'd0,3'd1:
					sti_addr_row <= sti_addr_row+7'd1;
				3'd2:
					begin
						sti_addr_row <= sti_addr_row-7'd2;
						sti_addr_col <= sti_addr_col+7'd1;
					end
				3'd3:
					begin
						sti_addr_row <= sti_addr_row+7'd1;
					end
				3'd4:
					begin
						sti_addr_row <= sti_addr_row+7'd2;
						sti_addr_col <= sti_addr_col-7'd1;
						EDGE <= 1'd0;
					end	
			endcase
		end	
		else begin
			case (DATA_CNT)
				3'd0:
					begin
						sti_addr_row <= sti_addr_row-7'd1;
						sti_addr_col <= sti_addr_col+7'd1;
					end
				3'd1:
					if (sti_addr_row != 7'd126 ) begin
						begin
							sti_addr_row <= sti_addr_row+7'd2;
							sti_addr_col <= sti_addr_col-7'd1;
						end
					end
					else begin
						if (sti_addr_col == 7'd127 ) begin //BOTTOM RIGHT
							sti_addr_row <= sti_addr_row+7'd1;
							EDGE <= 1'd1;
							FIRST_ROW <= 1'd1;
						end
						else begin
							sti_addr_row <= 7'd0;
							EDGE <= 1'd1;
							FIRST_ROW <= 1'd0;
						end
					end		
			endcase
		end
	end
	else if (STATE == FETCH_DATA_BACKWARD) begin
		if (EDGE) begin
			case(DATA_CNT) //check here!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
				3'd0,3'd1:
					sti_addr_row <= sti_addr_row-7'd1;
				3'd2:
					begin
						sti_addr_row <= sti_addr_row+7'd2;
						sti_addr_col <= sti_addr_col-7'd1;
					end
				3'd3:
					begin
						sti_addr_row <= sti_addr_row-7'd1;
					end
				3'd4:
					begin
						sti_addr_row <= sti_addr_row-7'd2;
						sti_addr_col <= sti_addr_col+7'd1;
						EDGE <= 1'd0;
					end	
			endcase
		end	
		else begin
			case (DATA_CNT)
				3'd0:
					begin
						sti_addr_row <= sti_addr_row+7'd1;
						sti_addr_col <= sti_addr_col-7'd1;
					end
				3'd1:
					if (sti_addr_row != 7'd1 ) begin
						begin
							sti_addr_row <= sti_addr_row-7'd2;
							sti_addr_col <= sti_addr_col+7'd1;
						end
					end
					else begin
						if (sti_addr_col == 7'd1 ) begin //TOP LEFT
							//sti_addr_row <= sti_addr_row+7'd1;
							EDGE <= 1'd1;
						end
						else begin
							sti_addr_row <= 7'd127;
							EDGE <= 1'd1;
							FIRST_ROW <= 1'd0;
						end
					end		
			endcase
		end
	end
end
always_ff@(posedge clk) begin
	if (!reset) begin
		res_addr_latch <= 14'd0;
		Object_flag <= 1'd0;
	end
	else if ((STATE == FETCH_DATA_FOWARD)||(STATE == FETCH_DATA_BACKWARD)) begin
		if (EDGE && (DATA_CNT==4'd4)) begin
			res_addr_latch <= {sti_addr_col,sti_addr_row};
			if (sti_di[4'd15-sti_addr_row[3:0]] != 8'd0) begin
				Object_flag <= 1'd1; 
			end
			else begin
				Object_flag <= 1'd0; 
			end
			
		end
		else if ((!EDGE) && (DATA_CNT==4'd1)) begin
			res_addr_latch <= {sti_addr_col,sti_addr_row};
			if (sti_di[4'd15-sti_addr_row[3:0]] != 8'd0) begin
				Object_flag <= 1'd1; 
			end
			else begin
				Object_flag <= 1'd0; 
			end
		end
	end
	//else if ((STATE == FOWARD)||(STATE == BACKWARD)) begin
	//	Object_flag <= 1'd0;
	//end
	/*
	else if (STATE == FETCH_DATA_BACKWARD) begin
		if (EDGE && (DATA_CNT==4'd4)) begin
			res_addr_latch <= {sti_addr_col,sti_addr_row};
		end
		else if ((!EDGE) && (DATA_CNT==4'd1)) begin
			res_addr_latch <= {sti_addr_col,sti_addr_row};
		end
	end
	*/
end
always_ff@(posedge clk) begin
	if (!reset) begin
		DATA_CNT <= 4'd0;
	end
	else begin
		case(STATE)
			FETCH_DATA_FOWARD,FETCH_DATA_BACKWARD:
			begin
				if (EDGE) begin
					if (DATA_CNT == 4'd4) begin
						DATA_CNT <= 4'd0;
					end
					else begin
						DATA_CNT <= DATA_CNT+4'd1;
					end
				end
				else begin
					if (DATA_CNT == 4'd1) begin
						DATA_CNT <= 4'd0;
					end
					else begin
						DATA_CNT <= DATA_CNT+4'd1;
					end
				end
			end
		endcase
	end
end


logic [7:0] pixel_reg_test0;
logic [7:0] pixel_reg_test1;
logic [7:0] pixel_reg_test2;
logic [7:0] pixel_reg_test3;
logic [7:0] pixel_reg_test4;
assign pixel_reg_test0 = pixel_reg[0];
assign pixel_reg_test1 = pixel_reg[1];
assign pixel_reg_test2 = pixel_reg[2];
assign pixel_reg_test3 = pixel_reg[3];
assign pixel_reg_test4 = pixel_reg[4];
always_ff@(posedge clk) begin //FETCH DATA
	if (!reset) begin
		for (int i=0;i<5;i++) begin
			pixel_reg[i] <= 8'd0;
		end
	end
	else if (STATE == FETCH_DATA_FOWARD) begin
		if (FIRST_ROW) begin
			if (EDGE) begin	//TOP LEFT
				pixel_reg[DATA_CNT] <= {7'd0,sti_di[4'd15-sti_addr_row[3:0]]};
			end
			else begin
				case(DATA_CNT)
					3'd0:
					begin
						pixel_reg[0] <= pixel_reg[1];
						pixel_reg[1] <= pixel_reg[2];
						pixel_reg[2] <= {7'd0,sti_di[4'd15-sti_addr_row[3:0]]};
						if (Object_flag) begin
							pixel_reg[3] <= min_pixel;
						end
						else begin
							pixel_reg[3] <= 8'd0;
						end
					end
					3'd1:
						pixel_reg[4] <= {7'd0,sti_di[4'd15-sti_addr_row[3:0]]};
				endcase
			end
		end
		else begin
			if (EDGE) begin
				case(DATA_CNT)
					3'd0:pixel_reg[0] <= {7'd0,sti_di[4'd15-sti_addr_row[3:0]]};
					3'd1:pixel_reg[1] <= res_di;
					3'd2:pixel_reg[2] <= res_di;
					3'd3:pixel_reg[3] <= {7'd0,sti_di[4'd15-sti_addr_row[3:0]]};
					3'd4:pixel_reg[4] <= {7'd0,sti_di[4'd15-sti_addr_row[3:0]]};
					//pixel_reg[DATA_CNT] <= res_di;
				endcase
			end
			else begin
				case(DATA_CNT)
					3'd0:
					begin
						pixel_reg[0] <= pixel_reg[1];
						pixel_reg[1] <= pixel_reg[2];
						pixel_reg[2] <= res_di;
						if (Object_flag) begin
							pixel_reg[3] <= min_pixel;
						end
						else begin
							pixel_reg[3] <= 8'd0;
						end
					end
					3'd1:
						pixel_reg[4] <= {7'd0,sti_di[4'd15-sti_addr_row[3:0]]};
				endcase
			end
		end	
	end
	else if (STATE == FETCH_DATA_BACKWARD) begin
		if (FIRST_ROW) begin
			if (EDGE) begin	//TOP LEFT
				pixel_reg[DATA_CNT] <= res_di;
			end
			else begin
				case(DATA_CNT)
					3'd0:
					begin
						pixel_reg[0] <= pixel_reg[1];
						pixel_reg[1] <= pixel_reg[2];
						pixel_reg[2] <= res_di;
						if (Object_flag) begin
							pixel_reg[3] <= min_pixel;
						end
						else begin
							pixel_reg[3] <= 8'd0;
						end
					end
					3'd1:
						pixel_reg[4] <= res_di;
				endcase
			end
		end
		else begin
			if (EDGE) begin
				case(DATA_CNT)
					3'd0:pixel_reg[0] <= res_di;
					3'd1:pixel_reg[1] <= res_di;
					3'd2:pixel_reg[2] <= res_di;
					3'd3:pixel_reg[3] <= res_di;
					3'd4:pixel_reg[4] <= res_di;
					//pixel_reg[DATA_CNT] <= res_di;
				endcase
			end
			else begin
				case(DATA_CNT)
					3'd0:
					begin
						pixel_reg[0] <= pixel_reg[1];
						pixel_reg[1] <= pixel_reg[2];
						pixel_reg[2] <= res_di;
						if (Object_flag) begin
							pixel_reg[3] <= min_pixel;
						end
						else begin
							pixel_reg[3] <= 8'd0;
						end
					end
					3'd1:
						pixel_reg[4] <= res_di;
				endcase
			end
		end	
	end
end

logic [7:0] compare_stage1;
logic [7:0] compare_stage2;
logic [7:0] compare_stage3;
logic [7:0] min_pixel_comb;
always_comb begin //compare
	if ((STATE == FOWARD)||STATE == FETCH_DATA_FOWARD) begin
		if (pixel_reg[0]<=pixel_reg[1]) begin
			compare_stage1 = pixel_reg[0];
		end
		else begin
			compare_stage1 = pixel_reg[1];
		end
		if (pixel_reg[2]<=pixel_reg[3]) begin
			compare_stage2 = pixel_reg[2];
		end
		else begin
			compare_stage2 = pixel_reg[3];
		end
		if (compare_stage1<=compare_stage2) begin
			min_pixel = compare_stage1+8'd1;
		end
		else begin
			min_pixel = compare_stage2+8'd1;
		end
		
	end
	//if (STATE == BACKWARD) begin
	else begin
		if (pixel_reg[0]<=pixel_reg[1]) begin
			compare_stage1 = pixel_reg[0];
		end
		else begin
			compare_stage1 = pixel_reg[1];
		end
		if (pixel_reg[2]<=pixel_reg[3]) begin
			compare_stage2 = pixel_reg[2];
		end
		else begin
			compare_stage2 = pixel_reg[3];
		end
		if (compare_stage1<=compare_stage2) begin
			compare_stage3 = compare_stage1;
		end
		else begin
			compare_stage3 = compare_stage2;
		end
		if (pixel_reg[4]<=compare_stage3+8'd1) begin
			min_pixel = pixel_reg[4];
		end
		else begin
			min_pixel = compare_stage3+8'd1;
		end
	end
end
/*
always_ff@(posedge clk) begin
	if (reset) begin
		min_pixel <= 8'd0;
	end
	else if ((STATE == FOWARD)||(STATE == BACKWARD))begin
		min_pixel <= min_pixel_comb;
	end
end
*/
endmodule