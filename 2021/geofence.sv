//synopsys translate_off
`include "DW_sqrt.v"
//synopsys translate_on
module geofence ( clk,reset,X,Y,R,valid,is_inside);
input clk;
input reset;
input [9:0] X;
input [9:0] Y;
input [10:0] R;
output logic valid;
output logic is_inside;
//reg valid;
//reg is_inside;
logic [19:0] Outer_product;
logic [19:0] Outer_product2;
logic sort_finish;
logic CAL_finish;
logic CAL_cnt_rst;
logic [9:0] X_reg [5:0];
logic [9:0] Y_reg [5:0];
logic [9:0] R_reg [5:0];
logic [2:0] EDGE_cnt;
logic [3:0] EDGE_cnt_2nd;
logic [2:0] input_cnt;
logic EDGE_cnt_rst;
logic EDGE_cal_finish;
typedef enum logic [3:0] {FETCH_INPUT,FENCE_FIND_EDGE,FENCE_CAL_EDGE,FENCE_CAL_AREA,FIN} FSM_state;
FSM_state state,next_state;　
//DW_sqrt #(23,1)
//sqrt1 (.a(sqrt_in),.root(sqrt_out));
assign valid = (state == FIN)?1'd1:1'd0;
assign EDGE_cnt_rst = (state == FIN)?1'd1:1'd0;
always_ff@(posedge clk) begin //FSM
	if (reset) begin
		state <= FETCH_INPUT;
	end
	else begin
		state <= next_state;
	end
end

always_comb begin
	case(state) 
		FETCH_INPUT:
		begin
			if	(input_cnt == 3'd5) begin
				next_state = FENCE_FIND_EDGE;
			end
			else begin
				next_state = FETCH_INPUT;
			end
		end
		FENCE_FIND_EDGE: //sorting
		begin
			if (sort_finish) begin
				next_state = FENCE_CAL_EDGE;
			end
			else begin
				next_state = FENCE_FIND_EDGE;
			end
		end
		FENCE_CAL_EDGE: //sorting
		begin
			if (EDGE_cal_finish) begin
				next_state = FENCE_CAL_AREA;
			end
			else begin
				next_state = FENCE_CAL_EDGE;
			end
		end
		FENCE_CAL_AREA:
		begin
			if (CAL_finish) begin
				next_state = FIN;
			end
			else begin
				next_state = FENCE_CAL_AREA;
			end
		end
		FIN:next_state = FETCH_INPUT;
		default:
			next_state = FETCH_INPUT;
	endcase
end
////////////////////////////sorting
logic [2:0] EDGE_cal_cnt;
assign sort_finish = ((EDGE_cnt_2nd==4'd10)&&(EDGE_cnt==3'd3))?1'd1:1'd0;
assign EDGE_cal_finish = (EDGE_cal_cnt == 4'd5)?1'd1:1'd0;
always_ff@(posedge clk) begin //FETCH INPUT
	if(reset) begin
		input_cnt <= 3'd0;
		for (int i=0;i<5;i++) begin
			X_reg[i] <= 10'd0;
			Y_reg[i] <= 10'd0;
			R_reg[i] <= 10'd0;
		end
	end
	else if (state == FIN)begin
		input_cnt <= 3'd0;
	end
	else if (state == FETCH_INPUT) begin
		X_reg[input_cnt] <= X;
		Y_reg[input_cnt] <= Y;
		R_reg[input_cnt] <= R;
		input_cnt <= input_cnt + 3'd1;
	end
	else if (state == FENCE_FIND_EDGE) begin
		if (Outer_product[19] || Outer_product2[19]) begin // if negative then change
			X_reg[EDGE_cnt+1] <= X_reg[EDGE_cnt+2];
			Y_reg[EDGE_cnt+1] <= Y_reg[EDGE_cnt+2];
			R_reg[EDGE_cnt+1] <= R_reg[EDGE_cnt+2];
			X_reg[EDGE_cnt+2] <= X_reg[EDGE_cnt+1];
			Y_reg[EDGE_cnt+2] <= Y_reg[EDGE_cnt+1];
			R_reg[EDGE_cnt+2] <= R_reg[EDGE_cnt+1];
		end
	end
end

always_ff@(posedge clk) begin //cnt
	if (reset) begin
		EDGE_cnt <= 3'd0;
	end
	else if (EDGE_cnt_rst) begin
		EDGE_cnt <= 3'd0;
	end
	else if (EDGE_cnt == 3'd3)begin
		EDGE_cnt <= 3'd0;	
	end
	else if (state == FENCE_FIND_EDGE || state == FENCE_CAL_EDGE) begin
		EDGE_cnt <= EDGE_cnt + 3'd1;
	end
end

always_ff@(posedge clk) begin //cnt
	if (reset) begin
		EDGE_cal_cnt <= 3'd0;
	end
	else if (EDGE_cnt_rst) begin
		EDGE_cal_cnt <= 3'd0;
	end
	else if (EDGE_cal_cnt == 3'd5)begin
		EDGE_cal_cnt <= 3'd0;	
	end
	else if (state == FENCE_CAL_EDGE) begin
		EDGE_cal_cnt <= EDGE_cal_cnt + 3'd1;
	end
end

always_ff@(posedge clk) begin //cnt2
	if (reset) begin
		EDGE_cnt_2nd <= 4'd0;
	end
	else if (EDGE_cnt_rst) begin
		EDGE_cnt_2nd <= 4'd0;
	end
	else if (EDGE_cnt == 3'd3)begin
		EDGE_cnt_2nd <= EDGE_cnt_2nd+4'd1;	
	end
end
logic [9:0] X_reg_tmp1;
logic [9:0] Y_reg_tmp1;
logic [9:0] X_reg_tmp2;
logic [9:0] Y_reg_tmp2;
//assign AX = X_reg[EDGE_cnt+1]
assign Outer_product = (X_reg[EDGE_cnt+3'd1]-X_reg[0])* (Y_reg[EDGE_cnt+3'd2]-Y_reg[0]) - (X_reg[EDGE_cnt+3'd2]-X_reg[0])* (Y_reg[EDGE_cnt+3'd1]-Y_reg[0]);
//assign Outer_product = (X_reg[EDGE_cnt+3'd1]-X_reg[0])* (Y_reg[EDGE_cnt+3'd2]-Y_reg[0]) - (X_reg[EDGE_cnt+3'd2]-X_reg[0])* (Y_reg[EDGE_cnt+3'd1]-Y_reg[0]);
assign Outer_product2 = (X_reg_tmp1-X_reg[1])* (Y_reg_tmp2-Y_reg[1]) - (X_reg_tmp2-X_reg[1])* (Y_reg_tmp1-Y_reg[1]);
always_comb begin
	case(EDGE_cnt)
		3'd0:
		begin
			X_reg_tmp1 = X_reg[2];
			Y_reg_tmp1 = Y_reg[2];
			X_reg_tmp2 = X_reg[3];
			Y_reg_tmp2 = Y_reg[3];
			//Outer_product2=(X_reg[2]-X_reg[1])* (Y_reg[3]-Y_reg[1]) - (X_reg[3]-X_reg[1])* (Y_reg[2]-Y_reg[1]);
		end
		3'd1:
		begin
			X_reg_tmp1 = X_reg[3];
			Y_reg_tmp1 = Y_reg[3];
			X_reg_tmp2 = X_reg[4];
			Y_reg_tmp2 = Y_reg[4];
			//Outer_product2=(X_reg[3]-X_reg[1])* (Y_reg[4]-Y_reg[1]) - (X_reg[4]-X_reg[1])* (Y_reg[3]-Y_reg[1]);
		end
		
		3'd2:
		begin
			X_reg_tmp1 = X_reg[4];
			Y_reg_tmp1 = Y_reg[4];
			X_reg_tmp2 = X_reg[5];
			Y_reg_tmp2 = Y_reg[5];
			//Outer_product2=(X_reg[4]-X_reg[1])* (Y_reg[5]-Y_reg[1]) - (X_reg[5]-X_reg[1])* (Y_reg[4]-Y_reg[1]);
		end
		
		
		3'd3:
		begin
			X_reg_tmp1 = X_reg[5];
			Y_reg_tmp1 = Y_reg[5];
			X_reg_tmp2 = X_reg[0];
			Y_reg_tmp2 = Y_reg[0];
			//Outer_product2=(X_reg[5]-X_reg[1])* (Y_reg[0]-Y_reg[1]) - (X_reg[0]-X_reg[1])* (Y_reg[5]-Y_reg[1]);
		end
		
		default:
		begin
			X_reg_tmp1 = X_reg[2];
			Y_reg_tmp1 = Y_reg[2];
			X_reg_tmp2 = X_reg[3];
			Y_reg_tmp2 = Y_reg[3];
			//Outer_product2=(X_reg[2]-X_reg[1])* (Y_reg[3]-Y_reg[1]) - (X_reg[3]-X_reg[1])* (Y_reg[2]-Y_reg[1]);
		end
	endcase
end
///////////////////////////////////////calculate
logic [22:0] polygen_length_before;
logic [11:0] polygen_length_after;
logic [22:0] test_area_before1;
logic [22:0] test_area_before2;
logic [11:0] test_area_after1;
logic [11:0] test_area_after2;
logic [22:0] original_area;
logic [22:0] test_area;
logic [2:0] CAL_cnt;
logic [22:0] a_in;
logic [11:0] root_out;
assign CAL_finish = (CAL_cnt == 3'd5)?1'd1:1'd0;
assign CAL_cnt_rst = (state == FIN)?1'd1:1'd0;
always_ff@(posedge clk) begin //cnt2
	if (reset) begin
		CAL_cnt <= 3'd0;
	end
	else if (CAL_cnt_rst) begin
		CAL_cnt <= 3'd0;
	end
	else if (state == FENCE_CAL_AREA)begin
		CAL_cnt <= CAL_cnt+3'd1;	
	end
end

//set_implementation rpl sqrt2
DW_sqrt #(23,0)
sqrt1 (.a(a_in),.root(root_out));
//DW_sqrt #(23,0)
//sqrt2 (.a(test_area_before1),.root(test_area_after1));
DW_sqrt #(23,0)
sqrt3 (.a(test_area_before2),.root(test_area_after2));
//synopsys dc_script_begin
//set_implementation rpl sqrt1
//set_implementation rpl sqrt3
//synopsys dc_script_end
//assign delta_X = (CAL_cnt==3'd5)?({10'd0,X_reg[5]}-{10'd0,X_reg[0]}):
logic [19:0] delta_X;
logic [19:0] delta_Y;
logic [22:0] length_1;
logic [22:0] length_2;
logic [19:0] polygen_length_reg [5:0];
//assign length_1 = {13'd0,R[CAL_cnt]}+{13'd0,R[CAL_cnt+1]}+{11'd0,polygen_length_after};
//assign length_2 = {13'd0,R[CAL_cnt]}+{13'd0,R[CAL_cnt+1]};
always_ff@(posedge clk) begin
	if (reset) begin
		for(int j = 0;j<6;j++)begin
			polygen_length_reg[j] <= 20'd0;
		end
	end
	else if (state == FENCE_CAL_EDGE) begin
		polygen_length_reg[EDGE_cal_cnt] <= root_out;
	end
end
always_comb begin
	if (state == FENCE_CAL_EDGE) begin
		a_in = polygen_length_before;
		//root_out = polygen_length_after;
	end
	else begin
		a_in = test_area_before1;
		//root_out = test_area_after1;
	end
end
always_comb begin
		if (EDGE_cal_cnt == 3'd5) begin
			if (X_reg[5]>X_reg[0]) begin
				delta_X = {10'd0,X_reg[5]}-{10'd0,X_reg[0]};
			end
			else begin
				delta_X = {10'd0,X_reg[0]}-{10'd0,X_reg[5]};
			end
			if (Y_reg[5]>Y_reg[0]) begin
				delta_Y = {10'd0,Y_reg[5]}-{10'd0,Y_reg[0]};
			end
			else begin
				delta_Y = {10'd0,Y_reg[0]}-{10'd0,Y_reg[5]};
			end
		end
		else begin
			if (X_reg[EDGE_cal_cnt]>X_reg[EDGE_cal_cnt+1]) begin
				delta_X = {10'd0,X_reg[EDGE_cal_cnt]}-{10'd0,X_reg[EDGE_cal_cnt+1]};
			end
			else begin
				delta_X = {10'd0,X_reg[EDGE_cal_cnt+1]}-{10'd0,X_reg[EDGE_cal_cnt]};
			end
			if (Y_reg[EDGE_cal_cnt]>Y_reg[EDGE_cal_cnt+1]) begin
				delta_Y = {10'd0,Y_reg[EDGE_cal_cnt]}-{10'd0,Y_reg[EDGE_cal_cnt+1]};
			end
			else begin
				delta_Y = {10'd0,Y_reg[EDGE_cal_cnt+1]}-{10'd0,Y_reg[EDGE_cal_cnt]};
			end
		end
		polygen_length_before = (delta_X*delta_X)+(delta_Y*delta_Y);
end
always_comb begin
	if (CAL_cnt == 3'd5) begin
	/*
		if (X_reg[5]>X_reg[0]) begin
			delta_X = {10'd0,X_reg[5]}-{10'd0,X_reg[0]};
		end
		else begin
			delta_X = {10'd0,X_reg[0]}-{10'd0,X_reg[5]};
		end
		if (Y_reg[5]>Y_reg[0]) begin
			delta_Y = {10'd0,Y_reg[5]}-{10'd0,Y_reg[0]};
		end
		else begin
			delta_Y = {10'd0,Y_reg[0]}-{10'd0,Y_reg[5]};
		end
		polygen_length_before = (delta_X*delta_X)+(delta_Y*delta_Y);
	*/
		test_area_before1 = ({13'd0,R_reg[5]}+{13'd0,R_reg[0]}+{11'd0,polygen_length_reg[5]})*({13'd0,R_reg[0]}+{11'd0,polygen_length_reg[5]}-{13'd0,R_reg[5]});
		test_area_before2 = ({13'd0,R_reg[5]}+{11'd0,polygen_length_reg[5]}-{13'd0,R_reg[0]})*({13'd0,R_reg[5]}+{13'd0,R_reg[0]}-{11'd0,polygen_length_reg[5]});
		//polygen_length 	= sqrt(((X_reg[5]-X_reg[0])^2)+((Y_reg[5]-Y_reg[0])^2));
		//polygen_length 	= polygen_length_after;
		original_area 	= X_reg[5]*Y_reg[0]-X_reg[0]*Y_reg[5];
		test_area		= root_out * test_area_after2;
	end
	else begin
	/*
		if (X_reg[CAL_cnt]>X_reg[CAL_cnt+1]) begin
			delta_X = {10'd0,X_reg[CAL_cnt]}-{10'd0,X_reg[CAL_cnt+1]};
		end
		else begin
			delta_X = {10'd0,X_reg[CAL_cnt+1]}-{10'd0,X_reg[CAL_cnt]};
		end
		if (Y_reg[CAL_cnt]>Y_reg[CAL_cnt+1]) begin
			delta_Y = {10'd0,Y_reg[CAL_cnt]}-{10'd0,Y_reg[CAL_cnt+1]};
		end
		else begin
			delta_Y = {10'd0,Y_reg[CAL_cnt+1]}-{10'd0,Y_reg[CAL_cnt]};
		end
	
		polygen_length_before = (delta_X*delta_X)+(delta_Y*delta_Y);
	*/	
		test_area_before1 = ({13'd0,R_reg[CAL_cnt]}+{13'd0,R_reg[CAL_cnt+1]}+{11'd0,polygen_length_reg[CAL_cnt]})*({13'd0,R_reg[CAL_cnt+1]}+{11'd0,polygen_length_reg[CAL_cnt]}-{13'd0,R_reg[CAL_cnt]});
		test_area_before2 = ({13'd0,R_reg[CAL_cnt]}+{11'd0,polygen_length_reg[CAL_cnt]}-{13'd0,R_reg[CAL_cnt+1]})*({13'd0,R_reg[CAL_cnt]}+{13'd0,R_reg[CAL_cnt+1]}-{11'd0,polygen_length_reg[CAL_cnt]});
		//polygen_length 	= sqrt(((X_reg[CAL_cnt]-X_reg[CAL_cnt+1])^2)+((Y_reg[CAL_cnt]-Y_reg[CAL_cnt+1])^2));
		original_area 	= X_reg[CAL_cnt]*Y_reg[CAL_cnt+1]-X_reg[CAL_cnt+1]*Y_reg[CAL_cnt];
		test_area		= root_out * test_area_after2;
	end
end
//logic [22:0] original_area_sum;
//logic [22:0] test_area_sum;
logic [22:0] sum;
//assign is_inside = ((original_area_sum)> test_area_sum)?1'd1:1'd0;
assign is_inside = (!sum[22])?1'd1:1'd0;
always_ff@(posedge clk) begin
	if (reset) begin
		//original_area_sum	<= 23'd0;
		//test_area_sum		<= 23'd0;
		sum <= 23'd0;
	end
	else if (state == FETCH_INPUT) begin
		//original_area_sum	<= 23'd0;
		//test_area_sum		<= 23'd0;
		sum <= 23'd0;
	end
	else if (state == FENCE_CAL_AREA) begin
		//original_area_sum	<= original_area_sum+(original_area);
		//test_area_sum		<= test_area_sum+(test_area>>1);
		sum <= sum+(original_area-(test_area>>1));
	end
end


endmodule