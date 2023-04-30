module mac (instruction, multiplier, multiplicand, stall, clk, reset_n, result, protect);
input [15:0] multiplier;
input [15:0] multiplicand; 
input  clk;
input  reset_n;
input  stall;
input  [2:0] instruction;
output [31:0] result;
output [7:0] protect;
wire reset_n,clk,stall;
wire [2:0] instruction,instruction_out,instruction_out2;
wire [31:0] result_accum,saturation,result,result_next;
wire [39:0] multiplier_out_1,multiplier_out_2;
wire [7:0] protect,protect_next,protect_accum;
wire [15:0] multiplicand_out,multiplier_out;
//Add you design here
booth_multiplier bm1 (clk,reset_n,stall,multiplier_out,multiplicand_out,instruction_out,multiplier_out_1,multiplier_out_2);
FF_16 multiplier_FF (clk,reset_n,stall,multiplier,multiplier_out);
FF_16 multiplicand_FF (clk,reset_n,stall,multiplicand,multiplicand_out);
FF FF1 (clk,reset_n,stall,instruction,instruction_out);
FF FF2 (clk,reset_n,stall,instruction_out,instruction_out2);
saturator st1 (clk,reset_n,stall,result_next,protect_next,instruction_out2,saturation);
accumulator ac1 (clk,reset_n,stall,result_next,protect_next,protect_accum,result_accum);
mux m1 (clk,reset_n,stall,multiplier_out_1,multiplier_out_2,instruction_out2,protect_accum,result_accum,saturation,result,protect,result_next,protect_next);


endmodule

/////////////////////////////////////////////
module saturator(clk,reset,stall,result,protect,instruction,saturation);
input clk,reset,stall;
input [2:0] instruction;
input [31:0] result;
input [7:0] protect;
output [31:0] saturation;
wire [39:0] saturation_16before;
wire [19:0] saturation_8_1before,saturation_8_2before;
wire [31:0] sat16;
wire [15:0] sat8_1,sat8_2;
reg [31:0] saturation,saturation_next;
saturation_compare_16 sc16_1 (saturation_16before,sat16);
saturation_compare_8 sc8_1 (saturation_8_1before,sat8_1);
saturation_compare_8 sc8_2 (saturation_8_2before,sat8_2);

assign saturation_16before = {protect,result};
assign saturation_8_1before = {protect[7:4],result[31:16]};
assign saturation_8_2before = {protect[3:0],result[15:0]};

always @ (posedge clk or negedge reset) begin
	if (!reset) begin
		saturation<=32'd0;
	end
	else if (!stall) begin
		saturation<=saturation_next;
	end
end

always @ (*) begin
	case (instruction[2])
	1'b0:saturation_next=sat16;
	1'b1:saturation_next={sat8_1,sat8_2};
	default:saturation_next=32'd0;
	endcase
end
endmodule
/////////////////////////////////////////////
module accumulator(clk,reset,stall,result,protect,protect_accum,result_accum);
input clk,reset,stall;
input [31:0] result;
input [7:0] protect;
output [31:0] result_accum;
output [7:0] protect_accum;
reg [31:0] result_accum;
reg [7:0] protect_accum;

always @ (posedge clk or negedge reset) begin
	if (!reset) begin
		result_accum<=32'd0;
		protect_accum<=8'd0;
	end
	else if (!stall) begin
		result_accum<=result;
		protect_accum<=protect;
	end
end

	


endmodule
///////////////////////////////////////////
module mux (clk,reset,stall,multiplier_out_1,multiplier_out_2,instruction,protect_accum,result_accum,saturation,result,protect,result_next,protect_next);
input clk,reset,stall;
input [39:0] multiplier_out_1,multiplier_out_2;
input  [2:0] instruction;
input [31:0] result_accum;
input [7:0] protect_accum;
input [31:0] saturation;
output [31:0] result;
output [7:0] protect;
output [31:0] result_next;
output [7:0] protect_next;
wire [31:0] multi16total;
wire [39:0] multi16total_accum;
wire [39:0] multi8total_accum_1,multi8total_accum_2;
reg [31:0] result_next,result;
reg [7:0] protect_next,protect;


assign multi16total_accum = multiplier_out_1 + {protect_accum,result_accum};
assign multi8total_accum_1 = multiplier_out_2[39:20] + {protect_accum[7:4],result_accum[31:16]};
assign multi8total_accum_2 = multiplier_out_2[19:0] + {protect_accum[3:0],result_accum[15:0]};
always @ (posedge clk or negedge reset) begin
	if (!reset) begin
		result<=32'd0;
		protect<=8'd0;
	end
	else if (!stall) begin
		result<=result_next;
		protect<=protect_next;
	end
end
always @ (*) begin
	case (instruction) 
		3'b000: begin
				result_next=32'd0;
				protect_next=8'd0;
				end
		3'b001: begin
				result_next=multiplier_out_1[31:0];
				protect_next=multiplier_out_1[39:32];
				end
		3'b010: begin
				result_next=multi16total_accum[31:0];
				protect_next=multi16total_accum[39:32];
				end
		3'b011: begin
				result_next=saturation;
				protect_next=protect;
				end
		3'b100: begin
				result_next=32'd0;
				protect_next=8'd0;
				end
		3'b101: begin
				result_next={multiplier_out_2[35:20],multiplier_out_2[15:0]};
				protect_next={multiplier_out_2[39:36],multiplier_out_2[19:16]};
				end
		3'b110: begin
				result_next={multi8total_accum_1[15:0],multi8total_accum_2[15:0]};
				protect_next={multi8total_accum_1[19:16],multi8total_accum_2[19:16]};
				end
		3'b111: begin
				result_next=saturation;
				protect_next=protect;
				end
		default:begin
				result_next=32'd0;
				protect_next=8'd0;
				end
	endcase
end
endmodule
///////////////////////////////////////////
module saturation_compare_16(din,dout);
input [39:0]  din;
output [31:0] dout;
wire [31:0] dout;
//assign dout = (din > 40'h007FFFFFFF)?32'h7FFFFFFF:((din < 40'hFF80000000)?32'h80000000:din[31:0]);
assign dout = (din[39] == 1'b0)?((din > 40'h007FFFFFFF)?32'h7FFFFFFF:din[31:0]):((din < 40'hFF80000000)?32'h80000000:din[31:0]);
endmodule
///////////////////////////////////////////
module saturation_compare_8(din,dout);
input [19:0] din;
output [15:0] dout;
wire [15:0] dout;
//assign dout = (din > 20'h07FFF)?16'h7FFF:((din < 20'hF8000)?16'h8000:din[15:0]);
assign dout = (din[19] == 1'b0)?((din > 20'h07FFF)?16'h7FFF:din[15:0]):((din < 20'hF8000)?16'h8000:din[15:0]);
endmodule
////////////////////////////////////////
module FF(clk,reset,stall,din,dout);
input clk,reset,stall;
input [2:0] din;
output [2:0] dout;
reg [2:0] dout;
always @ (posedge clk or negedge reset) begin
	if (!reset) begin
		dout<=3'd0;
	end
	else if (!stall) begin
		dout<=din;
	end
end
endmodule 
////////////////////////////////////////
module FF_16(clk,reset,stall,din,dout);
input clk,reset,stall;
input [15:0] din;
output [15:0] dout;
reg [15:0] dout;
always @ (posedge clk or negedge reset) begin
	if (!reset) begin
		dout<=16'd0;
	end
	else if (!stall) begin
		dout<=din;
	end
end
endmodule 
////////////////////////////////////////
module booth_multiplier(clk,reset,stall,multiplier,multiplicand,instruction,multiplier_out_1,multiplier_out_2);
input clk,reset,stall;
input [15:0] multiplier,multiplicand;
input  [2:0] instruction;
output [39:0] multiplier_out_1,multiplier_out_2;
wire [15:0] multiplicand;
wire [2:0] bit_pair1,bit_pair2,bit_pair3,bit_pair4_16,bit_pair4_8,bit_pair5,bit_pair6,bit_pair7,bit_pair8;
wire [1:0] recode_bit1_next,recode_bit2_next,recode_bit3_next,recode_bit4_16_next,
recode_bit4_8_next,recode_bit5_next,recode_bit6_next,recode_bit7_next,
recode_bit8_next;
wire [39:0] encode_out16_1,encode_out16_2,encode_out16_3,encode_out16_4,encode_out16_5,encode_out16_6,encode_out16_7,
encode_out16_8;
wire [19:0] encode_out8_1,encode_out8_2,encode_out8_3,encode_out8_4,encode_out8_5,encode_out8_6,encode_out8_7,encode_out8_8;
wire [39:0] encode_out16_1_shift,encode_out16_2_shift,encode_out16_3_shift,encode_out16_4_shift,
encode_out16_5_shift,encode_out16_6_shift,encode_out16_7_shift,encode_out16_8_shift;
wire [19:0] encode_out8_1_shift,encode_out8_2_shift,encode_out8_3_shift,encode_out8_4_shift,
encode_out8_5_shift,encode_out8_6_shift,encode_out8_7_shift,encode_out8_8_shift;
wire [1:0] recode_bit1,recode_bit2,recode_bit3,recode_bit4_16,recode_bit4_8,recode_bit5,recode_bit6,recode_bit7,
recode_bit8;
wire [39:0] multiplier_out_16,multiplier_out_8;
wire [19:0] multiplier_out_8_1,multiplier_out_8_2;
reg [39:0] multiplier_out_1,multiplier_out_2;
wire [8:0] neg;
wire [8:0] neg_next;
assign bit_pair1 = multiplier[15:13];
assign bit_pair2 = multiplier[13:11];
assign bit_pair3 = multiplier[11:9];
assign bit_pair4_16 = multiplier[9:7];
assign bit_pair4_8 = {multiplier[9:8],1'b0};
assign bit_pair5 = multiplier[7:5];
assign bit_pair6 = multiplier[5:3];
assign bit_pair7 = multiplier[3:1];
assign bit_pair8 = {multiplier[1:0],1'b0};

assign encode_out16_1_shift = encode_out16_1<<14;
assign encode_out16_2_shift = encode_out16_2<<12;
assign encode_out16_3_shift = encode_out16_3<<10;
assign encode_out16_4_shift = encode_out16_4<<8;
assign encode_out16_5_shift = encode_out16_5<<6;
assign encode_out16_6_shift = encode_out16_6<<4;
assign encode_out16_7_shift = encode_out16_7<<2;
assign encode_out16_8_shift = encode_out16_8<<0;

assign encode_out8_1_shift = encode_out8_1<<6;
assign encode_out8_2_shift = encode_out8_2<<4;
assign encode_out8_3_shift = encode_out8_3<<2;
assign encode_out8_4_shift = encode_out8_4<<0;
assign encode_out8_5_shift = encode_out8_5<<6;
assign encode_out8_6_shift = encode_out8_6<<4;
assign encode_out8_7_shift = encode_out8_7<<2;
assign encode_out8_8_shift = encode_out8_8<<0;

assign multiplier_out_16 = (encode_out16_1_shift+encode_out16_2_shift)+(encode_out16_3_shift+encode_out16_4_shift)+(encode_out16_5_shift+encode_out16_6_shift)+(encode_out16_7_shift+encode_out16_8_shift);
assign multiplier_out_8_1 = (encode_out8_1_shift+encode_out8_2_shift)+(encode_out8_3_shift+encode_out8_4_shift);
assign multiplier_out_8_2 = (encode_out8_5_shift+encode_out8_6_shift)+(encode_out8_7_shift+encode_out8_8_shift);
assign multiplier_out_8 = {multiplier_out_8_1,multiplier_out_8_2};
/*
booth_table bt1 (bit_pair1,neg_next[0],recode_bit1_next);
booth_table bt2 (bit_pair2,neg_next[1],recode_bit2_next);
booth_table bt3 (bit_pair3,neg_next[2],recode_bit3_next);
booth_table bt4_16 (bit_pair4_16,neg_next[3],recode_bit4_16_next);
booth_table bt4_8(bit_pair4_8,neg_next[4],recode_bit4_8_next);
booth_table bt5 (bit_pair5,neg_next[5],recode_bit5_next);
booth_table bt6 (bit_pair6,neg_next[6],recode_bit6_next);
booth_table bt7 (bit_pair7,neg_next[7],recode_bit7_next);
booth_table bt8 (bit_pair8,neg_next[8],recode_bit8_next);
*/
booth_table bt1 (bit_pair1,neg[0],recode_bit1);
booth_table bt2 (bit_pair2,neg[1],recode_bit2);
booth_table bt3 (bit_pair3,neg[2],recode_bit3);
booth_table bt4_16 (bit_pair4_16,neg[3],recode_bit4_16);
booth_table bt4_8(bit_pair4_8,neg[4],recode_bit4_8);
booth_table bt5 (bit_pair5,neg[5],recode_bit5);
booth_table bt6 (bit_pair6,neg[6],recode_bit6);
booth_table bt7 (bit_pair7,neg[7],recode_bit7);
booth_table bt8 (bit_pair8,neg[8],recode_bit8);

booth_encode_16bit be16_1 (multiplicand,neg[0],recode_bit1,encode_out16_1);
booth_encode_16bit be16_2 (multiplicand,neg[1],recode_bit2,encode_out16_2);
booth_encode_16bit be16_3 (multiplicand,neg[2],recode_bit3,encode_out16_3);
booth_encode_16bit be16_4 (multiplicand,neg[3],recode_bit4_16,encode_out16_4);
booth_encode_16bit be16_5 (multiplicand,neg[5],recode_bit5,encode_out16_5);
booth_encode_16bit be16_6 (multiplicand,neg[6],recode_bit6,encode_out16_6);
booth_encode_16bit be16_7 (multiplicand,neg[7],recode_bit7,encode_out16_7);
booth_encode_16bit be16_8 (multiplicand,neg[8],recode_bit8,encode_out16_8);

booth_encode_8bit be8_1 (multiplicand[15:8],neg[0],recode_bit1,encode_out8_1);
booth_encode_8bit be8_2 (multiplicand[15:8],neg[1],recode_bit2,encode_out8_2);
booth_encode_8bit be8_3 (multiplicand[15:8],neg[2],recode_bit3,encode_out8_3);
booth_encode_8bit be8_4 (multiplicand[15:8],neg[4],recode_bit4_8,encode_out8_4);
booth_encode_8bit be8_5 (multiplicand[7:0],neg[5],recode_bit5,encode_out8_5);
booth_encode_8bit be8_6 (multiplicand[7:0],neg[6],recode_bit6,encode_out8_6);
booth_encode_8bit be8_7 (multiplicand[7:0],neg[7],recode_bit7,encode_out8_7);
booth_encode_8bit be8_8 (multiplicand[7:0],neg[8],recode_bit8,encode_out8_8);


/*
always @ (posedge clk or negedge reset) begin
	if (!reset) begin
		neg<=9'd0;
		recode_bit1<=2'd0;
		recode_bit2<=2'd0;
		recode_bit3<=2'd0;
		recode_bit4_16<=2'd0;
		recode_bit4_8<=2'd0;
		recode_bit5<=2'd0;
		recode_bit6<=2'd0;
		recode_bit7<=2'd0;
		recode_bit8<=2'd0;
	end
	else if (!stall) begin
		neg<=neg_next;
		recode_bit1<=recode_bit1_next;
		recode_bit2<=recode_bit2_next;
		recode_bit3<=recode_bit3_next;
		recode_bit4_16<=recode_bit4_16_next;
		recode_bit4_8<=recode_bit4_8_next;
		recode_bit5<=recode_bit5_next;
		recode_bit6<=recode_bit6_next;
		recode_bit7<=recode_bit7_next;
		recode_bit8<=recode_bit8_next;
	end
end
*/
always @ (posedge clk or negedge reset) begin
	if (!reset) begin
		multiplier_out_1<=32'd0;
		multiplier_out_2<=32'd0;
	end
	else if (!stall) begin
		multiplier_out_1<=multiplier_out_16;
		multiplier_out_2<=multiplier_out_8;
	end
end
endmodule
////////////////////////////////////////
module booth_table(din,neg,recode_bit);
input [2:0] din;
output [1:0] recode_bit;
output neg;
reg neg;
reg [1:0] recode_bit;
always @ (*) begin
	case(din)
		3'b000:begin
				recode_bit = 2'b00; //0
				neg = 1'b0;
				end
		3'b001:begin
				recode_bit = 2'b01; //1
				neg = 1'b0;
				end
		3'b010:begin
				recode_bit = 2'b01; //1
				neg = 1'b0;
				end
		3'b011:begin
				recode_bit = 2'b10; //2
				neg = 1'b0;
				end
		3'b100:begin
				recode_bit = 2'b10; //-2
				neg = 1'b1;
				end
		3'b101:begin
				recode_bit = 2'b01; //-1
				neg = 1'b1;
				end
		3'b110:begin
				recode_bit = 2'b01; //-1
				neg = 1'b1;
				end
		3'b111:begin
				recode_bit = 2'b00; //0
				neg = 1'b0;
				end
		default:begin
				recode_bit = 2'b00; //0
				neg = 1'b0;
				end
	endcase				
end
endmodule
////////////////////////////////////////
module booth_encode_16bit(multiplicand,neg,recode_bit,encode_out);
input [15:0] multiplicand;
input neg;
input [1:0] recode_bit;
output [39:0] encode_out;
wire [39:0] multiplicand_expand;
wire [2:0] sel;
reg [39:0] encode_out;
wire [1:0] mu2;
wire [3:0] mu4;
wire [15:0] mu16;
assign mu2 = {multiplicand[15],multiplicand[15]};
assign mu4 = {mu2,mu2};
assign mu16 = {mu4,mu4,mu4,mu4};
assign multiplicand_expand = {mu16,mu4,mu4,multiplicand}; //40bit
assign sel = {neg,recode_bit};
always @ (*) begin
	case (sel)
		3'b000:encode_out = 40'd0;							//0
		3'b001:encode_out = multiplicand_expand;			//1
		3'b010:encode_out = multiplicand_expand<<1;			//2
		3'b110:encode_out = ((~multiplicand_expand)+1)<<1;	//-2
		3'b101:encode_out = (~multiplicand_expand)+1;		//-1
		default:encode_out = 40'd0;
	endcase
end
endmodule
////////////////////////////////////////

////////////////////////////////////////
module booth_encode_8bit(multiplicand,neg,recode_bit,encode_out);
input [7:0] multiplicand;
input neg;
input [1:0] recode_bit;
output [19:0] encode_out;
wire [19:0] multiplicand_expand;
wire [2:0] sel;
wire [1:0] mu2;
reg [19:0] encode_out;
assign mu2 = {multiplicand[7],multiplicand[7]};
assign multiplicand_expand = {mu2,mu2,mu2,mu2,mu2,mu2,multiplicand};//20bit
assign sel = {neg,recode_bit};
always @ (*) begin
	case (sel)
		3'b000:encode_out = 20'd0;							//0
		3'b001:encode_out = multiplicand_expand;			//1
		3'b010:encode_out = multiplicand_expand<<1;			//2
		3'b110:encode_out = ((~multiplicand_expand)+1)<<1;	//-2
		3'b101:encode_out = (~multiplicand_expand)+1;		//-1
		default:encode_out = 20'd0;
	endcase
end
endmodule
////////////////////////////////////////
