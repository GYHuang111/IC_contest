/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : T-2022.03
// Date      : Fri Jun 24 21:36:23 2022
/////////////////////////////////////////////////////////////


module FSM ( reset, clk, start_flag, state );
  output [1:0] state;
  input reset, clk, start_flag;
  wire   N7, n1;
  assign state[1] = 1'b0;

  DFFQX1 \state_reg[0]  ( .D(N7), .CK(clk), .Q(state[0]) );
  NOR2X1 U4 ( .A(n1), .B(reset), .Y(N7) );
  NOR2X1 U5 ( .A(start_flag), .B(state[0]), .Y(n1) );
endmodule


module counter ( reset, clk, count );
  output [3:0] count;
  input reset, clk;
  wire   N2, N3, N4, n2, n3, n4, n1;

  DFFRX1 \count_reg[3]  ( .D(N4), .CK(clk), .RN(n1), .Q(count[3]) );
  DFFRX1 \count_reg[2]  ( .D(N3), .CK(clk), .RN(n1), .Q(count[2]) );
  DFFRX1 \count_reg[0]  ( .D(n2), .CK(clk), .RN(n1), .Q(count[0]), .QN(n2) );
  DFFRX1 \count_reg[1]  ( .D(N2), .CK(clk), .RN(n1), .Q(count[1]) );
  NAND2X1 U3 ( .A(count[1]), .B(count[0]), .Y(n4) );
  XOR2X1 U4 ( .A(count[3]), .B(n3), .Y(N4) );
  NOR2BX1 U5 ( .AN(count[2]), .B(n4), .Y(n3) );
  XNOR2X1 U6 ( .A(count[2]), .B(n4), .Y(N3) );
  XNOR2X1 U7 ( .A(count[1]), .B(n2), .Y(N2) );
  CLKINVX1 U8 ( .A(reset), .Y(n1) );
endmodule


module FIFO ( in, reset, clk, FF0, FF1, FF2, FF3, FF4, FF5, FF6, FF7, FF8, FF9, 
        FF10, FF11 );
  input [15:0] in;
  output [15:0] FF0;
  output [15:0] FF1;
  output [15:0] FF2;
  output [15:0] FF3;
  output [15:0] FF4;
  output [15:0] FF5;
  output [15:0] FF6;
  output [15:0] FF7;
  output [15:0] FF8;
  output [15:0] FF9;
  output [15:0] FF10;
  output [15:0] FF11;
  input reset, clk;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23;

  DFFRX4 \FF5_reg[1]  ( .D(FF4[1]), .CK(clk), .RN(n21), .Q(FF5[1]) );
  DFFRX4 \FF8_reg[1]  ( .D(FF7[1]), .CK(clk), .RN(n21), .Q(FF8[1]) );
  DFFRX4 \FF10_reg[1]  ( .D(FF9[1]), .CK(clk), .RN(n21), .Q(FF10[1]) );
  DFFRX1 \FF0_reg[15]  ( .D(in[15]), .CK(clk), .RN(n7), .Q(FF0[15]) );
  DFFRX1 \FF2_reg[15]  ( .D(FF1[15]), .CK(clk), .RN(n7), .Q(FF2[15]) );
  DFFRX1 \FF1_reg[15]  ( .D(FF0[15]), .CK(clk), .RN(n7), .Q(FF1[15]) );
  DFFRX1 \FF0_reg[14]  ( .D(in[14]), .CK(clk), .RN(n8), .Q(FF0[14]) );
  DFFRX1 \FF2_reg[14]  ( .D(FF1[14]), .CK(clk), .RN(n8), .Q(FF2[14]) );
  DFFRX1 \FF1_reg[14]  ( .D(FF0[14]), .CK(clk), .RN(n8), .Q(FF1[14]) );
  DFFRX1 \FF0_reg[13]  ( .D(in[13]), .CK(clk), .RN(n9), .Q(FF0[13]) );
  DFFRX1 \FF2_reg[13]  ( .D(FF1[13]), .CK(clk), .RN(n9), .Q(FF2[13]) );
  DFFRX1 \FF1_reg[13]  ( .D(FF0[13]), .CK(clk), .RN(n9), .Q(FF1[13]) );
  DFFRX1 \FF0_reg[12]  ( .D(in[12]), .CK(clk), .RN(n10), .Q(FF0[12]) );
  DFFRX1 \FF2_reg[12]  ( .D(FF1[12]), .CK(clk), .RN(n10), .Q(FF2[12]) );
  DFFRX1 \FF1_reg[12]  ( .D(FF0[12]), .CK(clk), .RN(n10), .Q(FF1[12]) );
  DFFRX1 \FF0_reg[11]  ( .D(in[11]), .CK(clk), .RN(n11), .Q(FF0[11]) );
  DFFRX1 \FF2_reg[11]  ( .D(FF1[11]), .CK(clk), .RN(n11), .Q(FF2[11]) );
  DFFRX1 \FF0_reg[10]  ( .D(in[10]), .CK(clk), .RN(n12), .Q(FF0[10]) );
  DFFRX1 \FF2_reg[10]  ( .D(FF1[10]), .CK(clk), .RN(n12), .Q(FF2[10]) );
  DFFRX1 \FF1_reg[11]  ( .D(FF0[11]), .CK(clk), .RN(n11), .Q(FF1[11]) );
  DFFRX1 \FF1_reg[10]  ( .D(FF0[10]), .CK(clk), .RN(n12), .Q(FF1[10]) );
  DFFRX1 \FF0_reg[9]  ( .D(in[9]), .CK(clk), .RN(n13), .Q(FF0[9]) );
  DFFRX1 \FF2_reg[9]  ( .D(FF1[9]), .CK(clk), .RN(n13), .Q(FF2[9]) );
  DFFRX1 \FF1_reg[9]  ( .D(FF0[9]), .CK(clk), .RN(n13), .Q(FF1[9]) );
  DFFRX1 \FF1_reg[8]  ( .D(FF0[8]), .CK(clk), .RN(n14), .Q(FF1[8]) );
  DFFRX1 \FF0_reg[8]  ( .D(in[8]), .CK(clk), .RN(n14), .Q(FF0[8]) );
  DFFRX1 \FF2_reg[8]  ( .D(FF1[8]), .CK(clk), .RN(n14), .Q(FF2[8]) );
  DFFRX1 \FF0_reg[7]  ( .D(in[7]), .CK(clk), .RN(n15), .Q(FF0[7]) );
  DFFRX1 \FF2_reg[7]  ( .D(FF1[7]), .CK(clk), .RN(n15), .Q(FF2[7]) );
  DFFRX1 \FF1_reg[7]  ( .D(FF0[7]), .CK(clk), .RN(n15), .Q(FF1[7]) );
  DFFRX1 \FF0_reg[6]  ( .D(in[6]), .CK(clk), .RN(n16), .Q(FF0[6]) );
  DFFRX1 \FF2_reg[6]  ( .D(FF1[6]), .CK(clk), .RN(n16), .Q(FF2[6]) );
  DFFRX1 \FF1_reg[6]  ( .D(FF0[6]), .CK(clk), .RN(n16), .Q(FF1[6]) );
  DFFRX1 \FF0_reg[5]  ( .D(in[5]), .CK(clk), .RN(n17), .Q(FF0[5]) );
  DFFRX1 \FF2_reg[5]  ( .D(FF1[5]), .CK(clk), .RN(n17), .Q(FF2[5]) );
  DFFRX1 \FF1_reg[5]  ( .D(FF0[5]), .CK(clk), .RN(n17), .Q(FF1[5]) );
  DFFRX1 \FF1_reg[4]  ( .D(FF0[4]), .CK(clk), .RN(n18), .Q(FF1[4]) );
  DFFRX1 \FF0_reg[4]  ( .D(in[4]), .CK(clk), .RN(n18), .Q(FF0[4]) );
  DFFRX1 \FF2_reg[4]  ( .D(FF1[4]), .CK(clk), .RN(n18), .Q(FF2[4]) );
  DFFRX1 \FF0_reg[3]  ( .D(in[3]), .CK(clk), .RN(n19), .Q(FF0[3]) );
  DFFRX1 \FF2_reg[3]  ( .D(FF1[3]), .CK(clk), .RN(n19), .Q(FF2[3]) );
  DFFRX1 \FF1_reg[3]  ( .D(FF0[3]), .CK(clk), .RN(n19), .Q(FF1[3]) );
  DFFRX1 \FF2_reg[2]  ( .D(FF1[2]), .CK(clk), .RN(n20), .Q(FF2[2]) );
  DFFRX1 \FF1_reg[0]  ( .D(FF0[0]), .CK(clk), .RN(n22), .Q(FF1[0]) );
  DFFRX1 \FF2_reg[1]  ( .D(FF1[1]), .CK(clk), .RN(n21), .Q(FF2[1]) );
  DFFRX1 \FF2_reg[0]  ( .D(FF1[0]), .CK(clk), .RN(n22), .Q(FF2[0]) );
  DFFRX1 \FF3_reg[15]  ( .D(FF2[15]), .CK(clk), .RN(n7), .Q(FF3[15]) );
  DFFRX1 \FF3_reg[13]  ( .D(FF2[13]), .CK(clk), .RN(n9), .Q(FF3[13]) );
  DFFRX1 \FF4_reg[15]  ( .D(FF3[15]), .CK(clk), .RN(n7), .Q(FF4[15]) );
  DFFRX1 \FF8_reg[15]  ( .D(FF7[15]), .CK(clk), .RN(n7), .Q(FF8[15]) );
  DFFRX1 \FF6_reg[15]  ( .D(FF5[15]), .CK(clk), .RN(n7), .Q(FF6[15]) );
  DFFRX1 \FF10_reg[15]  ( .D(FF9[15]), .CK(clk), .RN(n7), .Q(FF10[15]) );
  DFFRX1 \FF3_reg[11]  ( .D(FF2[11]), .CK(clk), .RN(n11), .Q(FF3[11]) );
  DFFRX1 \FF4_reg[14]  ( .D(FF3[14]), .CK(clk), .RN(n8), .Q(FF4[14]) );
  DFFRX1 \FF6_reg[14]  ( .D(FF5[14]), .CK(clk), .RN(n8), .Q(FF6[14]) );
  DFFRX1 \FF8_reg[14]  ( .D(FF7[14]), .CK(clk), .RN(n8), .Q(FF8[14]) );
  DFFRX1 \FF10_reg[14]  ( .D(FF9[14]), .CK(clk), .RN(n8), .Q(FF10[14]) );
  DFFRX1 \FF4_reg[13]  ( .D(FF3[13]), .CK(clk), .RN(n9), .Q(FF4[13]) );
  DFFRX1 \FF6_reg[13]  ( .D(FF5[13]), .CK(clk), .RN(n9), .Q(FF6[13]) );
  DFFRX1 \FF8_reg[13]  ( .D(FF7[13]), .CK(clk), .RN(n9), .Q(FF8[13]) );
  DFFRX1 \FF10_reg[13]  ( .D(FF9[13]), .CK(clk), .RN(n9), .Q(FF10[13]) );
  DFFRX1 \FF3_reg[9]  ( .D(FF2[9]), .CK(clk), .RN(n13), .Q(FF3[9]) );
  DFFRX1 \FF3_reg[8]  ( .D(FF2[8]), .CK(clk), .RN(n14), .Q(FF3[8]) );
  DFFRX1 \FF4_reg[12]  ( .D(FF3[12]), .CK(clk), .RN(n10), .Q(FF4[12]) );
  DFFRX1 \FF6_reg[12]  ( .D(FF5[12]), .CK(clk), .RN(n10), .Q(FF6[12]) );
  DFFRX1 \FF8_reg[12]  ( .D(FF7[12]), .CK(clk), .RN(n10), .Q(FF8[12]) );
  DFFRX1 \FF10_reg[12]  ( .D(FF9[12]), .CK(clk), .RN(n10), .Q(FF10[12]) );
  DFFRX1 \FF4_reg[11]  ( .D(FF3[11]), .CK(clk), .RN(n11), .Q(FF4[11]) );
  DFFRX1 \FF6_reg[11]  ( .D(FF5[11]), .CK(clk), .RN(n11), .Q(FF6[11]) );
  DFFRX1 \FF8_reg[11]  ( .D(FF7[11]), .CK(clk), .RN(n11), .Q(FF8[11]) );
  DFFRX1 \FF10_reg[11]  ( .D(FF9[11]), .CK(clk), .RN(n11), .Q(FF10[11]) );
  DFFRX1 \FF3_reg[7]  ( .D(FF2[7]), .CK(clk), .RN(n15), .Q(FF3[7]) );
  DFFRX1 \FF4_reg[10]  ( .D(FF3[10]), .CK(clk), .RN(n12), .Q(FF4[10]) );
  DFFRX1 \FF6_reg[10]  ( .D(FF5[10]), .CK(clk), .RN(n12), .Q(FF6[10]) );
  DFFRX1 \FF8_reg[10]  ( .D(FF7[10]), .CK(clk), .RN(n12), .Q(FF8[10]) );
  DFFRX1 \FF10_reg[10]  ( .D(FF9[10]), .CK(clk), .RN(n12), .Q(FF10[10]) );
  DFFRX1 \FF4_reg[9]  ( .D(FF3[9]), .CK(clk), .RN(n13), .Q(FF4[9]) );
  DFFRX1 \FF6_reg[9]  ( .D(FF5[9]), .CK(clk), .RN(n13), .Q(FF6[9]) );
  DFFRX1 \FF8_reg[9]  ( .D(FF7[9]), .CK(clk), .RN(n13), .Q(FF8[9]) );
  DFFRX1 \FF10_reg[9]  ( .D(FF9[9]), .CK(clk), .RN(n13), .Q(FF10[9]) );
  DFFRX1 \FF3_reg[5]  ( .D(FF2[5]), .CK(clk), .RN(n17), .Q(FF3[5]) );
  DFFRX1 \FF3_reg[4]  ( .D(FF2[4]), .CK(clk), .RN(n18), .Q(FF3[4]) );
  DFFRX1 \FF4_reg[8]  ( .D(FF3[8]), .CK(clk), .RN(n14), .Q(FF4[8]) );
  DFFRX1 \FF6_reg[8]  ( .D(FF5[8]), .CK(clk), .RN(n14), .Q(FF6[8]) );
  DFFRX1 \FF8_reg[8]  ( .D(FF7[8]), .CK(clk), .RN(n14), .Q(FF8[8]) );
  DFFRX1 \FF10_reg[8]  ( .D(FF9[8]), .CK(clk), .RN(n14), .Q(FF10[8]) );
  DFFRX1 \FF4_reg[7]  ( .D(FF3[7]), .CK(clk), .RN(n15), .Q(FF4[7]) );
  DFFRX1 \FF6_reg[7]  ( .D(FF5[7]), .CK(clk), .RN(n15), .Q(FF6[7]) );
  DFFRX1 \FF8_reg[7]  ( .D(FF7[7]), .CK(clk), .RN(n15), .Q(FF8[7]) );
  DFFRX1 \FF10_reg[7]  ( .D(FF9[7]), .CK(clk), .RN(n15), .Q(FF10[7]) );
  DFFRX1 \FF3_reg[2]  ( .D(FF2[2]), .CK(clk), .RN(n20), .Q(FF3[2]) );
  DFFRX1 \FF3_reg[1]  ( .D(FF2[1]), .CK(clk), .RN(n21), .Q(FF3[1]) );
  DFFRX1 \FF4_reg[5]  ( .D(FF3[5]), .CK(clk), .RN(n17), .Q(FF4[5]) );
  DFFRX1 \FF6_reg[5]  ( .D(FF5[5]), .CK(clk), .RN(n17), .Q(FF6[5]) );
  DFFRX1 \FF8_reg[5]  ( .D(FF7[5]), .CK(clk), .RN(n17), .Q(FF8[5]) );
  DFFRX1 \FF10_reg[5]  ( .D(FF9[5]), .CK(clk), .RN(n17), .Q(FF10[5]) );
  DFFRXL \FF9_reg[15]  ( .D(FF8[15]), .CK(clk), .RN(n7), .Q(FF9[15]) );
  DFFRXL \FF9_reg[14]  ( .D(FF8[14]), .CK(clk), .RN(n8), .Q(FF9[14]) );
  DFFRXL \FF3_reg[14]  ( .D(FF2[14]), .CK(clk), .RN(n8), .Q(FF3[14]) );
  DFFRXL \FF7_reg[14]  ( .D(FF6[14]), .CK(clk), .RN(n8), .Q(FF7[14]) );
  DFFRXL \FF5_reg[15]  ( .D(FF4[15]), .CK(clk), .RN(n7), .Q(FF5[15]) );
  DFFRXL \FF11_reg[15]  ( .D(FF10[15]), .CK(clk), .RN(n7), .Q(FF11[15]) );
  DFFRXL \FF9_reg[13]  ( .D(FF8[13]), .CK(clk), .RN(n9), .Q(FF9[13]) );
  DFFRXL \FF7_reg[13]  ( .D(FF6[13]), .CK(clk), .RN(n9), .Q(FF7[13]) );
  DFFRXL \FF5_reg[14]  ( .D(FF4[14]), .CK(clk), .RN(n8), .Q(FF5[14]) );
  DFFRXL \FF9_reg[12]  ( .D(FF8[12]), .CK(clk), .RN(n10), .Q(FF9[12]) );
  DFFRXL \FF3_reg[12]  ( .D(FF2[12]), .CK(clk), .RN(n10), .Q(FF3[12]) );
  DFFRXL \FF7_reg[12]  ( .D(FF6[12]), .CK(clk), .RN(n10), .Q(FF7[12]) );
  DFFRXL \FF11_reg[14]  ( .D(FF10[14]), .CK(clk), .RN(n8), .Q(FF11[14]) );
  DFFRXL \FF5_reg[13]  ( .D(FF4[13]), .CK(clk), .RN(n9), .Q(FF5[13]) );
  DFFRXL \FF9_reg[11]  ( .D(FF8[11]), .CK(clk), .RN(n11), .Q(FF9[11]) );
  DFFRXL \FF11_reg[13]  ( .D(FF10[13]), .CK(clk), .RN(n9), .Q(FF11[13]) );
  DFFRXL \FF7_reg[11]  ( .D(FF6[11]), .CK(clk), .RN(n11), .Q(FF7[11]) );
  DFFRXL \FF5_reg[12]  ( .D(FF4[12]), .CK(clk), .RN(n10), .Q(FF5[12]) );
  DFFRXL \FF9_reg[10]  ( .D(FF8[10]), .CK(clk), .RN(n12), .Q(FF9[10]) );
  DFFRXL \FF11_reg[12]  ( .D(FF10[12]), .CK(clk), .RN(n10), .Q(FF11[12]) );
  DFFRXL \FF7_reg[10]  ( .D(FF6[10]), .CK(clk), .RN(n12), .Q(FF7[10]) );
  DFFRXL \FF11_reg[11]  ( .D(FF10[11]), .CK(clk), .RN(n11), .Q(FF11[11]) );
  DFFRXL \FF5_reg[11]  ( .D(FF4[11]), .CK(clk), .RN(n11), .Q(FF5[11]) );
  DFFRXL \FF9_reg[9]  ( .D(FF8[9]), .CK(clk), .RN(n13), .Q(FF9[9]) );
  DFFRXL \FF7_reg[9]  ( .D(FF6[9]), .CK(clk), .RN(n13), .Q(FF7[9]) );
  DFFRXL \FF11_reg[10]  ( .D(FF10[10]), .CK(clk), .RN(n12), .Q(FF11[10]) );
  DFFRXL \FF5_reg[10]  ( .D(FF4[10]), .CK(clk), .RN(n12), .Q(FF5[10]) );
  DFFRXL \FF9_reg[8]  ( .D(FF8[8]), .CK(clk), .RN(n14), .Q(FF9[8]) );
  DFFRXL \FF7_reg[8]  ( .D(FF6[8]), .CK(clk), .RN(n14), .Q(FF7[8]) );
  DFFRXL \FF11_reg[9]  ( .D(FF10[9]), .CK(clk), .RN(n13), .Q(FF11[9]) );
  DFFRXL \FF5_reg[9]  ( .D(FF4[9]), .CK(clk), .RN(n13), .Q(FF5[9]) );
  DFFRXL \FF9_reg[7]  ( .D(FF8[7]), .CK(clk), .RN(n15), .Q(FF9[7]) );
  DFFRXL \FF7_reg[7]  ( .D(FF6[7]), .CK(clk), .RN(n15), .Q(FF7[7]) );
  DFFRXL \FF11_reg[8]  ( .D(FF10[8]), .CK(clk), .RN(n14), .Q(FF11[8]) );
  DFFRXL \FF9_reg[6]  ( .D(FF8[6]), .CK(clk), .RN(n16), .Q(FF9[6]) );
  DFFRXL \FF7_reg[6]  ( .D(FF6[6]), .CK(clk), .RN(n16), .Q(FF7[6]) );
  DFFRXL \FF11_reg[7]  ( .D(FF10[7]), .CK(clk), .RN(n15), .Q(FF11[7]) );
  DFFRXL \FF5_reg[7]  ( .D(FF4[7]), .CK(clk), .RN(n15), .Q(FF5[7]) );
  DFFRXL \FF9_reg[5]  ( .D(FF8[5]), .CK(clk), .RN(n17), .Q(FF9[5]) );
  DFFRXL \FF7_reg[5]  ( .D(FF6[5]), .CK(clk), .RN(n17), .Q(FF7[5]) );
  DFFRXL \FF5_reg[6]  ( .D(FF4[6]), .CK(clk), .RN(n16), .Q(FF5[6]) );
  DFFRXL \FF11_reg[6]  ( .D(FF10[6]), .CK(clk), .RN(n16), .Q(FF11[6]) );
  DFFRXL \FF9_reg[4]  ( .D(FF8[4]), .CK(clk), .RN(n18), .Q(FF9[4]) );
  DFFRXL \FF7_reg[4]  ( .D(FF6[4]), .CK(clk), .RN(n18), .Q(FF7[4]) );
  DFFRXL \FF5_reg[5]  ( .D(FF4[5]), .CK(clk), .RN(n17), .Q(FF5[5]) );
  DFFRXL \FF11_reg[5]  ( .D(FF10[5]), .CK(clk), .RN(n17), .Q(FF11[5]) );
  DFFRXL \FF9_reg[3]  ( .D(FF8[3]), .CK(clk), .RN(n19), .Q(FF9[3]) );
  DFFRXL \FF3_reg[3]  ( .D(FF2[3]), .CK(clk), .RN(n19), .Q(FF3[3]) );
  DFFRXL \FF7_reg[3]  ( .D(FF6[3]), .CK(clk), .RN(n19), .Q(FF7[3]) );
  DFFRXL \FF5_reg[4]  ( .D(FF4[4]), .CK(clk), .RN(n18), .Q(FF5[4]) );
  DFFRXL \FF11_reg[4]  ( .D(FF10[4]), .CK(clk), .RN(n18), .Q(FF11[4]) );
  DFFRXL \FF9_reg[2]  ( .D(FF8[2]), .CK(clk), .RN(n20), .Q(FF9[2]) );
  DFFRXL \FF7_reg[2]  ( .D(FF6[2]), .CK(clk), .RN(n20), .Q(FF7[2]) );
  DFFRXL \FF9_reg[1]  ( .D(FF8[1]), .CK(clk), .RN(n21), .Q(FF9[1]) );
  DFFRXL \FF7_reg[1]  ( .D(FF6[1]), .CK(clk), .RN(n21), .Q(FF7[1]) );
  DFFRXL \FF7_reg[0]  ( .D(FF6[0]), .CK(clk), .RN(n22), .Q(FF7[0]) );
  DFFRXL \FF5_reg[3]  ( .D(FF4[3]), .CK(clk), .RN(n19), .Q(FF5[3]) );
  DFFRXL \FF11_reg[3]  ( .D(FF10[3]), .CK(clk), .RN(n19), .Q(FF11[3]) );
  DFFRXL \FF11_reg[2]  ( .D(FF10[2]), .CK(clk), .RN(n20), .Q(FF11[2]) );
  DFFRXL \FF7_reg[15]  ( .D(FF6[15]), .CK(clk), .RN(n7), .Q(FF7[15]) );
  DFFRX1 \FF3_reg[10]  ( .D(FF2[10]), .CK(clk), .RN(n12), .Q(FF3[10]) );
  DFFRX1 \FF5_reg[8]  ( .D(FF4[8]), .CK(clk), .RN(n14), .Q(FF5[8]) );
  DFFRXL \FF1_reg[2]  ( .D(FF0[2]), .CK(clk), .RN(n20), .Q(FF1[2]) );
  DFFRXL \FF1_reg[1]  ( .D(FF0[1]), .CK(clk), .RN(n21), .Q(FF1[1]) );
  DFFRX1 \FF0_reg[0]  ( .D(in[0]), .CK(clk), .RN(n22), .Q(FF0[0]) );
  DFFRXL \FF3_reg[6]  ( .D(FF2[6]), .CK(clk), .RN(n16), .Q(FF3[6]) );
  DFFRX1 \FF4_reg[6]  ( .D(FF3[6]), .CK(clk), .RN(n16), .Q(FF4[6]) );
  DFFRX1 \FF8_reg[6]  ( .D(FF7[6]), .CK(clk), .RN(n16), .Q(FF8[6]) );
  DFFRX1 \FF6_reg[6]  ( .D(FF5[6]), .CK(clk), .RN(n16), .Q(FF6[6]) );
  DFFRX1 \FF10_reg[6]  ( .D(FF9[6]), .CK(clk), .RN(n16), .Q(FF10[6]) );
  DFFRXL \FF6_reg[4]  ( .D(FF5[4]), .CK(clk), .RN(n18), .Q(FF6[4]) );
  DFFRXL \FF4_reg[4]  ( .D(FF3[4]), .CK(clk), .RN(n18), .Q(FF4[4]) );
  DFFRXL \FF10_reg[4]  ( .D(FF9[4]), .CK(clk), .RN(n18), .Q(FF10[4]) );
  DFFRXL \FF8_reg[4]  ( .D(FF7[4]), .CK(clk), .RN(n18), .Q(FF8[4]) );
  DFFRX1 \FF4_reg[3]  ( .D(FF3[3]), .CK(clk), .RN(n19), .Q(FF4[3]) );
  DFFRX1 \FF8_reg[3]  ( .D(FF7[3]), .CK(clk), .RN(n19), .Q(FF8[3]) );
  DFFRX1 \FF6_reg[3]  ( .D(FF5[3]), .CK(clk), .RN(n19), .Q(FF6[3]) );
  DFFRX1 \FF10_reg[3]  ( .D(FF9[3]), .CK(clk), .RN(n19), .Q(FF10[3]) );
  DFFRX4 \FF6_reg[1]  ( .D(FF5[1]), .CK(clk), .RN(n21), .Q(FF6[1]) );
  DFFRX4 \FF4_reg[1]  ( .D(FF3[1]), .CK(clk), .RN(n21), .Q(FF4[1]) );
  DFFRX2 \FF10_reg[0]  ( .D(FF9[0]), .CK(clk), .RN(n22), .Q(FF10[0]) );
  DFFRX2 \FF8_reg[0]  ( .D(FF7[0]), .CK(clk), .RN(n22), .Q(FF8[0]) );
  DFFRX2 \FF4_reg[2]  ( .D(FF3[2]), .CK(clk), .RN(n20), .Q(FF4[2]) );
  DFFRX2 \FF6_reg[2]  ( .D(FF5[2]), .CK(clk), .RN(n20), .Q(FF6[2]) );
  DFFRX2 \FF8_reg[2]  ( .D(FF7[2]), .CK(clk), .RN(n20), .Q(FF8[2]) );
  DFFRX2 \FF10_reg[2]  ( .D(FF9[2]), .CK(clk), .RN(n20), .Q(FF10[2]) );
  DFFRX2 \FF11_reg[1]  ( .D(FF10[1]), .CK(clk), .RN(n21), .Q(FF11[1]) );
  DFFRX2 \FF5_reg[0]  ( .D(FF4[0]), .CK(clk), .RN(n22), .Q(FF5[0]) );
  DFFRX2 \FF6_reg[0]  ( .D(FF5[0]), .CK(clk), .RN(n22), .Q(FF6[0]) );
  DFFRX1 \FF11_reg[0]  ( .D(FF10[0]), .CK(clk), .RN(n22), .Q(FF11[0]) );
  DFFRX1 \FF0_reg[2]  ( .D(in[2]), .CK(clk), .RN(n20), .Q(FF0[2]) );
  DFFRX1 \FF0_reg[1]  ( .D(in[1]), .CK(clk), .RN(n21), .Q(FF0[1]) );
  DFFRX2 \FF4_reg[0]  ( .D(FF3[0]), .CK(clk), .RN(n22), .Q(FF4[0]) );
  DFFRX1 \FF3_reg[0]  ( .D(FF2[0]), .CK(clk), .RN(n22), .Q(FF3[0]) );
  DFFRX1 \FF9_reg[0]  ( .D(FF8[0]), .CK(clk), .RN(n22), .Q(FF9[0]) );
  DFFRX1 \FF5_reg[2]  ( .D(FF4[2]), .CK(clk), .RN(n20), .Q(FF5[2]) );
  CLKINVX1 U3 ( .A(reset), .Y(n23) );
  CLKBUFX3 U4 ( .A(n5), .Y(n21) );
  CLKBUFX3 U5 ( .A(n5), .Y(n20) );
  CLKBUFX3 U6 ( .A(n5), .Y(n19) );
  CLKBUFX3 U7 ( .A(n4), .Y(n18) );
  CLKBUFX3 U8 ( .A(n4), .Y(n17) );
  CLKBUFX3 U9 ( .A(n4), .Y(n16) );
  CLKBUFX3 U10 ( .A(n3), .Y(n15) );
  CLKBUFX3 U11 ( .A(n3), .Y(n14) );
  CLKBUFX3 U12 ( .A(n3), .Y(n13) );
  CLKBUFX3 U13 ( .A(n2), .Y(n12) );
  CLKBUFX3 U14 ( .A(n2), .Y(n11) );
  CLKBUFX3 U15 ( .A(n2), .Y(n10) );
  CLKBUFX3 U16 ( .A(n1), .Y(n9) );
  CLKBUFX3 U17 ( .A(n1), .Y(n8) );
  CLKBUFX3 U18 ( .A(n1), .Y(n7) );
  CLKBUFX3 U19 ( .A(n6), .Y(n22) );
  CLKBUFX3 U20 ( .A(n23), .Y(n6) );
  CLKBUFX3 U21 ( .A(n23), .Y(n5) );
  CLKBUFX3 U22 ( .A(n23), .Y(n4) );
  CLKBUFX3 U23 ( .A(n23), .Y(n3) );
  CLKBUFX3 U24 ( .A(n23), .Y(n2) );
  CLKBUFX3 U25 ( .A(n23), .Y(n1) );
endmodule


module avg_maker_DW01_add_14 ( A, B, CI, SUM, CO );
  input [17:0] A;
  input [17:0] B;
  output [17:0] SUM;
  input CI;
  output CO;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30, n31,
         n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44, n45,
         n46, n47, n48, n49, n50, n53, n54, n55, n56, n59, n60, n61, n62, n63,
         n64, n65, n66, n69, n70, n71, n72, n74, n77, n78, n79, n80, n81, n82,
         n83, n85, n86, n87, n88, n89, n90, n91, n92, n93, n94, n97, n98, n99,
         n100, n102, n105, n106, n107, n109, n110, n111, n112, n113, n114,
         n115, n116, n117, n118, n119, n120, n121, n122, n123, n124, n125,
         n126, n138, n139, n205;

  XOR2X1 U5 ( .A(n29), .B(n4), .Y(SUM[15]) );
  XOR2X1 U17 ( .A(n38), .B(n5), .Y(SUM[14]) );
  XOR2X1 U29 ( .A(n47), .B(n6), .Y(SUM[13]) );
  XOR2X1 U41 ( .A(n54), .B(n7), .Y(SUM[12]) );
  XOR2X1 U51 ( .A(n63), .B(n8), .Y(SUM[11]) );
  XOR2X1 U63 ( .A(n70), .B(n9), .Y(SUM[10]) );
  XOR2X1 U73 ( .A(n79), .B(n10), .Y(SUM[9]) );
  XOR2X1 U93 ( .A(n91), .B(n12), .Y(SUM[7]) );
  XOR2X1 U103 ( .A(n98), .B(n13), .Y(SUM[6]) );
  XOR2X1 U113 ( .A(n107), .B(n14), .Y(SUM[5]) );
  XOR2X1 U142 ( .A(n121), .B(n17), .Y(SUM[2]) );
  XOR2X1 U148 ( .A(n18), .B(n126), .Y(SUM[1]) );
  NOR2X1 U163 ( .A(A[6]), .B(B[6]), .Y(n94) );
  CLKBUFX3 U164 ( .A(n1), .Y(n205) );
  NOR2X1 U165 ( .A(A[1]), .B(B[1]), .Y(n123) );
  OAI21X1 U166 ( .A0(n123), .A1(n126), .B0(n124), .Y(n122) );
  NAND2BXL U167 ( .AN(n125), .B(n126), .Y(n19) );
  INVXL U168 ( .A(n19), .Y(SUM[0]) );
  NAND2BXL U169 ( .AN(n61), .B(n62), .Y(n8) );
  NAND2XL U170 ( .A(A[3]), .B(B[3]), .Y(n117) );
  INVXL U171 ( .A(n3), .Y(n55) );
  OAI21XL U172 ( .A0(n113), .A1(n85), .B0(n86), .Y(n1) );
  AOI21XL U173 ( .A0(n112), .A1(n138), .B0(n109), .Y(n107) );
  AOI21XL U174 ( .A0(n112), .A1(n99), .B0(n100), .Y(n98) );
  NAND2BXL U175 ( .AN(n89), .B(n90), .Y(n12) );
  AOI21XL U176 ( .A0(n112), .A1(n92), .B0(n93), .Y(n91) );
  AOI21XL U177 ( .A0(n205), .A1(n80), .B0(n81), .Y(n79) );
  AOI21XL U178 ( .A0(n205), .A1(n71), .B0(n72), .Y(n70) );
  AOI21XL U179 ( .A0(n205), .A1(n64), .B0(n65), .Y(n63) );
  AOI21XL U180 ( .A0(n205), .A1(n55), .B0(n56), .Y(n54) );
  AOI21XL U181 ( .A0(n205), .A1(n48), .B0(n49), .Y(n47) );
  AOI21XL U182 ( .A0(n205), .A1(n30), .B0(n31), .Y(n29) );
  NOR2XL U183 ( .A(n3), .B(n32), .Y(n30) );
  AOI21XL U184 ( .A0(n100), .A1(n87), .B0(n88), .Y(n86) );
  AO21XL U185 ( .A0(n205), .A1(n21), .B0(n22), .Y(SUM[16]) );
  NAND2BX1 U186 ( .AN(n119), .B(n120), .Y(n17) );
  INVXL U187 ( .A(n116), .Y(n139) );
  NAND2BX1 U188 ( .AN(n123), .B(n124), .Y(n18) );
  AOI21XL U189 ( .A0(n122), .A1(n114), .B0(n115), .Y(n113) );
  NOR2XL U190 ( .A(n119), .B(n116), .Y(n114) );
  NAND2BX1 U191 ( .AN(n105), .B(n106), .Y(n14) );
  INVX1 U192 ( .A(n110), .Y(n138) );
  NAND2BX1 U193 ( .AN(n94), .B(n97), .Y(n13) );
  NOR2XL U194 ( .A(n110), .B(n105), .Y(n99) );
  NOR2BXL U195 ( .AN(n99), .B(n94), .Y(n92) );
  NOR2XL U196 ( .A(n94), .B(n89), .Y(n87) );
  NAND2BX1 U197 ( .AN(n77), .B(n78), .Y(n10) );
  INVX1 U198 ( .A(n82), .Y(n80) );
  NAND2BX1 U199 ( .AN(n66), .B(n69), .Y(n9) );
  NOR2XL U200 ( .A(n82), .B(n77), .Y(n71) );
  NOR2BXL U201 ( .AN(n71), .B(n66), .Y(n64) );
  NAND2BX1 U202 ( .AN(n50), .B(n53), .Y(n7) );
  AOI21XL U203 ( .A0(n72), .A1(n59), .B0(n60), .Y(n2) );
  NOR2XL U204 ( .A(n66), .B(n61), .Y(n59) );
  NAND2BX1 U205 ( .AN(n45), .B(n46), .Y(n6) );
  NOR2XL U206 ( .A(n3), .B(n50), .Y(n48) );
  NOR2XL U207 ( .A(n3), .B(n41), .Y(n39) );
  AOI21XL U208 ( .A0(n205), .A1(n39), .B0(n40), .Y(n38) );
  NOR2XL U209 ( .A(n50), .B(n45), .Y(n43) );
  NAND2BX1 U210 ( .AN(n27), .B(n28), .Y(n4) );
  OAI21XL U211 ( .A0(n45), .A1(n53), .B0(n46), .Y(n44) );
  AOI21XL U212 ( .A0(n44), .A1(n34), .B0(n35), .Y(n33) );
  INVX1 U213 ( .A(n36), .Y(n34) );
  AOI21XL U214 ( .A0(n44), .A1(n25), .B0(n26), .Y(n24) );
  NOR2XL U215 ( .A(n36), .B(n27), .Y(n25) );
  NAND2XL U216 ( .A(A[1]), .B(B[1]), .Y(n124) );
  NOR2XL U217 ( .A(A[0]), .B(B[0]), .Y(n125) );
  NAND2XL U218 ( .A(A[2]), .B(B[2]), .Y(n120) );
  NAND2XL U219 ( .A(A[4]), .B(B[4]), .Y(n111) );
  NAND2XL U220 ( .A(A[5]), .B(B[5]), .Y(n106) );
  NAND2XL U221 ( .A(A[6]), .B(B[6]), .Y(n97) );
  NAND2XL U222 ( .A(A[7]), .B(B[7]), .Y(n90) );
  NAND2XL U223 ( .A(A[8]), .B(B[8]), .Y(n83) );
  NAND2XL U224 ( .A(A[9]), .B(B[9]), .Y(n78) );
  NOR2X1 U225 ( .A(A[10]), .B(B[10]), .Y(n66) );
  NAND2XL U226 ( .A(A[10]), .B(B[10]), .Y(n69) );
  NAND2XL U227 ( .A(A[11]), .B(B[11]), .Y(n62) );
  NOR2X1 U228 ( .A(A[12]), .B(B[12]), .Y(n50) );
  NAND2XL U229 ( .A(A[12]), .B(B[12]), .Y(n53) );
  NAND2XL U230 ( .A(A[13]), .B(B[13]), .Y(n46) );
  NAND2XL U231 ( .A(A[14]), .B(B[14]), .Y(n37) );
  CLKINVX1 U232 ( .A(n122), .Y(n121) );
  CLKINVX1 U233 ( .A(n113), .Y(n112) );
  NAND2X1 U234 ( .A(n99), .B(n87), .Y(n85) );
  CLKINVX1 U235 ( .A(n2), .Y(n56) );
  NAND2X1 U236 ( .A(n71), .B(n59), .Y(n3) );
  OAI21XL U237 ( .A0(n2), .A1(n41), .B0(n42), .Y(n40) );
  CLKINVX1 U238 ( .A(n44), .Y(n42) );
  CLKINVX1 U239 ( .A(n43), .Y(n41) );
  NAND2X1 U240 ( .A(n43), .B(n34), .Y(n32) );
  NOR2X1 U241 ( .A(n3), .B(n23), .Y(n21) );
  OAI21XL U242 ( .A0(n2), .A1(n23), .B0(n24), .Y(n22) );
  NAND2X1 U243 ( .A(n43), .B(n25), .Y(n23) );
  XNOR2X1 U244 ( .A(n118), .B(n16), .Y(SUM[3]) );
  NAND2X1 U245 ( .A(n139), .B(n117), .Y(n16) );
  OAI21XL U246 ( .A0(n121), .A1(n119), .B0(n120), .Y(n118) );
  OAI21XL U247 ( .A0(n116), .A1(n120), .B0(n117), .Y(n115) );
  XNOR2X1 U248 ( .A(n112), .B(n15), .Y(SUM[4]) );
  NAND2X1 U249 ( .A(n138), .B(n111), .Y(n15) );
  CLKINVX1 U250 ( .A(n111), .Y(n109) );
  OAI21XL U251 ( .A0(n105), .A1(n111), .B0(n106), .Y(n100) );
  OAI21XL U252 ( .A0(n102), .A1(n94), .B0(n97), .Y(n93) );
  CLKINVX1 U253 ( .A(n100), .Y(n102) );
  XNOR2X1 U254 ( .A(n205), .B(n11), .Y(SUM[8]) );
  NAND2X1 U255 ( .A(n80), .B(n83), .Y(n11) );
  OAI21XL U256 ( .A0(n89), .A1(n97), .B0(n90), .Y(n88) );
  CLKINVX1 U257 ( .A(n83), .Y(n81) );
  OAI21XL U258 ( .A0(n77), .A1(n83), .B0(n78), .Y(n72) );
  OAI21XL U259 ( .A0(n74), .A1(n66), .B0(n69), .Y(n65) );
  CLKINVX1 U260 ( .A(n72), .Y(n74) );
  OAI21XL U261 ( .A0(n61), .A1(n69), .B0(n62), .Y(n60) );
  OAI21XL U262 ( .A0(n2), .A1(n50), .B0(n53), .Y(n49) );
  NAND2X1 U263 ( .A(n34), .B(n37), .Y(n5) );
  OAI21XL U264 ( .A0(n2), .A1(n32), .B0(n33), .Y(n31) );
  CLKINVX1 U265 ( .A(n37), .Y(n35) );
  OAI21XL U266 ( .A0(n27), .A1(n37), .B0(n28), .Y(n26) );
  NAND2X1 U267 ( .A(A[0]), .B(B[0]), .Y(n126) );
  NOR2X1 U268 ( .A(A[2]), .B(B[2]), .Y(n119) );
  NOR2X1 U269 ( .A(A[3]), .B(B[3]), .Y(n116) );
  NOR2X1 U270 ( .A(A[4]), .B(B[4]), .Y(n110) );
  NOR2X1 U271 ( .A(A[5]), .B(B[5]), .Y(n105) );
  NOR2X1 U272 ( .A(A[7]), .B(B[7]), .Y(n89) );
  NOR2X1 U273 ( .A(A[8]), .B(B[8]), .Y(n82) );
  NOR2X1 U274 ( .A(A[9]), .B(B[9]), .Y(n77) );
  NOR2X1 U275 ( .A(A[11]), .B(B[11]), .Y(n61) );
  NOR2X1 U276 ( .A(A[13]), .B(B[13]), .Y(n45) );
  NOR2X1 U277 ( .A(A[14]), .B(B[14]), .Y(n36) );
  NOR2X1 U278 ( .A(A[15]), .B(B[15]), .Y(n27) );
  NAND2X1 U279 ( .A(A[15]), .B(B[15]), .Y(n28) );
endmodule


module avg_maker_DW01_add_15 ( A, B, CI, SUM, CO );
  input [17:0] A;
  input [17:0] B;
  output [17:0] SUM;
  input CI;
  output CO;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30, n31,
         n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44, n45,
         n46, n47, n48, n49, n50, n53, n54, n55, n56, n59, n60, n61, n62, n63,
         n64, n65, n66, n69, n70, n71, n72, n74, n77, n78, n79, n80, n81, n82,
         n83, n85, n86, n87, n88, n89, n90, n91, n92, n93, n94, n97, n98, n99,
         n100, n102, n105, n106, n107, n109, n110, n111, n112, n113, n114,
         n115, n116, n117, n118, n119, n120, n121, n122, n123, n124, n125,
         n126, n138, n139, n205;

  XOR2X1 U5 ( .A(n29), .B(n4), .Y(SUM[15]) );
  XOR2X1 U17 ( .A(n38), .B(n5), .Y(SUM[14]) );
  XOR2X1 U29 ( .A(n47), .B(n6), .Y(SUM[13]) );
  XOR2X1 U41 ( .A(n54), .B(n7), .Y(SUM[12]) );
  XOR2X1 U51 ( .A(n63), .B(n8), .Y(SUM[11]) );
  XOR2X1 U63 ( .A(n70), .B(n9), .Y(SUM[10]) );
  XOR2X1 U73 ( .A(n79), .B(n10), .Y(SUM[9]) );
  XOR2X1 U93 ( .A(n91), .B(n12), .Y(SUM[7]) );
  XOR2X1 U103 ( .A(n98), .B(n13), .Y(SUM[6]) );
  XOR2X1 U113 ( .A(n107), .B(n14), .Y(SUM[5]) );
  XOR2X1 U142 ( .A(n121), .B(n17), .Y(SUM[2]) );
  XOR2X1 U148 ( .A(n18), .B(n126), .Y(SUM[1]) );
  NOR2X1 U163 ( .A(A[6]), .B(B[6]), .Y(n94) );
  CLKBUFX3 U164 ( .A(n1), .Y(n205) );
  NAND2XL U165 ( .A(A[3]), .B(B[3]), .Y(n117) );
  XNOR2XL U166 ( .A(n118), .B(n16), .Y(SUM[3]) );
  INVXL U167 ( .A(n3), .Y(n55) );
  OAI21XL U168 ( .A0(n113), .A1(n85), .B0(n86), .Y(n1) );
  AOI21XL U169 ( .A0(n112), .A1(n138), .B0(n109), .Y(n107) );
  AOI21XL U170 ( .A0(n112), .A1(n99), .B0(n100), .Y(n98) );
  NAND2BXL U171 ( .AN(n89), .B(n90), .Y(n12) );
  AOI21XL U172 ( .A0(n112), .A1(n92), .B0(n93), .Y(n91) );
  AOI21XL U173 ( .A0(n205), .A1(n80), .B0(n81), .Y(n79) );
  AOI21XL U174 ( .A0(n205), .A1(n71), .B0(n72), .Y(n70) );
  NAND2BXL U175 ( .AN(n61), .B(n62), .Y(n8) );
  AOI21XL U176 ( .A0(n205), .A1(n64), .B0(n65), .Y(n63) );
  AOI21XL U177 ( .A0(n205), .A1(n55), .B0(n56), .Y(n54) );
  AOI21XL U178 ( .A0(n205), .A1(n48), .B0(n49), .Y(n47) );
  AOI21XL U179 ( .A0(n205), .A1(n30), .B0(n31), .Y(n29) );
  NOR2X1 U180 ( .A(A[1]), .B(B[1]), .Y(n123) );
  NOR2XL U181 ( .A(n3), .B(n32), .Y(n30) );
  AOI21XL U182 ( .A0(n100), .A1(n87), .B0(n88), .Y(n86) );
  AO21XL U183 ( .A0(n205), .A1(n21), .B0(n22), .Y(SUM[16]) );
  OAI21X1 U184 ( .A0(n123), .A1(n126), .B0(n124), .Y(n122) );
  NAND2BX1 U185 ( .AN(n119), .B(n120), .Y(n17) );
  INVXL U186 ( .A(n116), .Y(n139) );
  NAND2BX1 U187 ( .AN(n123), .B(n124), .Y(n18) );
  AOI21XL U188 ( .A0(n122), .A1(n114), .B0(n115), .Y(n113) );
  NOR2XL U189 ( .A(n119), .B(n116), .Y(n114) );
  NAND2BX1 U190 ( .AN(n105), .B(n106), .Y(n14) );
  INVX1 U191 ( .A(n110), .Y(n138) );
  NAND2BX1 U192 ( .AN(n94), .B(n97), .Y(n13) );
  NOR2XL U193 ( .A(n110), .B(n105), .Y(n99) );
  NOR2BXL U194 ( .AN(n99), .B(n94), .Y(n92) );
  NOR2XL U195 ( .A(n94), .B(n89), .Y(n87) );
  NAND2BX1 U196 ( .AN(n77), .B(n78), .Y(n10) );
  INVX1 U197 ( .A(n82), .Y(n80) );
  NAND2BX1 U198 ( .AN(n66), .B(n69), .Y(n9) );
  NOR2XL U199 ( .A(n82), .B(n77), .Y(n71) );
  NOR2BXL U200 ( .AN(n71), .B(n66), .Y(n64) );
  NAND2BX1 U201 ( .AN(n50), .B(n53), .Y(n7) );
  AOI21XL U202 ( .A0(n72), .A1(n59), .B0(n60), .Y(n2) );
  NOR2XL U203 ( .A(n66), .B(n61), .Y(n59) );
  NAND2BX1 U204 ( .AN(n45), .B(n46), .Y(n6) );
  NOR2XL U205 ( .A(n3), .B(n50), .Y(n48) );
  NOR2XL U206 ( .A(n3), .B(n41), .Y(n39) );
  AOI21XL U207 ( .A0(n205), .A1(n39), .B0(n40), .Y(n38) );
  NAND2BX1 U208 ( .AN(n27), .B(n28), .Y(n4) );
  NOR2XL U209 ( .A(n50), .B(n45), .Y(n43) );
  OAI21XL U210 ( .A0(n45), .A1(n53), .B0(n46), .Y(n44) );
  INVX1 U211 ( .A(n36), .Y(n34) );
  AOI21XL U212 ( .A0(n44), .A1(n25), .B0(n26), .Y(n24) );
  NOR2XL U213 ( .A(n36), .B(n27), .Y(n25) );
  NAND2XL U214 ( .A(A[1]), .B(B[1]), .Y(n124) );
  NAND2XL U215 ( .A(A[2]), .B(B[2]), .Y(n120) );
  NAND2BXL U216 ( .AN(n125), .B(n126), .Y(n19) );
  NOR2XL U217 ( .A(A[0]), .B(B[0]), .Y(n125) );
  NAND2XL U218 ( .A(A[4]), .B(B[4]), .Y(n111) );
  NAND2XL U219 ( .A(A[5]), .B(B[5]), .Y(n106) );
  NAND2XL U220 ( .A(A[6]), .B(B[6]), .Y(n97) );
  NAND2XL U221 ( .A(A[7]), .B(B[7]), .Y(n90) );
  NAND2XL U222 ( .A(A[8]), .B(B[8]), .Y(n83) );
  NAND2XL U223 ( .A(A[9]), .B(B[9]), .Y(n78) );
  NOR2X1 U224 ( .A(A[10]), .B(B[10]), .Y(n66) );
  NAND2XL U225 ( .A(A[10]), .B(B[10]), .Y(n69) );
  NAND2XL U226 ( .A(A[11]), .B(B[11]), .Y(n62) );
  NOR2X1 U227 ( .A(A[12]), .B(B[12]), .Y(n50) );
  NAND2XL U228 ( .A(A[12]), .B(B[12]), .Y(n53) );
  NAND2XL U229 ( .A(A[13]), .B(B[13]), .Y(n46) );
  NAND2XL U230 ( .A(A[14]), .B(B[14]), .Y(n37) );
  NAND2XL U231 ( .A(A[15]), .B(B[15]), .Y(n28) );
  CLKINVX1 U232 ( .A(n122), .Y(n121) );
  CLKINVX1 U233 ( .A(n113), .Y(n112) );
  NAND2X1 U234 ( .A(n99), .B(n87), .Y(n85) );
  CLKINVX1 U235 ( .A(n2), .Y(n56) );
  NAND2X1 U236 ( .A(n71), .B(n59), .Y(n3) );
  OAI21XL U237 ( .A0(n2), .A1(n41), .B0(n42), .Y(n40) );
  CLKINVX1 U238 ( .A(n44), .Y(n42) );
  CLKINVX1 U239 ( .A(n43), .Y(n41) );
  NAND2X1 U240 ( .A(n43), .B(n34), .Y(n32) );
  NOR2X1 U241 ( .A(n3), .B(n23), .Y(n21) );
  OAI21XL U242 ( .A0(n2), .A1(n23), .B0(n24), .Y(n22) );
  NAND2X1 U243 ( .A(n43), .B(n25), .Y(n23) );
  NAND2X1 U244 ( .A(n139), .B(n117), .Y(n16) );
  OAI21XL U245 ( .A0(n121), .A1(n119), .B0(n120), .Y(n118) );
  OAI21XL U246 ( .A0(n116), .A1(n120), .B0(n117), .Y(n115) );
  XNOR2X1 U247 ( .A(n112), .B(n15), .Y(SUM[4]) );
  NAND2X1 U248 ( .A(n138), .B(n111), .Y(n15) );
  CLKINVX1 U249 ( .A(n111), .Y(n109) );
  OAI21XL U250 ( .A0(n105), .A1(n111), .B0(n106), .Y(n100) );
  OAI21XL U251 ( .A0(n102), .A1(n94), .B0(n97), .Y(n93) );
  CLKINVX1 U252 ( .A(n100), .Y(n102) );
  XNOR2X1 U253 ( .A(n205), .B(n11), .Y(SUM[8]) );
  NAND2X1 U254 ( .A(n80), .B(n83), .Y(n11) );
  OAI21XL U255 ( .A0(n89), .A1(n97), .B0(n90), .Y(n88) );
  CLKINVX1 U256 ( .A(n83), .Y(n81) );
  OAI21XL U257 ( .A0(n77), .A1(n83), .B0(n78), .Y(n72) );
  OAI21XL U258 ( .A0(n74), .A1(n66), .B0(n69), .Y(n65) );
  CLKINVX1 U259 ( .A(n72), .Y(n74) );
  OAI21XL U260 ( .A0(n61), .A1(n69), .B0(n62), .Y(n60) );
  OAI21XL U261 ( .A0(n2), .A1(n50), .B0(n53), .Y(n49) );
  NAND2X1 U262 ( .A(n34), .B(n37), .Y(n5) );
  OAI21XL U263 ( .A0(n2), .A1(n32), .B0(n33), .Y(n31) );
  AOI21X1 U264 ( .A0(n44), .A1(n34), .B0(n35), .Y(n33) );
  CLKINVX1 U265 ( .A(n37), .Y(n35) );
  OAI21XL U266 ( .A0(n27), .A1(n37), .B0(n28), .Y(n26) );
  NAND2X1 U267 ( .A(A[0]), .B(B[0]), .Y(n126) );
  NOR2X1 U268 ( .A(A[2]), .B(B[2]), .Y(n119) );
  CLKINVX1 U269 ( .A(n19), .Y(SUM[0]) );
  NOR2X1 U270 ( .A(A[3]), .B(B[3]), .Y(n116) );
  NOR2X1 U271 ( .A(A[4]), .B(B[4]), .Y(n110) );
  NOR2X1 U272 ( .A(A[5]), .B(B[5]), .Y(n105) );
  NOR2X1 U273 ( .A(A[7]), .B(B[7]), .Y(n89) );
  NOR2X1 U274 ( .A(A[8]), .B(B[8]), .Y(n82) );
  NOR2X1 U275 ( .A(A[9]), .B(B[9]), .Y(n77) );
  NOR2X1 U276 ( .A(A[11]), .B(B[11]), .Y(n61) );
  NOR2X1 U277 ( .A(A[13]), .B(B[13]), .Y(n45) );
  NOR2X1 U278 ( .A(A[14]), .B(B[14]), .Y(n36) );
  NOR2X1 U279 ( .A(A[15]), .B(B[15]), .Y(n27) );
endmodule


module avg_maker_add_1_root_add_224_I15_DP_OP_363_494_0 ( I1, I2, I3, I4, I5, 
        I6, I7, I8, I9, I10, I11, I12, I13, I14, I15, O2 );
  input [2:0] I1;
  input [28:0] I2;
  input [26:0] I4;
  input [24:0] I5;
  input [22:0] I6;
  input [20:0] I7;
  input [18:0] I8;
  input [16:0] I9;
  input [14:0] I10;
  input [12:0] I11;
  input [10:0] I12;
  input [8:0] I13;
  input [6:0] I14;
  input [4:0] I15;
  output [30:0] O2;
  input I3;
  wire   n451, n452, n453, n454, n455, n456, n457, n458, n459, n460, n461,
         n462, n463, n464, n465, n466, n660, n661, n662, n663, n664, n665,
         n666, n667, n668, n669, n670, n671, n672, n673, n674, n675, n676,
         n677, n678, n687, n690, n691, n692, n693, n694, n695, n696, n697,
         n698, n699, n700, n701, n702, n703, n704, n705, n706, n707, n708,
         n709, n710, n711, n712, n713, n714, n715, n716, n717, n718, n719,
         n720, n721, n722, n723, n724, n725, n726, n727, n728, n729, n730,
         n731, n732, n733, n734, n735, n736, n737, n738, n739, n740, n741,
         n742, n743, n744, n745, n746, n747, n748, n749, n750, n751, n752,
         n753, n754, n755, n756, n757, n758, n759, n760, n761, n762, n763,
         n764, n765, n766, n767, n768, n769, n770, n771, n772, n773, n774,
         n775, n776, n777, n778, n779, n780, n781, n782, n783, n784, n785,
         n786, n787, n788, n789, n790, n791, n792, n793, n794, n795, n796,
         n797, n798, n799, n800, n801, n802, n803, n804, n805, n806, n807,
         n808, n809, n810, n811, n812, n813, n814, n815, n816, n817, n818,
         n819, n820, n821, n822, n823, n824, n825, n826, n827, n828, n829,
         n830, n831, n832, n833, n834, n835, n836, n837, n838, n839, n840,
         n841, n842, n843, n844, n845, n846, n847, n848, n849, n850, n851,
         n852, n853, n854, n855, n856, n857, n858, n859, n860, n861, n862,
         n863, n864, n865, n866, n867, n868, n869, n870, n871, n872, n873,
         n874, n875, n876, n877, n878, n879, n880, n881, n882, n883, n884,
         n885, n886, n887, n888, n889, n890, n891, n892, n893, n894, n895,
         n896, n897, n898, n899, n900, n901, n902, n903, n904, n905, n906,
         n907, n908, n909, n910, n911, n912, n913, n914, n915, n916, n917,
         n918, n919, n920, n921, n922, n923, n924, n925, n926, n927, n928,
         n929, n930, n931, n932, n933, n934, n935, n936, n937, n938, n939,
         n940, n941, n942, n943, n944, n945, n946, n947, n948, n949, n950,
         n951, n952, n953, n954, n955, n956, n957, n958, n959, n960, n961,
         n962, n963, n964, n965, n966, n967, n968, n969, n970, n971, n972,
         n973, n974, n975, n976, n977, n978, n979, n980, n981, n982, n983,
         n984, n985, n986, n987, n988, n989, n990, n991, n992, n993, n994,
         n995, n996, n997, n998, n999, n1000, n1001, n1002, n1003, n1004,
         n1005, n1006, n1007, n1008, n1009, n1010, n1011, n1012, n1013, n1014,
         n1015, n1016, n1017, n1018, n1019, n1020, n1021, n1022, n1023, n1024,
         n1025, n1026, n1027, n1028, n1029, n1030, n1031, n1032, n1033, n1034,
         n1035, n1036, n1037, n1038, n1039, n1040, n1041, n1042, n1043, n1044,
         n1045, n1046, n1047, n1048, n1049, n1050, n1051, n1052, n1053, n1054,
         n1055, n1056, n1057, n1058, n1059, n1060, n1061, n1062, n1063, n1064,
         n1065, n1066, n1067, n1068, n1069, n1070, n1071, n1072, n1073, n1074,
         n1075, n1076, n1077, n1078, n1079, n1080, n1081, n1082, n1083, n1084,
         n1085, n1086, n1087, n1088, n1089, n1090, n1091, n1092, n1093, n1094,
         n1095, n1096, n1097, n1098, n1099, n1100, n1101, n1102, n1103, n1104,
         n1105, n1106, n1107, n1108, n1109, n1110, n1111, n1112, n1113, n1114,
         n1115, n1116, n1117, n1118, n1119, n1120, n1121, n1122, n1123, n1124,
         n1125, n1126, n1127, n1128, n1129, n1130, n1131, n1132, n1133, n1134,
         n1135, n1136, n1137, n1138, n1139, n1140, n1141, n1142, n1143, n1144,
         n1145, n1146, n1147, n1148, n1149, n1150, n1151, n1152, n1153, n1154,
         n1155, n1156, n1157, n1158, n1159, n1160, n1161, n1162, n1163, n1164,
         n1165, n1166, n1167, n1168, n1169, n1170, n1171, n1172;
  assign O2[6] = n451;
  assign O2[7] = n452;
  assign O2[8] = n453;
  assign O2[9] = n454;
  assign O2[10] = n455;
  assign O2[11] = n456;
  assign O2[12] = n457;
  assign O2[13] = n458;
  assign O2[14] = n459;
  assign O2[15] = n460;
  assign O2[16] = n461;
  assign O2[17] = n462;
  assign O2[18] = n463;
  assign O2[19] = n464;
  assign O2[20] = n465;
  assign O2[21] = n466;
  assign n660 = I2[4];
  assign n661 = I2[5];
  assign n662 = I2[6];
  assign n663 = I2[7];
  assign n664 = I2[8];
  assign n665 = I2[9];
  assign n666 = I2[10];
  assign n667 = I2[11];
  assign n668 = I2[12];
  assign n669 = I2[13];
  assign n670 = I2[14];
  assign n671 = I2[15];
  assign n672 = I2[16];
  assign n673 = I2[17];
  assign n674 = I2[18];
  assign n675 = I2[19];
  assign n676 = I2[20];
  assign n677 = I2[21];
  assign n678 = I2[22];
  assign n687 = I1[0];

  INVX2 U353 ( .A(n1125), .Y(n1072) );
  XNOR2X2 U354 ( .A(n851), .B(n852), .Y(n461) );
  OAI222X1 U355 ( .A0(n933), .A1(n934), .B0(n935), .B1(n934), .C0(n933), .C1(
        n935), .Y(n932) );
  INVX3 U356 ( .A(n957), .Y(n935) );
  OAI222X1 U357 ( .A0(n969), .A1(n764), .B0(n969), .B1(n756), .C0(n756), .C1(
        n764), .Y(n968) );
  INVX2 U358 ( .A(n970), .Y(n969) );
  AOI21XL U359 ( .A0(n793), .A1(n739), .B0(n794), .Y(n698) );
  AOI21XL U360 ( .A0(n739), .A1(n807), .B0(n819), .Y(n693) );
  XNOR2X1 U361 ( .A(n1045), .B(n1046), .Y(n452) );
  XNOR2X4 U362 ( .A(n925), .B(n926), .Y(n457) );
  INVX1 U363 ( .A(n1153), .Y(n1050) );
  OAI222X1 U364 ( .A0(n1148), .A1(n1149), .B0(n1150), .B1(n1149), .C0(n1150), 
        .C1(n1148), .Y(n1147) );
  OAI222X1 U365 ( .A0(n799), .A1(n715), .B0(n799), .B1(n812), .C0(n715), .C1(
        n812), .Y(n1053) );
  INVX4 U366 ( .A(I13[0]), .Y(n812) );
  CLKINVX4 U367 ( .A(n714), .Y(n715) );
  OAI222X2 U368 ( .A0(n903), .A1(n1152), .B0(n823), .B1(n1152), .C0(n823), 
        .C1(n903), .Y(n1169) );
  INVX4 U369 ( .A(I11[1]), .Y(n823) );
  NAND3X1 U370 ( .A(n981), .B(n982), .C(n983), .Y(n980) );
  INVX1 U371 ( .A(n1169), .Y(n1168) );
  CLKINVX1 U372 ( .A(I10[0]), .Y(n883) );
  OAI222XL U373 ( .A0(n1055), .A1(n956), .B0(n883), .B1(n956), .C0(n883), .C1(
        n1055), .Y(n1016) );
  OAI222XL U374 ( .A0(n977), .A1(n937), .B0(n1031), .B1(n977), .C0(n1031), 
        .C1(n937), .Y(n1094) );
  INVX1 U375 ( .A(n1048), .Y(n1047) );
  OAI222XL U376 ( .A0(n812), .A1(n880), .B0(n881), .B1(n880), .C0(n881), .C1(
        n812), .Y(n866) );
  NAND2BXL U377 ( .AN(n750), .B(n757), .Y(n844) );
  AOI21X1 U378 ( .A0(n888), .A1(n889), .B0(n890), .Y(n738) );
  OA21XL U379 ( .A0(n795), .A1(n796), .B0(n787), .Y(n794) );
  INVX1 U380 ( .A(n1141), .Y(n1019) );
  NAND2X2 U381 ( .A(n704), .B(n705), .Y(n985) );
  XNOR3X1 U382 ( .A(n1010), .B(n936), .C(n1011), .Y(n1008) );
  CLKINVX1 U383 ( .A(I9[0]), .Y(n955) );
  CLKINVX1 U384 ( .A(n921), .Y(n900) );
  CLKBUFX3 U385 ( .A(n832), .Y(n710) );
  OAI222XL U386 ( .A0(n1038), .A1(n1039), .B0(n1039), .B1(n697), .C0(n1038), 
        .C1(n697), .Y(n1037) );
  OAI222XL U387 ( .A0(n1041), .A1(n1042), .B0(n1041), .B1(n1043), .C0(n1042), 
        .C1(n1043), .Y(n1040) );
  XNOR3X1 U388 ( .A(n1007), .B(n1005), .C(n1008), .Y(n1003) );
  OAI222XL U389 ( .A0(n1167), .A1(n1133), .B0(n1132), .B1(n1133), .C0(n1167), 
        .C1(n1132), .Y(n1166) );
  INVX3 U390 ( .A(n695), .Y(n711) );
  OAI222XL U391 ( .A0(n870), .A1(n1152), .B0(n823), .B1(n1152), .C0(n823), 
        .C1(n870), .Y(n1117) );
  CLKINVX1 U392 ( .A(n939), .Y(n924) );
  OAI222XL U393 ( .A0(n940), .A1(n941), .B0(n821), .B1(n941), .C0(n821), .C1(
        n940), .Y(n939) );
  CLKINVX1 U394 ( .A(n800), .Y(n714) );
  XNOR3X1 U395 ( .A(I13[0]), .B(n814), .C(n813), .Y(n820) );
  CLKINVX1 U396 ( .A(n1001), .Y(n999) );
  OAI222XL U397 ( .A0(n1002), .A1(n1003), .B0(n1004), .B1(n1003), .C0(n1002), 
        .C1(n1004), .Y(n1001) );
  XOR3X1 U398 ( .A(n756), .B(n764), .C(n970), .Y(n1000) );
  XNOR3X1 U399 ( .A(n1066), .B(n1065), .C(n1067), .Y(n760) );
  OAI222XL U400 ( .A0(n1154), .A1(n1155), .B0(n1154), .B1(n753), .C0(n1155), 
        .C1(n753), .Y(n1153) );
  OAI222XL U401 ( .A0(n951), .A1(n952), .B0(n953), .B1(n951), .C0(n953), .C1(
        n952), .Y(n950) );
  AOI222XL U402 ( .A0(n866), .A1(n758), .B0(n866), .B1(n865), .C0(n758), .C1(
        n865), .Y(n757) );
  XNOR3X1 U403 ( .A(n864), .B(n865), .C(n866), .Y(n761) );
  OAI222XL U404 ( .A0(n692), .A1(n897), .B0(n692), .B1(n898), .C0(n897), .C1(
        n898), .Y(n896) );
  OA21XL U405 ( .A0(n818), .A1(n777), .B0(n693), .Y(n817) );
  OAI21XL U406 ( .A0(n996), .A1(n986), .B0(n696), .Y(n736) );
  CLKINVX1 U407 ( .A(n989), .Y(n996) );
  CLKINVX1 U408 ( .A(n998), .Y(n993) );
  NAND2BX1 U409 ( .AN(n999), .B(n1000), .Y(n998) );
  XOR3X1 U410 ( .A(n1081), .B(n751), .C(n1082), .Y(n1074) );
  OAI222XL U411 ( .A0(n1077), .A1(n1078), .B0(n1078), .B1(n1079), .C0(n1077), 
        .C1(n1079), .Y(n1076) );
  AO21X1 U412 ( .A0(n804), .A1(n805), .B0(n806), .Y(n784) );
  OA21XL U413 ( .A0(n777), .A1(n792), .B0(n698), .Y(n791) );
  AO21X1 U414 ( .A0(n906), .A1(n776), .B0(n907), .Y(n905) );
  AOI22X1 U415 ( .A0(n694), .A1(n836), .B0(n837), .B1(n694), .Y(n739) );
  OA22X1 U416 ( .A0(n840), .A1(n841), .B0(n842), .B1(n841), .Y(n839) );
  INVX3 U417 ( .A(n835), .Y(n776) );
  NOR2X1 U418 ( .A(n977), .B(n711), .Y(n690) );
  XNOR3X1 U419 ( .A(n1091), .B(n770), .C(n1093), .Y(n691) );
  AND3X8 U420 ( .A(n719), .B(n720), .C(n721), .Y(n692) );
  AOI21X1 U421 ( .A0(n738), .A1(n838), .B0(n839), .Y(n694) );
  XOR2X1 U422 ( .A(I13[1]), .B(I12[1]), .Y(n695) );
  AOI21X1 U423 ( .A0(n989), .A1(n997), .B0(n992), .Y(n696) );
  XNOR3X1 U424 ( .A(n1034), .B(n1035), .C(n1036), .Y(n697) );
  AOI21X1 U425 ( .A0(n874), .A1(n858), .B0(n875), .Y(n699) );
  XNOR3X1 U426 ( .A(n1098), .B(n1099), .C(n1100), .Y(n700) );
  CLKINVX1 U427 ( .A(n706), .Y(n884) );
  CLKBUFX3 U428 ( .A(I11[0]), .Y(n706) );
  INVX3 U429 ( .A(I12[0]), .Y(n814) );
  OR2XL U430 ( .A(n799), .B(n903), .Y(n701) );
  OR2XL U431 ( .A(n799), .B(n715), .Y(n702) );
  OR2XL U432 ( .A(n715), .B(n903), .Y(n703) );
  NAND3X1 U433 ( .A(n701), .B(n702), .C(n703), .Y(n882) );
  CLKINVX1 U434 ( .A(n882), .Y(n881) );
  OR2X2 U435 ( .A(n1069), .B(n1070), .Y(n704) );
  OR2X2 U436 ( .A(n1069), .B(n742), .Y(n705) );
  CLKINVX3 U437 ( .A(n985), .Y(n982) );
  INVX8 U438 ( .A(I12[1]), .Y(n799) );
  XOR3XL U439 ( .A(I8[0]), .B(n706), .C(n814), .Y(n1059) );
  INVX1 U440 ( .A(n1051), .Y(n1049) );
  INVX3 U441 ( .A(n690), .Y(n707) );
  OAI222X4 U442 ( .A0(n799), .A1(n823), .B0(n799), .B1(n715), .C0(n715), .C1(
        n823), .Y(n813) );
  OAI222X4 U443 ( .A0(n799), .A1(n870), .B0(n799), .B1(n715), .C0(n715), .C1(
        n870), .Y(n869) );
  OAI222X4 U444 ( .A0(n799), .A1(n977), .B0(n799), .B1(n715), .C0(n715), .C1(
        n977), .Y(n964) );
  OR2XL U445 ( .A(n799), .B(n937), .Y(n722) );
  OR2XL U446 ( .A(n799), .B(n715), .Y(n723) );
  CLKINVX2 U447 ( .A(n745), .Y(n708) );
  INVX3 U448 ( .A(n708), .Y(n709) );
  AOI21X1 U449 ( .A0(n1024), .A1(n985), .B0(n1019), .Y(n1045) );
  INVX3 U450 ( .A(n1012), .Y(n972) );
  OAI222X1 U451 ( .A0(n1013), .A1(n812), .B0(n1013), .B1(n1014), .C0(n1014), 
        .C1(n812), .Y(n1012) );
  XNOR3X2 U452 ( .A(n902), .B(n920), .C(n921), .Y(n919) );
  XNOR3XL U453 ( .A(n975), .B(n974), .C(n921), .Y(n764) );
  OAI222X1 U454 ( .A0(n884), .A1(n955), .B0(n814), .B1(n884), .C0(n814), .C1(
        n955), .Y(n921) );
  NAND2X2 U455 ( .A(n979), .B(n980), .Y(n835) );
  XOR3X1 U456 ( .A(n798), .B(n1014), .C(n1015), .Y(n1005) );
  INVX3 U457 ( .A(n1030), .Y(n1014) );
  OAI222X1 U458 ( .A0(n958), .A1(n710), .B0(n766), .B1(n958), .C0(n766), .C1(
        n710), .Y(n957) );
  INVX3 U459 ( .A(n1139), .Y(n1172) );
  OAI222X1 U460 ( .A0(n799), .A1(n1031), .B0(n799), .B1(n715), .C0(n715), .C1(
        n1031), .Y(n1030) );
  NAND2BX4 U461 ( .AN(n1026), .B(n744), .Y(n1025) );
  INVX3 U462 ( .A(n1027), .Y(n1026) );
  OAI222X2 U463 ( .A0(n1140), .A1(n1172), .B0(n707), .B1(n1172), .C0(n707), 
        .C1(n1140), .Y(n1171) );
  OAI222X1 U464 ( .A0(n884), .A1(n1104), .B0(n814), .B1(n884), .C0(n814), .C1(
        n1104), .Y(n1158) );
  XOR3X1 U465 ( .A(n1136), .B(n1137), .C(n1138), .Y(n1123) );
  XOR3X1 U466 ( .A(I9[0]), .B(n798), .C(n1053), .Y(n1065) );
  INVX3 U467 ( .A(n1171), .Y(n1154) );
  XNOR2X2 U468 ( .A(n776), .B(n965), .Y(n455) );
  XNOR2XL U469 ( .A(n1068), .B(n985), .Y(n451) );
  OAI2BB1XL U470 ( .A0N(n696), .A1N(n985), .B0(n736), .Y(n995) );
  AO22X1 U471 ( .A0(n991), .A1(n985), .B0(n991), .B1(n986), .Y(n1018) );
  XNOR2X1 U472 ( .A(I9[0]), .B(n812), .Y(n733) );
  OAI222X1 U473 ( .A0(n1168), .A1(n1055), .B0(n1168), .B1(n1135), .C0(n1055), 
        .C1(n1135), .Y(n1151) );
  CLKINVX2 U474 ( .A(n1145), .Y(n712) );
  INVX3 U475 ( .A(n712), .Y(n713) );
  XOR3X1 U476 ( .A(I13[1]), .B(I13[0]), .C(n799), .Y(n1145) );
  OR2X1 U477 ( .A(n1052), .B(n955), .Y(n716) );
  OR2X1 U478 ( .A(n1052), .B(n812), .Y(n717) );
  OR2X1 U479 ( .A(n812), .B(n955), .Y(n718) );
  NAND3X2 U480 ( .A(n716), .B(n717), .C(n718), .Y(n1044) );
  INVX1 U481 ( .A(n1044), .Y(n1041) );
  AOI2BB1XL U482 ( .A0N(n847), .A1N(n855), .B0(n856), .Y(n854) );
  AO21XL U483 ( .A0(n857), .A1(n858), .B0(n859), .Y(n856) );
  INVX1 U484 ( .A(n892), .Y(n890) );
  INVX1 U485 ( .A(n908), .Y(n891) );
  NAND2BX4 U486 ( .AN(n744), .B(n1026), .Y(n989) );
  INVX3 U487 ( .A(n1025), .Y(n992) );
  NAND2BX1 U488 ( .AN(n806), .B(n807), .Y(n803) );
  INVX3 U489 ( .A(n1135), .Y(n1116) );
  XOR3XL U490 ( .A(n1038), .B(n697), .C(n1039), .Y(n1028) );
  INVXL U491 ( .A(n922), .Y(n912) );
  OAI222X1 U492 ( .A0(n767), .A1(n923), .B0(n924), .B1(n923), .C0(n767), .C1(
        n924), .Y(n922) );
  INVXL U493 ( .A(n896), .Y(n894) );
  XNOR3X1 U494 ( .A(n767), .B(n924), .C(n923), .Y(n747) );
  INVX1 U495 ( .A(n1164), .Y(n1137) );
  INVX1 U496 ( .A(I8[1]), .Y(n937) );
  OR2X4 U497 ( .A(n915), .B(n916), .Y(n719) );
  OR2X4 U498 ( .A(n917), .B(n916), .Y(n720) );
  OR2X1 U499 ( .A(n915), .B(n917), .Y(n721) );
  INVX1 U500 ( .A(n918), .Y(n916) );
  XOR3X1 U501 ( .A(n898), .B(n692), .C(n899), .Y(n911) );
  OR2XL U502 ( .A(n715), .B(n937), .Y(n724) );
  NAND3X1 U503 ( .A(n722), .B(n723), .C(n724), .Y(n914) );
  NAND2BX1 U504 ( .AN(n1142), .B(n1143), .Y(n1141) );
  NAND2BXL U505 ( .AN(n1143), .B(n1142), .Y(n1024) );
  INVXL U506 ( .A(I13[1]), .Y(n800) );
  INVX1 U507 ( .A(n914), .Y(n913) );
  INVX1 U508 ( .A(n761), .Y(n732) );
  XOR3XL U509 ( .A(n952), .B(n951), .C(n954), .Y(n967) );
  INVXL U510 ( .A(n901), .Y(n920) );
  INVX3 U511 ( .A(n997), .Y(n991) );
  OAI2BB1XL U512 ( .A0N(n699), .A1N(n776), .B0(n728), .Y(n872) );
  NAND2BX1 U513 ( .AN(n843), .B(n849), .Y(n846) );
  NAND2XL U514 ( .A(n928), .B(n927), .Y(n847) );
  NAND2XL U515 ( .A(n849), .B(n848), .Y(n873) );
  OA22XL U516 ( .A0(n860), .A1(n861), .B0(n738), .B1(n861), .Y(n859) );
  INVX1 U517 ( .A(n950), .Y(n949) );
  OAI222XL U518 ( .A0(n913), .A1(n883), .B0(n913), .B1(n812), .C0(n812), .C1(
        n883), .Y(n899) );
  INVX1 U519 ( .A(n1096), .Y(n1077) );
  OAI222XL U520 ( .A0(n1009), .A1(n917), .B0(n1009), .B1(n1010), .C0(n1010), 
        .C1(n917), .Y(n973) );
  OAI222XL U521 ( .A0(n883), .A1(n1055), .B0(n1055), .B1(n1056), .C0(n883), 
        .C1(n1056), .Y(n1036) );
  XOR3XL U522 ( .A(I10[0]), .B(n798), .C(n914), .Y(n918) );
  XOR2X1 U523 ( .A(I7[1]), .B(n711), .Y(n1121) );
  XNOR2XL U524 ( .A(I10[1]), .B(n1016), .Y(n772) );
  NOR2X1 U525 ( .A(n1005), .B(n1006), .Y(n725) );
  NOR2XL U526 ( .A(n1007), .B(n1006), .Y(n726) );
  NOR2X1 U527 ( .A(n1007), .B(n1005), .Y(n727) );
  OR3X2 U528 ( .A(n725), .B(n726), .C(n727), .Y(n970) );
  INVXL U529 ( .A(n1008), .Y(n1006) );
  INVX1 U530 ( .A(n1032), .Y(n1007) );
  OAI21XL U531 ( .A0(n847), .A1(n873), .B0(n699), .Y(n728) );
  NAND2X1 U532 ( .A(n737), .B(n984), .Y(n988) );
  AOI21XL U533 ( .A0(n848), .A1(n858), .B0(n738), .Y(n735) );
  OR2XL U534 ( .A(n847), .B(n836), .Y(n777) );
  AOI2BB1XL U535 ( .A0N(n891), .A1N(n847), .B0(n909), .Y(n907) );
  INVXL U536 ( .A(n909), .Y(n906) );
  AO21XL U537 ( .A0(n908), .A1(n858), .B0(n910), .Y(n909) );
  AOI21XL U538 ( .A0(n1071), .A1(n749), .B0(n1072), .Y(n742) );
  CLKINVX2 U539 ( .A(n893), .Y(n840) );
  CLKINVX1 U540 ( .A(n812), .Y(n798) );
  XNOR3X2 U541 ( .A(n754), .B(n1029), .C(n1028), .Y(n743) );
  INVX3 U542 ( .A(n1061), .Y(n1029) );
  INVX1 U543 ( .A(n932), .Y(n931) );
  NAND2BX1 U544 ( .AN(n761), .B(n876), .Y(n850) );
  XOR3X1 U545 ( .A(n762), .B(n1118), .C(n1119), .Y(n1082) );
  XNOR3X1 U546 ( .A(n933), .B(n935), .C(n934), .Y(n748) );
  INVXL U547 ( .A(n1053), .Y(n1052) );
  XOR3XL U548 ( .A(n915), .B(n936), .C(n918), .Y(n923) );
  CLKINVX2 U549 ( .A(n1130), .Y(n1118) );
  INVX1 U550 ( .A(n1166), .Y(n1136) );
  OAI222XL U551 ( .A0(n1097), .A1(n1098), .B0(n1098), .B1(n1099), .C0(n1097), 
        .C1(n1099), .Y(n1096) );
  OAI222XL U552 ( .A0(n1055), .A1(n956), .B0(n1055), .B1(n955), .C0(n955), 
        .C1(n956), .Y(n1106) );
  XOR3XL U553 ( .A(I5[0]), .B(n706), .C(n814), .Y(n1163) );
  OR2X4 U554 ( .A(I13[0]), .B(n955), .Y(n759) );
  INVX1 U555 ( .A(n984), .Y(n983) );
  OAI2BB1XL U556 ( .A0N(n735), .A1N(n776), .B0(n734), .Y(n886) );
  NAND2BXL U557 ( .AN(n846), .B(n848), .Y(n836) );
  OAI2BB1XL U558 ( .A0N(n776), .A1N(n947), .B0(n927), .Y(n946) );
  INVX3 U559 ( .A(n1023), .Y(n1022) );
  AO21X4 U560 ( .A0(n929), .A1(n928), .B0(n930), .Y(n858) );
  NAND2BXL U561 ( .AN(n1019), .B(n1020), .Y(n986) );
  NAND2XL U562 ( .A(n1020), .B(n1023), .Y(n1046) );
  NAND2BXL U563 ( .AN(n891), .B(n892), .Y(n887) );
  AOI21XL U564 ( .A0(n739), .A1(n786), .B0(n795), .Y(n741) );
  OAI2BB1XL U565 ( .A0N(n776), .A1N(n730), .B0(n729), .Y(n775) );
  OAI21XL U566 ( .A0(n777), .A1(n778), .B0(n730), .Y(n729) );
  AOI21XL U567 ( .A0(n739), .A1(n779), .B0(n780), .Y(n730) );
  NOR2BXL U568 ( .AN(n927), .B(n929), .Y(n965) );
  NOR2BXL U569 ( .AN(n928), .B(n930), .Y(n945) );
  INVXL U570 ( .A(n889), .Y(n910) );
  NOR2BXL U571 ( .AN(n888), .B(n890), .Y(n904) );
  NOR2BXL U572 ( .AN(n908), .B(n910), .Y(n925) );
  NAND2BXL U573 ( .AN(n783), .B(n786), .Y(n778) );
  INVXL U574 ( .A(n843), .Y(n842) );
  AO21X4 U575 ( .A0(n731), .A1(n844), .B0(n845), .Y(n841) );
  INVXL U576 ( .A(n807), .Y(n818) );
  NAND2BX1 U577 ( .AN(n1000), .B(n999), .Y(n990) );
  AO21XL U578 ( .A0(n840), .A1(n850), .B0(n731), .Y(n861) );
  NAND2BXL U579 ( .AN(n895), .B(n894), .Y(n849) );
  NAND2XL U580 ( .A(n850), .B(n849), .Y(n862) );
  INVXL U581 ( .A(n808), .Y(n806) );
  INVXL U582 ( .A(n805), .Y(n819) );
  NOR2BXL U583 ( .AN(n844), .B(n845), .Y(n851) );
  NAND2BXL U584 ( .AN(n781), .B(n787), .Y(n783) );
  NAND2BXL U585 ( .AN(n819), .B(n807), .Y(n825) );
  NOR2BXL U586 ( .AN(n787), .B(n796), .Y(n801) );
  AND2XL U587 ( .A(n808), .B(n804), .Y(n815) );
  AND2XL U588 ( .A(n788), .B(n785), .Y(n789) );
  INVX1 U589 ( .A(n1037), .Y(n1004) );
  INVX1 U590 ( .A(n1161), .Y(n1126) );
  OAI222X1 U591 ( .A0(n1136), .A1(n1137), .B0(n1137), .B1(n1138), .C0(n1136), 
        .C1(n1138), .Y(n1161) );
  OAI222X1 U592 ( .A0(n1124), .A1(n1123), .B0(n1122), .B1(n1123), .C0(n1122), 
        .C1(n1124), .Y(n1112) );
  OAI222X1 U593 ( .A0(n1073), .A1(n1074), .B0(n1075), .B1(n1073), .C0(n1075), 
        .C1(n1074), .Y(n1070) );
  INVX1 U594 ( .A(n1084), .Y(n1073) );
  INVXL U595 ( .A(n1080), .Y(n1078) );
  INVXL U596 ( .A(n968), .Y(n966) );
  XOR3X2 U597 ( .A(n760), .B(n1050), .C(n1051), .Y(n1142) );
  INVX1 U598 ( .A(n954), .Y(n953) );
  OAI222X1 U599 ( .A0(n1062), .A1(n1063), .B0(n1062), .B1(n763), .C0(n1063), 
        .C1(n763), .Y(n1061) );
  XOR3XL U600 ( .A(n1124), .B(n1122), .C(n1123), .Y(n749) );
  NOR2X1 U601 ( .A(n876), .B(n732), .Y(n731) );
  INVX1 U602 ( .A(n1113), .Y(n1071) );
  OAI222X1 U603 ( .A0(n1129), .A1(n762), .B0(n1118), .B1(n762), .C0(n1129), 
        .C1(n1118), .Y(n1128) );
  INVX1 U604 ( .A(n1128), .Y(n1122) );
  INVX1 U605 ( .A(n1117), .Y(n1058) );
  XOR3XL U606 ( .A(n763), .B(n1062), .C(n1064), .Y(n1051) );
  XOR3XL U607 ( .A(n867), .B(n766), .C(n959), .Y(n951) );
  XNOR3XL U608 ( .A(n867), .B(n831), .C(n833), .Y(n750) );
  NOR2XL U609 ( .A(n799), .B(n715), .Y(n797) );
  NAND2BXL U610 ( .AN(n812), .B(n797), .Y(n785) );
  XNOR3X2 U611 ( .A(n1098), .B(n713), .C(n1146), .Y(n753) );
  OAI222X1 U612 ( .A0(n1165), .A1(n1121), .B0(n976), .B1(n1121), .C0(n1165), 
        .C1(n976), .Y(n1164) );
  INVX1 U613 ( .A(n1120), .Y(n1165) );
  INVX1 U614 ( .A(n1040), .Y(n1002) );
  OAI222X1 U615 ( .A0(n1102), .A1(n691), .B0(n1102), .B1(n700), .C0(n700), 
        .C1(n691), .Y(n1101) );
  INVX1 U616 ( .A(n1107), .Y(n1102) );
  AOI222X1 U617 ( .A0(n1067), .A1(n1066), .B0(n1067), .B1(n1065), .C0(n1066), 
        .C1(n1065), .Y(n754) );
  INVXL U618 ( .A(n1093), .Y(n1092) );
  XNOR3X2 U619 ( .A(n772), .B(n972), .C(n973), .Y(n756) );
  INVX1 U620 ( .A(n1147), .Y(n1062) );
  INVX1 U621 ( .A(n1151), .Y(n1150) );
  OAI222XL U622 ( .A0(n1144), .A1(n1098), .B0(n713), .B1(n1098), .C0(n1144), 
        .C1(n713), .Y(n1064) );
  OAI222XL U623 ( .A0(n1115), .A1(n903), .B0(n1115), .B1(n711), .C0(n711), 
        .C1(n903), .Y(n1089) );
  INVXL U624 ( .A(n1105), .Y(n1115) );
  OAI222X1 U625 ( .A0(n1131), .A1(n1095), .B0(n1095), .B1(n771), .C0(n1131), 
        .C1(n771), .Y(n1130) );
  INVX1 U626 ( .A(n1094), .Y(n1131) );
  XOR3XL U627 ( .A(n1016), .B(n1120), .C(n1121), .Y(n1083) );
  XOR3XL U628 ( .A(n798), .B(n880), .C(n882), .Y(n755) );
  OAI222XL U629 ( .A0(n1170), .A1(n1163), .B0(n1163), .B1(n733), .C0(n1170), 
        .C1(n733), .Y(n1156) );
  INVX1 U630 ( .A(n1100), .Y(n1097) );
  XNOR3X2 U631 ( .A(n1132), .B(n1133), .C(n1134), .Y(n762) );
  INVXL U632 ( .A(n864), .Y(n758) );
  OAI222XL U633 ( .A0(n812), .A1(n884), .B0(n812), .B1(n814), .C0(n814), .C1(
        n884), .Y(n828) );
  INVX1 U634 ( .A(n942), .Y(n941) );
  INVX1 U635 ( .A(n960), .Y(n933) );
  OAI222X1 U636 ( .A0(n961), .A1(n962), .B0(n963), .B1(n962), .C0(n961), .C1(
        n963), .Y(n960) );
  INVX1 U637 ( .A(n964), .Y(n961) );
  INVXL U638 ( .A(n1158), .Y(n1157) );
  NAND2XL U639 ( .A(n1104), .B(n814), .Y(n1134) );
  XNOR3XL U640 ( .A(n940), .B(n821), .C(n942), .Y(n934) );
  INVX1 U641 ( .A(n869), .Y(n831) );
  INVX1 U642 ( .A(n1054), .Y(n1042) );
  XOR3XL U643 ( .A(n1148), .B(n1149), .C(n1151), .Y(n1127) );
  INVX1 U644 ( .A(n1057), .Y(n1038) );
  OAI222XL U645 ( .A0(n870), .A1(n977), .B0(n823), .B1(n870), .C0(n823), .C1(
        n977), .Y(n1015) );
  OAI222XL U646 ( .A0(n900), .A1(n901), .B0(n901), .B1(n902), .C0(n900), .C1(
        n902), .Y(n879) );
  INVX1 U647 ( .A(n978), .Y(n963) );
  INVX1 U648 ( .A(n938), .Y(n915) );
  NOR2BXL U649 ( .AN(n868), .B(n823), .Y(n833) );
  INVXL U650 ( .A(n829), .Y(n827) );
  INVXL U651 ( .A(n833), .Y(n830) );
  OAI222XL U652 ( .A0(n870), .A1(n937), .B0(n870), .B1(n1031), .C0(n1031), 
        .C1(n937), .Y(n1162) );
  OAI222XL U653 ( .A0(n1056), .A1(n956), .B0(n883), .B1(n956), .C0(n883), .C1(
        n1056), .Y(n1146) );
  OR2XL U654 ( .A(n870), .B(n823), .Y(n768) );
  OR2XL U655 ( .A(n976), .B(n870), .Y(n766) );
  INVXL U656 ( .A(n810), .Y(n809) );
  INVXL U657 ( .A(n813), .Y(n811) );
  OR2XL U658 ( .A(n821), .B(n822), .Y(n765) );
  OAI222XL U659 ( .A0(n883), .A1(n955), .B0(n955), .B1(n956), .C0(n883), .C1(
        n956), .Y(n944) );
  INVX1 U660 ( .A(n1106), .Y(n1091) );
  XNOR2XL U661 ( .A(n822), .B(n828), .Y(n826) );
  NOR2XL U662 ( .A(n937), .B(n903), .Y(n1011) );
  OAI222XL U663 ( .A0(n1031), .A1(n937), .B0(n903), .B1(n937), .C0(n1031), 
        .C1(n903), .Y(n1066) );
  XOR2XL U664 ( .A(I12[1]), .B(I13[1]), .Y(n769) );
  XOR3X1 U665 ( .A(I9[1]), .B(n711), .C(n1105), .Y(n770) );
  XNOR2XL U666 ( .A(I5[0]), .B(n814), .Y(n771) );
  XOR3XL U667 ( .A(I5[1]), .B(I10[1]), .C(n823), .Y(n1098) );
  XOR3XL U668 ( .A(I6[1]), .B(I13[1]), .C(n799), .Y(n1035) );
  XOR3XL U669 ( .A(I9[1]), .B(I5[1]), .C(n823), .Y(n1133) );
  XOR3XL U670 ( .A(I9[0]), .B(n706), .C(n814), .Y(n917) );
  XOR3XL U671 ( .A(I7[1]), .B(I13[1]), .C(n799), .Y(n975) );
  XOR3XL U672 ( .A(n706), .B(I12[0]), .C(n812), .Y(n832) );
  XOR3XL U673 ( .A(I9[1]), .B(I13[1]), .C(n799), .Y(n902) );
  XOR3XL U674 ( .A(I7[1]), .B(I10[1]), .C(n823), .Y(n1034) );
  XOR3XL U675 ( .A(I9[1]), .B(I8[1]), .C(n823), .Y(n974) );
  XOR3XL U676 ( .A(I10[0]), .B(n706), .C(n814), .Y(n880) );
  XOR3XL U677 ( .A(I6[0]), .B(I9[0]), .C(n884), .Y(n1095) );
  XOR3XL U678 ( .A(I9[1]), .B(I10[1]), .C(n823), .Y(n943) );
  XOR3XL U679 ( .A(I7[0]), .B(I8[0]), .C(n883), .Y(n1010) );
  XOR3XL U680 ( .A(I6[0]), .B(I8[0]), .C(n883), .Y(n1140) );
  XOR3XL U681 ( .A(I6[0]), .B(I7[0]), .C(n883), .Y(n1060) );
  XOR3XL U682 ( .A(I11[1]), .B(I13[1]), .C(n799), .Y(n822) );
  XOR3XL U683 ( .A(I9[0]), .B(I8[0]), .C(n883), .Y(n962) );
  XOR3XL U684 ( .A(I8[1]), .B(I6[1]), .C(n903), .Y(n1148) );
  XNOR2X1 U685 ( .A(n994), .B(n995), .Y(n454) );
  XNOR2X1 U686 ( .A(n885), .B(n886), .Y(n459) );
  NAND2X1 U687 ( .A(n987), .B(n988), .Y(n979) );
  OAI21XL U688 ( .A0(n887), .A1(n847), .B0(n735), .Y(n734) );
  XNOR2X1 U689 ( .A(n1017), .B(n1018), .Y(n453) );
  NAND2X1 U690 ( .A(n991), .B(n737), .Y(n987) );
  XNOR2X1 U691 ( .A(n904), .B(n905), .Y(n458) );
  XNOR2X1 U692 ( .A(n945), .B(n946), .Y(n456) );
  CLKINVX1 U693 ( .A(n858), .Y(n837) );
  CLKINVX1 U694 ( .A(n846), .Y(n838) );
  CLKINVX1 U695 ( .A(n887), .Y(n848) );
  CLKINVX1 U696 ( .A(n873), .Y(n874) );
  OA22XL U697 ( .A0(n834), .A1(n739), .B0(n739), .B1(n835), .Y(n824) );
  CLKINVX1 U698 ( .A(n777), .Y(n834) );
  CLKINVX1 U699 ( .A(n986), .Y(n981) );
  CLKINVX1 U700 ( .A(n855), .Y(n857) );
  CLKINVX1 U701 ( .A(n778), .Y(n779) );
  CLKINVX1 U702 ( .A(n1024), .Y(n1021) );
  AOI21X1 U703 ( .A0(n992), .A1(n990), .B0(n993), .Y(n737) );
  NAND2X1 U704 ( .A(n990), .B(n989), .Y(n984) );
  XNOR2X1 U705 ( .A(n871), .B(n872), .Y(n460) );
  CLKINVX1 U706 ( .A(n856), .Y(n853) );
  XNOR2X1 U707 ( .A(n815), .B(n816), .Y(n463) );
  XNOR2X1 U708 ( .A(n801), .B(n802), .Y(n464) );
  OAI2BB1XL U709 ( .A0N(n741), .A1N(n776), .B0(n740), .Y(n802) );
  OAI21XL U710 ( .A0(n803), .A1(n777), .B0(n741), .Y(n740) );
  XNOR2X1 U711 ( .A(n789), .B(n790), .Y(n465) );
  AO21XL U712 ( .A0(n698), .A1(n776), .B0(n791), .Y(n790) );
  CLKINVX1 U713 ( .A(n947), .Y(n929) );
  OA21XL U714 ( .A0(n738), .A1(n840), .B0(n849), .Y(n875) );
  XNOR2X1 U715 ( .A(n824), .B(n825), .Y(n462) );
  NAND2BX1 U716 ( .AN(n862), .B(n848), .Y(n855) );
  NOR2BX1 U717 ( .AN(n989), .B(n992), .Y(n1017) );
  NOR2BX1 U718 ( .AN(n990), .B(n993), .Y(n994) );
  NOR2BX1 U719 ( .AN(n1024), .B(n1019), .Y(n1068) );
  CLKINVX1 U720 ( .A(n784), .Y(n795) );
  NOR2BX1 U721 ( .AN(n849), .B(n840), .Y(n885) );
  CLKINVX1 U722 ( .A(n803), .Y(n786) );
  CLKINVX1 U723 ( .A(n792), .Y(n793) );
  CLKINVX1 U724 ( .A(n788), .Y(n781) );
  NAND2BX2 U725 ( .AN(n743), .B(n1047), .Y(n1020) );
  NAND2BX1 U726 ( .AN(n1112), .B(n746), .Y(n1125) );
  NAND2BX1 U727 ( .AN(n931), .B(n747), .Y(n889) );
  AO21XL U728 ( .A0(n693), .A1(n776), .B0(n817), .Y(n816) );
  NAND2BX1 U729 ( .AN(n911), .B(n912), .Y(n892) );
  NAND2BX1 U730 ( .AN(n912), .B(n911), .Y(n888) );
  CLKINVX1 U731 ( .A(n948), .Y(n930) );
  NAND2BX1 U732 ( .AN(n949), .B(n748), .Y(n948) );
  NAND2BX1 U733 ( .AN(n748), .B(n949), .Y(n928) );
  NAND2BX1 U734 ( .AN(n966), .B(n967), .Y(n947) );
  NAND2X1 U735 ( .A(n844), .B(n850), .Y(n843) );
  NAND2BX1 U736 ( .AN(n894), .B(n895), .Y(n893) );
  NAND2BX1 U737 ( .AN(n747), .B(n931), .Y(n908) );
  CLKINVX1 U738 ( .A(n862), .Y(n860) );
  NAND2BX1 U739 ( .AN(n967), .B(n966), .Y(n927) );
  OAI221XL U740 ( .A0(n781), .A1(n782), .B0(n783), .B1(n784), .C0(n785), .Y(
        n780) );
  NAND2X1 U741 ( .A(n787), .B(n786), .Y(n792) );
  CLKINVX1 U742 ( .A(n782), .Y(n796) );
  NOR2BX1 U743 ( .AN(n850), .B(n731), .Y(n871) );
  OR2X1 U744 ( .A(n798), .B(n797), .Y(n788) );
  XNOR3X2 U745 ( .A(n1002), .B(n1004), .C(n1003), .Y(n744) );
  CLKINVX1 U746 ( .A(n1076), .Y(n1075) );
  OAI222X1 U747 ( .A0(n760), .A1(n1049), .B0(n1050), .B1(n1049), .C0(n1050), 
        .C1(n760), .Y(n1048) );
  XNOR3X1 U748 ( .A(n753), .B(n1154), .C(n1156), .Y(n745) );
  XNOR3X2 U749 ( .A(n1126), .B(n709), .C(n1127), .Y(n746) );
  OAI222X1 U750 ( .A0(n754), .A1(n1028), .B0(n1029), .B1(n1028), .C0(n754), 
        .C1(n1029), .Y(n1027) );
  CLKINVX1 U751 ( .A(n1064), .Y(n1063) );
  CLKINVX1 U752 ( .A(n1156), .Y(n1155) );
  INVX1 U753 ( .A(n1159), .Y(n1143) );
  CLKINVX1 U754 ( .A(n1127), .Y(n1160) );
  XOR3X1 U755 ( .A(n798), .B(n1116), .C(n1117), .Y(n1088) );
  OAI222XL U756 ( .A0(n1083), .A1(n1114), .B0(n751), .B1(n1114), .C0(n751), 
        .C1(n1083), .Y(n1113) );
  CLKINVX1 U757 ( .A(n1082), .Y(n1114) );
  CLKINVX1 U758 ( .A(n828), .Y(n821) );
  CLKINVX1 U759 ( .A(n877), .Y(n876) );
  OAI222XL U760 ( .A0(n768), .A1(n878), .B0(n878), .B1(n755), .C0(n768), .C1(
        n755), .Y(n877) );
  CLKINVX1 U761 ( .A(n879), .Y(n878) );
  CLKINVX1 U762 ( .A(n1015), .Y(n1013) );
  CLKINVX1 U763 ( .A(n899), .Y(n897) );
  OAI222XL U764 ( .A0(n1058), .A1(n812), .B0(n1058), .B1(n1135), .C0(n812), 
        .C1(n1135), .Y(n1119) );
  CLKINVX1 U765 ( .A(n863), .Y(n845) );
  NAND2BX1 U766 ( .AN(n757), .B(n750), .Y(n863) );
  XOR3X1 U767 ( .A(n768), .B(n755), .C(n879), .Y(n895) );
  CLKINVX1 U768 ( .A(n1083), .Y(n1081) );
  CLKINVX1 U769 ( .A(n1079), .Y(n1090) );
  NAND2BX1 U770 ( .AN(n827), .B(n826), .Y(n805) );
  NAND2BX1 U771 ( .AN(n826), .B(n827), .Y(n807) );
  NAND2BX1 U772 ( .AN(n769), .B(n809), .Y(n787) );
  NAND2BX1 U773 ( .AN(n809), .B(n769), .Y(n782) );
  NAND2BX1 U774 ( .AN(n820), .B(n765), .Y(n808) );
  NAND2BX1 U775 ( .AN(n765), .B(n820), .Y(n804) );
  CLKINVX1 U776 ( .A(n1016), .Y(n976) );
  XNOR3X2 U777 ( .A(n1043), .B(n1042), .C(n1044), .Y(n1039) );
  OAI222X1 U778 ( .A0(n1085), .A1(n1086), .B0(n1085), .B1(n1087), .C0(n1087), 
        .C1(n1086), .Y(n1084) );
  XOR3X1 U779 ( .A(n1010), .B(n1088), .C(n1089), .Y(n1087) );
  XOR3X1 U780 ( .A(n1077), .B(n1090), .C(n1080), .Y(n1086) );
  INVX1 U781 ( .A(n1101), .Y(n1085) );
  OAI222X1 U782 ( .A0(n1091), .A1(n770), .B0(n1092), .B1(n770), .C0(n1091), 
        .C1(n1092), .Y(n1080) );
  OAI222XL U783 ( .A0(n1103), .A1(n1104), .B0(n1103), .B1(n1056), .C0(n1056), 
        .C1(n1104), .Y(n1093) );
  OAI222X1 U784 ( .A0(n900), .A1(n974), .B0(n975), .B1(n974), .C0(n900), .C1(
        n975), .Y(n959) );
  AOI222X1 U785 ( .A0(n752), .A1(n1088), .B0(n1089), .B1(n1088), .C0(n1089), 
        .C1(n752), .Y(n751) );
  CLKINVX1 U786 ( .A(n1010), .Y(n752) );
  OAI222XL U787 ( .A0(n1157), .A1(n977), .B0(n1157), .B1(n759), .C0(n759), 
        .C1(n977), .Y(n1067) );
  OAI222X1 U788 ( .A0(n971), .A1(n772), .B0(n971), .B1(n972), .C0(n972), .C1(
        n772), .Y(n954) );
  CLKINVX1 U789 ( .A(n973), .Y(n971) );
  CLKINVX1 U790 ( .A(n1162), .Y(n1170) );
  CLKINVX1 U791 ( .A(n1146), .Y(n1144) );
  OAI222XL U792 ( .A0(n1033), .A1(n1034), .B0(n1035), .B1(n1034), .C0(n1033), 
        .C1(n1035), .Y(n1032) );
  CLKINVX1 U793 ( .A(n1036), .Y(n1033) );
  NOR2XL U794 ( .A(n814), .B(n812), .Y(n1105) );
  XNOR3X1 U795 ( .A(n1163), .B(n733), .C(n1162), .Y(n1138) );
  CLKINVX1 U796 ( .A(n917), .Y(n936) );
  CLKINVX1 U797 ( .A(n1011), .Y(n1009) );
  XNOR3X1 U798 ( .A(n1140), .B(n707), .C(n1139), .Y(n1124) );
  XNOR2X1 U799 ( .A(I13[1]), .B(n775), .Y(n466) );
  CLKINVX1 U800 ( .A(n919), .Y(n898) );
  OAI222XL U801 ( .A0(n1058), .A1(n1059), .B0(n1059), .B1(n1060), .C0(n1058), 
        .C1(n1060), .Y(n1057) );
  XNOR3X1 U802 ( .A(n1059), .B(n1060), .C(n1117), .Y(n763) );
  OAI222XL U803 ( .A0(n884), .A1(n956), .B0(n814), .B1(n884), .C0(n814), .C1(
        n956), .Y(n1054) );
  XNOR3X1 U804 ( .A(n962), .B(n963), .C(n964), .Y(n952) );
  XNOR3X1 U805 ( .A(n1095), .B(n771), .C(n1094), .Y(n1079) );
  OAI222XL U806 ( .A0(n814), .A1(n883), .B0(n884), .B1(n883), .C0(n814), .C1(
        n884), .Y(n868) );
  CLKINVX1 U807 ( .A(n710), .Y(n867) );
  XNOR2X1 U808 ( .A(n943), .B(n944), .Y(n942) );
  OAI222X1 U809 ( .A0(n884), .A1(n955), .B0(n884), .B1(n1056), .C0(n1056), 
        .C1(n955), .Y(n1120) );
  OAI222XL U810 ( .A0(n903), .A1(n937), .B0(n823), .B1(n903), .C0(n823), .C1(
        n937), .Y(n978) );
  OAI222XL U811 ( .A0(n823), .A1(n903), .B0(n870), .B1(n903), .C0(n823), .C1(
        n870), .Y(n938) );
  OAI222XL U812 ( .A0(n830), .A1(n831), .B0(n830), .B1(n710), .C0(n831), .C1(
        n710), .Y(n829) );
  OAI222XL U813 ( .A0(n811), .A1(n812), .B0(n811), .B1(n814), .C0(n814), .C1(
        n812), .Y(n810) );
  NOR2X1 U814 ( .A(n884), .B(n883), .Y(n1100) );
  NAND2BX1 U815 ( .AN(n943), .B(n944), .Y(n767) );
  CLKINVX1 U816 ( .A(I5[1]), .Y(n1152) );
  XOR2X1 U817 ( .A(I12[0]), .B(n812), .Y(n1103) );
  OAI222XL U818 ( .A0(n1108), .A1(n1109), .B0(n1110), .B1(n1109), .C0(n1110), 
        .C1(n1108), .Y(n1107) );
  XOR3X1 U819 ( .A(I7[0]), .B(I8[0]), .C(n955), .Y(n1108) );
  XNOR2X1 U820 ( .A(I10[0]), .B(n706), .Y(n1110) );
  XOR3X1 U821 ( .A(I6[0]), .B(I5[0]), .C(n1103), .Y(n1109) );
  XOR3X2 U822 ( .A(I7[0]), .B(n1116), .C(n1169), .Y(n1139) );
  XOR3X2 U823 ( .A(I7[1]), .B(n759), .C(n1158), .Y(n1149) );
  XOR3XL U824 ( .A(I8[1]), .B(I13[1]), .C(n799), .Y(n940) );
  XOR2X1 U825 ( .A(I11[1]), .B(n868), .Y(n865) );
  CLKINVX1 U826 ( .A(I10[1]), .Y(n870) );
  XOR3X1 U827 ( .A(I6[1]), .B(I8[1]), .C(n870), .Y(n1132) );
  XOR3XL U828 ( .A(I10[1]), .B(I13[1]), .C(n799), .Y(n864) );
  XNOR2X1 U829 ( .A(I10[1]), .B(I11[1]), .Y(n901) );
  CLKINVX1 U830 ( .A(I9[1]), .Y(n903) );
  XNOR2X1 U831 ( .A(I8[1]), .B(I9[1]), .Y(n1043) );
  CLKINVX1 U832 ( .A(I8[0]), .Y(n956) );
  XOR3X1 U833 ( .A(I7[1]), .B(I6[1]), .C(n937), .Y(n1099) );
  CLKINVX1 U834 ( .A(I7[1]), .Y(n977) );
  CLKINVX1 U835 ( .A(I7[0]), .Y(n1055) );
  CLKINVX1 U836 ( .A(I6[1]), .Y(n1031) );
  CLKINVX1 U837 ( .A(I5[0]), .Y(n1104) );
  CLKINVX1 U838 ( .A(I6[0]), .Y(n1056) );
  INVXL U839 ( .A(n746), .Y(n773) );
  INVX1 U840 ( .A(n773), .Y(n774) );
  OAI222X1 U841 ( .A0(n709), .A1(n1160), .B0(n1126), .B1(n709), .C0(n1126), 
        .C1(n1160), .Y(n1159) );
  INVX1 U842 ( .A(n1134), .Y(n1167) );
  CLKINVX1 U843 ( .A(n1112), .Y(n1111) );
  OAI32X2 U844 ( .A0(n1072), .A1(n749), .A2(n1071), .B0(n1111), .B1(n774), .Y(
        n1069) );
  INVX1 U845 ( .A(n1119), .Y(n1129) );
  INVX1 U846 ( .A(n959), .Y(n958) );
  AO21X4 U847 ( .A0(n853), .A1(n776), .B0(n854), .Y(n852) );
  AO22X4 U848 ( .A0(n776), .A1(n837), .B0(n837), .B1(n847), .Y(n926) );
  AO21X4 U849 ( .A0(n1021), .A1(n1020), .B0(n1022), .Y(n997) );
  NAND2BX4 U850 ( .AN(n1047), .B(n743), .Y(n1023) );
  NAND2BX4 U851 ( .AN(n799), .B(I13[1]), .Y(n1135) );
endmodule


module avg_maker_DW_div_uns_2 ( a, b, quotient, remainder, divide_by_0 );
  input [24:0] a;
  input [1:0] b;
  output [24:0] quotient;
  output [1:0] remainder;
  output divide_by_0;
  wire   \u_div/Adiv3_acc[6] , \u_div/Adiv3_acc[7] , \u_div/Adiv3_acc[8] ,
         \u_div/Adiv3_acc[9] , \u_div/Adiv3_acc[10] , \u_div/Adiv3_acc[11] ,
         \u_div/Adiv3_acc[12] , \u_div/Adiv3_acc[13] , \u_div/Adiv3_acc[14] ,
         \u_div/Adiv3_acc[15] , \u_div/Adiv3_acc[16] , \u_div/Adiv3_acc[17] ,
         \u_div/Adiv3_acc[18] , \u_div/Adiv3_acc[19] , \u_div/Adiv3_acc[20] ,
         \u_div/Adiv3_acc[21] , n1, n2;
  wire   SYNOPSYS_UNCONNECTED__0, SYNOPSYS_UNCONNECTED__1, 
        SYNOPSYS_UNCONNECTED__2, SYNOPSYS_UNCONNECTED__3, 
        SYNOPSYS_UNCONNECTED__4, SYNOPSYS_UNCONNECTED__5, 
        SYNOPSYS_UNCONNECTED__6, SYNOPSYS_UNCONNECTED__7, 
        SYNOPSYS_UNCONNECTED__8, SYNOPSYS_UNCONNECTED__9, 
        SYNOPSYS_UNCONNECTED__10, SYNOPSYS_UNCONNECTED__11, 
        SYNOPSYS_UNCONNECTED__12, SYNOPSYS_UNCONNECTED__13, 
        SYNOPSYS_UNCONNECTED__14;
  assign quotient[0] = \u_div/Adiv3_acc[6] ;
  assign quotient[1] = \u_div/Adiv3_acc[7] ;
  assign quotient[2] = \u_div/Adiv3_acc[8] ;
  assign quotient[3] = \u_div/Adiv3_acc[9] ;
  assign quotient[4] = \u_div/Adiv3_acc[10] ;
  assign quotient[5] = \u_div/Adiv3_acc[11] ;
  assign quotient[6] = \u_div/Adiv3_acc[12] ;
  assign quotient[7] = \u_div/Adiv3_acc[13] ;
  assign quotient[8] = \u_div/Adiv3_acc[14] ;
  assign quotient[9] = \u_div/Adiv3_acc[15] ;
  assign quotient[10] = \u_div/Adiv3_acc[16] ;
  assign quotient[12] = \u_div/Adiv3_acc[18] ;
  assign quotient[13] = \u_div/Adiv3_acc[19] ;
  assign quotient[14] = \u_div/Adiv3_acc[20] ;
  assign quotient[15] = \u_div/Adiv3_acc[21] ;

  avg_maker_add_1_root_add_224_I15_DP_OP_363_494_0 \u_div/add_1_root_add_224_I15_DP_OP_363_494_15  ( 
        .I1({1'b0, 1'b0, 1'b0}), .I2({1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        n1, a[16:0], 1'b0, 1'b0, 1'b0, 1'b0}), .I3(1'b0), .I4({1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, n1, a[16:0], 1'b0, 1'b0}), .I5({1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, n1, a[16:0]}), .I6({1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, n1, a[16:2]}), .I7({1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, n1, a[16:4]}), .I8({1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, n1, a[16:6]}), .I9({1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, n1, a[16:8]}), .I10({1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, n1, a[16:10]}), .I11({1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        n1, a[16:12]}), .I12({1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, n1, 
        a[16:14]}), .I13({1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, n1, a[16]}), .I14({1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), .I15({1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0}), .O2({SYNOPSYS_UNCONNECTED__0, SYNOPSYS_UNCONNECTED__1, 
        SYNOPSYS_UNCONNECTED__2, SYNOPSYS_UNCONNECTED__3, 
        SYNOPSYS_UNCONNECTED__4, SYNOPSYS_UNCONNECTED__5, 
        SYNOPSYS_UNCONNECTED__6, SYNOPSYS_UNCONNECTED__7, 
        SYNOPSYS_UNCONNECTED__8, \u_div/Adiv3_acc[21] , \u_div/Adiv3_acc[20] , 
        \u_div/Adiv3_acc[19] , \u_div/Adiv3_acc[18] , \u_div/Adiv3_acc[17] , 
        \u_div/Adiv3_acc[16] , \u_div/Adiv3_acc[15] , \u_div/Adiv3_acc[14] , 
        \u_div/Adiv3_acc[13] , \u_div/Adiv3_acc[12] , \u_div/Adiv3_acc[11] , 
        \u_div/Adiv3_acc[10] , \u_div/Adiv3_acc[9] , \u_div/Adiv3_acc[8] , 
        \u_div/Adiv3_acc[7] , \u_div/Adiv3_acc[6] , SYNOPSYS_UNCONNECTED__9, 
        SYNOPSYS_UNCONNECTED__10, SYNOPSYS_UNCONNECTED__11, 
        SYNOPSYS_UNCONNECTED__12, SYNOPSYS_UNCONNECTED__13, 
        SYNOPSYS_UNCONNECTED__14}) );
  INVX3 U1 ( .A(n2), .Y(quotient[11]) );
  INVX1 U2 ( .A(\u_div/Adiv3_acc[17] ), .Y(n2) );
  BUFX8 U3 ( .A(a[17]), .Y(n1) );
endmodule


module avg_maker_DW01_add_18 ( A, B, CI, SUM, CO );
  input [18:0] A;
  input [18:0] B;
  output [18:0] SUM;
  input CI;
  output CO;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n21,
         n22, n23, n24, n25, n27, n29, n30, n31, n32, n33, n35, n37, n38, n39,
         n40, n41, n43, n45, n46, n47, n48, n49, n54, n55, n56, n57, n58, n59,
         n60, n61, n64, n65, n66, n67, n69, n72, n73, n74, n75, n76, n77, n78,
         n79, n80, n81, n82, n83, n84, n85, n86, n87, n88, n89, n91, n103,
         n104, n105, n106, n174, n175, n176, n177, n178, n179, n180, n181,
         n183, n184, n185, n186;

  XOR2X1 U11 ( .A(n25), .B(n2), .Y(SUM[14]) );
  XOR2X1 U25 ( .A(n33), .B(n4), .Y(SUM[12]) );
  XOR2X1 U39 ( .A(n41), .B(n6), .Y(SUM[10]) );
  XOR2X1 U53 ( .A(n49), .B(n8), .Y(SUM[8]) );
  XOR2X1 U59 ( .A(n58), .B(n9), .Y(SUM[7]) );
  XOR2X1 U71 ( .A(n65), .B(n10), .Y(SUM[6]) );
  XOR2X2 U129 ( .A(n86), .B(n14), .Y(SUM[2]) );
  CLKINVX1 U130 ( .A(n83), .Y(n177) );
  OAI21X1 U131 ( .A0(n86), .A1(n84), .B0(n85), .Y(n83) );
  NOR2X1 U132 ( .A(A[3]), .B(B[3]), .Y(n81) );
  NOR2X1 U133 ( .A(A[4]), .B(B[4]), .Y(n75) );
  NOR2X1 U134 ( .A(A[6]), .B(B[6]), .Y(n61) );
  AND2X2 U135 ( .A(n175), .B(n91), .Y(SUM[0]) );
  AO21X1 U136 ( .A0(n67), .A1(n54), .B0(n55), .Y(n174) );
  OR2X1 U137 ( .A(A[0]), .B(B[0]), .Y(n175) );
  AND2X2 U138 ( .A(n66), .B(n54), .Y(n176) );
  XOR2X2 U139 ( .A(n15), .B(n91), .Y(SUM[1]) );
  NAND2XL U140 ( .A(n83), .B(n13), .Y(n179) );
  NAND2X1 U141 ( .A(n177), .B(n178), .Y(n180) );
  NAND2X1 U142 ( .A(n179), .B(n180), .Y(SUM[3]) );
  CLKINVX1 U143 ( .A(n13), .Y(n178) );
  NAND2XL U144 ( .A(n105), .B(n82), .Y(n13) );
  OR2X4 U145 ( .A(A[1]), .B(B[1]), .Y(n181) );
  INVXL U146 ( .A(n81), .Y(n105) );
  NAND2XL U147 ( .A(A[4]), .B(B[4]), .Y(n76) );
  XNOR2X1 U148 ( .A(n74), .B(n11), .Y(SUM[5]) );
  NOR2X1 U149 ( .A(A[1]), .B(B[1]), .Y(n88) );
  NAND2BX1 U150 ( .AN(n47), .B(n48), .Y(n8) );
  NAND2BX1 U151 ( .AN(n39), .B(n40), .Y(n6) );
  NAND2XL U152 ( .A(A[1]), .B(B[1]), .Y(n89) );
  AOI21XL U153 ( .A0(n77), .A1(n66), .B0(n67), .Y(n65) );
  NAND2BXL U154 ( .AN(n56), .B(n57), .Y(n9) );
  AOI21XL U155 ( .A0(n77), .A1(n59), .B0(n60), .Y(n58) );
  NAND2X1 U156 ( .A(A[2]), .B(B[2]), .Y(n85) );
  OR2XL U157 ( .A(A[9]), .B(B[9]), .Y(n183) );
  OR2XL U158 ( .A(A[11]), .B(B[11]), .Y(n184) );
  AOI21XL U159 ( .A0(n77), .A1(n176), .B0(n174), .Y(n49) );
  OAI21X1 U160 ( .A0(n88), .A1(n91), .B0(n89), .Y(n87) );
  INVX1 U161 ( .A(n84), .Y(n106) );
  AOI21XL U162 ( .A0(n87), .A1(n79), .B0(n80), .Y(n78) );
  NOR2XL U163 ( .A(n84), .B(n81), .Y(n79) );
  INVXL U164 ( .A(n72), .Y(n103) );
  NAND2BX1 U165 ( .AN(n61), .B(n64), .Y(n10) );
  NOR2XL U166 ( .A(n75), .B(n72), .Y(n66) );
  NOR2BXL U167 ( .AN(n66), .B(n61), .Y(n59) );
  XNOR2XL U168 ( .A(n46), .B(n7), .Y(SUM[9]) );
  NOR2XL U169 ( .A(n61), .B(n56), .Y(n54) );
  XNOR2XL U170 ( .A(n38), .B(n5), .Y(SUM[11]) );
  AOI21XL U171 ( .A0(n46), .A1(n183), .B0(n43), .Y(n41) );
  XNOR2XL U172 ( .A(n30), .B(n3), .Y(SUM[13]) );
  AOI21XL U173 ( .A0(n38), .A1(n184), .B0(n35), .Y(n33) );
  NAND2BX1 U174 ( .AN(n31), .B(n32), .Y(n4) );
  XNOR2XL U175 ( .A(n22), .B(n1), .Y(SUM[15]) );
  AOI21XL U176 ( .A0(n30), .A1(n185), .B0(n27), .Y(n25) );
  NAND2BX1 U177 ( .AN(n23), .B(n24), .Y(n2) );
  OAI2BB1XL U178 ( .A0N(n22), .A1N(n186), .B0(n21), .Y(SUM[16]) );
  NAND2XL U179 ( .A(A[3]), .B(B[3]), .Y(n82) );
  NAND2XL U180 ( .A(A[5]), .B(B[5]), .Y(n73) );
  NAND2XL U181 ( .A(A[6]), .B(B[6]), .Y(n64) );
  NAND2XL U182 ( .A(A[7]), .B(B[7]), .Y(n57) );
  NAND2XL U183 ( .A(A[8]), .B(B[8]), .Y(n48) );
  NAND2XL U184 ( .A(A[9]), .B(B[9]), .Y(n45) );
  NAND2XL U185 ( .A(A[10]), .B(B[10]), .Y(n40) );
  NAND2XL U186 ( .A(A[11]), .B(B[11]), .Y(n37) );
  NAND2XL U187 ( .A(A[12]), .B(B[12]), .Y(n32) );
  OR2XL U188 ( .A(A[13]), .B(B[13]), .Y(n185) );
  NAND2XL U189 ( .A(A[13]), .B(B[13]), .Y(n29) );
  NAND2XL U190 ( .A(A[14]), .B(B[14]), .Y(n24) );
  OR2XL U191 ( .A(A[15]), .B(B[15]), .Y(n186) );
  NAND2XL U192 ( .A(A[15]), .B(B[15]), .Y(n21) );
  CLKINVX1 U193 ( .A(n87), .Y(n86) );
  CLKINVX1 U194 ( .A(n78), .Y(n77) );
  NAND2X1 U195 ( .A(n181), .B(n89), .Y(n15) );
  NAND2X1 U196 ( .A(n106), .B(n85), .Y(n14) );
  XNOR2X1 U197 ( .A(n77), .B(n12), .Y(SUM[4]) );
  NAND2X1 U198 ( .A(n104), .B(n76), .Y(n12) );
  CLKINVX1 U199 ( .A(n75), .Y(n104) );
  OAI21XL U200 ( .A0(n81), .A1(n85), .B0(n82), .Y(n80) );
  NAND2X1 U201 ( .A(n103), .B(n73), .Y(n11) );
  OAI21XL U202 ( .A0(n78), .A1(n75), .B0(n76), .Y(n74) );
  OAI21XL U203 ( .A0(n72), .A1(n76), .B0(n73), .Y(n67) );
  OAI21XL U204 ( .A0(n69), .A1(n61), .B0(n64), .Y(n60) );
  CLKINVX1 U205 ( .A(n67), .Y(n69) );
  OAI21XL U206 ( .A0(n56), .A1(n64), .B0(n57), .Y(n55) );
  OAI21XL U207 ( .A0(n49), .A1(n47), .B0(n48), .Y(n46) );
  CLKINVX1 U208 ( .A(n45), .Y(n43) );
  NAND2X1 U209 ( .A(n183), .B(n45), .Y(n7) );
  OAI21XL U210 ( .A0(n41), .A1(n39), .B0(n40), .Y(n38) );
  CLKINVX1 U211 ( .A(n37), .Y(n35) );
  OAI21XL U212 ( .A0(n33), .A1(n31), .B0(n32), .Y(n30) );
  CLKINVX1 U213 ( .A(n29), .Y(n27) );
  NAND2X1 U214 ( .A(n184), .B(n37), .Y(n5) );
  NAND2X1 U215 ( .A(n185), .B(n29), .Y(n3) );
  NAND2X1 U216 ( .A(n186), .B(n21), .Y(n1) );
  OAI21XL U217 ( .A0(n25), .A1(n23), .B0(n24), .Y(n22) );
  NAND2X2 U218 ( .A(A[0]), .B(B[0]), .Y(n91) );
  NOR2X4 U219 ( .A(A[2]), .B(B[2]), .Y(n84) );
  NOR2X1 U220 ( .A(A[5]), .B(B[5]), .Y(n72) );
  NOR2X1 U221 ( .A(A[7]), .B(B[7]), .Y(n56) );
  NOR2X1 U222 ( .A(A[8]), .B(B[8]), .Y(n47) );
  NOR2X1 U223 ( .A(A[10]), .B(B[10]), .Y(n39) );
  NOR2X1 U224 ( .A(A[12]), .B(B[12]), .Y(n31) );
  NOR2X1 U225 ( .A(A[14]), .B(B[14]), .Y(n23) );
endmodule


module avg_maker_DW01_add_16 ( A, B, CI, SUM, CO );
  input [19:0] A;
  input [19:0] B;
  output [19:0] SUM;
  input CI;
  output CO;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n21,
         n22, n23, n24, n25, n27, n29, n30, n31, n32, n33, n35, n37, n38, n39,
         n40, n41, n43, n45, n46, n47, n48, n49, n54, n55, n56, n57, n58, n59,
         n60, n61, n64, n65, n66, n67, n69, n72, n73, n74, n75, n76, n77, n78,
         n79, n80, n81, n82, n83, n84, n85, n87, n88, n89, n91, n103, n104,
         n105, n106, n107, n177, n178, n179, n180, n181, n182, n183, n185,
         n186, n187, n188;

  XOR2X1 U11 ( .A(n25), .B(n2), .Y(SUM[14]) );
  XOR2X1 U25 ( .A(n33), .B(n4), .Y(SUM[12]) );
  XOR2X1 U39 ( .A(n41), .B(n6), .Y(SUM[10]) );
  XOR2X1 U53 ( .A(n49), .B(n8), .Y(SUM[8]) );
  XOR2X1 U59 ( .A(n58), .B(n9), .Y(SUM[7]) );
  XOR2X1 U71 ( .A(n65), .B(n10), .Y(SUM[6]) );
  INVX1 U129 ( .A(n78), .Y(n77) );
  OAI21XL U130 ( .A0(n88), .A1(n91), .B0(n89), .Y(n87) );
  NOR2X1 U131 ( .A(A[3]), .B(B[3]), .Y(n81) );
  NAND2X1 U132 ( .A(n87), .B(n14), .Y(n183) );
  NOR2X1 U133 ( .A(A[4]), .B(B[4]), .Y(n75) );
  NOR2X1 U134 ( .A(A[6]), .B(B[6]), .Y(n61) );
  AND2X2 U135 ( .A(n178), .B(n91), .Y(SUM[0]) );
  AO21X1 U136 ( .A0(n67), .A1(n54), .B0(n55), .Y(n177) );
  OR2XL U137 ( .A(A[0]), .B(B[0]), .Y(n178) );
  AND2X2 U138 ( .A(n66), .B(n54), .Y(n179) );
  INVX1 U139 ( .A(n88), .Y(n107) );
  NOR2X4 U140 ( .A(A[1]), .B(B[1]), .Y(n88) );
  NAND2X1 U141 ( .A(n182), .B(n183), .Y(SUM[2]) );
  OAI21X1 U142 ( .A0(n180), .A1(n84), .B0(n85), .Y(n83) );
  OA21X2 U143 ( .A0(n88), .A1(n91), .B0(n89), .Y(n180) );
  XOR2X2 U144 ( .A(n15), .B(n91), .Y(SUM[1]) );
  NAND2X2 U145 ( .A(n107), .B(n89), .Y(n15) );
  INVX1 U146 ( .A(n14), .Y(n181) );
  INVXL U147 ( .A(n81), .Y(n105) );
  XNOR2XL U148 ( .A(n74), .B(n11), .Y(SUM[5]) );
  NAND2XL U149 ( .A(A[4]), .B(B[4]), .Y(n76) );
  NAND2X1 U150 ( .A(A[1]), .B(B[1]), .Y(n89) );
  NAND2X2 U151 ( .A(A[0]), .B(B[0]), .Y(n91) );
  NAND2X2 U152 ( .A(n106), .B(n85), .Y(n14) );
  NAND2XL U153 ( .A(n180), .B(n181), .Y(n182) );
  NAND2BX1 U154 ( .AN(n47), .B(n48), .Y(n8) );
  NAND2BX1 U155 ( .AN(n39), .B(n40), .Y(n6) );
  AOI21XL U156 ( .A0(n77), .A1(n66), .B0(n67), .Y(n65) );
  NAND2BXL U157 ( .AN(n56), .B(n57), .Y(n9) );
  AOI21XL U158 ( .A0(n77), .A1(n59), .B0(n60), .Y(n58) );
  NAND2X1 U159 ( .A(A[2]), .B(B[2]), .Y(n85) );
  OR2XL U160 ( .A(A[9]), .B(B[9]), .Y(n185) );
  OR2XL U161 ( .A(A[11]), .B(B[11]), .Y(n186) );
  AOI21XL U162 ( .A0(n77), .A1(n179), .B0(n177), .Y(n49) );
  INVX1 U163 ( .A(n84), .Y(n106) );
  XNOR2XL U164 ( .A(n83), .B(n13), .Y(SUM[3]) );
  AOI21XL U165 ( .A0(n87), .A1(n79), .B0(n80), .Y(n78) );
  NOR2XL U166 ( .A(n84), .B(n81), .Y(n79) );
  INVXL U167 ( .A(n72), .Y(n103) );
  NAND2BX1 U168 ( .AN(n61), .B(n64), .Y(n10) );
  NOR2XL U169 ( .A(n75), .B(n72), .Y(n66) );
  NOR2BXL U170 ( .AN(n66), .B(n61), .Y(n59) );
  XNOR2XL U171 ( .A(n46), .B(n7), .Y(SUM[9]) );
  NOR2XL U172 ( .A(n61), .B(n56), .Y(n54) );
  XNOR2XL U173 ( .A(n38), .B(n5), .Y(SUM[11]) );
  AOI21XL U174 ( .A0(n46), .A1(n185), .B0(n43), .Y(n41) );
  XNOR2XL U175 ( .A(n30), .B(n3), .Y(SUM[13]) );
  AOI21XL U176 ( .A0(n38), .A1(n186), .B0(n35), .Y(n33) );
  NAND2BX1 U177 ( .AN(n31), .B(n32), .Y(n4) );
  XNOR2XL U178 ( .A(n22), .B(n1), .Y(SUM[15]) );
  AOI21XL U179 ( .A0(n30), .A1(n187), .B0(n27), .Y(n25) );
  NAND2BX1 U180 ( .AN(n23), .B(n24), .Y(n2) );
  OAI2BB1XL U181 ( .A0N(n22), .A1N(n188), .B0(n21), .Y(SUM[16]) );
  NAND2XL U182 ( .A(A[3]), .B(B[3]), .Y(n82) );
  NAND2XL U183 ( .A(A[5]), .B(B[5]), .Y(n73) );
  NAND2XL U184 ( .A(A[6]), .B(B[6]), .Y(n64) );
  NAND2XL U185 ( .A(A[7]), .B(B[7]), .Y(n57) );
  NAND2XL U186 ( .A(A[8]), .B(B[8]), .Y(n48) );
  NAND2XL U187 ( .A(A[9]), .B(B[9]), .Y(n45) );
  NAND2XL U188 ( .A(A[10]), .B(B[10]), .Y(n40) );
  NAND2XL U189 ( .A(A[11]), .B(B[11]), .Y(n37) );
  NAND2XL U190 ( .A(A[12]), .B(B[12]), .Y(n32) );
  OR2XL U191 ( .A(A[13]), .B(B[13]), .Y(n187) );
  NAND2XL U192 ( .A(A[13]), .B(B[13]), .Y(n29) );
  NAND2XL U193 ( .A(A[14]), .B(B[14]), .Y(n24) );
  OR2XL U194 ( .A(A[15]), .B(B[15]), .Y(n188) );
  NAND2XL U195 ( .A(A[15]), .B(B[15]), .Y(n21) );
  NAND2X1 U196 ( .A(n105), .B(n82), .Y(n13) );
  XNOR2X1 U197 ( .A(n77), .B(n12), .Y(SUM[4]) );
  NAND2X1 U198 ( .A(n104), .B(n76), .Y(n12) );
  CLKINVX1 U199 ( .A(n75), .Y(n104) );
  OAI21XL U200 ( .A0(n81), .A1(n85), .B0(n82), .Y(n80) );
  NAND2X1 U201 ( .A(n103), .B(n73), .Y(n11) );
  OAI21XL U202 ( .A0(n78), .A1(n75), .B0(n76), .Y(n74) );
  OAI21XL U203 ( .A0(n72), .A1(n76), .B0(n73), .Y(n67) );
  OAI21XL U204 ( .A0(n69), .A1(n61), .B0(n64), .Y(n60) );
  CLKINVX1 U205 ( .A(n67), .Y(n69) );
  OAI21XL U206 ( .A0(n56), .A1(n64), .B0(n57), .Y(n55) );
  OAI21XL U207 ( .A0(n49), .A1(n47), .B0(n48), .Y(n46) );
  CLKINVX1 U208 ( .A(n45), .Y(n43) );
  NAND2X1 U209 ( .A(n185), .B(n45), .Y(n7) );
  OAI21XL U210 ( .A0(n41), .A1(n39), .B0(n40), .Y(n38) );
  CLKINVX1 U211 ( .A(n37), .Y(n35) );
  OAI21XL U212 ( .A0(n33), .A1(n31), .B0(n32), .Y(n30) );
  CLKINVX1 U213 ( .A(n29), .Y(n27) );
  NAND2X1 U214 ( .A(n186), .B(n37), .Y(n5) );
  NAND2X1 U215 ( .A(n187), .B(n29), .Y(n3) );
  NAND2X1 U216 ( .A(n188), .B(n21), .Y(n1) );
  OAI21XL U217 ( .A0(n25), .A1(n23), .B0(n24), .Y(n22) );
  NOR2X4 U218 ( .A(A[2]), .B(B[2]), .Y(n84) );
  NOR2X1 U219 ( .A(A[5]), .B(B[5]), .Y(n72) );
  NOR2X1 U220 ( .A(A[7]), .B(B[7]), .Y(n56) );
  NOR2X1 U221 ( .A(A[8]), .B(B[8]), .Y(n47) );
  NOR2X1 U222 ( .A(A[10]), .B(B[10]), .Y(n39) );
  NOR2X1 U223 ( .A(A[12]), .B(B[12]), .Y(n31) );
  NOR2X1 U224 ( .A(A[14]), .B(B[14]), .Y(n23) );
endmodule


module avg_maker_DW01_add_17 ( A, B, CI, SUM, CO );
  input [21:0] A;
  input [21:0] B;
  output [21:0] SUM;
  input CI;
  output CO;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n19, n20, n21, n23, n25, n26, n27, n28, n29, n31, n33, n34, n35,
         n36, n37, n39, n41, n42, n43, n44, n45, n51, n53, n54, n55, n56, n57,
         n58, n59, n60, n61, n62, n63, n64, n65, n66, n67, n68, n69, n70, n71,
         n72, n73, n74, n75, n76, n77, n78, n79, n80, n81, n82, n83, n84, n85,
         n86, n87, n88, n89, n97, n98, n99, n102, n103, n104, n179, n180, n181,
         n182, n183, n184, n185, n186, n187, n188, n189, n190, n191, n192,
         n193, n194, n195, n196, n197;

  XOR2X1 U2 ( .A(n21), .B(n1), .Y(SUM[16]) );
  XOR2X1 U16 ( .A(n29), .B(n3), .Y(SUM[14]) );
  XOR2X1 U30 ( .A(n37), .B(n5), .Y(SUM[12]) );
  XOR2X1 U44 ( .A(n45), .B(n7), .Y(SUM[10]) );
  XOR2X1 U50 ( .A(n54), .B(n8), .Y(SUM[9]) );
  XOR2X1 U85 ( .A(n71), .B(n12), .Y(SUM[5]) );
  CLKINVX1 U127 ( .A(n81), .Y(n103) );
  XOR2X4 U128 ( .A(n16), .B(n88), .Y(SUM[1]) );
  NAND2X2 U129 ( .A(n104), .B(n86), .Y(n16) );
  NAND2X2 U130 ( .A(n187), .B(n188), .Y(SUM[3]) );
  NAND2X1 U131 ( .A(n183), .B(n184), .Y(SUM[4]) );
  NAND2X1 U132 ( .A(n75), .B(n182), .Y(n183) );
  INVX3 U133 ( .A(n15), .Y(n189) );
  NAND2X1 U134 ( .A(n185), .B(n186), .Y(n188) );
  AND2X2 U135 ( .A(n193), .B(n55), .Y(n179) );
  AO21X1 U136 ( .A0(n193), .A1(n56), .B0(n51), .Y(n180) );
  NAND2X1 U137 ( .A(n181), .B(n13), .Y(n184) );
  INVX1 U138 ( .A(n75), .Y(n181) );
  INVX1 U139 ( .A(n13), .Y(n182) );
  NAND2XL U140 ( .A(n80), .B(n14), .Y(n187) );
  INVX1 U141 ( .A(n80), .Y(n185) );
  INVX1 U142 ( .A(n14), .Y(n186) );
  NAND2X2 U143 ( .A(n15), .B(n190), .Y(n191) );
  NAND2X4 U144 ( .A(n189), .B(n83), .Y(n192) );
  NAND2X4 U145 ( .A(n191), .B(n192), .Y(SUM[2]) );
  INVXL U146 ( .A(n83), .Y(n190) );
  INVX3 U147 ( .A(n84), .Y(n83) );
  NAND2X1 U148 ( .A(A[1]), .B(B[1]), .Y(n197) );
  NAND2X2 U149 ( .A(n103), .B(n82), .Y(n15) );
  OAI21X2 U150 ( .A0(n85), .A1(n88), .B0(n197), .Y(n84) );
  NAND2X2 U151 ( .A(A[0]), .B(B[0]), .Y(n88) );
  NOR2X2 U152 ( .A(A[1]), .B(B[1]), .Y(n85) );
  NAND2XL U153 ( .A(A[3]), .B(B[3]), .Y(n79) );
  NAND2XL U154 ( .A(A[2]), .B(B[2]), .Y(n82) );
  NAND2X1 U155 ( .A(n102), .B(n79), .Y(n14) );
  INVX1 U156 ( .A(n78), .Y(n102) );
  AOI21XL U157 ( .A0(n42), .A1(n194), .B0(n39), .Y(n37) );
  INVXL U158 ( .A(n41), .Y(n39) );
  NAND2XL U159 ( .A(A[8]), .B(B[8]), .Y(n58) );
  OAI21X1 U160 ( .A0(n75), .A1(n73), .B0(n74), .Y(n72) );
  NAND2XL U161 ( .A(n193), .B(n53), .Y(n8) );
  OAI21XL U162 ( .A0(n37), .A1(n35), .B0(n36), .Y(n34) );
  OAI21XL U163 ( .A0(n29), .A1(n27), .B0(n28), .Y(n26) );
  NOR2X1 U164 ( .A(A[8]), .B(B[8]), .Y(n57) );
  NAND2BX1 U165 ( .AN(n73), .B(n74), .Y(n13) );
  NOR2XL U166 ( .A(n81), .B(n78), .Y(n76) );
  NAND2BX1 U167 ( .AN(n69), .B(n70), .Y(n12) );
  INVXL U168 ( .A(n66), .Y(n99) );
  INVXL U169 ( .A(n60), .Y(n98) );
  AOI21XL U170 ( .A0(n72), .A1(n64), .B0(n65), .Y(n63) );
  NOR2XL U171 ( .A(n69), .B(n66), .Y(n64) );
  AOI21XL U172 ( .A0(n62), .A1(n55), .B0(n56), .Y(n54) );
  NAND2BX1 U173 ( .AN(n43), .B(n44), .Y(n7) );
  AOI21XL U174 ( .A0(n62), .A1(n179), .B0(n180), .Y(n45) );
  INVX1 U175 ( .A(n53), .Y(n51) );
  NOR2XL U176 ( .A(n60), .B(n57), .Y(n55) );
  NAND2BX1 U177 ( .AN(n35), .B(n36), .Y(n5) );
  AOI21XL U178 ( .A0(n34), .A1(n195), .B0(n31), .Y(n29) );
  INVXL U179 ( .A(n33), .Y(n31) );
  NAND2BX1 U180 ( .AN(n27), .B(n28), .Y(n3) );
  AOI21XL U181 ( .A0(n26), .A1(n196), .B0(n23), .Y(n21) );
  INVXL U182 ( .A(n25), .Y(n23) );
  NAND2XL U183 ( .A(A[1]), .B(B[1]), .Y(n86) );
  INVXL U184 ( .A(n85), .Y(n104) );
  NAND2XL U185 ( .A(A[4]), .B(B[4]), .Y(n74) );
  NAND2XL U186 ( .A(A[6]), .B(B[6]), .Y(n67) );
  NAND2XL U187 ( .A(A[7]), .B(B[7]), .Y(n61) );
  NAND2XL U188 ( .A(A[10]), .B(B[10]), .Y(n44) );
  NAND2XL U189 ( .A(A[12]), .B(B[12]), .Y(n36) );
  NAND2XL U190 ( .A(A[14]), .B(B[14]), .Y(n28) );
  NAND2BX1 U191 ( .AN(n87), .B(n88), .Y(n17) );
  CLKINVX1 U192 ( .A(n72), .Y(n71) );
  CLKINVX1 U193 ( .A(n63), .Y(n62) );
  OAI21XL U194 ( .A0(n83), .A1(n81), .B0(n82), .Y(n80) );
  AOI21X1 U195 ( .A0(n76), .A1(n84), .B0(n77), .Y(n75) );
  OAI21XL U196 ( .A0(n78), .A1(n82), .B0(n79), .Y(n77) );
  XNOR2X1 U197 ( .A(n68), .B(n11), .Y(SUM[6]) );
  OAI21XL U198 ( .A0(n71), .A1(n69), .B0(n70), .Y(n68) );
  NAND2X1 U199 ( .A(n99), .B(n67), .Y(n11) );
  OAI21XL U200 ( .A0(n66), .A1(n70), .B0(n67), .Y(n65) );
  XNOR2X1 U201 ( .A(n62), .B(n10), .Y(SUM[7]) );
  NAND2X1 U202 ( .A(n98), .B(n61), .Y(n10) );
  XNOR2X1 U203 ( .A(n59), .B(n9), .Y(SUM[8]) );
  NAND2X1 U204 ( .A(n97), .B(n58), .Y(n9) );
  OAI21XL U205 ( .A0(n63), .A1(n60), .B0(n61), .Y(n59) );
  CLKINVX1 U206 ( .A(n57), .Y(n97) );
  OAI21XL U207 ( .A0(n57), .A1(n61), .B0(n58), .Y(n56) );
  XNOR2X1 U208 ( .A(n42), .B(n6), .Y(SUM[11]) );
  NAND2X1 U209 ( .A(n194), .B(n41), .Y(n6) );
  OAI21XL U210 ( .A0(n45), .A1(n43), .B0(n44), .Y(n42) );
  XNOR2X1 U211 ( .A(n34), .B(n4), .Y(SUM[13]) );
  NAND2X1 U212 ( .A(n195), .B(n33), .Y(n4) );
  XNOR2X1 U213 ( .A(n26), .B(n2), .Y(SUM[15]) );
  NAND2X1 U214 ( .A(n196), .B(n25), .Y(n2) );
  NAND2X1 U215 ( .A(n89), .B(n20), .Y(n1) );
  CLKINVX1 U216 ( .A(n19), .Y(n89) );
  OAI21XL U217 ( .A0(n21), .A1(n19), .B0(n20), .Y(SUM[17]) );
  NOR2X1 U218 ( .A(A[2]), .B(B[2]), .Y(n81) );
  NOR2X1 U219 ( .A(A[3]), .B(B[3]), .Y(n78) );
  NOR2X1 U220 ( .A(A[4]), .B(B[4]), .Y(n73) );
  NOR2X1 U221 ( .A(A[6]), .B(B[6]), .Y(n66) );
  NOR2X1 U222 ( .A(A[5]), .B(B[5]), .Y(n69) );
  NAND2X1 U223 ( .A(A[5]), .B(B[5]), .Y(n70) );
  NOR2X1 U224 ( .A(A[7]), .B(B[7]), .Y(n60) );
  NOR2X1 U225 ( .A(A[10]), .B(B[10]), .Y(n43) );
  OR2X1 U226 ( .A(A[9]), .B(B[9]), .Y(n193) );
  NAND2X1 U227 ( .A(A[9]), .B(B[9]), .Y(n53) );
  NOR2X1 U228 ( .A(A[12]), .B(B[12]), .Y(n35) );
  NOR2X1 U229 ( .A(A[14]), .B(B[14]), .Y(n27) );
  OR2X1 U230 ( .A(A[11]), .B(B[11]), .Y(n194) );
  NAND2X1 U231 ( .A(A[11]), .B(B[11]), .Y(n41) );
  OR2X1 U232 ( .A(A[13]), .B(B[13]), .Y(n195) );
  NAND2X1 U233 ( .A(A[13]), .B(B[13]), .Y(n33) );
  OR2X1 U234 ( .A(A[15]), .B(B[15]), .Y(n196) );
  NAND2X1 U235 ( .A(A[15]), .B(B[15]), .Y(n25) );
  NOR2X1 U236 ( .A(A[16]), .B(B[16]), .Y(n19) );
  NAND2X1 U237 ( .A(A[16]), .B(B[16]), .Y(n20) );
  CLKINVX1 U238 ( .A(n17), .Y(SUM[0]) );
  NOR2X1 U239 ( .A(A[0]), .B(B[0]), .Y(n87) );
endmodule


module avg_maker ( d0, d1, d2, d3, d4, d5, d6, d7, d8, d9, d10, d11, dout );
  input [15:0] d0;
  input [15:0] d1;
  input [15:0] d2;
  input [15:0] d3;
  input [15:0] d4;
  input [15:0] d5;
  input [15:0] d6;
  input [15:0] d7;
  input [15:0] d8;
  input [15:0] d9;
  input [15:0] d10;
  input [15:0] d11;
  output [15:0] dout;
  wire   N215, N216, N217, N218, N219, N220, N221, N222, N223, N224, N225,
         N226, N227, N228, N229, N230, N231, N232, N99, N98, N97, N96, N95,
         N70, N69, N68, N67, N66, N65, N64, N63, N62, N61, N60, N59, N58, N57,
         N56, N55, N54, N51, N50, N49, N48, N47, N46, N45, N44, N43, N42, N41,
         N40, N39, N38, N37, N36, N35, N33, N32, N31, N30, N29, N28, N27, N26,
         N25, N24, N23, N22, N21, N20, N19, N18, N17, N112, N111, N110, N109,
         N108, N107, N106, N105, N104, N103, N102, N101, N100,
         \add_4_root_add_0_root_add_128_11/B[0] ,
         \add_4_root_add_0_root_add_128_11/B[1] ,
         \add_4_root_add_0_root_add_128_11/B[2] ,
         \add_4_root_add_0_root_add_128_11/B[3] ,
         \add_4_root_add_0_root_add_128_11/B[4] ,
         \add_4_root_add_0_root_add_128_11/B[5] ,
         \add_4_root_add_0_root_add_128_11/B[6] ,
         \add_4_root_add_0_root_add_128_11/B[7] ,
         \add_4_root_add_0_root_add_128_11/B[8] ,
         \add_4_root_add_0_root_add_128_11/B[9] ,
         \add_4_root_add_0_root_add_128_11/B[10] ,
         \add_4_root_add_0_root_add_128_11/B[11] ,
         \add_4_root_add_0_root_add_128_11/B[12] ,
         \add_4_root_add_0_root_add_128_11/B[13] ,
         \add_4_root_add_0_root_add_128_11/B[14] ,
         \add_4_root_add_0_root_add_128_11/B[15] ,
         \add_4_root_add_0_root_add_128_11/B[16] , n2, n3, n4, n5, n6, n7, n8,
         n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21, n22,
         n23, n24, n25, n26, n27, n28, n29, n30, n31, n32, n33, n34, n35, n36,
         n37, n38, n39, n40, n41, n42, n43, n44, n45, n46, n47, n48, n49, n50,
         n51, n52, n53, n54, n55, n56, n57, n58, n59, n60, n61, n62, n63, n64,
         n65, n66, n67, n68, n69, n70, n71, n72, n73, n74, n75, n76, n77, n78,
         n79, n80, n81, n82, n83, n84, n85, n86, n87, n88, n89, n90, n91, n92,
         n93, n94, n95, n96, n97, n98, n99, n100, n101, n102, n103, n104, n105,
         n106, n107, n108, n109, n110, n111, n112, n113, n114, n115, n116,
         n117, n118, n119, n120, n121, n122, n123, n124, n125, n126, n127,
         n128, n129, n130, n131, n132, n133, n134, n135, n136, n137, n138,
         n139, n140, n141, n142, n143, n144, n145, n146, n147, n148, n149,
         n150, n151, n152, n153, n154, n155, n156, n157, n158, n159, n160,
         n161, n162, n163, n164, n165, n166, n167, n168, n169, n170, n171,
         n172, n173, n174, n175, n176, n177, n178, n179, n180, n181, n182,
         n183, n184, n185, n186, n187, n188, n189, n190, n191, n192, n193,
         n194, n195, n196, n197, n198, n199, n200, n201, n202, n203, n204,
         n205, n206, n207, n208, n209, n210, n211, n212, n213, n214, n215,
         n216, n217, n218, n219, n220, n221, n222, n223, n224, n225, n226,
         n227, n228, n229, n230, n231, n232, n233, n234, n235, n236, n237,
         n238, n239, n240, n241, n242, n243, n244, n245, n246, n247, n248,
         n249, n250, n251, n252, n253, n254, n255, n256, n257, n258, n259,
         n260, n261, n262, n263, n264, n265, n266, n267, n268, n269, n270,
         n271, n272, n273, n274, n275, n276, n277, n278, n279, n280, n281,
         n282, n283, n284, n285, n286, n287, n288, n289, n290, n291, n292,
         n293, n294, n295, n296, n297, n298, n299, n300, n301, n302, n303,
         n304, n305, n306, n307, n308, n309, n310, n311, n312, n313, n314,
         n315, n316, n317, n318, n319, n320, n321, n322, n323, n324, n325,
         n326, n327, n328, n329, n330;
  wire   SYNOPSYS_UNCONNECTED__0, SYNOPSYS_UNCONNECTED__1, 
        SYNOPSYS_UNCONNECTED__2, SYNOPSYS_UNCONNECTED__3, 
        SYNOPSYS_UNCONNECTED__4, SYNOPSYS_UNCONNECTED__5, 
        SYNOPSYS_UNCONNECTED__6, SYNOPSYS_UNCONNECTED__7, 
        SYNOPSYS_UNCONNECTED__8, SYNOPSYS_UNCONNECTED__9, 
        SYNOPSYS_UNCONNECTED__10, SYNOPSYS_UNCONNECTED__11, 
        SYNOPSYS_UNCONNECTED__12, SYNOPSYS_UNCONNECTED__13, 
        SYNOPSYS_UNCONNECTED__14, SYNOPSYS_UNCONNECTED__15, 
        SYNOPSYS_UNCONNECTED__16, SYNOPSYS_UNCONNECTED__17, 
        SYNOPSYS_UNCONNECTED__18, SYNOPSYS_UNCONNECTED__19;

  avg_maker_DW01_add_14 add_6_root_add_0_root_add_128_11 ( .A({1'b0, 1'b0, d7}), .B({1'b0, 1'b0, d1}), .CI(1'b0), .SUM({SYNOPSYS_UNCONNECTED__0, 
        \add_4_root_add_0_root_add_128_11/B[16] , 
        \add_4_root_add_0_root_add_128_11/B[15] , 
        \add_4_root_add_0_root_add_128_11/B[14] , 
        \add_4_root_add_0_root_add_128_11/B[13] , 
        \add_4_root_add_0_root_add_128_11/B[12] , 
        \add_4_root_add_0_root_add_128_11/B[11] , 
        \add_4_root_add_0_root_add_128_11/B[10] , 
        \add_4_root_add_0_root_add_128_11/B[9] , 
        \add_4_root_add_0_root_add_128_11/B[8] , 
        \add_4_root_add_0_root_add_128_11/B[7] , 
        \add_4_root_add_0_root_add_128_11/B[6] , 
        \add_4_root_add_0_root_add_128_11/B[5] , 
        \add_4_root_add_0_root_add_128_11/B[4] , 
        \add_4_root_add_0_root_add_128_11/B[3] , 
        \add_4_root_add_0_root_add_128_11/B[2] , 
        \add_4_root_add_0_root_add_128_11/B[1] , 
        \add_4_root_add_0_root_add_128_11/B[0] }) );
  avg_maker_DW01_add_15 add_7_root_add_0_root_add_128_11 ( .A({1'b0, 1'b0, d9}), .B({1'b0, 1'b0, d3}), .CI(1'b0), .SUM({SYNOPSYS_UNCONNECTED__1, N33, N32, 
        N31, N30, N29, N28, N27, N26, N25, N24, N23, N22, N21, N20, N19, N18, 
        N17}) );
  avg_maker_DW_div_uns_2 div_128 ( .a({1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, N232, N231, N230, N229, N228, N227, N226, N225, N224, N223, N222, 
        N221, N220, N219, N218, N217, N216, N215}), .b({1'b1, 1'b1}), 
        .quotient({SYNOPSYS_UNCONNECTED__2, SYNOPSYS_UNCONNECTED__3, 
        SYNOPSYS_UNCONNECTED__4, SYNOPSYS_UNCONNECTED__5, 
        SYNOPSYS_UNCONNECTED__6, SYNOPSYS_UNCONNECTED__7, 
        SYNOPSYS_UNCONNECTED__8, SYNOPSYS_UNCONNECTED__9, 
        SYNOPSYS_UNCONNECTED__10, dout}) );
  avg_maker_DW01_add_18 add_9_root_add_0_root_add_128_11 ( .A({1'b0, 1'b0, 
        1'b0, d4}), .B({1'b0, 1'b0, 1'b0, d6}), .CI(1'b0), .SUM({
        SYNOPSYS_UNCONNECTED__11, SYNOPSYS_UNCONNECTED__12, N51, N50, N49, N48, 
        N47, N46, N45, N44, N43, N42, N41, N40, N39, N38, N37, N36, N35}) );
  avg_maker_DW01_add_16 add_10_root_add_0_root_add_128_11 ( .A({1'b0, 1'b0, 
        1'b0, 1'b0, d8}), .B({1'b0, 1'b0, 1'b0, 1'b0, d10}), .CI(1'b0), .SUM({
        SYNOPSYS_UNCONNECTED__13, SYNOPSYS_UNCONNECTED__14, 
        SYNOPSYS_UNCONNECTED__15, N70, N69, N68, N67, N66, N65, N64, N63, N62, 
        N61, N60, N59, N58, N57, N56, N55, N54}) );
  avg_maker_DW01_add_17 add_3_root_add_0_root_add_128_11 ( .A({1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, N51, N50, N49, N48, N47, N46, N45, N44, N43, N42, 
        N41, N40, N39, N38, N37, N36, N35}), .B({1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        N70, N69, N68, N67, N66, N65, N64, N63, N62, N61, N60, N59, N58, N57, 
        N56, N55, N54}), .CI(1'b0), .SUM({SYNOPSYS_UNCONNECTED__16, 
        SYNOPSYS_UNCONNECTED__17, SYNOPSYS_UNCONNECTED__18, 
        SYNOPSYS_UNCONNECTED__19, N112, N111, N110, N109, N108, N107, N106, 
        N105, N104, N103, N102, N101, N100, N99, N98, N97, N96, N95}) );
  XOR3X4 U3 ( .A(N97), .B(n168), .C(n3), .Y(n48) );
  XOR3X1 U4 ( .A(d11[2]), .B(d5[2]), .C(n101), .Y(n168) );
  CLKINVX2 U5 ( .A(n169), .Y(n2) );
  INVX3 U6 ( .A(n2), .Y(n3) );
  AO22X2 U7 ( .A0(d11[2]), .A1(d5[2]), .B0(n75), .B1(n101), .Y(n100) );
  OAI2BB2X1 U8 ( .B0(n102), .B1(n68), .A0N(d11[1]), .A1N(d5[1]), .Y(n101) );
  CLKINVX2 U9 ( .A(n147), .Y(n4) );
  INVX3 U10 ( .A(n4), .Y(n5) );
  XOR3XL U11 ( .A(N105), .B(n144), .C(n145), .Y(n60) );
  XOR3X1 U12 ( .A(d11[10]), .B(d5[10]), .C(n93), .Y(n144) );
  XOR2XL U13 ( .A(n227), .B(n10), .Y(n6) );
  AO22X4 U14 ( .A0(n73), .A1(n229), .B0(n182), .B1(n230), .Y(n227) );
  OR2X4 U15 ( .A(N98), .B(n165), .Y(n105) );
  XOR3X2 U16 ( .A(N101), .B(n156), .C(n157), .Y(n72) );
  AO22X4 U17 ( .A0(N100), .A1(n159), .B0(n107), .B1(n160), .Y(n157) );
  XOR2X2 U18 ( .A(n8), .B(n208), .Y(n51) );
  OR2X1 U19 ( .A(d11[8]), .B(d5[8]), .Y(n81) );
  OR2X1 U20 ( .A(d11[11]), .B(d5[11]), .Y(n83) );
  XNOR3X1 U21 ( .A(n297), .B(n65), .C(n299), .Y(N226) );
  INVXL U22 ( .A(n292), .Y(n294) );
  NAND2BX1 U23 ( .AN(n103), .B(d11[0]), .Y(n102) );
  XOR3X1 U24 ( .A(d11[3]), .B(d5[3]), .C(n100), .Y(n165) );
  OR2X1 U25 ( .A(N103), .B(n150), .Y(n109) );
  OR2X1 U26 ( .A(d11[7]), .B(d5[7]), .Y(n80) );
  XNOR3X2 U27 ( .A(N96), .B(n69), .C(n172), .Y(n53) );
  XOR3X1 U28 ( .A(n53), .B(n71), .C(n252), .Y(n256) );
  OAI2BB2XL U29 ( .B0(n32), .B1(n31), .A0N(d2[11]), .A1N(d0[11]), .Y(n140) );
  OAI2BB2XL U30 ( .B0(n36), .B1(n35), .A0N(d2[7]), .A1N(d0[7]), .Y(n152) );
  XOR3X1 U31 ( .A(N107), .B(n138), .C(n139), .Y(n59) );
  XNOR3X1 U32 ( .A(n241), .B(n45), .C(n242), .Y(n243) );
  AO22X1 U33 ( .A0(N21), .A1(\add_4_root_add_0_root_add_128_11/B[4] ), .B0(
        n193), .B1(n240), .Y(n237) );
  AO22X2 U34 ( .A0(n60), .A1(n220), .B0(n185), .B1(n221), .Y(n218) );
  OAI2BB2XL U35 ( .B0(n30), .B1(n29), .A0N(N107), .A1N(n138), .Y(n136) );
  CLKINVX1 U36 ( .A(n139), .Y(n29) );
  OAI2BB2XL U37 ( .B0(n22), .B1(n21), .A0N(N24), .A1N(
        \add_4_root_add_0_root_add_128_11/B[7] ), .Y(n228) );
  AO22X1 U38 ( .A0(n49), .A1(n329), .B0(n262), .B1(n330), .Y(n326) );
  OR2X1 U39 ( .A(n305), .B(n62), .Y(n270) );
  OR2X1 U40 ( .A(n297), .B(n65), .Y(n273) );
  AO22X1 U41 ( .A0(N31), .A1(\add_4_root_add_0_root_add_128_11/B[14] ), .B0(
        n199), .B1(n210), .Y(n207) );
  OR2XL U42 ( .A(N110), .B(n129), .Y(n114) );
  OAI2BB1X1 U43 ( .A0N(n64), .A1N(n205), .B0(n189), .Y(n202) );
  OAI21XL U44 ( .A0(n64), .A1(n205), .B0(n206), .Y(n189) );
  OAI2BB1X1 U45 ( .A0N(n39), .A1N(n285), .B0(n277), .Y(n282) );
  CLKINVX1 U46 ( .A(n289), .Y(n290) );
  XOR3X1 U47 ( .A(n205), .B(n64), .C(n206), .Y(n52) );
  XOR3X2 U48 ( .A(n291), .B(n55), .C(n290), .Y(N229) );
  OR2XL U49 ( .A(N99), .B(n162), .Y(n106) );
  XOR2X1 U50 ( .A(n73), .B(n229), .Y(n7) );
  XOR2X1 U51 ( .A(n7), .B(n230), .Y(n54) );
  XOR3XL U52 ( .A(N102), .B(n153), .C(n154), .Y(n73) );
  AO22X4 U53 ( .A0(n72), .A1(n232), .B0(n181), .B1(n233), .Y(n230) );
  OR2X1 U54 ( .A(n314), .B(n54), .Y(n267) );
  XOR2X1 U55 ( .A(n57), .B(n209), .Y(n8) );
  XOR3X1 U56 ( .A(N109), .B(n132), .C(n133), .Y(n57) );
  XOR2X1 U57 ( .A(N108), .B(n136), .Y(n9) );
  XOR2X1 U58 ( .A(n9), .B(n135), .Y(n61) );
  OR2X2 U59 ( .A(n211), .B(n61), .Y(n187) );
  XOR3X2 U60 ( .A(n211), .B(n61), .C(n212), .Y(n65) );
  XOR2X1 U61 ( .A(n74), .B(n226), .Y(n10) );
  XOR3XL U62 ( .A(N103), .B(n150), .C(n151), .Y(n74) );
  AO22X4 U63 ( .A0(N97), .A1(n168), .B0(n104), .B1(n3), .Y(n166) );
  OR2X4 U64 ( .A(N97), .B(n168), .Y(n104) );
  OAI2BB2X1 U65 ( .B0(n172), .B1(n41), .A0N(N96), .A1N(n69), .Y(n169) );
  NOR2X1 U66 ( .A(N96), .B(n69), .Y(n41) );
  CLKINVX1 U67 ( .A(n157), .Y(n25) );
  OAI2BB2X2 U68 ( .B0(n24), .B1(n23), .A0N(n56), .A1N(n217), .Y(n215) );
  CLKINVX2 U69 ( .A(n218), .Y(n23) );
  XOR3X1 U70 ( .A(N100), .B(n159), .C(n160), .Y(n47) );
  AO22X4 U71 ( .A0(n54), .A1(n314), .B0(n267), .B1(n315), .Y(n312) );
  INVX1 U72 ( .A(n284), .Y(n287) );
  XOR3X1 U73 ( .A(n223), .B(n58), .C(n224), .Y(n46) );
  XOR3X1 U74 ( .A(n220), .B(n60), .C(n221), .Y(n62) );
  AO22X2 U75 ( .A0(n42), .A1(n238), .B0(n179), .B1(n239), .Y(n236) );
  XOR3X1 U76 ( .A(n217), .B(n56), .C(n218), .Y(n63) );
  XOR3X2 U77 ( .A(N98), .B(n165), .C(n166), .Y(n45) );
  XOR3X2 U78 ( .A(n245), .B(n48), .C(n246), .Y(n49) );
  XOR3X2 U79 ( .A(N99), .B(n162), .C(n163), .Y(n42) );
  OR2X4 U80 ( .A(n241), .B(n45), .Y(n178) );
  AO22X4 U81 ( .A0(N99), .A1(n162), .B0(n106), .B1(n163), .Y(n160) );
  AO22X4 U82 ( .A0(n48), .A1(n245), .B0(n177), .B1(n246), .Y(n242) );
  OR2X4 U83 ( .A(n245), .B(n48), .Y(n177) );
  OR2X4 U84 ( .A(n295), .B(n51), .Y(n274) );
  OR2X4 U85 ( .A(n300), .B(n67), .Y(n272) );
  AO22X4 U86 ( .A0(n59), .A1(n214), .B0(n186), .B1(n215), .Y(n212) );
  AO22X4 U87 ( .A0(n63), .A1(n302), .B0(n271), .B1(n303), .Y(n301) );
  OR2X4 U88 ( .A(n302), .B(n63), .Y(n271) );
  XNOR3X1 U89 ( .A(n302), .B(n63), .C(n304), .Y(N224) );
  OAI21X2 U90 ( .A0(n285), .A1(n39), .B0(n284), .Y(n277) );
  AO22X4 U91 ( .A0(n46), .A1(n308), .B0(n269), .B1(n309), .Y(n306) );
  OR2X4 U92 ( .A(n308), .B(n46), .Y(n269) );
  OR2X4 U93 ( .A(n311), .B(n6), .Y(n268) );
  AO22X4 U94 ( .A0(n58), .A1(n223), .B0(n184), .B1(n224), .Y(n221) );
  OR2XL U95 ( .A(n223), .B(n58), .Y(n184) );
  XOR3XL U96 ( .A(N31), .B(\add_4_root_add_0_root_add_128_11/B[14] ), .C(n210), 
        .Y(n295) );
  CLKINVX1 U97 ( .A(n136), .Y(n27) );
  AO22XL U98 ( .A0(N110), .A1(n129), .B0(n114), .B1(n130), .Y(n117) );
  XOR3X2 U99 ( .A(N111), .B(n116), .C(n117), .Y(n66) );
  OR2XL U100 ( .A(d11[3]), .B(d5[3]), .Y(n76) );
  AO22X4 U101 ( .A0(d11[13]), .A1(d5[13]), .B0(n85), .B1(n90), .Y(n89) );
  CLKINVX1 U102 ( .A(n143), .Y(n31) );
  AO22XL U103 ( .A0(d2[15]), .A1(d0[15]), .B0(n128), .B1(n131), .Y(n203) );
  CLKXOR2X1 U104 ( .A(n203), .B(n66), .Y(n11) );
  XOR2X4 U105 ( .A(n11), .B(n202), .Y(n55) );
  XOR3X1 U106 ( .A(d2[13]), .B(d0[13]), .C(n137), .Y(n211) );
  INVXL U107 ( .A(n281), .Y(n283) );
  NAND2X1 U108 ( .A(n281), .B(n12), .Y(n14) );
  OAI2BB2XL U109 ( .B0(n20), .B1(n19), .A0N(N27), .A1N(
        \add_4_root_add_0_root_add_128_11/B[10] ), .Y(n219) );
  NOR2XL U110 ( .A(n217), .B(n56), .Y(n24) );
  OR2X1 U111 ( .A(N105), .B(n144), .Y(n111) );
  XOR3X2 U112 ( .A(N110), .B(n129), .C(n130), .Y(n64) );
  OR2XL U113 ( .A(d11[9]), .B(d5[9]), .Y(n82) );
  NOR2XL U114 ( .A(d11[10]), .B(d5[10]), .Y(n38) );
  NOR2X1 U115 ( .A(d2[11]), .B(d0[11]), .Y(n32) );
  XOR3X1 U116 ( .A(d2[14]), .B(d0[14]), .C(n134), .Y(n208) );
  AND2X2 U117 ( .A(n282), .B(n281), .Y(N232) );
  NAND2XL U118 ( .A(n283), .B(n282), .Y(n13) );
  NAND2X2 U119 ( .A(n13), .B(n14), .Y(N231) );
  INVXL U120 ( .A(n282), .Y(n12) );
  OR2XL U121 ( .A(N21), .B(\add_4_root_add_0_root_add_128_11/B[4] ), .Y(n193)
         );
  INVXL U122 ( .A(n231), .Y(n21) );
  INVXL U123 ( .A(n222), .Y(n19) );
  NOR2XL U124 ( .A(N27), .B(\add_4_root_add_0_root_add_128_11/B[10] ), .Y(n20)
         );
  OAI2BB2X1 U125 ( .B0(n16), .B1(n15), .A0N(N29), .A1N(
        \add_4_root_add_0_root_add_128_11/B[12] ), .Y(n213) );
  CLKINVX1 U126 ( .A(n216), .Y(n15) );
  XOR3XL U127 ( .A(N29), .B(\add_4_root_add_0_root_add_128_11/B[12] ), .C(n216), .Y(n300) );
  XOR3XL U128 ( .A(N30), .B(\add_4_root_add_0_root_add_128_11/B[13] ), .C(n213), .Y(n297) );
  OR2XL U129 ( .A(N104), .B(n5), .Y(n110) );
  OAI2BB2X1 U130 ( .B0(n28), .B1(n27), .A0N(N108), .A1N(n135), .Y(n133) );
  NOR2XL U131 ( .A(N108), .B(n135), .Y(n28) );
  XNOR2XL U132 ( .A(n249), .B(n248), .Y(n261) );
  XOR3X2 U133 ( .A(d11[5]), .B(d5[5]), .C(n98), .Y(n159) );
  CLKINVX1 U134 ( .A(n93), .Y(n37) );
  OR2XL U135 ( .A(d11[5]), .B(d5[5]), .Y(n78) );
  OR2XL U136 ( .A(d11[6]), .B(d5[6]), .Y(n79) );
  INVXL U137 ( .A(n155), .Y(n35) );
  OR2XL U138 ( .A(d2[9]), .B(d0[9]), .Y(n124) );
  XOR3XL U139 ( .A(d2[11]), .B(d0[11]), .C(n143), .Y(n217) );
  XNOR3X1 U140 ( .A(n328), .B(n327), .C(n326), .Y(N216) );
  AO22XL U141 ( .A0(n44), .A1(n323), .B0(n264), .B1(n324), .Y(n321) );
  OR2XL U142 ( .A(N26), .B(\add_4_root_add_0_root_add_128_11/B[9] ), .Y(n197)
         );
  OR2XL U143 ( .A(N23), .B(\add_4_root_add_0_root_add_128_11/B[6] ), .Y(n195)
         );
  NOR2XL U144 ( .A(N24), .B(\add_4_root_add_0_root_add_128_11/B[7] ), .Y(n22)
         );
  OR2XL U145 ( .A(N25), .B(\add_4_root_add_0_root_add_128_11/B[8] ), .Y(n196)
         );
  OR2XL U146 ( .A(N22), .B(\add_4_root_add_0_root_add_128_11/B[5] ), .Y(n194)
         );
  OR2XL U147 ( .A(N19), .B(\add_4_root_add_0_root_add_128_11/B[2] ), .Y(n191)
         );
  OAI2BB2XL U148 ( .B0(n18), .B1(n17), .A0N(N28), .A1N(
        \add_4_root_add_0_root_add_128_11/B[11] ), .Y(n216) );
  CLKINVX1 U149 ( .A(n219), .Y(n17) );
  NOR2XL U150 ( .A(N28), .B(\add_4_root_add_0_root_add_128_11/B[11] ), .Y(n18)
         );
  NOR2X1 U151 ( .A(N29), .B(\add_4_root_add_0_root_add_128_11/B[12] ), .Y(n16)
         );
  AO22X4 U152 ( .A0(N32), .A1(\add_4_root_add_0_root_add_128_11/B[15] ), .B0(
        n200), .B1(n207), .Y(n204) );
  OR2XL U153 ( .A(N31), .B(\add_4_root_add_0_root_add_128_11/B[14] ), .Y(n199)
         );
  OR2XL U154 ( .A(N100), .B(n159), .Y(n107) );
  NOR2XL U155 ( .A(N101), .B(n156), .Y(n26) );
  OR2X1 U156 ( .A(N106), .B(n141), .Y(n112) );
  NOR2XL U157 ( .A(N107), .B(n138), .Y(n30) );
  OR2X1 U158 ( .A(n248), .B(n249), .Y(n252) );
  AO22X4 U159 ( .A0(d11[8]), .A1(d5[8]), .B0(n81), .B1(n95), .Y(n94) );
  OAI2BB2XL U160 ( .B0(n34), .B1(n33), .A0N(d2[10]), .A1N(d0[10]), .Y(n143) );
  INVXL U161 ( .A(n146), .Y(n33) );
  NOR2XL U162 ( .A(d2[10]), .B(d0[10]), .Y(n34) );
  AO22XL U163 ( .A0(d2[6]), .A1(d0[6]), .B0(n122), .B1(n158), .Y(n155) );
  OR2XL U164 ( .A(d2[6]), .B(d0[6]), .Y(n122) );
  OAI2BB2XL U165 ( .B0(n171), .B1(n70), .A0N(d2[1]), .A1N(d0[1]), .Y(n170) );
  NOR2XL U166 ( .A(d2[7]), .B(d0[7]), .Y(n36) );
  OR2XL U167 ( .A(d2[8]), .B(d0[8]), .Y(n123) );
  OR2XL U168 ( .A(d2[5]), .B(d0[5]), .Y(n121) );
  OR2XL U169 ( .A(d2[4]), .B(d0[4]), .Y(n120) );
  CLKINVX1 U170 ( .A(d0[0]), .Y(n173) );
  AO22X4 U171 ( .A0(d2[14]), .A1(d0[14]), .B0(n127), .B1(n134), .Y(n131) );
  OR2X1 U172 ( .A(d2[13]), .B(d0[13]), .Y(n126) );
  INVXL U173 ( .A(n285), .Y(n286) );
  XOR2X4 U174 ( .A(n279), .B(n278), .Y(n39) );
  INVXL U175 ( .A(n288), .Y(n291) );
  XNOR3X1 U176 ( .A(n294), .B(n52), .C(n293), .Y(N228) );
  AO22XL U177 ( .A0(N112), .A1(n280), .B0(n279), .B1(n278), .Y(n281) );
  AO22X4 U178 ( .A0(n62), .A1(n305), .B0(n270), .B1(n306), .Y(n303) );
  AO22X4 U179 ( .A0(n6), .A1(n311), .B0(n268), .B1(n312), .Y(n309) );
  AO22X4 U180 ( .A0(n50), .A1(n317), .B0(n266), .B1(n318), .Y(n315) );
  XOR3XL U181 ( .A(n295), .B(n51), .C(n296), .Y(N227) );
  XOR3X2 U182 ( .A(N32), .B(\add_4_root_add_0_root_add_128_11/B[15] ), .C(n207), .Y(n292) );
  AO22X4 U183 ( .A0(N26), .A1(\add_4_root_add_0_root_add_128_11/B[9] ), .B0(
        n197), .B1(n225), .Y(n222) );
  AO22X4 U184 ( .A0(N23), .A1(\add_4_root_add_0_root_add_128_11/B[6] ), .B0(
        n195), .B1(n234), .Y(n231) );
  OR2XL U185 ( .A(N32), .B(\add_4_root_add_0_root_add_128_11/B[15] ), .Y(n200)
         );
  XOR3XL U186 ( .A(N28), .B(\add_4_root_add_0_root_add_128_11/B[11] ), .C(n219), .Y(n302) );
  XOR3XL U187 ( .A(N27), .B(\add_4_root_add_0_root_add_128_11/B[10] ), .C(n222), .Y(n305) );
  XOR3XL U188 ( .A(N26), .B(\add_4_root_add_0_root_add_128_11/B[9] ), .C(n225), 
        .Y(n308) );
  XOR3XL U189 ( .A(N25), .B(\add_4_root_add_0_root_add_128_11/B[8] ), .C(n228), 
        .Y(n311) );
  XOR3XL U190 ( .A(N24), .B(\add_4_root_add_0_root_add_128_11/B[7] ), .C(n231), 
        .Y(n314) );
  XOR3XL U191 ( .A(N23), .B(\add_4_root_add_0_root_add_128_11/B[6] ), .C(n234), 
        .Y(n317) );
  XOR3XL U192 ( .A(N22), .B(\add_4_root_add_0_root_add_128_11/B[5] ), .C(n237), 
        .Y(n320) );
  XOR3XL U193 ( .A(N21), .B(\add_4_root_add_0_root_add_128_11/B[4] ), .C(n240), 
        .Y(n323) );
  XOR3XL U194 ( .A(N19), .B(\add_4_root_add_0_root_add_128_11/B[2] ), .C(n247), 
        .Y(n329) );
  XOR3XL U195 ( .A(N20), .B(\add_4_root_add_0_root_add_128_11/B[3] ), .C(n244), 
        .Y(n325) );
  XOR3XL U196 ( .A(N18), .B(\add_4_root_add_0_root_add_128_11/B[1] ), .C(n251), 
        .Y(n255) );
  XNOR3XL U197 ( .A(n305), .B(n62), .C(n307), .Y(N223) );
  XNOR3XL U198 ( .A(n308), .B(n46), .C(n310), .Y(N222) );
  XNOR3XL U199 ( .A(n311), .B(n6), .C(n313), .Y(N221) );
  XNOR3XL U200 ( .A(n314), .B(n54), .C(n316), .Y(N220) );
  XNOR3XL U201 ( .A(n317), .B(n50), .C(n319), .Y(N219) );
  XNOR3XL U202 ( .A(n320), .B(n43), .C(n322), .Y(N218) );
  XOR3XL U203 ( .A(n323), .B(n44), .C(n324), .Y(N217) );
  XOR3XL U204 ( .A(n329), .B(n49), .C(n330), .Y(N215) );
  AO22X4 U205 ( .A0(n61), .A1(n211), .B0(n187), .B1(n212), .Y(n209) );
  AO22X4 U206 ( .A0(n47), .A1(n235), .B0(n180), .B1(n236), .Y(n233) );
  AO22X4 U207 ( .A0(n45), .A1(n241), .B0(n178), .B1(n242), .Y(n239) );
  AO22X4 U208 ( .A0(n74), .A1(n226), .B0(n183), .B1(n227), .Y(n224) );
  OAI2BB2X1 U209 ( .B0(n26), .B1(n25), .A0N(N101), .A1N(n156), .Y(n154) );
  AO22X4 U210 ( .A0(N98), .A1(n165), .B0(n105), .B1(n166), .Y(n163) );
  OR2XL U211 ( .A(N102), .B(n153), .Y(n108) );
  XOR3XL U212 ( .A(n214), .B(n59), .C(n215), .Y(n67) );
  XOR3XL U213 ( .A(n232), .B(n72), .C(n233), .Y(n50) );
  XOR3XL U214 ( .A(n235), .B(n47), .C(n236), .Y(n43) );
  XOR3XL U215 ( .A(n238), .B(n42), .C(n239), .Y(n44) );
  XOR2XL U216 ( .A(n174), .B(N95), .Y(n249) );
  AO22XL U217 ( .A0(N111), .A1(n116), .B0(n115), .B1(n117), .Y(n280) );
  OR2XL U218 ( .A(N111), .B(n116), .Y(n115) );
  XNOR2XL U219 ( .A(n250), .B(N17), .Y(n254) );
  NOR2XL U220 ( .A(d11[1]), .B(d5[1]), .Y(n68) );
  INVX3 U221 ( .A(d5[0]), .Y(n103) );
  OR2XL U222 ( .A(d11[2]), .B(d5[2]), .Y(n75) );
  XOR3X2 U223 ( .A(d11[4]), .B(d5[4]), .C(n99), .Y(n162) );
  XOR2XL U224 ( .A(n103), .B(d11[0]), .Y(n174) );
  OR2XL U225 ( .A(d11[4]), .B(d5[4]), .Y(n77) );
  NOR2XL U226 ( .A(d2[1]), .B(d0[1]), .Y(n70) );
  AO22XL U227 ( .A0(d2[2]), .A1(d0[2]), .B0(n118), .B1(n170), .Y(n167) );
  OR2XL U228 ( .A(d2[2]), .B(d0[2]), .Y(n118) );
  AO22X4 U229 ( .A0(d2[13]), .A1(d0[13]), .B0(n126), .B1(n137), .Y(n134) );
  AO22X4 U230 ( .A0(d2[9]), .A1(d0[9]), .B0(n124), .B1(n149), .Y(n146) );
  AO22X4 U231 ( .A0(d2[4]), .A1(d0[4]), .B0(n120), .B1(n164), .Y(n161) );
  OR2XL U232 ( .A(d2[14]), .B(d0[14]), .Y(n127) );
  XOR3XL U233 ( .A(d2[3]), .B(d0[3]), .C(n167), .Y(n241) );
  XOR3XL U234 ( .A(d2[9]), .B(d0[9]), .C(n149), .Y(n223) );
  XOR3XL U235 ( .A(d2[12]), .B(d0[12]), .C(n140), .Y(n214) );
  XOR3XL U236 ( .A(d2[10]), .B(d0[10]), .C(n146), .Y(n220) );
  XOR3XL U237 ( .A(d2[8]), .B(d0[8]), .C(n152), .Y(n226) );
  XOR3XL U238 ( .A(d2[7]), .B(d0[7]), .C(n155), .Y(n229) );
  XOR3XL U239 ( .A(d2[4]), .B(d0[4]), .C(n164), .Y(n238) );
  XOR3XL U240 ( .A(d2[5]), .B(d0[5]), .C(n161), .Y(n235) );
  XOR3XL U241 ( .A(d2[6]), .B(d0[6]), .C(n158), .Y(n232) );
  XOR3X2 U242 ( .A(d11[14]), .B(d5[14]), .C(n89), .Y(n132) );
  AO22XL U243 ( .A0(d11[12]), .A1(d5[12]), .B0(n84), .B1(n91), .Y(n90) );
  OR2XL U244 ( .A(d11[12]), .B(d5[12]), .Y(n84) );
  OR2XL U245 ( .A(d11[13]), .B(d5[13]), .Y(n85) );
  OAI2BB2X1 U246 ( .B0(n38), .B1(n37), .A0N(d11[10]), .A1N(d5[10]), .Y(n92) );
  AO22X4 U247 ( .A0(d11[9]), .A1(d5[9]), .B0(n82), .B1(n94), .Y(n93) );
  XOR3X2 U248 ( .A(d11[15]), .B(d5[15]), .C(n88), .Y(n129) );
  AO22XL U249 ( .A0(d11[14]), .A1(d5[14]), .B0(n86), .B1(n89), .Y(n88) );
  OR2XL U250 ( .A(d11[14]), .B(d5[14]), .Y(n86) );
  XOR3XL U251 ( .A(d11[11]), .B(d5[11]), .C(n92), .Y(n141) );
  XOR2XL U252 ( .A(n173), .B(d2[0]), .Y(n248) );
  XOR3XL U253 ( .A(d11[9]), .B(d5[9]), .C(n94), .Y(n147) );
  AO22XL U254 ( .A0(d11[15]), .A1(d5[15]), .B0(n87), .B1(n88), .Y(n116) );
  OR2XL U255 ( .A(d11[15]), .B(d5[15]), .Y(n87) );
  CLKINVX1 U256 ( .A(n325), .Y(n328) );
  CLKINVX1 U257 ( .A(n255), .Y(n258) );
  XOR3X1 U258 ( .A(N33), .B(\add_4_root_add_0_root_add_128_11/B[16] ), .C(n204), .Y(n288) );
  AO22X1 U259 ( .A0(N33), .A1(\add_4_root_add_0_root_add_128_11/B[16] ), .B0(
        n201), .B1(n204), .Y(n285) );
  OR2X1 U260 ( .A(N33), .B(\add_4_root_add_0_root_add_128_11/B[16] ), .Y(n201)
         );
  AO22X1 U261 ( .A0(n43), .A1(n320), .B0(n265), .B1(n321), .Y(n318) );
  OR2X1 U262 ( .A(n320), .B(n43), .Y(n265) );
  OR2X1 U263 ( .A(n317), .B(n50), .Y(n266) );
  OR2X1 U264 ( .A(n323), .B(n44), .Y(n264) );
  OR2X1 U265 ( .A(n329), .B(n49), .Y(n262) );
  NAND2X1 U266 ( .A(n255), .B(n256), .Y(n253) );
  CLKINVX1 U267 ( .A(n256), .Y(n257) );
  CLKINVX1 U268 ( .A(n243), .Y(n327) );
  XOR2X1 U269 ( .A(n280), .B(N112), .Y(n279) );
  OAI2BB2XL U270 ( .B0(n251), .B1(n40), .A0N(N18), .A1N(
        \add_4_root_add_0_root_add_128_11/B[1] ), .Y(n247) );
  NOR2X1 U271 ( .A(N18), .B(\add_4_root_add_0_root_add_128_11/B[1] ), .Y(n40)
         );
  AO22X1 U272 ( .A0(N19), .A1(\add_4_root_add_0_root_add_128_11/B[2] ), .B0(
        n191), .B1(n247), .Y(n244) );
  AO22X1 U273 ( .A0(N20), .A1(\add_4_root_add_0_root_add_128_11/B[3] ), .B0(
        n192), .B1(n244), .Y(n240) );
  OR2X1 U274 ( .A(N20), .B(\add_4_root_add_0_root_add_128_11/B[3] ), .Y(n192)
         );
  AO22X1 U275 ( .A0(N22), .A1(\add_4_root_add_0_root_add_128_11/B[5] ), .B0(
        n194), .B1(n237), .Y(n234) );
  AO22X1 U276 ( .A0(N25), .A1(\add_4_root_add_0_root_add_128_11/B[8] ), .B0(
        n196), .B1(n228), .Y(n225) );
  AO22X1 U277 ( .A0(N30), .A1(\add_4_root_add_0_root_add_128_11/B[13] ), .B0(
        n198), .B1(n213), .Y(n210) );
  OR2X1 U278 ( .A(N30), .B(\add_4_root_add_0_root_add_128_11/B[13] ), .Y(n198)
         );
  XOR3XL U279 ( .A(n300), .B(n67), .C(n301), .Y(N225) );
  INVXL U280 ( .A(n303), .Y(n304) );
  INVXL U281 ( .A(n306), .Y(n307) );
  INVXL U282 ( .A(n309), .Y(n310) );
  INVXL U283 ( .A(n312), .Y(n313) );
  INVXL U284 ( .A(n315), .Y(n316) );
  INVXL U285 ( .A(n321), .Y(n322) );
  INVXL U286 ( .A(n318), .Y(n319) );
  OR2X1 U287 ( .A(n238), .B(n42), .Y(n179) );
  OR2X1 U288 ( .A(n229), .B(n73), .Y(n182) );
  OR2X1 U289 ( .A(n232), .B(n72), .Y(n181) );
  OR2X1 U290 ( .A(n235), .B(n47), .Y(n180) );
  OR2X1 U291 ( .A(n226), .B(n74), .Y(n183) );
  OR2X1 U292 ( .A(n214), .B(n59), .Y(n186) );
  OR2X1 U293 ( .A(n220), .B(n60), .Y(n185) );
  OR2X1 U294 ( .A(n208), .B(n57), .Y(n188) );
  OAI21X1 U295 ( .A0(n261), .A1(n260), .B0(n259), .Y(n330) );
  NAND2X1 U296 ( .A(n258), .B(n257), .Y(n259) );
  NAND2X1 U297 ( .A(n254), .B(n253), .Y(n260) );
  XOR3X1 U298 ( .A(N106), .B(n141), .C(n142), .Y(n56) );
  OAI2BB1X1 U299 ( .A0N(n71), .A1N(n53), .B0(n176), .Y(n246) );
  CLKINVX1 U300 ( .A(n252), .Y(n175) );
  XOR3X2 U301 ( .A(N104), .B(n5), .C(n148), .Y(n58) );
  OR2X1 U302 ( .A(n66), .B(n203), .Y(n190) );
  AO22X1 U303 ( .A0(N109), .A1(n132), .B0(n113), .B1(n133), .Y(n130) );
  OR2X1 U304 ( .A(N109), .B(n132), .Y(n113) );
  NAND2BX1 U305 ( .AN(n174), .B(N95), .Y(n172) );
  NAND2BX1 U306 ( .AN(n250), .B(N17), .Y(n251) );
  CLKINVX1 U307 ( .A(\add_4_root_add_0_root_add_128_11/B[0] ), .Y(n250) );
  XNOR3X1 U308 ( .A(d11[1]), .B(d5[1]), .C(n102), .Y(n69) );
  XOR3X1 U309 ( .A(d11[12]), .B(d5[12]), .C(n91), .Y(n138) );
  AO22X1 U310 ( .A0(d11[11]), .A1(d5[11]), .B0(n83), .B1(n92), .Y(n91) );
  XOR3X1 U311 ( .A(d11[13]), .B(d5[13]), .C(n90), .Y(n135) );
  XOR3X1 U312 ( .A(d2[2]), .B(d0[2]), .C(n170), .Y(n245) );
  NAND2BX1 U313 ( .AN(n173), .B(d2[0]), .Y(n171) );
  AO22X1 U314 ( .A0(d2[3]), .A1(d0[3]), .B0(n119), .B1(n167), .Y(n164) );
  OR2X1 U315 ( .A(d2[3]), .B(d0[3]), .Y(n119) );
  AO22X1 U316 ( .A0(d2[5]), .A1(d0[5]), .B0(n121), .B1(n161), .Y(n158) );
  AO22X1 U317 ( .A0(d2[8]), .A1(d0[8]), .B0(n123), .B1(n152), .Y(n149) );
  AO22X1 U318 ( .A0(d2[12]), .A1(d0[12]), .B0(n125), .B1(n140), .Y(n137) );
  OR2X1 U319 ( .A(d2[12]), .B(d0[12]), .Y(n125) );
  XOR3X1 U320 ( .A(d2[15]), .B(d0[15]), .C(n131), .Y(n205) );
  XNOR3X1 U321 ( .A(d2[1]), .B(d0[1]), .C(n171), .Y(n71) );
  OR2X1 U322 ( .A(d2[15]), .B(d0[15]), .Y(n128) );
  XOR3X1 U323 ( .A(d11[6]), .B(d5[6]), .C(n97), .Y(n156) );
  XOR3X1 U324 ( .A(d11[7]), .B(d5[7]), .C(n96), .Y(n153) );
  XOR3X1 U325 ( .A(d11[8]), .B(d5[8]), .C(n95), .Y(n150) );
  NAND2X1 U326 ( .A(n328), .B(n243), .Y(n263) );
  OR2XL U327 ( .A(n292), .B(n52), .Y(n275) );
  OAI21X1 U328 ( .A0(n71), .A1(n53), .B0(n175), .Y(n176) );
  CLKINVX1 U329 ( .A(n298), .Y(n299) );
  AO22X4 U331 ( .A0(d11[3]), .A1(d5[3]), .B0(n76), .B1(n100), .Y(n99) );
  AO22X4 U332 ( .A0(d11[4]), .A1(d5[4]), .B0(n77), .B1(n99), .Y(n98) );
  AO22X4 U333 ( .A0(d11[5]), .A1(d5[5]), .B0(n78), .B1(n98), .Y(n97) );
  AO22X4 U334 ( .A0(d11[6]), .A1(d5[6]), .B0(n79), .B1(n97), .Y(n96) );
  AO22X4 U335 ( .A0(d11[7]), .A1(d5[7]), .B0(n80), .B1(n96), .Y(n95) );
  AO22X4 U336 ( .A0(N102), .A1(n153), .B0(n108), .B1(n154), .Y(n151) );
  AO22X4 U337 ( .A0(N103), .A1(n150), .B0(n109), .B1(n151), .Y(n148) );
  AO22X4 U338 ( .A0(N104), .A1(n5), .B0(n110), .B1(n148), .Y(n145) );
  AO22X4 U339 ( .A0(N105), .A1(n144), .B0(n111), .B1(n145), .Y(n142) );
  AO22X4 U340 ( .A0(N106), .A1(n141), .B0(n112), .B1(n142), .Y(n139) );
  AO22X4 U341 ( .A0(n57), .A1(n208), .B0(n188), .B1(n209), .Y(n206) );
  AO22X4 U342 ( .A0(n66), .A1(n203), .B0(n190), .B1(n202), .Y(n278) );
  AO22X4 U343 ( .A0(n327), .A1(n325), .B0(n263), .B1(n326), .Y(n324) );
  AO22X4 U344 ( .A0(n67), .A1(n300), .B0(n272), .B1(n301), .Y(n298) );
  AO22X4 U345 ( .A0(n65), .A1(n297), .B0(n273), .B1(n298), .Y(n296) );
  AO22X4 U346 ( .A0(n51), .A1(n295), .B0(n274), .B1(n296), .Y(n293) );
  AO22X4 U347 ( .A0(n52), .A1(n292), .B0(n275), .B1(n293), .Y(n289) );
  OAI21X4 U348 ( .A0(n55), .A1(n288), .B0(n289), .Y(n276) );
  OAI2BB1X4 U349 ( .A0N(n55), .A1N(n288), .B0(n276), .Y(n284) );
  XOR3X4 U350 ( .A(n287), .B(n39), .C(n286), .Y(N230) );
endmodule


module avg_compare_DW01_inc_8_DW01_inc_9 ( A, SUM );
  input [15:0] A;
  output [15:0] SUM;

  wire   [15:2] carry;

  ADDHXL U1_1_14 ( .A(A[14]), .B(carry[14]), .CO(carry[15]), .S(SUM[14]) );
  ADDHXL U1_1_13 ( .A(A[13]), .B(carry[13]), .CO(carry[14]), .S(SUM[13]) );
  ADDHXL U1_1_12 ( .A(A[12]), .B(carry[12]), .CO(carry[13]), .S(SUM[12]) );
  ADDHXL U1_1_11 ( .A(A[11]), .B(carry[11]), .CO(carry[12]), .S(SUM[11]) );
  ADDHXL U1_1_10 ( .A(A[10]), .B(carry[10]), .CO(carry[11]), .S(SUM[10]) );
  ADDHXL U1_1_1 ( .A(A[1]), .B(A[0]), .CO(carry[2]), .S(SUM[1]) );
  ADDHXL U1_1_2 ( .A(A[2]), .B(carry[2]), .CO(carry[3]), .S(SUM[2]) );
  ADDHXL U1_1_9 ( .A(A[9]), .B(carry[9]), .CO(carry[10]), .S(SUM[9]) );
  ADDHXL U1_1_8 ( .A(A[8]), .B(carry[8]), .CO(carry[9]), .S(SUM[8]) );
  ADDHXL U1_1_7 ( .A(A[7]), .B(carry[7]), .CO(carry[8]), .S(SUM[7]) );
  ADDHXL U1_1_6 ( .A(A[6]), .B(carry[6]), .CO(carry[7]), .S(SUM[6]) );
  ADDHXL U1_1_3 ( .A(A[3]), .B(carry[3]), .CO(carry[4]), .S(SUM[3]) );
  ADDHXL U1_1_5 ( .A(A[5]), .B(carry[5]), .CO(carry[6]), .S(SUM[5]) );
  ADDHXL U1_1_4 ( .A(A[4]), .B(carry[4]), .CO(carry[5]), .S(SUM[4]) );
  CLKINVX1 U1 ( .A(A[0]), .Y(SUM[0]) );
  XOR2X1 U2 ( .A(carry[15]), .B(A[15]), .Y(SUM[15]) );
endmodule


module avg_compare_DW01_inc_9_DW01_inc_10 ( A, SUM );
  input [15:0] A;
  output [15:0] SUM;

  wire   [15:2] carry;

  ADDHXL U1_1_14 ( .A(A[14]), .B(carry[14]), .CO(carry[15]), .S(SUM[14]) );
  ADDHXL U1_1_13 ( .A(A[13]), .B(carry[13]), .CO(carry[14]), .S(SUM[13]) );
  ADDHXL U1_1_12 ( .A(A[12]), .B(carry[12]), .CO(carry[13]), .S(SUM[12]) );
  ADDHXL U1_1_11 ( .A(A[11]), .B(carry[11]), .CO(carry[12]), .S(SUM[11]) );
  ADDHXL U1_1_10 ( .A(A[10]), .B(carry[10]), .CO(carry[11]), .S(SUM[10]) );
  ADDHXL U1_1_1 ( .A(A[1]), .B(A[0]), .CO(carry[2]), .S(SUM[1]) );
  ADDHXL U1_1_2 ( .A(A[2]), .B(carry[2]), .CO(carry[3]), .S(SUM[2]) );
  ADDHXL U1_1_9 ( .A(A[9]), .B(carry[9]), .CO(carry[10]), .S(SUM[9]) );
  ADDHXL U1_1_8 ( .A(A[8]), .B(carry[8]), .CO(carry[9]), .S(SUM[8]) );
  ADDHXL U1_1_7 ( .A(A[7]), .B(carry[7]), .CO(carry[8]), .S(SUM[7]) );
  ADDHXL U1_1_6 ( .A(A[6]), .B(carry[6]), .CO(carry[7]), .S(SUM[6]) );
  ADDHXL U1_1_3 ( .A(A[3]), .B(carry[3]), .CO(carry[4]), .S(SUM[3]) );
  ADDHXL U1_1_5 ( .A(A[5]), .B(carry[5]), .CO(carry[6]), .S(SUM[5]) );
  ADDHXL U1_1_4 ( .A(A[4]), .B(carry[4]), .CO(carry[5]), .S(SUM[4]) );
  INVXL U1 ( .A(A[0]), .Y(SUM[0]) );
  XOR2X1 U2 ( .A(carry[15]), .B(A[15]), .Y(SUM[15]) );
endmodule


module avg_compare_DW01_inc_10_DW01_inc_11 ( A, SUM );
  input [15:0] A;
  output [15:0] SUM;

  wire   [15:2] carry;

  ADDHXL U1_1_14 ( .A(A[14]), .B(carry[14]), .CO(carry[15]), .S(SUM[14]) );
  ADDHXL U1_1_13 ( .A(A[13]), .B(carry[13]), .CO(carry[14]), .S(SUM[13]) );
  ADDHXL U1_1_12 ( .A(A[12]), .B(carry[12]), .CO(carry[13]), .S(SUM[12]) );
  ADDHXL U1_1_11 ( .A(A[11]), .B(carry[11]), .CO(carry[12]), .S(SUM[11]) );
  ADDHXL U1_1_10 ( .A(A[10]), .B(carry[10]), .CO(carry[11]), .S(SUM[10]) );
  ADDHXL U1_1_1 ( .A(A[1]), .B(A[0]), .CO(carry[2]), .S(SUM[1]) );
  ADDHXL U1_1_2 ( .A(A[2]), .B(carry[2]), .CO(carry[3]), .S(SUM[2]) );
  ADDHXL U1_1_9 ( .A(A[9]), .B(carry[9]), .CO(carry[10]), .S(SUM[9]) );
  ADDHXL U1_1_8 ( .A(A[8]), .B(carry[8]), .CO(carry[9]), .S(SUM[8]) );
  ADDHXL U1_1_7 ( .A(A[7]), .B(carry[7]), .CO(carry[8]), .S(SUM[7]) );
  ADDHXL U1_1_6 ( .A(A[6]), .B(carry[6]), .CO(carry[7]), .S(SUM[6]) );
  ADDHXL U1_1_5 ( .A(A[5]), .B(carry[5]), .CO(carry[6]), .S(SUM[5]) );
  ADDHXL U1_1_4 ( .A(A[4]), .B(carry[4]), .CO(carry[5]), .S(SUM[4]) );
  ADDHXL U1_1_3 ( .A(A[3]), .B(carry[3]), .CO(carry[4]), .S(SUM[3]) );
  INVXL U1 ( .A(A[0]), .Y(SUM[0]) );
  XOR2X1 U2 ( .A(carry[15]), .B(A[15]), .Y(SUM[15]) );
endmodule


module avg_compare_DW01_inc_11_DW01_inc_12 ( A, SUM );
  input [15:0] A;
  output [15:0] SUM;

  wire   [15:2] carry;

  ADDHXL U1_1_14 ( .A(A[14]), .B(carry[14]), .CO(carry[15]), .S(SUM[14]) );
  ADDHXL U1_1_13 ( .A(A[13]), .B(carry[13]), .CO(carry[14]), .S(SUM[13]) );
  ADDHXL U1_1_12 ( .A(A[12]), .B(carry[12]), .CO(carry[13]), .S(SUM[12]) );
  ADDHXL U1_1_1 ( .A(A[1]), .B(A[0]), .CO(carry[2]), .S(SUM[1]) );
  ADDHXL U1_1_2 ( .A(A[2]), .B(carry[2]), .CO(carry[3]), .S(SUM[2]) );
  ADDHXL U1_1_11 ( .A(A[11]), .B(carry[11]), .CO(carry[12]), .S(SUM[11]) );
  ADDHXL U1_1_10 ( .A(A[10]), .B(carry[10]), .CO(carry[11]), .S(SUM[10]) );
  ADDHXL U1_1_9 ( .A(A[9]), .B(carry[9]), .CO(carry[10]), .S(SUM[9]) );
  ADDHXL U1_1_8 ( .A(A[8]), .B(carry[8]), .CO(carry[9]), .S(SUM[8]) );
  ADDHXL U1_1_7 ( .A(A[7]), .B(carry[7]), .CO(carry[8]), .S(SUM[7]) );
  ADDHXL U1_1_6 ( .A(A[6]), .B(carry[6]), .CO(carry[7]), .S(SUM[6]) );
  ADDHXL U1_1_3 ( .A(A[3]), .B(carry[3]), .CO(carry[4]), .S(SUM[3]) );
  ADDHXL U1_1_5 ( .A(A[5]), .B(carry[5]), .CO(carry[6]), .S(SUM[5]) );
  ADDHXL U1_1_4 ( .A(A[4]), .B(carry[4]), .CO(carry[5]), .S(SUM[4]) );
  CLKINVX1 U1 ( .A(A[0]), .Y(SUM[0]) );
  XOR2X1 U2 ( .A(carry[15]), .B(A[15]), .Y(SUM[15]) );
endmodule


module avg_compare_DW01_inc_20 ( A, SUM );
  input [15:0] A;
  output [15:0] SUM;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n11, n12, n13, n14, n15, n16, n17,
         n18, n19, n22, n23, n24, n25, n26, n28, n29, n30, n31, n32, n33, n34,
         n35, n36, n37, n38, n40, n41, n42, n43, n44, n45, n46, n47, n48, n50;
  assign n6 = A[14];
  assign n11 = A[13];
  assign n16 = A[12];
  assign n19 = A[11];
  assign n23 = A[10];
  assign n26 = A[9];
  assign n38 = A[5];
  assign n43 = A[3];
  assign n48 = A[1];
  assign n50 = A[0];

  XOR2X1 U4 ( .A(n8), .B(n7), .Y(SUM[14]) );
  XOR2X1 U10 ( .A(n13), .B(n12), .Y(SUM[13]) );
  XOR2X1 U16 ( .A(n18), .B(n17), .Y(SUM[12]) );
  XOR2X1 U26 ( .A(n25), .B(n24), .Y(SUM[10]) );
  XOR2X1 U40 ( .A(n33), .B(n34), .Y(SUM[7]) );
  XOR2X1 U43 ( .A(n36), .B(n37), .Y(SUM[6]) );
  XOR2X1 U51 ( .A(n41), .B(n42), .Y(SUM[4]) );
  XOR2X1 U58 ( .A(n46), .B(n47), .Y(SUM[2]) );
  NAND2X1 U69 ( .A(n30), .B(n35), .Y(n29) );
  NOR2X1 U70 ( .A(n22), .B(n29), .Y(n1) );
  CLKINVX1 U71 ( .A(A[8]), .Y(n31) );
  INVXL U72 ( .A(n35), .Y(n34) );
  INVXL U73 ( .A(n43), .Y(n44) );
  INVXL U74 ( .A(n23), .Y(n24) );
  INVXL U75 ( .A(n15), .Y(n14) );
  NAND2XL U76 ( .A(n28), .B(n26), .Y(n25) );
  NAND2XL U77 ( .A(n4), .B(n1), .Y(n3) );
  NOR2XL U78 ( .A(n15), .B(n5), .Y(n4) );
  NAND2XL U79 ( .A(n11), .B(n6), .Y(n5) );
  XOR2XL U80 ( .A(n1), .B(n19), .Y(SUM[11]) );
  INVX1 U81 ( .A(A[6]), .Y(n36) );
  XOR2XL U82 ( .A(n48), .B(n50), .Y(SUM[1]) );
  INVX1 U83 ( .A(A[4]), .Y(n41) );
  INVX1 U84 ( .A(A[2]), .Y(n46) );
  NAND2XL U85 ( .A(n1), .B(n14), .Y(n13) );
  XNOR2XL U86 ( .A(n32), .B(n31), .Y(SUM[8]) );
  NOR2XL U87 ( .A(n34), .B(n33), .Y(n32) );
  XOR2XL U88 ( .A(n38), .B(n40), .Y(SUM[5]) );
  CLKINVX1 U89 ( .A(n29), .Y(n28) );
  NAND2X1 U90 ( .A(n9), .B(n1), .Y(n8) );
  NOR2X1 U91 ( .A(n15), .B(n12), .Y(n9) );
  NOR2X1 U92 ( .A(n31), .B(n33), .Y(n30) );
  NAND2X1 U93 ( .A(n26), .B(n23), .Y(n22) );
  NAND2X1 U94 ( .A(n1), .B(n19), .Y(n18) );
  XOR2X1 U95 ( .A(n3), .B(n2), .Y(SUM[15]) );
  CLKINVX1 U96 ( .A(A[15]), .Y(n2) );
  NOR2X1 U97 ( .A(n36), .B(n37), .Y(n35) );
  NAND2X1 U98 ( .A(n38), .B(n40), .Y(n37) );
  CLKINVX1 U99 ( .A(n11), .Y(n12) );
  NAND2X1 U100 ( .A(n19), .B(n16), .Y(n15) );
  NOR2X1 U101 ( .A(n41), .B(n42), .Y(n40) );
  NOR2X1 U102 ( .A(n46), .B(n47), .Y(n45) );
  NAND2X1 U103 ( .A(n43), .B(n45), .Y(n42) );
  XOR2X1 U104 ( .A(n26), .B(n28), .Y(SUM[9]) );
  XNOR2X1 U105 ( .A(n44), .B(n45), .Y(SUM[3]) );
  CLKINVX1 U106 ( .A(n16), .Y(n17) );
  CLKINVX1 U107 ( .A(n6), .Y(n7) );
  CLKINVX1 U108 ( .A(A[7]), .Y(n33) );
  NAND2X1 U109 ( .A(n48), .B(n50), .Y(n47) );
  CLKINVX1 U110 ( .A(n50), .Y(SUM[0]) );
endmodule


module avg_compare_DW01_sub_32 ( A, B, CI, DIFF, CO );
  input [15:0] A;
  input [15:0] B;
  output [15:0] DIFF;
  input CI;
  output CO;
  wire   n1, n2, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n19, n20, n25, n27, n28, n29, n30, n31, n32, n35, n36, n37, n38,
         n40, n43, n44, n46, n47, n48, n49, n51, n52, n53, n54, n55, n56, n57,
         n58, n59, n60, n63, n64, n65, n66, n68, n71, n72, n73, n74, n75, n76,
         n77, n78, n79, n80, n81, n82, n83, n84, n85, n86, n87, n88, n89, n90,
         n91, n93, n95, n96, n97, n98, n99, n101, n103, n104, n106, n107, n108,
         n110, n111, n114, n120, n121, n122, n123, n124, n125, n126, n127,
         n128, n129, n130, n131, n132, n133, n134, n135, n191, n192, n193,
         n194, n195, n196, n197, n198;

  XOR2X1 U7 ( .A(n29), .B(n4), .Y(DIFF[14]) );
  XOR2X1 U19 ( .A(n36), .B(n5), .Y(DIFF[13]) );
  XOR2X1 U49 ( .A(n57), .B(n8), .Y(DIFF[10]) );
  XOR2X1 U59 ( .A(n64), .B(n9), .Y(DIFF[9]) );
  XOR2X1 U69 ( .A(n73), .B(n10), .Y(DIFF[8]) );
  XOR2X1 U98 ( .A(n13), .B(n87), .Y(DIFF[5]) );
  XOR2X1 U104 ( .A(n91), .B(n14), .Y(DIFF[4]) );
  XOR2X1 U119 ( .A(n16), .B(n99), .Y(DIFF[2]) );
  XOR2X1 U125 ( .A(n17), .B(n104), .Y(DIFF[1]) );
  OAI21XL U155 ( .A0(n99), .A1(n97), .B0(n98), .Y(n96) );
  AOI21X1 U156 ( .A0(n96), .A1(n196), .B0(n93), .Y(n91) );
  NOR2X1 U157 ( .A(A[9]), .B(n126), .Y(n60) );
  NAND2X1 U158 ( .A(n198), .B(n19), .Y(n191) );
  AOI21X1 U159 ( .A0(n1), .A1(n193), .B0(n194), .Y(n20) );
  NAND2X1 U160 ( .A(A[7]), .B(n128), .Y(n77) );
  AOI21X1 U161 ( .A0(n66), .A1(n53), .B0(n54), .Y(n52) );
  NOR2XL U162 ( .A(n60), .B(n55), .Y(n53) );
  INVXL U163 ( .A(n88), .Y(n87) );
  INVXL U164 ( .A(n32), .Y(n107) );
  AOI21X1 U165 ( .A0(n80), .A1(n88), .B0(n81), .Y(n79) );
  NAND2BXL U166 ( .AN(n71), .B(n72), .Y(n10) );
  INVXL U167 ( .A(n55), .Y(n110) );
  INVXL U168 ( .A(n27), .Y(n106) );
  NAND2BXL U169 ( .AN(n85), .B(n86), .Y(n13) );
  OAI21XL U170 ( .A0(n68), .A1(n60), .B0(n63), .Y(n59) );
  OAI21XL U171 ( .A0(n87), .A1(n85), .B0(n86), .Y(n84) );
  INVXL U172 ( .A(n82), .Y(n114) );
  NAND2BXL U173 ( .AN(n97), .B(n98), .Y(n16) );
  NAND2BXL U174 ( .AN(n89), .B(n90), .Y(n14) );
  CLKAND2X3 U175 ( .A(n25), .B(n37), .Y(n193) );
  XNOR2XL U176 ( .A(n78), .B(n11), .Y(DIFF[7]) );
  OAI2BB1X4 U177 ( .A0N(n38), .A1N(n25), .B0(n195), .Y(n194) );
  XOR2X4 U178 ( .A(n20), .B(n191), .Y(DIFF[15]) );
  OAI21X1 U179 ( .A0(n79), .A1(n51), .B0(n52), .Y(n1) );
  NAND2XL U180 ( .A(n65), .B(n53), .Y(n51) );
  INVXL U181 ( .A(n60), .Y(n111) );
  NAND2XL U182 ( .A(n111), .B(n63), .Y(n9) );
  AOI21XL U183 ( .A0(n78), .A1(n65), .B0(n66), .Y(n64) );
  AOI21XL U184 ( .A0(n78), .A1(n58), .B0(n59), .Y(n57) );
  XNOR2XL U185 ( .A(n15), .B(n96), .Y(DIFF[3]) );
  INVXL U186 ( .A(n66), .Y(n68) );
  XNOR2X1 U187 ( .A(n192), .B(n6), .Y(DIFF[12]) );
  AO21XL U188 ( .A0(n1), .A1(n46), .B0(n47), .Y(n192) );
  XNOR2XL U189 ( .A(n1), .B(n7), .Y(DIFF[11]) );
  AOI21XL U190 ( .A0(n1), .A1(n37), .B0(n38), .Y(n36) );
  NOR2BXL U191 ( .AN(n65), .B(n60), .Y(n58) );
  INVXL U192 ( .A(n38), .Y(n40) );
  AOI21XL U193 ( .A0(n1), .A1(n30), .B0(n31), .Y(n29) );
  NOR2BXL U194 ( .AN(n37), .B(n32), .Y(n30) );
  OR2XL U195 ( .A(A[1]), .B(n134), .Y(n197) );
  OR2XL U196 ( .A(A[3]), .B(n132), .Y(n196) );
  NAND2XL U197 ( .A(A[5]), .B(n130), .Y(n86) );
  NAND2XL U198 ( .A(A[12]), .B(n123), .Y(n44) );
  NAND2XL U199 ( .A(A[6]), .B(n129), .Y(n83) );
  NAND2XL U200 ( .A(A[1]), .B(n134), .Y(n103) );
  NOR2XL U201 ( .A(A[12]), .B(n123), .Y(n43) );
  NOR2XL U202 ( .A(A[5]), .B(n130), .Y(n85) );
  NOR2XL U203 ( .A(A[6]), .B(n129), .Y(n82) );
  NAND2XL U204 ( .A(A[3]), .B(n132), .Y(n95) );
  NOR2XL U205 ( .A(A[8]), .B(n127), .Y(n71) );
  NOR2XL U206 ( .A(A[4]), .B(n131), .Y(n89) );
  NAND2XL U207 ( .A(A[2]), .B(n133), .Y(n98) );
  NAND2XL U208 ( .A(A[4]), .B(n131), .Y(n90) );
  NOR2XL U209 ( .A(A[2]), .B(n133), .Y(n97) );
  NAND2XL U210 ( .A(A[8]), .B(n127), .Y(n72) );
  NAND2XL U211 ( .A(A[14]), .B(n121), .Y(n28) );
  NOR2XL U212 ( .A(A[14]), .B(n121), .Y(n27) );
  NAND2XL U213 ( .A(A[11]), .B(n124), .Y(n49) );
  NOR2XL U214 ( .A(A[10]), .B(n125), .Y(n55) );
  NAND2XL U215 ( .A(A[10]), .B(n125), .Y(n56) );
  NAND2XL U216 ( .A(A[13]), .B(n122), .Y(n35) );
  NOR2XL U217 ( .A(A[0]), .B(n135), .Y(n104) );
  NOR2XL U218 ( .A(A[7]), .B(n128), .Y(n76) );
  NOR2XL U219 ( .A(A[11]), .B(n124), .Y(n48) );
  NOR2XL U220 ( .A(A[13]), .B(n122), .Y(n32) );
  NAND2XL U221 ( .A(A[9]), .B(n126), .Y(n63) );
  OR2XL U222 ( .A(A[15]), .B(n120), .Y(n198) );
  NAND2XL U223 ( .A(A[15]), .B(n120), .Y(n19) );
  XNOR2XL U224 ( .A(A[0]), .B(n135), .Y(DIFF[0]) );
  INVXL U225 ( .A(B[1]), .Y(n134) );
  INVXL U226 ( .A(B[0]), .Y(n135) );
  INVXL U227 ( .A(B[2]), .Y(n133) );
  INVXL U228 ( .A(B[3]), .Y(n132) );
  INVXL U229 ( .A(B[7]), .Y(n128) );
  INVXL U230 ( .A(B[8]), .Y(n127) );
  INVXL U231 ( .A(B[5]), .Y(n130) );
  INVXL U232 ( .A(B[4]), .Y(n131) );
  INVXL U233 ( .A(B[6]), .Y(n129) );
  INVXL U234 ( .A(B[12]), .Y(n123) );
  INVXL U235 ( .A(B[9]), .Y(n126) );
  INVXL U236 ( .A(B[11]), .Y(n124) );
  INVXL U237 ( .A(B[10]), .Y(n125) );
  INVXL U238 ( .A(B[13]), .Y(n122) );
  INVXL U239 ( .A(B[14]), .Y(n121) );
  CLKINVX1 U240 ( .A(n79), .Y(n78) );
  AOI21X1 U241 ( .A0(n78), .A1(n74), .B0(n75), .Y(n73) );
  NOR2X1 U242 ( .A(n85), .B(n82), .Y(n80) );
  OAI21XL U243 ( .A0(n82), .A1(n86), .B0(n83), .Y(n81) );
  OAI21X1 U244 ( .A0(n91), .A1(n89), .B0(n90), .Y(n88) );
  CLKINVX1 U245 ( .A(n95), .Y(n93) );
  AOI21X1 U246 ( .A0(n197), .A1(n2), .B0(n101), .Y(n99) );
  CLKINVX1 U247 ( .A(n104), .Y(n2) );
  CLKINVX1 U248 ( .A(n103), .Y(n101) );
  OAI21XL U249 ( .A0(n71), .A1(n77), .B0(n72), .Y(n66) );
  OAI21XL U250 ( .A0(n43), .A1(n49), .B0(n44), .Y(n38) );
  OA21XL U251 ( .A0(n27), .A1(n35), .B0(n28), .Y(n195) );
  OAI21XL U252 ( .A0(n55), .A1(n63), .B0(n56), .Y(n54) );
  NOR2X1 U253 ( .A(n32), .B(n27), .Y(n25) );
  NAND2X1 U254 ( .A(n106), .B(n28), .Y(n4) );
  NAND2X1 U255 ( .A(n107), .B(n35), .Y(n5) );
  NOR2X1 U256 ( .A(n76), .B(n71), .Y(n65) );
  NAND2X1 U257 ( .A(n110), .B(n56), .Y(n8) );
  NOR2X1 U258 ( .A(n43), .B(n48), .Y(n37) );
  OAI21XL U259 ( .A0(n40), .A1(n32), .B0(n35), .Y(n31) );
  NAND2X1 U260 ( .A(n74), .B(n77), .Y(n11) );
  NAND2X1 U261 ( .A(n108), .B(n44), .Y(n6) );
  CLKINVX1 U262 ( .A(n43), .Y(n108) );
  XNOR2X1 U263 ( .A(n84), .B(n12), .Y(DIFF[6]) );
  NAND2X1 U264 ( .A(n114), .B(n83), .Y(n12) );
  NAND2X1 U265 ( .A(n46), .B(n49), .Y(n7) );
  CLKINVX1 U266 ( .A(n76), .Y(n74) );
  NAND2X1 U267 ( .A(n197), .B(n103), .Y(n17) );
  CLKINVX1 U268 ( .A(n77), .Y(n75) );
  NAND2X1 U269 ( .A(n196), .B(n95), .Y(n15) );
  CLKINVX1 U270 ( .A(n48), .Y(n46) );
  CLKINVX1 U271 ( .A(n49), .Y(n47) );
  CLKINVX1 U272 ( .A(B[15]), .Y(n120) );
endmodule


module avg_compare_DW01_sub_33 ( A, B, CI, DIFF, CO );
  input [15:0] A;
  input [15:0] B;
  output [15:0] DIFF;
  input CI;
  output CO;
  wire   n1, n2, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n19, n25, n27, n28, n29, n30, n31, n32, n35, n36, n37, n38, n40,
         n43, n44, n45, n46, n47, n48, n49, n51, n52, n53, n54, n55, n56, n57,
         n58, n59, n60, n63, n64, n65, n66, n68, n71, n72, n73, n74, n75, n76,
         n77, n78, n79, n80, n81, n82, n83, n84, n85, n86, n87, n88, n89, n90,
         n91, n93, n95, n96, n97, n98, n99, n101, n103, n104, n106, n107, n108,
         n110, n111, n114, n120, n121, n122, n123, n124, n125, n126, n127,
         n128, n129, n130, n131, n132, n133, n134, n135, n191, n192, n193,
         n194, n195, n196, n197, n198, n199;

  XOR2X1 U7 ( .A(n29), .B(n4), .Y(DIFF[14]) );
  XOR2X1 U19 ( .A(n36), .B(n5), .Y(DIFF[13]) );
  XOR2X1 U29 ( .A(n45), .B(n6), .Y(DIFF[12]) );
  XOR2X1 U49 ( .A(n57), .B(n8), .Y(DIFF[10]) );
  XOR2X1 U59 ( .A(n64), .B(n9), .Y(DIFF[9]) );
  XOR2X1 U69 ( .A(n73), .B(n10), .Y(DIFF[8]) );
  XOR2X1 U98 ( .A(n13), .B(n87), .Y(DIFF[5]) );
  XOR2X1 U104 ( .A(n91), .B(n14), .Y(DIFF[4]) );
  XOR2X1 U119 ( .A(n16), .B(n99), .Y(DIFF[2]) );
  XOR2X1 U125 ( .A(n17), .B(n104), .Y(DIFF[1]) );
  NOR2X1 U155 ( .A(A[9]), .B(n126), .Y(n60) );
  OAI2BB1X1 U156 ( .A0N(n38), .A1N(n25), .B0(n198), .Y(n197) );
  CLKBUFX3 U157 ( .A(n1), .Y(n191) );
  NAND2X1 U158 ( .A(A[7]), .B(n128), .Y(n77) );
  OAI21X1 U159 ( .A0(n43), .A1(n49), .B0(n44), .Y(n38) );
  NOR2X1 U160 ( .A(A[12]), .B(n123), .Y(n43) );
  AOI21X1 U161 ( .A0(n96), .A1(n194), .B0(n93), .Y(n91) );
  OAI21X1 U162 ( .A0(n99), .A1(n97), .B0(n98), .Y(n96) );
  AOI21X1 U163 ( .A0(n80), .A1(n88), .B0(n81), .Y(n79) );
  OAI21X1 U164 ( .A0(n91), .A1(n89), .B0(n90), .Y(n88) );
  NOR2X1 U165 ( .A(n60), .B(n55), .Y(n53) );
  AOI21XL U166 ( .A0(n66), .A1(n53), .B0(n54), .Y(n52) );
  NAND2BXL U167 ( .AN(n71), .B(n72), .Y(n10) );
  AOI21XL U168 ( .A0(n78), .A1(n74), .B0(n75), .Y(n73) );
  INVXL U169 ( .A(n55), .Y(n110) );
  NAND2BXL U170 ( .AN(n85), .B(n86), .Y(n13) );
  INVXL U171 ( .A(n32), .Y(n107) );
  INVXL U172 ( .A(n43), .Y(n108) );
  INVXL U173 ( .A(n27), .Y(n106) );
  NAND2BXL U174 ( .AN(n89), .B(n90), .Y(n14) );
  INVXL U175 ( .A(n79), .Y(n78) );
  XNOR2X2 U176 ( .A(n192), .B(n196), .Y(DIFF[15]) );
  AOI21X1 U177 ( .A0(n191), .A1(n195), .B0(n197), .Y(n192) );
  XNOR2XL U178 ( .A(n191), .B(n7), .Y(DIFF[11]) );
  AOI21XL U179 ( .A0(n191), .A1(n37), .B0(n38), .Y(n36) );
  AOI21XL U180 ( .A0(n191), .A1(n46), .B0(n47), .Y(n45) );
  AOI21XL U181 ( .A0(n191), .A1(n30), .B0(n31), .Y(n29) );
  AOI21XL U182 ( .A0(n78), .A1(n58), .B0(n59), .Y(n57) );
  INVXL U183 ( .A(n66), .Y(n68) );
  INVXL U184 ( .A(n60), .Y(n111) );
  NAND2XL U185 ( .A(n111), .B(n63), .Y(n9) );
  AOI21XL U186 ( .A0(n78), .A1(n65), .B0(n66), .Y(n64) );
  XNOR2XL U187 ( .A(n15), .B(n96), .Y(DIFF[3]) );
  NAND2BXL U188 ( .AN(n97), .B(n98), .Y(n16) );
  NOR2BXL U189 ( .AN(n65), .B(n60), .Y(n58) );
  NOR2BXL U190 ( .AN(n37), .B(n32), .Y(n30) );
  NAND2XL U191 ( .A(A[5]), .B(n130), .Y(n86) );
  OR2XL U192 ( .A(A[1]), .B(n134), .Y(n193) );
  NOR2XL U193 ( .A(A[6]), .B(n129), .Y(n82) );
  NAND2XL U194 ( .A(A[1]), .B(n134), .Y(n103) );
  NAND2XL U195 ( .A(A[6]), .B(n129), .Y(n83) );
  NOR2XL U196 ( .A(A[5]), .B(n130), .Y(n85) );
  NAND2XL U197 ( .A(A[2]), .B(n133), .Y(n98) );
  OR2XL U198 ( .A(A[3]), .B(n132), .Y(n194) );
  NOR2XL U199 ( .A(A[4]), .B(n131), .Y(n89) );
  NAND2XL U200 ( .A(A[3]), .B(n132), .Y(n95) );
  NOR2XL U201 ( .A(A[0]), .B(n135), .Y(n104) );
  NOR2XL U202 ( .A(A[8]), .B(n127), .Y(n71) );
  NOR2XL U203 ( .A(A[7]), .B(n128), .Y(n76) );
  NAND2XL U204 ( .A(A[4]), .B(n131), .Y(n90) );
  NOR2XL U205 ( .A(A[10]), .B(n125), .Y(n55) );
  NAND2XL U206 ( .A(A[8]), .B(n127), .Y(n72) );
  NAND2XL U207 ( .A(A[12]), .B(n123), .Y(n44) );
  NAND2XL U208 ( .A(A[10]), .B(n125), .Y(n56) );
  NAND2XL U209 ( .A(A[9]), .B(n126), .Y(n63) );
  NAND2XL U210 ( .A(A[14]), .B(n121), .Y(n28) );
  NAND2XL U211 ( .A(A[11]), .B(n124), .Y(n49) );
  NOR2XL U212 ( .A(A[14]), .B(n121), .Y(n27) );
  NAND2XL U213 ( .A(A[13]), .B(n122), .Y(n35) );
  NOR2XL U214 ( .A(A[11]), .B(n124), .Y(n48) );
  NOR2XL U215 ( .A(A[13]), .B(n122), .Y(n32) );
  OR2XL U216 ( .A(A[15]), .B(n120), .Y(n199) );
  NAND2XL U217 ( .A(A[15]), .B(n120), .Y(n19) );
  XNOR2XL U218 ( .A(A[0]), .B(n135), .Y(DIFF[0]) );
  INVXL U219 ( .A(B[1]), .Y(n134) );
  INVXL U220 ( .A(B[0]), .Y(n135) );
  INVXL U221 ( .A(B[2]), .Y(n133) );
  INVXL U222 ( .A(B[3]), .Y(n132) );
  INVXL U223 ( .A(B[5]), .Y(n130) );
  INVXL U224 ( .A(B[6]), .Y(n129) );
  INVXL U225 ( .A(B[4]), .Y(n131) );
  INVXL U226 ( .A(B[7]), .Y(n128) );
  INVXL U227 ( .A(B[8]), .Y(n127) );
  INVXL U228 ( .A(B[10]), .Y(n125) );
  INVXL U229 ( .A(B[9]), .Y(n126) );
  INVXL U230 ( .A(B[12]), .Y(n123) );
  INVXL U231 ( .A(B[11]), .Y(n124) );
  INVXL U232 ( .A(B[13]), .Y(n122) );
  INVXL U233 ( .A(B[14]), .Y(n121) );
  CLKINVX1 U234 ( .A(n88), .Y(n87) );
  AND2X2 U235 ( .A(n25), .B(n37), .Y(n195) );
  OAI21XL U236 ( .A0(n79), .A1(n51), .B0(n52), .Y(n1) );
  NAND2X1 U237 ( .A(n65), .B(n53), .Y(n51) );
  NOR2X1 U238 ( .A(n85), .B(n82), .Y(n80) );
  OAI21XL U239 ( .A0(n82), .A1(n86), .B0(n83), .Y(n81) );
  AND2X2 U240 ( .A(n199), .B(n19), .Y(n196) );
  CLKINVX1 U241 ( .A(n95), .Y(n93) );
  NAND2X1 U242 ( .A(n193), .B(n103), .Y(n17) );
  AOI21X1 U243 ( .A0(n193), .A1(n2), .B0(n101), .Y(n99) );
  CLKINVX1 U244 ( .A(n104), .Y(n2) );
  CLKINVX1 U245 ( .A(n103), .Y(n101) );
  OAI21XL U246 ( .A0(n71), .A1(n77), .B0(n72), .Y(n66) );
  NAND2X1 U247 ( .A(n107), .B(n35), .Y(n5) );
  NAND2X1 U248 ( .A(n108), .B(n44), .Y(n6) );
  OA21XL U249 ( .A0(n27), .A1(n35), .B0(n28), .Y(n198) );
  OAI21XL U250 ( .A0(n55), .A1(n63), .B0(n56), .Y(n54) );
  NOR2X1 U251 ( .A(n32), .B(n27), .Y(n25) );
  NOR2X1 U252 ( .A(n76), .B(n71), .Y(n65) );
  NAND2X1 U253 ( .A(n110), .B(n56), .Y(n8) );
  NAND2X1 U254 ( .A(n106), .B(n28), .Y(n4) );
  NOR2X1 U255 ( .A(n43), .B(n48), .Y(n37) );
  OAI21XL U256 ( .A0(n68), .A1(n60), .B0(n63), .Y(n59) );
  XNOR2X1 U257 ( .A(n84), .B(n12), .Y(DIFF[6]) );
  NAND2X1 U258 ( .A(n114), .B(n83), .Y(n12) );
  OAI21X1 U259 ( .A0(n87), .A1(n85), .B0(n86), .Y(n84) );
  CLKINVX1 U260 ( .A(n82), .Y(n114) );
  NAND2X1 U261 ( .A(n194), .B(n95), .Y(n15) );
  OAI21XL U262 ( .A0(n40), .A1(n32), .B0(n35), .Y(n31) );
  CLKINVX1 U263 ( .A(n38), .Y(n40) );
  XNOR2X1 U264 ( .A(n78), .B(n11), .Y(DIFF[7]) );
  NAND2X1 U265 ( .A(n74), .B(n77), .Y(n11) );
  NAND2X1 U266 ( .A(n46), .B(n49), .Y(n7) );
  CLKINVX1 U267 ( .A(n76), .Y(n74) );
  CLKINVX1 U268 ( .A(n77), .Y(n75) );
  CLKINVX1 U269 ( .A(n48), .Y(n46) );
  CLKINVX1 U270 ( .A(n49), .Y(n47) );
  NOR2X1 U271 ( .A(A[2]), .B(n133), .Y(n97) );
  CLKINVX1 U272 ( .A(B[15]), .Y(n120) );
endmodule


module avg_compare_DW01_sub_40 ( A, B, CI, DIFF, CO );
  input [15:0] A;
  input [15:0] B;
  output [15:0] DIFF;
  input CI;
  output CO;
  wire   n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30, n31,
         n32, n33, n34, n36, n37, n38, n39, n40, n41, n42, n43, n44, n46, n48,
         n49, n51, n53, n54, n55, n56, n58, n60, n61, n64, n65, n66, n67, n68,
         n69, n70, n71, n72, n73, n74, n75, n76, n78, n80, n81, n82, n83, n84,
         n85, n86, n87, n88, n89, n90, n91, n92, n93, n94, n97, n98, n99, n101,
         n104, n111, n115, n116, n117, n118, n119, n120, n121, n122, n123,
         n124, n125, n126, n127, n128, n129, n130, n186, n187, n188, n189,
         n190;

  XOR2X1 U16 ( .A(n29), .B(n4), .Y(DIFF[13]) );
  XOR2X1 U22 ( .A(n34), .B(n5), .Y(DIFF[12]) );
  XOR2X1 U38 ( .A(n49), .B(n7), .Y(DIFF[10]) );
  XOR2X1 U69 ( .A(n68), .B(n10), .Y(DIFF[7]) );
  XOR2X1 U79 ( .A(n76), .B(n11), .Y(DIFF[6]) );
  XOR2X1 U107 ( .A(n90), .B(n14), .Y(DIFF[3]) );
  XOR2X1 U113 ( .A(n15), .B(n94), .Y(DIFF[2]) );
  XOR2X1 U120 ( .A(n16), .B(n99), .Y(DIFF[1]) );
  OAI21XL U150 ( .A0(n90), .A1(n88), .B0(n89), .Y(n87) );
  OR2X1 U151 ( .A(A[10]), .B(n120), .Y(n186) );
  OR2X1 U152 ( .A(A[5]), .B(n125), .Y(n187) );
  OR2X1 U153 ( .A(A[9]), .B(n121), .Y(n188) );
  OR2X1 U154 ( .A(A[8]), .B(n122), .Y(n189) );
  AOI21X1 U155 ( .A0(n81), .A1(n187), .B0(n78), .Y(n76) );
  XNOR2X1 U156 ( .A(n54), .B(n8), .Y(DIFF[9]) );
  XNOR2X1 U157 ( .A(n87), .B(n13), .Y(DIFF[4]) );
  NAND2XL U158 ( .A(n64), .B(n189), .Y(n55) );
  NAND2XL U159 ( .A(n189), .B(n60), .Y(n9) );
  OAI21X1 U160 ( .A0(n68), .A1(n66), .B0(n67), .Y(n61) );
  AOI21X1 U161 ( .A0(n83), .A1(n91), .B0(n84), .Y(n82) );
  NOR2XL U162 ( .A(n88), .B(n85), .Y(n83) );
  NAND2BXL U163 ( .AN(n74), .B(n75), .Y(n11) );
  OAI21XL U164 ( .A0(n82), .A1(n70), .B0(n71), .Y(n69) );
  OAI21XL U165 ( .A0(n40), .A1(n20), .B0(n21), .Y(n19) );
  NAND2BXL U166 ( .AN(n27), .B(n28), .Y(n4) );
  NAND2BXL U167 ( .AN(n32), .B(n33), .Y(n5) );
  INVX1 U168 ( .A(n40), .Y(n39) );
  AOI21XL U169 ( .A0(n39), .A1(n30), .B0(n31), .Y(n29) );
  NAND2BX1 U170 ( .AN(n97), .B(n98), .Y(n16) );
  NAND2BX1 U171 ( .AN(n92), .B(n93), .Y(n15) );
  NAND2XL U172 ( .A(n72), .B(n187), .Y(n70) );
  XNOR2XL U173 ( .A(n61), .B(n9), .Y(DIFF[8]) );
  NAND2BX1 U174 ( .AN(n88), .B(n89), .Y(n14) );
  NAND2BX1 U175 ( .AN(n66), .B(n67), .Y(n10) );
  AOI21XL U176 ( .A0(n54), .A1(n188), .B0(n51), .Y(n49) );
  XNOR2X1 U177 ( .A(n19), .B(n2), .Y(DIFF[15]) );
  AOI21XL U178 ( .A0(n31), .A1(n22), .B0(n23), .Y(n21) );
  INVX1 U179 ( .A(n60), .Y(n58) );
  NOR2XL U180 ( .A(A[1]), .B(n129), .Y(n97) );
  NAND2XL U181 ( .A(A[1]), .B(n129), .Y(n98) );
  NOR2XL U182 ( .A(A[4]), .B(n126), .Y(n85) );
  NAND2XL U183 ( .A(A[3]), .B(n127), .Y(n89) );
  NOR2XL U184 ( .A(A[3]), .B(n127), .Y(n88) );
  NOR2XL U185 ( .A(A[6]), .B(n124), .Y(n74) );
  NAND2XL U186 ( .A(A[2]), .B(n128), .Y(n93) );
  NAND2XL U187 ( .A(A[4]), .B(n126), .Y(n86) );
  NOR2XL U188 ( .A(A[2]), .B(n128), .Y(n92) );
  NAND2XL U189 ( .A(A[5]), .B(n125), .Y(n80) );
  NOR2XL U190 ( .A(A[0]), .B(n130), .Y(n99) );
  NAND2XL U191 ( .A(A[6]), .B(n124), .Y(n75) );
  NOR2XL U192 ( .A(A[12]), .B(n118), .Y(n32) );
  NAND2XL U193 ( .A(A[7]), .B(n123), .Y(n67) );
  NAND2XL U194 ( .A(A[12]), .B(n118), .Y(n33) );
  NOR2XL U195 ( .A(A[7]), .B(n123), .Y(n66) );
  XNOR2XL U196 ( .A(A[0]), .B(n130), .Y(DIFF[0]) );
  NAND2XL U197 ( .A(A[10]), .B(n120), .Y(n48) );
  NOR2XL U198 ( .A(A[14]), .B(n116), .Y(n24) );
  NAND2XL U199 ( .A(A[14]), .B(n116), .Y(n25) );
  NAND2XL U200 ( .A(A[11]), .B(n119), .Y(n38) );
  NAND2XL U201 ( .A(A[13]), .B(n117), .Y(n28) );
  NOR2XL U202 ( .A(A[13]), .B(n117), .Y(n27) );
  NAND2XL U203 ( .A(A[9]), .B(n121), .Y(n53) );
  NOR2XL U204 ( .A(A[11]), .B(n119), .Y(n37) );
  OR2XL U205 ( .A(A[15]), .B(n115), .Y(n190) );
  NAND2XL U206 ( .A(A[15]), .B(n115), .Y(n18) );
  INVXL U207 ( .A(B[1]), .Y(n129) );
  INVXL U208 ( .A(B[0]), .Y(n130) );
  INVXL U209 ( .A(B[2]), .Y(n128) );
  INVXL U210 ( .A(B[3]), .Y(n127) );
  INVXL U211 ( .A(B[4]), .Y(n126) );
  INVXL U212 ( .A(B[5]), .Y(n125) );
  INVXL U213 ( .A(B[6]), .Y(n124) );
  INVXL U214 ( .A(B[7]), .Y(n123) );
  INVXL U215 ( .A(B[10]), .Y(n120) );
  INVXL U216 ( .A(B[8]), .Y(n122) );
  INVXL U217 ( .A(B[9]), .Y(n121) );
  INVXL U218 ( .A(B[11]), .Y(n119) );
  INVXL U219 ( .A(B[12]), .Y(n118) );
  INVXL U220 ( .A(B[13]), .Y(n117) );
  INVXL U221 ( .A(B[14]), .Y(n116) );
  INVXL U222 ( .A(B[15]), .Y(n115) );
  CLKINVX1 U223 ( .A(n91), .Y(n90) );
  CLKINVX1 U224 ( .A(n82), .Y(n81) );
  CLKINVX1 U225 ( .A(n69), .Y(n68) );
  AOI21X1 U226 ( .A0(n69), .A1(n41), .B0(n42), .Y(n40) );
  NOR2X1 U227 ( .A(n55), .B(n43), .Y(n41) );
  OAI21XL U228 ( .A0(n56), .A1(n43), .B0(n44), .Y(n42) );
  NAND2X1 U229 ( .A(n186), .B(n188), .Y(n43) );
  NAND2X1 U230 ( .A(n22), .B(n30), .Y(n20) );
  OAI21XL U231 ( .A0(n68), .A1(n55), .B0(n56), .Y(n54) );
  OA21XL U232 ( .A0(n97), .A1(n99), .B0(n98), .Y(n94) );
  OAI21X1 U233 ( .A0(n94), .A1(n92), .B0(n93), .Y(n91) );
  OAI21XL U234 ( .A0(n89), .A1(n85), .B0(n86), .Y(n84) );
  AOI21X1 U235 ( .A0(n72), .A1(n78), .B0(n73), .Y(n71) );
  CLKINVX1 U236 ( .A(n74), .Y(n72) );
  CLKINVX1 U237 ( .A(n80), .Y(n78) );
  AOI21X1 U238 ( .A0(n189), .A1(n65), .B0(n58), .Y(n56) );
  NAND2X1 U239 ( .A(n190), .B(n18), .Y(n2) );
  NAND2X1 U240 ( .A(n111), .B(n86), .Y(n13) );
  CLKINVX1 U241 ( .A(n85), .Y(n111) );
  CLKINVX1 U242 ( .A(n75), .Y(n73) );
  XNOR2X1 U243 ( .A(n81), .B(n12), .Y(DIFF[5]) );
  NAND2X1 U244 ( .A(n187), .B(n80), .Y(n12) );
  AOI21X1 U245 ( .A0(n186), .A1(n51), .B0(n46), .Y(n44) );
  CLKINVX1 U246 ( .A(n48), .Y(n46) );
  CLKINVX1 U247 ( .A(n67), .Y(n65) );
  CLKINVX1 U248 ( .A(n66), .Y(n64) );
  OAI21XL U249 ( .A0(n24), .A1(n28), .B0(n25), .Y(n23) );
  NOR2X1 U250 ( .A(n24), .B(n27), .Y(n22) );
  OAI21XL U251 ( .A0(n32), .A1(n38), .B0(n33), .Y(n31) );
  CLKINVX1 U252 ( .A(n53), .Y(n51) );
  NOR2X1 U253 ( .A(n32), .B(n37), .Y(n30) );
  NAND2X1 U254 ( .A(n186), .B(n48), .Y(n7) );
  NAND2X1 U255 ( .A(n188), .B(n53), .Y(n8) );
  AOI21X1 U256 ( .A0(n39), .A1(n104), .B0(n36), .Y(n34) );
  XNOR2X1 U257 ( .A(n39), .B(n6), .Y(DIFF[11]) );
  NAND2X1 U258 ( .A(n104), .B(n38), .Y(n6) );
  CLKINVX1 U259 ( .A(n37), .Y(n104) );
  XNOR2X1 U260 ( .A(n26), .B(n3), .Y(DIFF[14]) );
  NAND2X1 U261 ( .A(n101), .B(n25), .Y(n3) );
  OAI21XL U262 ( .A0(n29), .A1(n27), .B0(n28), .Y(n26) );
  CLKINVX1 U263 ( .A(n24), .Y(n101) );
  CLKINVX1 U264 ( .A(n38), .Y(n36) );
  NAND2XL U265 ( .A(A[8]), .B(n122), .Y(n60) );
endmodule


module avg_compare_DW01_sub_41 ( A, B, CI, DIFF, CO );
  input [15:0] A;
  input [15:0] B;
  output [15:0] DIFF;
  input CI;
  output CO;
  wire   n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n18, n19, n20, n21, n22, n24, n26, n27, n28, n29, n30, n31, n32, n33,
         n34, n36, n38, n39, n40, n41, n42, n43, n44, n46, n48, n49, n51, n53,
         n54, n55, n56, n58, n60, n61, n64, n65, n66, n67, n68, n69, n70, n71,
         n72, n73, n74, n75, n76, n78, n80, n81, n82, n83, n84, n85, n86, n87,
         n88, n89, n90, n91, n92, n93, n94, n97, n98, n99, n111, n115, n116,
         n117, n118, n119, n120, n121, n122, n123, n124, n125, n126, n127,
         n128, n129, n130, n186, n187, n188, n189, n190, n191, n192;

  XOR2X1 U6 ( .A(n22), .B(n3), .Y(DIFF[14]) );
  XOR2X1 U20 ( .A(n34), .B(n5), .Y(DIFF[12]) );
  XOR2X1 U38 ( .A(n49), .B(n7), .Y(DIFF[10]) );
  XOR2X1 U69 ( .A(n68), .B(n10), .Y(DIFF[7]) );
  XOR2X1 U79 ( .A(n76), .B(n11), .Y(DIFF[6]) );
  XOR2X1 U107 ( .A(n90), .B(n14), .Y(DIFF[3]) );
  XOR2X1 U113 ( .A(n15), .B(n94), .Y(DIFF[2]) );
  XOR2X1 U120 ( .A(n16), .B(n99), .Y(DIFF[1]) );
  OAI21XL U150 ( .A0(n68), .A1(n66), .B0(n67), .Y(n61) );
  OAI21XL U151 ( .A0(n82), .A1(n70), .B0(n71), .Y(n69) );
  OR2X1 U152 ( .A(A[10]), .B(n120), .Y(n186) );
  OR2X1 U153 ( .A(A[9]), .B(n121), .Y(n187) );
  OR2X1 U154 ( .A(A[8]), .B(n122), .Y(n188) );
  OR2X1 U155 ( .A(A[5]), .B(n125), .Y(n189) );
  OR2X1 U156 ( .A(A[11]), .B(n119), .Y(n190) );
  OR2X1 U157 ( .A(A[13]), .B(n117), .Y(n191) );
  AOI21XL U158 ( .A0(n69), .A1(n41), .B0(n42), .Y(n40) );
  AOI21XL U159 ( .A0(n30), .A1(n36), .B0(n31), .Y(n29) );
  AOI21XL U160 ( .A0(n27), .A1(n191), .B0(n24), .Y(n22) );
  CLKINVX1 U161 ( .A(n74), .Y(n72) );
  AOI21XL U162 ( .A0(n83), .A1(n91), .B0(n84), .Y(n82) );
  AOI21XL U163 ( .A0(n186), .A1(n51), .B0(n46), .Y(n44) );
  XNOR2XL U164 ( .A(n87), .B(n13), .Y(DIFF[4]) );
  OAI21XL U165 ( .A0(n56), .A1(n43), .B0(n44), .Y(n42) );
  NAND2X1 U166 ( .A(n186), .B(n187), .Y(n43) );
  NOR2XL U167 ( .A(n88), .B(n85), .Y(n83) );
  NAND2BXL U168 ( .AN(n74), .B(n75), .Y(n11) );
  AOI21XL U169 ( .A0(n81), .A1(n189), .B0(n78), .Y(n76) );
  INVXL U170 ( .A(n85), .Y(n111) );
  NAND2BXL U171 ( .AN(n66), .B(n67), .Y(n10) );
  NAND2BXL U172 ( .AN(n32), .B(n33), .Y(n5) );
  AOI21XL U173 ( .A0(n39), .A1(n190), .B0(n36), .Y(n34) );
  NAND2BXL U174 ( .AN(n20), .B(n21), .Y(n3) );
  NOR2XL U175 ( .A(n55), .B(n43), .Y(n41) );
  INVX1 U176 ( .A(n91), .Y(n90) );
  NAND2XL U177 ( .A(n64), .B(n188), .Y(n55) );
  NAND2XL U178 ( .A(n30), .B(n190), .Y(n28) );
  NAND2BX1 U179 ( .AN(n92), .B(n93), .Y(n15) );
  NAND2BX1 U180 ( .AN(n97), .B(n98), .Y(n16) );
  NAND2BX1 U181 ( .AN(n88), .B(n89), .Y(n14) );
  XNOR2XL U182 ( .A(n61), .B(n9), .Y(DIFF[8]) );
  NAND2XL U183 ( .A(n188), .B(n60), .Y(n9) );
  XNOR2XL U184 ( .A(n54), .B(n8), .Y(DIFF[9]) );
  AOI21XL U185 ( .A0(n54), .A1(n187), .B0(n51), .Y(n49) );
  XNOR2XL U186 ( .A(n27), .B(n4), .Y(DIFF[13]) );
  NOR2XL U187 ( .A(A[4]), .B(n126), .Y(n85) );
  NOR2XL U188 ( .A(A[6]), .B(n124), .Y(n74) );
  NAND2XL U189 ( .A(A[1]), .B(n129), .Y(n98) );
  NOR2XL U190 ( .A(A[1]), .B(n129), .Y(n97) );
  NAND2XL U191 ( .A(A[5]), .B(n125), .Y(n80) );
  NOR2XL U192 ( .A(A[2]), .B(n128), .Y(n92) );
  NAND2XL U193 ( .A(A[4]), .B(n126), .Y(n86) );
  NAND2XL U194 ( .A(A[3]), .B(n127), .Y(n89) );
  NAND2XL U195 ( .A(A[7]), .B(n123), .Y(n67) );
  NAND2XL U196 ( .A(A[6]), .B(n124), .Y(n75) );
  NOR2XL U197 ( .A(A[3]), .B(n127), .Y(n88) );
  NAND2XL U198 ( .A(A[2]), .B(n128), .Y(n93) );
  NOR2XL U199 ( .A(A[12]), .B(n118), .Y(n32) );
  NOR2XL U200 ( .A(A[7]), .B(n123), .Y(n66) );
  NOR2XL U201 ( .A(A[0]), .B(n130), .Y(n99) );
  NAND2XL U202 ( .A(A[10]), .B(n120), .Y(n48) );
  NAND2XL U203 ( .A(A[12]), .B(n118), .Y(n33) );
  NAND2XL U204 ( .A(A[9]), .B(n121), .Y(n53) );
  XNOR2XL U205 ( .A(A[0]), .B(n130), .Y(DIFF[0]) );
  NAND2XL U206 ( .A(A[11]), .B(n119), .Y(n38) );
  NAND2XL U207 ( .A(A[13]), .B(n117), .Y(n26) );
  NOR2XL U208 ( .A(A[14]), .B(n116), .Y(n20) );
  NAND2XL U209 ( .A(A[14]), .B(n116), .Y(n21) );
  OR2XL U210 ( .A(A[15]), .B(n115), .Y(n192) );
  NAND2XL U211 ( .A(A[15]), .B(n115), .Y(n18) );
  INVXL U212 ( .A(B[1]), .Y(n129) );
  INVXL U213 ( .A(B[0]), .Y(n130) );
  INVXL U214 ( .A(B[2]), .Y(n128) );
  INVXL U215 ( .A(B[3]), .Y(n127) );
  INVXL U216 ( .A(B[4]), .Y(n126) );
  INVXL U217 ( .A(B[6]), .Y(n124) );
  INVXL U218 ( .A(B[5]), .Y(n125) );
  INVXL U219 ( .A(B[10]), .Y(n120) );
  INVXL U220 ( .A(B[7]), .Y(n123) );
  INVXL U221 ( .A(B[8]), .Y(n122) );
  INVXL U222 ( .A(B[9]), .Y(n121) );
  INVXL U223 ( .A(B[12]), .Y(n118) );
  INVXL U224 ( .A(B[11]), .Y(n119) );
  INVXL U225 ( .A(B[13]), .Y(n117) );
  INVXL U226 ( .A(B[14]), .Y(n116) );
  INVXL U227 ( .A(B[15]), .Y(n115) );
  CLKINVX1 U228 ( .A(n40), .Y(n39) );
  CLKINVX1 U229 ( .A(n82), .Y(n81) );
  CLKINVX1 U230 ( .A(n69), .Y(n68) );
  OAI21XL U231 ( .A0(n68), .A1(n55), .B0(n56), .Y(n54) );
  OA21XL U232 ( .A0(n97), .A1(n99), .B0(n98), .Y(n94) );
  OAI21X1 U233 ( .A0(n94), .A1(n92), .B0(n93), .Y(n91) );
  OAI21XL U234 ( .A0(n89), .A1(n85), .B0(n86), .Y(n84) );
  XNOR2X1 U235 ( .A(n19), .B(n2), .Y(DIFF[15]) );
  NAND2X1 U236 ( .A(n192), .B(n18), .Y(n2) );
  OAI21XL U237 ( .A0(n22), .A1(n20), .B0(n21), .Y(n19) );
  AOI21X1 U238 ( .A0(n188), .A1(n65), .B0(n58), .Y(n56) );
  CLKINVX1 U239 ( .A(n60), .Y(n58) );
  OAI21XL U240 ( .A0(n40), .A1(n28), .B0(n29), .Y(n27) );
  CLKINVX1 U241 ( .A(n32), .Y(n30) );
  CLKINVX1 U242 ( .A(n26), .Y(n24) );
  NAND2X1 U243 ( .A(n72), .B(n189), .Y(n70) );
  AOI21X1 U244 ( .A0(n72), .A1(n78), .B0(n73), .Y(n71) );
  CLKINVX1 U245 ( .A(n48), .Y(n46) );
  CLKINVX1 U246 ( .A(n80), .Y(n78) );
  CLKINVX1 U247 ( .A(n67), .Y(n65) );
  CLKINVX1 U248 ( .A(n66), .Y(n64) );
  NAND2X1 U249 ( .A(n111), .B(n86), .Y(n13) );
  OAI21XL U250 ( .A0(n90), .A1(n88), .B0(n89), .Y(n87) );
  CLKINVX1 U251 ( .A(n75), .Y(n73) );
  XNOR2X1 U252 ( .A(n81), .B(n12), .Y(DIFF[5]) );
  NAND2X1 U253 ( .A(n189), .B(n80), .Y(n12) );
  CLKINVX1 U254 ( .A(n53), .Y(n51) );
  NAND2X1 U255 ( .A(n186), .B(n48), .Y(n7) );
  CLKINVX1 U256 ( .A(n33), .Y(n31) );
  NAND2X1 U257 ( .A(n187), .B(n53), .Y(n8) );
  CLKINVX1 U258 ( .A(n38), .Y(n36) );
  XNOR2X1 U259 ( .A(n39), .B(n6), .Y(DIFF[11]) );
  NAND2X1 U260 ( .A(n190), .B(n38), .Y(n6) );
  NAND2X1 U261 ( .A(n191), .B(n26), .Y(n4) );
  NAND2XL U262 ( .A(A[8]), .B(n122), .Y(n60) );
endmodule


module avg_compare_DW01_sub_42 ( A, B, CI, DIFF, CO );
  input [15:0] A;
  input [15:0] B;
  output [15:0] DIFF;
  input CI;
  output CO;
  wire   n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n18, n19, n21, n23, n24, n25, n26, n28, n30, n31, n32, n33, n34, n35,
         n36, n38, n39, n40, n41, n42, n43, n44, n45, n46, n48, n50, n51, n53,
         n55, n56, n57, n58, n60, n62, n63, n66, n67, n68, n69, n70, n71, n72,
         n73, n74, n75, n76, n77, n78, n80, n82, n83, n84, n85, n86, n87, n88,
         n89, n90, n91, n92, n93, n94, n95, n96, n99, n100, n101, n106, n113,
         n117, n118, n119, n120, n121, n122, n123, n124, n125, n126, n127,
         n128, n129, n130, n131, n132, n188, n189, n190, n191, n192, n193,
         n194;

  XOR2X1 U1 ( .A(n19), .B(n2), .Y(DIFF[15]) );
  XOR2X1 U14 ( .A(n31), .B(n4), .Y(DIFF[13]) );
  XOR2X1 U24 ( .A(n36), .B(n5), .Y(DIFF[12]) );
  XOR2X1 U40 ( .A(n51), .B(n7), .Y(DIFF[10]) );
  XOR2X1 U71 ( .A(n70), .B(n10), .Y(DIFF[7]) );
  XOR2X1 U81 ( .A(n78), .B(n11), .Y(DIFF[6]) );
  XOR2X1 U109 ( .A(n92), .B(n14), .Y(DIFF[3]) );
  XOR2X1 U115 ( .A(n15), .B(n96), .Y(DIFF[2]) );
  XOR2X1 U122 ( .A(n16), .B(n101), .Y(DIFF[1]) );
  OAI21XL U152 ( .A0(n96), .A1(n94), .B0(n95), .Y(n93) );
  OR2X1 U153 ( .A(A[10]), .B(n122), .Y(n188) );
  OR2X1 U154 ( .A(A[5]), .B(n127), .Y(n189) );
  OR2X1 U155 ( .A(A[9]), .B(n123), .Y(n190) );
  OR2X1 U156 ( .A(A[8]), .B(n124), .Y(n191) );
  OR2X1 U157 ( .A(A[13]), .B(n119), .Y(n192) );
  OR2X1 U158 ( .A(A[14]), .B(n118), .Y(n193) );
  AOI21X1 U159 ( .A0(n85), .A1(n93), .B0(n86), .Y(n84) );
  XNOR2X1 U160 ( .A(n89), .B(n13), .Y(DIFF[4]) );
  OAI21X1 U161 ( .A0(n92), .A1(n90), .B0(n91), .Y(n89) );
  XNOR2X1 U162 ( .A(n56), .B(n8), .Y(DIFF[9]) );
  NOR2XL U163 ( .A(n90), .B(n87), .Y(n85) );
  OAI21XL U164 ( .A0(n84), .A1(n72), .B0(n73), .Y(n71) );
  OAI21XL U165 ( .A0(n42), .A1(n25), .B0(n26), .Y(n24) );
  AOI21X1 U166 ( .A0(n188), .A1(n53), .B0(n48), .Y(n46) );
  NAND2BXL U167 ( .AN(n34), .B(n35), .Y(n5) );
  INVX1 U168 ( .A(n42), .Y(n41) );
  NAND2XL U169 ( .A(n66), .B(n191), .Y(n57) );
  NAND2BX1 U170 ( .AN(n99), .B(n100), .Y(n16) );
  NAND2BX1 U171 ( .AN(n94), .B(n95), .Y(n15) );
  NAND2BX1 U172 ( .AN(n90), .B(n91), .Y(n14) );
  NAND2XL U173 ( .A(n74), .B(n189), .Y(n72) );
  XNOR2XL U174 ( .A(n63), .B(n9), .Y(DIFF[8]) );
  NAND2BX1 U175 ( .AN(n68), .B(n69), .Y(n10) );
  NAND2BX1 U176 ( .AN(n76), .B(n77), .Y(n11) );
  AOI21XL U177 ( .A0(n56), .A1(n190), .B0(n53), .Y(n51) );
  AOI21XL U178 ( .A0(n41), .A1(n32), .B0(n33), .Y(n31) );
  XNOR2XL U179 ( .A(n24), .B(n3), .Y(DIFF[14]) );
  NOR2XL U180 ( .A(A[1]), .B(n131), .Y(n99) );
  NAND2XL U181 ( .A(A[1]), .B(n131), .Y(n100) );
  NOR2XL U182 ( .A(A[4]), .B(n128), .Y(n87) );
  NOR2XL U183 ( .A(A[3]), .B(n129), .Y(n90) );
  NAND2XL U184 ( .A(A[5]), .B(n127), .Y(n82) );
  NAND2XL U185 ( .A(A[2]), .B(n130), .Y(n95) );
  NOR2XL U186 ( .A(A[2]), .B(n130), .Y(n94) );
  NAND2XL U187 ( .A(A[4]), .B(n128), .Y(n88) );
  NOR2XL U188 ( .A(A[6]), .B(n126), .Y(n76) );
  NAND2XL U189 ( .A(A[3]), .B(n129), .Y(n91) );
  NAND2XL U190 ( .A(A[7]), .B(n125), .Y(n69) );
  NOR2XL U191 ( .A(A[12]), .B(n120), .Y(n34) );
  NOR2XL U192 ( .A(A[0]), .B(n132), .Y(n101) );
  NAND2XL U193 ( .A(A[6]), .B(n126), .Y(n77) );
  NAND2XL U194 ( .A(A[12]), .B(n120), .Y(n35) );
  NOR2XL U195 ( .A(A[7]), .B(n125), .Y(n68) );
  NAND2XL U196 ( .A(A[8]), .B(n124), .Y(n62) );
  NAND2XL U197 ( .A(A[10]), .B(n122), .Y(n50) );
  NAND2XL U198 ( .A(A[11]), .B(n121), .Y(n40) );
  XNOR2XL U199 ( .A(A[0]), .B(n132), .Y(DIFF[0]) );
  NAND2XL U200 ( .A(A[13]), .B(n119), .Y(n30) );
  NAND2XL U201 ( .A(A[9]), .B(n123), .Y(n55) );
  NOR2XL U202 ( .A(A[11]), .B(n121), .Y(n39) );
  NAND2XL U203 ( .A(A[14]), .B(n118), .Y(n23) );
  OR2XL U204 ( .A(A[15]), .B(n117), .Y(n194) );
  NAND2XL U205 ( .A(A[15]), .B(n117), .Y(n18) );
  INVXL U206 ( .A(B[0]), .Y(n132) );
  INVXL U207 ( .A(B[1]), .Y(n131) );
  INVXL U208 ( .A(B[2]), .Y(n130) );
  INVXL U209 ( .A(B[3]), .Y(n129) );
  INVXL U210 ( .A(B[4]), .Y(n128) );
  INVXL U211 ( .A(B[6]), .Y(n126) );
  INVXL U212 ( .A(B[5]), .Y(n127) );
  INVXL U213 ( .A(B[7]), .Y(n125) );
  INVXL U214 ( .A(B[10]), .Y(n122) );
  INVXL U215 ( .A(B[8]), .Y(n124) );
  INVXL U216 ( .A(B[9]), .Y(n123) );
  INVXL U217 ( .A(B[11]), .Y(n121) );
  INVXL U218 ( .A(B[12]), .Y(n120) );
  INVXL U219 ( .A(B[13]), .Y(n119) );
  INVXL U220 ( .A(B[14]), .Y(n118) );
  INVXL U221 ( .A(B[15]), .Y(n117) );
  CLKINVX1 U222 ( .A(n93), .Y(n92) );
  CLKINVX1 U223 ( .A(n84), .Y(n83) );
  AOI21X1 U224 ( .A0(n71), .A1(n43), .B0(n44), .Y(n42) );
  NOR2X1 U225 ( .A(n57), .B(n45), .Y(n43) );
  OAI21XL U226 ( .A0(n58), .A1(n45), .B0(n46), .Y(n44) );
  NAND2X1 U227 ( .A(n188), .B(n190), .Y(n45) );
  CLKINVX1 U228 ( .A(n71), .Y(n70) );
  OAI21XL U229 ( .A0(n70), .A1(n57), .B0(n58), .Y(n56) );
  OA21XL U230 ( .A0(n99), .A1(n101), .B0(n100), .Y(n96) );
  AOI21X1 U231 ( .A0(n83), .A1(n189), .B0(n80), .Y(n78) );
  OAI21XL U232 ( .A0(n91), .A1(n87), .B0(n88), .Y(n86) );
  AOI21X1 U233 ( .A0(n191), .A1(n67), .B0(n60), .Y(n58) );
  CLKINVX1 U234 ( .A(n62), .Y(n60) );
  NAND2X1 U235 ( .A(n32), .B(n192), .Y(n25) );
  AOI21X1 U236 ( .A0(n33), .A1(n192), .B0(n28), .Y(n26) );
  NAND2X1 U237 ( .A(n194), .B(n18), .Y(n2) );
  AOI21X1 U238 ( .A0(n24), .A1(n193), .B0(n21), .Y(n19) );
  AOI21X1 U239 ( .A0(n74), .A1(n80), .B0(n75), .Y(n73) );
  CLKINVX1 U240 ( .A(n76), .Y(n74) );
  CLKINVX1 U241 ( .A(n50), .Y(n48) );
  CLKINVX1 U242 ( .A(n69), .Y(n67) );
  CLKINVX1 U243 ( .A(n82), .Y(n80) );
  CLKINVX1 U244 ( .A(n68), .Y(n66) );
  OAI21XL U245 ( .A0(n34), .A1(n40), .B0(n35), .Y(n33) );
  CLKINVX1 U246 ( .A(n77), .Y(n75) );
  NAND2X1 U247 ( .A(n113), .B(n88), .Y(n13) );
  CLKINVX1 U248 ( .A(n87), .Y(n113) );
  CLKINVX1 U249 ( .A(n55), .Y(n53) );
  XNOR2X1 U250 ( .A(n83), .B(n12), .Y(DIFF[5]) );
  NAND2X1 U251 ( .A(n189), .B(n82), .Y(n12) );
  NOR2X1 U252 ( .A(n34), .B(n39), .Y(n32) );
  NAND2X1 U253 ( .A(n188), .B(n50), .Y(n7) );
  CLKINVX1 U254 ( .A(n30), .Y(n28) );
  NAND2X1 U255 ( .A(n191), .B(n62), .Y(n9) );
  OAI21XL U256 ( .A0(n70), .A1(n68), .B0(n69), .Y(n63) );
  NAND2X1 U257 ( .A(n190), .B(n55), .Y(n8) );
  AOI21X1 U258 ( .A0(n41), .A1(n106), .B0(n38), .Y(n36) );
  CLKINVX1 U259 ( .A(n23), .Y(n21) );
  NAND2X1 U260 ( .A(n192), .B(n30), .Y(n4) );
  XNOR2X1 U261 ( .A(n41), .B(n6), .Y(DIFF[11]) );
  NAND2X1 U262 ( .A(n106), .B(n40), .Y(n6) );
  CLKINVX1 U263 ( .A(n39), .Y(n106) );
  NAND2X1 U264 ( .A(n193), .B(n23), .Y(n3) );
  CLKINVX1 U265 ( .A(n40), .Y(n38) );
endmodule


module avg_compare_DW01_sub_43 ( A, B, CI, DIFF, CO );
  input [15:0] A;
  input [15:0] B;
  output [15:0] DIFF;
  input CI;
  output CO;
  wire   n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30, n31,
         n32, n33, n34, n36, n37, n38, n39, n40, n41, n42, n43, n44, n46, n48,
         n49, n51, n53, n54, n55, n56, n58, n60, n61, n64, n65, n66, n67, n68,
         n69, n70, n71, n72, n73, n74, n75, n76, n78, n80, n81, n82, n83, n84,
         n85, n86, n87, n88, n89, n90, n91, n92, n93, n94, n97, n98, n99, n101,
         n104, n111, n115, n116, n117, n118, n119, n120, n121, n122, n123,
         n124, n125, n126, n127, n128, n129, n130, n186, n187, n188, n189,
         n190;

  XOR2X1 U16 ( .A(n29), .B(n4), .Y(DIFF[13]) );
  XOR2X1 U22 ( .A(n34), .B(n5), .Y(DIFF[12]) );
  XOR2X1 U38 ( .A(n49), .B(n7), .Y(DIFF[10]) );
  XOR2X1 U69 ( .A(n68), .B(n10), .Y(DIFF[7]) );
  XOR2X1 U79 ( .A(n76), .B(n11), .Y(DIFF[6]) );
  XOR2X1 U107 ( .A(n90), .B(n14), .Y(DIFF[3]) );
  XOR2X1 U113 ( .A(n15), .B(n94), .Y(DIFF[2]) );
  XOR2X1 U120 ( .A(n16), .B(n99), .Y(DIFF[1]) );
  OAI21XL U150 ( .A0(n90), .A1(n88), .B0(n89), .Y(n87) );
  OR2X1 U151 ( .A(A[10]), .B(n120), .Y(n186) );
  OR2X1 U152 ( .A(A[5]), .B(n125), .Y(n187) );
  OR2X1 U153 ( .A(A[9]), .B(n121), .Y(n188) );
  OR2X1 U154 ( .A(A[8]), .B(n122), .Y(n189) );
  AOI21X1 U155 ( .A0(n83), .A1(n91), .B0(n84), .Y(n82) );
  XNOR2X1 U156 ( .A(n87), .B(n13), .Y(DIFF[4]) );
  XNOR2X1 U157 ( .A(n54), .B(n8), .Y(DIFF[9]) );
  NOR2XL U158 ( .A(n88), .B(n85), .Y(n83) );
  OAI21XL U159 ( .A0(n82), .A1(n70), .B0(n71), .Y(n69) );
  OAI21XL U160 ( .A0(n40), .A1(n20), .B0(n21), .Y(n19) );
  NAND2BXL U161 ( .AN(n27), .B(n28), .Y(n4) );
  NAND2BXL U162 ( .AN(n32), .B(n33), .Y(n5) );
  AOI21XL U163 ( .A0(n39), .A1(n104), .B0(n36), .Y(n34) );
  INVX1 U164 ( .A(n40), .Y(n39) );
  NAND2XL U165 ( .A(n64), .B(n189), .Y(n55) );
  AOI21XL U166 ( .A0(n39), .A1(n30), .B0(n31), .Y(n29) );
  NAND2BX1 U167 ( .AN(n97), .B(n98), .Y(n16) );
  NAND2BX1 U168 ( .AN(n92), .B(n93), .Y(n15) );
  NAND2BX1 U169 ( .AN(n88), .B(n89), .Y(n14) );
  NAND2XL U170 ( .A(n72), .B(n187), .Y(n70) );
  XNOR2XL U171 ( .A(n61), .B(n9), .Y(DIFF[8]) );
  NAND2XL U172 ( .A(n189), .B(n60), .Y(n9) );
  NAND2BX1 U173 ( .AN(n66), .B(n67), .Y(n10) );
  NAND2BX1 U174 ( .AN(n74), .B(n75), .Y(n11) );
  XNOR2X1 U175 ( .A(n19), .B(n2), .Y(DIFF[15]) );
  AOI21XL U176 ( .A0(n54), .A1(n188), .B0(n51), .Y(n49) );
  AOI21XL U177 ( .A0(n31), .A1(n22), .B0(n23), .Y(n21) );
  INVX1 U178 ( .A(n60), .Y(n58) );
  NOR2XL U179 ( .A(A[1]), .B(n129), .Y(n97) );
  NAND2XL U180 ( .A(A[1]), .B(n129), .Y(n98) );
  NAND2XL U181 ( .A(A[3]), .B(n127), .Y(n89) );
  NOR2XL U182 ( .A(A[4]), .B(n126), .Y(n85) );
  NOR2XL U183 ( .A(A[3]), .B(n127), .Y(n88) );
  NAND2XL U184 ( .A(A[2]), .B(n128), .Y(n93) );
  NOR2XL U185 ( .A(A[2]), .B(n128), .Y(n92) );
  NAND2XL U186 ( .A(A[4]), .B(n126), .Y(n86) );
  NAND2XL U187 ( .A(A[5]), .B(n125), .Y(n80) );
  NOR2XL U188 ( .A(A[6]), .B(n124), .Y(n74) );
  NOR2XL U189 ( .A(A[0]), .B(n130), .Y(n99) );
  NAND2XL U190 ( .A(A[6]), .B(n124), .Y(n75) );
  NOR2XL U191 ( .A(A[12]), .B(n118), .Y(n32) );
  NAND2XL U192 ( .A(A[7]), .B(n123), .Y(n67) );
  NAND2XL U193 ( .A(A[12]), .B(n118), .Y(n33) );
  NOR2XL U194 ( .A(A[7]), .B(n123), .Y(n66) );
  XNOR2XL U195 ( .A(A[0]), .B(n130), .Y(DIFF[0]) );
  NAND2XL U196 ( .A(A[10]), .B(n120), .Y(n48) );
  NOR2XL U197 ( .A(A[14]), .B(n116), .Y(n24) );
  NAND2XL U198 ( .A(A[14]), .B(n116), .Y(n25) );
  NAND2XL U199 ( .A(A[11]), .B(n119), .Y(n38) );
  NAND2XL U200 ( .A(A[13]), .B(n117), .Y(n28) );
  NOR2XL U201 ( .A(A[13]), .B(n117), .Y(n27) );
  NAND2XL U202 ( .A(A[9]), .B(n121), .Y(n53) );
  NOR2XL U203 ( .A(A[11]), .B(n119), .Y(n37) );
  OR2XL U204 ( .A(A[15]), .B(n115), .Y(n190) );
  NAND2XL U205 ( .A(A[15]), .B(n115), .Y(n18) );
  INVXL U206 ( .A(B[0]), .Y(n130) );
  INVXL U207 ( .A(B[1]), .Y(n129) );
  INVXL U208 ( .A(B[2]), .Y(n128) );
  INVXL U209 ( .A(B[3]), .Y(n127) );
  INVXL U210 ( .A(B[4]), .Y(n126) );
  INVXL U211 ( .A(B[6]), .Y(n124) );
  INVXL U212 ( .A(B[5]), .Y(n125) );
  INVXL U213 ( .A(B[7]), .Y(n123) );
  INVXL U214 ( .A(B[10]), .Y(n120) );
  INVXL U215 ( .A(B[8]), .Y(n122) );
  INVXL U216 ( .A(B[9]), .Y(n121) );
  INVXL U217 ( .A(B[11]), .Y(n119) );
  INVXL U218 ( .A(B[12]), .Y(n118) );
  INVXL U219 ( .A(B[13]), .Y(n117) );
  INVXL U220 ( .A(B[14]), .Y(n116) );
  INVXL U221 ( .A(B[15]), .Y(n115) );
  CLKINVX1 U222 ( .A(n91), .Y(n90) );
  CLKINVX1 U223 ( .A(n82), .Y(n81) );
  CLKINVX1 U224 ( .A(n69), .Y(n68) );
  AOI21X1 U225 ( .A0(n69), .A1(n41), .B0(n42), .Y(n40) );
  NOR2X1 U226 ( .A(n55), .B(n43), .Y(n41) );
  OAI21XL U227 ( .A0(n56), .A1(n43), .B0(n44), .Y(n42) );
  NAND2X1 U228 ( .A(n186), .B(n188), .Y(n43) );
  NAND2X1 U229 ( .A(n22), .B(n30), .Y(n20) );
  OAI21XL U230 ( .A0(n68), .A1(n55), .B0(n56), .Y(n54) );
  OA21XL U231 ( .A0(n97), .A1(n99), .B0(n98), .Y(n94) );
  OAI21X1 U232 ( .A0(n94), .A1(n92), .B0(n93), .Y(n91) );
  AOI21X1 U233 ( .A0(n81), .A1(n187), .B0(n78), .Y(n76) );
  OAI21XL U234 ( .A0(n89), .A1(n85), .B0(n86), .Y(n84) );
  AOI21X1 U235 ( .A0(n72), .A1(n78), .B0(n73), .Y(n71) );
  CLKINVX1 U236 ( .A(n74), .Y(n72) );
  CLKINVX1 U237 ( .A(n80), .Y(n78) );
  AOI21X1 U238 ( .A0(n189), .A1(n65), .B0(n58), .Y(n56) );
  NAND2X1 U239 ( .A(n190), .B(n18), .Y(n2) );
  NAND2X1 U240 ( .A(n111), .B(n86), .Y(n13) );
  CLKINVX1 U241 ( .A(n85), .Y(n111) );
  CLKINVX1 U242 ( .A(n75), .Y(n73) );
  XNOR2X1 U243 ( .A(n81), .B(n12), .Y(DIFF[5]) );
  NAND2X1 U244 ( .A(n187), .B(n80), .Y(n12) );
  AOI21X1 U245 ( .A0(n186), .A1(n51), .B0(n46), .Y(n44) );
  CLKINVX1 U246 ( .A(n48), .Y(n46) );
  CLKINVX1 U247 ( .A(n67), .Y(n65) );
  CLKINVX1 U248 ( .A(n66), .Y(n64) );
  OAI21XL U249 ( .A0(n24), .A1(n28), .B0(n25), .Y(n23) );
  NOR2X1 U250 ( .A(n24), .B(n27), .Y(n22) );
  OAI21XL U251 ( .A0(n32), .A1(n38), .B0(n33), .Y(n31) );
  CLKINVX1 U252 ( .A(n53), .Y(n51) );
  NOR2X1 U253 ( .A(n32), .B(n37), .Y(n30) );
  NAND2X1 U254 ( .A(n186), .B(n48), .Y(n7) );
  OAI21XL U255 ( .A0(n68), .A1(n66), .B0(n67), .Y(n61) );
  NAND2X1 U256 ( .A(n188), .B(n53), .Y(n8) );
  XNOR2X1 U257 ( .A(n39), .B(n6), .Y(DIFF[11]) );
  NAND2X1 U258 ( .A(n104), .B(n38), .Y(n6) );
  CLKINVX1 U259 ( .A(n37), .Y(n104) );
  XNOR2X1 U260 ( .A(n26), .B(n3), .Y(DIFF[14]) );
  NAND2X1 U261 ( .A(n101), .B(n25), .Y(n3) );
  OAI21XL U262 ( .A0(n29), .A1(n27), .B0(n28), .Y(n26) );
  CLKINVX1 U263 ( .A(n24), .Y(n101) );
  CLKINVX1 U264 ( .A(n38), .Y(n36) );
  NAND2XL U265 ( .A(A[8]), .B(n122), .Y(n60) );
endmodule


module avg_compare_DW01_inc_21 ( A, SUM );
  input [15:0] A;
  output [15:0] SUM;
  wire   n1, n2, n3, n5, n6, n9, n10, n12, n13, n16, n17, n19, n20, n23, n24,
         n27, n28, n31, n32, n34, n35, n36, n38, n40, n41, n42, n43, n44, n45,
         n46, n47, n76, n77;

  XOR2X1 U6 ( .A(n32), .B(A[14]), .Y(n5) );
  XOR2X1 U21 ( .A(n36), .B(A[10]), .Y(SUM[10]) );
  XOR2X1 U50 ( .A(A[2]), .B(n47), .Y(SUM[2]) );
  CLKAND2X3 U56 ( .A(n38), .B(A[9]), .Y(n77) );
  NOR2BX4 U57 ( .AN(n36), .B(n76), .Y(n1) );
  XOR2XL U58 ( .A(n35), .B(A[11]), .Y(n12) );
  AND2X2 U59 ( .A(n40), .B(n77), .Y(n36) );
  NAND2X2 U60 ( .A(n34), .B(A[12]), .Y(n76) );
  XNOR2XL U61 ( .A(n31), .B(A[15]), .Y(n2) );
  INVXL U62 ( .A(A[5]), .Y(n42) );
  INVXL U63 ( .A(A[9]), .Y(n17) );
  XOR2XL U64 ( .A(n46), .B(A[3]), .Y(n27) );
  INVXL U65 ( .A(A[8]), .Y(n20) );
  XNOR2XL U66 ( .A(n34), .B(A[12]), .Y(n9) );
  AND2X2 U67 ( .A(A[5]), .B(A[6]), .Y(n41) );
  AND2X2 U68 ( .A(A[10]), .B(A[11]), .Y(n34) );
  AND2X2 U69 ( .A(A[7]), .B(A[8]), .Y(n38) );
  XNOR2X1 U70 ( .A(A[7]), .B(A[8]), .Y(n19) );
  CLKINVX1 U71 ( .A(A[6]), .Y(n24) );
  CLKINVX1 U72 ( .A(A[3]), .Y(n28) );
  CLKINVX1 U73 ( .A(A[12]), .Y(n10) );
  CLKINVX1 U74 ( .A(A[15]), .Y(n3) );
  CLKINVX1 U75 ( .A(A[14]), .Y(n6) );
  CLKINVX1 U76 ( .A(A[11]), .Y(n13) );
  AND2X2 U77 ( .A(A[2]), .B(A[3]), .Y(n45) );
  ADDHXL U78 ( .A(A[4]), .B(n44), .CO(n43), .S(SUM[4]) );
  AND2X2 U79 ( .A(n45), .B(n47), .Y(n44) );
  CLKINVX1 U80 ( .A(A[2]), .Y(n46) );
  CLKINVX1 U81 ( .A(A[13]), .Y(n32) );
  AND2X2 U82 ( .A(A[13]), .B(A[14]), .Y(n31) );
  XNOR2XL U83 ( .A(n38), .B(A[9]), .Y(n16) );
  CLKINVX1 U84 ( .A(A[10]), .Y(n35) );
  XOR2X1 U85 ( .A(n1), .B(A[13]), .Y(SUM[13]) );
  MXI2X1 U86 ( .A(n3), .B(n2), .S0(n1), .Y(SUM[15]) );
  MXI2X1 U87 ( .A(n6), .B(n5), .S0(n1), .Y(SUM[14]) );
  CLKAND2X3 U88 ( .A(n41), .B(n43), .Y(n40) );
  MXI2X1 U89 ( .A(n10), .B(n9), .S0(n36), .Y(SUM[12]) );
  MXI2X1 U90 ( .A(n17), .B(n16), .S0(n40), .Y(SUM[9]) );
  CLKINVX1 U91 ( .A(A[0]), .Y(SUM[0]) );
  ADDHXL U92 ( .A(A[0]), .B(A[1]), .CO(n47), .S(SUM[1]) );
  MXI2X1 U93 ( .A(n24), .B(n23), .S0(n43), .Y(SUM[6]) );
  XOR2XL U94 ( .A(n42), .B(A[6]), .Y(n23) );
  XOR2XL U95 ( .A(n43), .B(A[5]), .Y(SUM[5]) );
  XOR2XL U96 ( .A(n40), .B(A[7]), .Y(SUM[7]) );
  MXI2XL U97 ( .A(n20), .B(n19), .S0(n40), .Y(SUM[8]) );
  MXI2X1 U98 ( .A(n28), .B(n27), .S0(n47), .Y(SUM[3]) );
  MXI2XL U99 ( .A(n13), .B(n12), .S0(n36), .Y(SUM[11]) );
endmodule


module avg_compare_DW01_inc_22 ( A, SUM );
  input [15:0] A;
  output [15:0] SUM;
  wire   n1, n2, n3, n5, n6, n9, n10, n12, n13, n16, n17, n19, n20, n23, n24,
         n27, n28, n31, n32, n33, n34, n35, n36, n38, n39, n40, n41, n42, n43,
         n44, n45, n46, n47, n76;

  XOR2X1 U21 ( .A(n36), .B(A[10]), .Y(SUM[10]) );
  XOR2X1 U33 ( .A(n40), .B(A[7]), .Y(SUM[7]) );
  XOR2X1 U41 ( .A(n43), .B(A[5]), .Y(SUM[5]) );
  XOR2X1 U50 ( .A(A[2]), .B(n47), .Y(SUM[2]) );
  AND2X2 U56 ( .A(A[2]), .B(A[3]), .Y(n45) );
  XOR2XL U57 ( .A(n46), .B(A[3]), .Y(n27) );
  AND2X4 U58 ( .A(A[7]), .B(A[8]), .Y(n38) );
  MXI2X1 U59 ( .A(n3), .B(n2), .S0(n1), .Y(SUM[15]) );
  CLKAND2X3 U60 ( .A(A[5]), .B(A[6]), .Y(n41) );
  INVXL U61 ( .A(A[10]), .Y(n35) );
  INVXL U62 ( .A(A[5]), .Y(n42) );
  XOR2XL U63 ( .A(n32), .B(A[14]), .Y(n5) );
  XOR2XL U64 ( .A(n35), .B(A[11]), .Y(n12) );
  XOR2XL U65 ( .A(n39), .B(A[8]), .Y(n19) );
  XNOR2XL U66 ( .A(n34), .B(A[12]), .Y(n9) );
  XOR2XL U67 ( .A(n42), .B(A[6]), .Y(n23) );
  NOR2BX1 U68 ( .AN(n36), .B(n33), .Y(n1) );
  NAND2X1 U69 ( .A(n34), .B(A[12]), .Y(n33) );
  AND2X2 U70 ( .A(n40), .B(n76), .Y(n36) );
  AND2X2 U71 ( .A(A[9]), .B(n38), .Y(n76) );
  AND2X2 U72 ( .A(A[13]), .B(A[14]), .Y(n31) );
  AND2X2 U73 ( .A(A[10]), .B(A[11]), .Y(n34) );
  CLKINVX1 U74 ( .A(A[6]), .Y(n24) );
  CLKINVX1 U75 ( .A(A[8]), .Y(n20) );
  CLKINVX1 U76 ( .A(A[3]), .Y(n28) );
  CLKINVX1 U77 ( .A(A[12]), .Y(n10) );
  CLKINVX1 U78 ( .A(A[14]), .Y(n6) );
  CLKINVX1 U79 ( .A(A[15]), .Y(n3) );
  CLKINVX1 U80 ( .A(A[11]), .Y(n13) );
  AND2X2 U81 ( .A(n41), .B(n43), .Y(n40) );
  MXI2X1 U82 ( .A(n17), .B(n16), .S0(n40), .Y(SUM[9]) );
  CLKINVX1 U83 ( .A(A[9]), .Y(n17) );
  AND2X2 U84 ( .A(n45), .B(n47), .Y(n44) );
  CLKINVX1 U85 ( .A(A[7]), .Y(n39) );
  CLKINVX1 U86 ( .A(A[2]), .Y(n46) );
  CLKINVX1 U87 ( .A(A[13]), .Y(n32) );
  XNOR2X1 U88 ( .A(n31), .B(A[15]), .Y(n2) );
  MXI2X1 U89 ( .A(n6), .B(n5), .S0(n1), .Y(SUM[14]) );
  XOR2X1 U90 ( .A(n1), .B(A[13]), .Y(SUM[13]) );
  CLKINVX1 U91 ( .A(A[0]), .Y(SUM[0]) );
  ADDHXL U92 ( .A(A[0]), .B(A[1]), .CO(n47), .S(SUM[1]) );
  ADDHXL U93 ( .A(A[4]), .B(n44), .CO(n43), .S(SUM[4]) );
  MXI2X1 U94 ( .A(n24), .B(n23), .S0(n43), .Y(SUM[6]) );
  MXI2X1 U95 ( .A(n20), .B(n19), .S0(n40), .Y(SUM[8]) );
  MXI2X1 U96 ( .A(n28), .B(n27), .S0(n47), .Y(SUM[3]) );
  MXI2X1 U97 ( .A(n10), .B(n9), .S0(n36), .Y(SUM[12]) );
  MXI2XL U98 ( .A(n13), .B(n12), .S0(n36), .Y(SUM[11]) );
  XNOR2X1 U99 ( .A(A[9]), .B(n38), .Y(n16) );
endmodule


module avg_compare_DW01_inc_23 ( A, SUM );
  input [15:0] A;
  output [15:0] SUM;
  wire   n1, n2, n3, n4, n5, n6, n8, n9, n10, n12, n13, n15, n16, n18, n19,
         n22, n23, n24, n25, n27, n28, n29, n30, n31, n33, n34, n35, n36, n37,
         n38, n39, n40, n41, n42, n43, n44, n45, n46, n47, n48, n49, n50;

  XOR2X1 U3 ( .A(n4), .B(n3), .Y(SUM[14]) );
  XOR2X1 U24 ( .A(n23), .B(n22), .Y(SUM[10]) );
  XOR2X1 U29 ( .A(n27), .B(n28), .Y(SUM[9]) );
  XOR2X1 U35 ( .A(n31), .B(n30), .Y(SUM[8]) );
  XOR2X1 U48 ( .A(n39), .B(n40), .Y(SUM[5]) );
  XOR2X1 U51 ( .A(n43), .B(n42), .Y(SUM[4]) );
  XOR2X1 U59 ( .A(n47), .B(n48), .Y(SUM[2]) );
  XOR2X1 U62 ( .A(n50), .B(SUM[0]), .Y(SUM[1]) );
  NAND2XL U69 ( .A(n15), .B(A[12]), .Y(n10) );
  CLKINVX1 U70 ( .A(A[14]), .Y(n3) );
  CLKINVX1 U71 ( .A(n16), .Y(n15) );
  CLKINVX1 U72 ( .A(A[11]), .Y(n18) );
  NOR2XL U73 ( .A(n23), .B(n16), .Y(n13) );
  INVX1 U74 ( .A(n35), .Y(n34) );
  NOR2X1 U75 ( .A(n4), .B(n3), .Y(n2) );
  NOR2X1 U76 ( .A(n33), .B(n30), .Y(n29) );
  NOR2XL U77 ( .A(n47), .B(n48), .Y(n46) );
  INVX1 U78 ( .A(n24), .Y(n23) );
  INVXL U79 ( .A(n41), .Y(n40) );
  NAND2XL U80 ( .A(A[9]), .B(n29), .Y(n25) );
  NAND2XL U81 ( .A(n5), .B(n24), .Y(n4) );
  INVXL U82 ( .A(n49), .Y(n48) );
  XNOR2XL U83 ( .A(n13), .B(n12), .Y(SUM[12]) );
  INVX1 U84 ( .A(A[10]), .Y(n22) );
  NAND2XL U85 ( .A(n34), .B(n29), .Y(n28) );
  INVX1 U86 ( .A(A[7]), .Y(n33) );
  INVX1 U87 ( .A(A[6]), .Y(n37) );
  INVX1 U88 ( .A(A[3]), .Y(n45) );
  NAND2XL U89 ( .A(n34), .B(A[7]), .Y(n31) );
  INVX1 U90 ( .A(A[2]), .Y(n47) );
  INVX1 U91 ( .A(A[1]), .Y(n50) );
  XNOR2XL U92 ( .A(n38), .B(n37), .Y(SUM[6]) );
  NOR2XL U93 ( .A(n39), .B(n40), .Y(n38) );
  XNOR2XL U94 ( .A(n34), .B(n33), .Y(SUM[7]) );
  NAND2X1 U95 ( .A(A[10]), .B(A[11]), .Y(n16) );
  NOR2X1 U96 ( .A(n16), .B(n6), .Y(n5) );
  NAND2X1 U97 ( .A(A[12]), .B(A[13]), .Y(n6) );
  XNOR2X1 U98 ( .A(n2), .B(n1), .Y(SUM[15]) );
  CLKINVX1 U99 ( .A(A[15]), .Y(n1) );
  NOR2X1 U100 ( .A(n25), .B(n35), .Y(n24) );
  NAND2X1 U101 ( .A(n36), .B(n41), .Y(n35) );
  NOR2X1 U102 ( .A(n37), .B(n39), .Y(n36) );
  NOR2X1 U103 ( .A(n43), .B(n42), .Y(n41) );
  NAND2X1 U104 ( .A(n44), .B(n49), .Y(n43) );
  NOR2X1 U105 ( .A(n47), .B(n45), .Y(n44) );
  XNOR2X1 U106 ( .A(n46), .B(n45), .Y(SUM[3]) );
  XNOR2X1 U107 ( .A(n9), .B(n8), .Y(SUM[13]) );
  NOR2X1 U108 ( .A(n10), .B(n23), .Y(n9) );
  CLKINVX1 U109 ( .A(A[13]), .Y(n8) );
  CLKINVX1 U110 ( .A(A[12]), .Y(n12) );
  CLKINVX1 U111 ( .A(A[8]), .Y(n30) );
  XNOR2X1 U112 ( .A(n19), .B(n18), .Y(SUM[11]) );
  NOR2X1 U113 ( .A(n23), .B(n22), .Y(n19) );
  CLKINVX1 U114 ( .A(A[9]), .Y(n27) );
  CLKINVX1 U115 ( .A(A[5]), .Y(n39) );
  NOR2X1 U116 ( .A(n50), .B(SUM[0]), .Y(n49) );
  CLKINVX1 U117 ( .A(A[4]), .Y(n42) );
  CLKINVX1 U118 ( .A(A[0]), .Y(SUM[0]) );
endmodule


module avg_compare_DW01_inc_24 ( A, SUM );
  input [15:0] A;
  output [15:0] SUM;
  wire   n1, n2, n3, n4, n6, n7, n8, n10, n11, n12, n13, n14, n16, n17, n18,
         n19, n20, n21, n22, n23, n24, n25, n27, n28, n30, n31, n32, n34, n35,
         n36, n38, n39, n41, n42, n43, n45, n46, n47;

  XOR2X1 U3 ( .A(n4), .B(n3), .Y(SUM[14]) );
  XOR2X1 U11 ( .A(n11), .B(n10), .Y(SUM[12]) );
  XOR2X1 U16 ( .A(n14), .B(n13), .Y(SUM[11]) );
  XOR2X1 U29 ( .A(n23), .B(n22), .Y(SUM[8]) );
  XOR2X1 U32 ( .A(n28), .B(n27), .Y(SUM[7]) );
  XOR2X1 U47 ( .A(n38), .B(n39), .Y(SUM[4]) );
  XOR2X1 U61 ( .A(n47), .B(SUM[0]), .Y(SUM[1]) );
  NAND2XL U67 ( .A(n12), .B(A[12]), .Y(n8) );
  NOR2XL U68 ( .A(n8), .B(n18), .Y(n7) );
  INVX1 U69 ( .A(A[10]), .Y(n16) );
  INVX1 U70 ( .A(n24), .Y(n23) );
  INVX1 U71 ( .A(A[14]), .Y(n3) );
  CLKINVX1 U72 ( .A(A[13]), .Y(n6) );
  XNOR2XL U73 ( .A(n1), .B(A[15]), .Y(SUM[15]) );
  INVXL U74 ( .A(n43), .Y(n42) );
  INVXL U75 ( .A(n32), .Y(n31) );
  NAND2BX1 U76 ( .AN(n27), .B(A[6]), .Y(n25) );
  NAND2XL U77 ( .A(n19), .B(n24), .Y(n18) );
  NAND2XL U78 ( .A(n7), .B(n2), .Y(n1) );
  INVX1 U79 ( .A(A[7]), .Y(n27) );
  INVX1 U80 ( .A(A[6]), .Y(n30) );
  INVX1 U81 ( .A(A[3]), .Y(n41) );
  XNOR2XL U82 ( .A(n42), .B(n41), .Y(SUM[3]) );
  INVX1 U83 ( .A(A[2]), .Y(n45) );
  INVX1 U84 ( .A(A[1]), .Y(n47) );
  XNOR2XL U85 ( .A(n45), .B(n46), .Y(SUM[2]) );
  INVX1 U86 ( .A(A[11]), .Y(n13) );
  INVX1 U87 ( .A(A[12]), .Y(n10) );
  NAND2XL U88 ( .A(n42), .B(A[3]), .Y(n39) );
  XNOR2XL U89 ( .A(n34), .B(n35), .Y(SUM[5]) );
  XNOR2XL U90 ( .A(n31), .B(n30), .Y(SUM[6]) );
  NAND2XL U91 ( .A(n31), .B(A[6]), .Y(n28) );
  CLKINVX1 U92 ( .A(n18), .Y(n17) );
  NOR2X1 U93 ( .A(n6), .B(n3), .Y(n2) );
  NOR2X1 U94 ( .A(n16), .B(n13), .Y(n12) );
  NOR2X1 U95 ( .A(n25), .B(n32), .Y(n24) );
  NOR2X1 U96 ( .A(n20), .B(n22), .Y(n19) );
  NOR2X1 U97 ( .A(n36), .B(n43), .Y(n35) );
  NAND2X1 U98 ( .A(A[4]), .B(A[3]), .Y(n36) );
  NAND2BX1 U99 ( .AN(n34), .B(n35), .Y(n32) );
  NAND2BX1 U100 ( .AN(n45), .B(n46), .Y(n43) );
  NAND2X1 U101 ( .A(n7), .B(A[13]), .Y(n4) );
  XNOR2X1 U102 ( .A(n17), .B(n16), .Y(SUM[10]) );
  NAND2X1 U103 ( .A(n17), .B(n12), .Y(n11) );
  XNOR2X1 U104 ( .A(n7), .B(n6), .Y(SUM[13]) );
  NAND2X1 U105 ( .A(n17), .B(A[10]), .Y(n14) );
  CLKINVX1 U106 ( .A(A[9]), .Y(n20) );
  XNOR2X1 U107 ( .A(n21), .B(n20), .Y(SUM[9]) );
  NOR2X1 U108 ( .A(n23), .B(n22), .Y(n21) );
  CLKINVX1 U109 ( .A(A[8]), .Y(n22) );
  CLKINVX1 U110 ( .A(A[4]), .Y(n38) );
  NOR2X1 U111 ( .A(n47), .B(SUM[0]), .Y(n46) );
  CLKINVX1 U112 ( .A(A[5]), .Y(n34) );
  CLKINVX1 U113 ( .A(A[0]), .Y(SUM[0]) );
endmodule


module avg_compare_DW01_inc_25 ( A, SUM );
  input [15:0] A;
  output [15:0] SUM;
  wire   n1, n2, n4, n5, n6, n7, n8, n9, n10, n11, n12, n14, n15, n16, n17,
         n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n30, n31, n33, n34,
         n35, n37, n38, n39, n41, n42, n44, n45, n46, n48, n49, n50;

  XOR2X1 U1 ( .A(n2), .B(n1), .Y(SUM[15]) );
  XOR2X1 U7 ( .A(n9), .B(n8), .Y(SUM[13]) );
  XOR2X1 U12 ( .A(n12), .B(n11), .Y(SUM[12]) );
  XOR2X1 U16 ( .A(n17), .B(n16), .Y(SUM[11]) );
  XOR2X1 U31 ( .A(n26), .B(n25), .Y(SUM[8]) );
  XOR2X1 U34 ( .A(n31), .B(n30), .Y(SUM[7]) );
  XOR2X1 U49 ( .A(n41), .B(n42), .Y(SUM[4]) );
  XOR2X1 U63 ( .A(n50), .B(SUM[0]), .Y(SUM[1]) );
  NOR2X2 U69 ( .A(n26), .B(n25), .Y(n24) );
  INVX1 U70 ( .A(A[10]), .Y(n19) );
  INVX1 U71 ( .A(n27), .Y(n26) );
  NOR2XL U72 ( .A(n6), .B(n21), .Y(n5) );
  INVXL U73 ( .A(n15), .Y(n14) );
  INVXL U74 ( .A(n46), .Y(n45) );
  INVXL U75 ( .A(n35), .Y(n34) );
  NAND2BX1 U76 ( .AN(n30), .B(A[6]), .Y(n28) );
  NAND2XL U77 ( .A(n22), .B(n27), .Y(n21) );
  NAND2XL U78 ( .A(n15), .B(n7), .Y(n6) );
  XNOR2XL U79 ( .A(n24), .B(n23), .Y(SUM[9]) );
  INVX1 U80 ( .A(A[7]), .Y(n30) );
  INVX1 U81 ( .A(A[8]), .Y(n25) );
  INVX1 U82 ( .A(A[9]), .Y(n23) );
  INVX1 U83 ( .A(A[6]), .Y(n33) );
  INVX1 U84 ( .A(A[3]), .Y(n44) );
  NAND2XL U85 ( .A(n20), .B(A[10]), .Y(n17) );
  XNOR2XL U86 ( .A(n45), .B(n44), .Y(SUM[3]) );
  INVX1 U87 ( .A(A[2]), .Y(n48) );
  INVX1 U88 ( .A(A[1]), .Y(n50) );
  NAND2XL U89 ( .A(n20), .B(n15), .Y(n12) );
  XNOR2XL U90 ( .A(n48), .B(n49), .Y(SUM[2]) );
  INVX1 U91 ( .A(A[11]), .Y(n16) );
  XNOR2XL U92 ( .A(n5), .B(n4), .Y(SUM[14]) );
  NOR2XL U93 ( .A(n14), .B(n11), .Y(n10) );
  NAND2XL U94 ( .A(n10), .B(n20), .Y(n9) );
  INVX1 U95 ( .A(A[13]), .Y(n8) );
  INVX1 U96 ( .A(A[12]), .Y(n11) );
  NAND2XL U97 ( .A(n45), .B(A[3]), .Y(n42) );
  XNOR2XL U98 ( .A(n37), .B(n38), .Y(SUM[5]) );
  XNOR2XL U99 ( .A(n34), .B(n33), .Y(SUM[6]) );
  NAND2XL U100 ( .A(n34), .B(A[6]), .Y(n31) );
  CLKINVX1 U101 ( .A(n21), .Y(n20) );
  NOR2X1 U102 ( .A(n11), .B(n8), .Y(n7) );
  CLKINVX1 U103 ( .A(A[15]), .Y(n1) );
  NAND2X1 U104 ( .A(n5), .B(A[14]), .Y(n2) );
  NOR2X1 U105 ( .A(n19), .B(n16), .Y(n15) );
  NOR2X1 U106 ( .A(n28), .B(n35), .Y(n27) );
  NOR2X1 U107 ( .A(n23), .B(n25), .Y(n22) );
  NOR2X1 U108 ( .A(n39), .B(n46), .Y(n38) );
  NAND2X1 U109 ( .A(A[4]), .B(A[3]), .Y(n39) );
  NAND2BX1 U110 ( .AN(n37), .B(n38), .Y(n35) );
  NAND2BX1 U111 ( .AN(n48), .B(n49), .Y(n46) );
  XNOR2X1 U112 ( .A(n20), .B(n19), .Y(SUM[10]) );
  CLKINVX1 U113 ( .A(A[14]), .Y(n4) );
  NOR2X1 U114 ( .A(n50), .B(SUM[0]), .Y(n49) );
  CLKINVX1 U115 ( .A(A[4]), .Y(n41) );
  CLKINVX1 U116 ( .A(A[5]), .Y(n37) );
  CLKINVX1 U117 ( .A(A[0]), .Y(SUM[0]) );
endmodule


module avg_compare_DW01_inc_26 ( A, SUM );
  input [15:0] A;
  output [15:0] SUM;
  wire   n1, n2, n5, n6, n8, n9, n10, n11, n12, n14, n15, n16, n17, n18, n19,
         n20, n22, n23, n26, n27, n28, n29, n31, n32, n34, n35, n36, n38, n39,
         n40, n42, n43, n45, n46, n47, n49, n50, n51;

  XOR2X1 U30 ( .A(n27), .B(n26), .Y(SUM[8]) );
  XOR2X1 U35 ( .A(n32), .B(n31), .Y(SUM[7]) );
  XOR2X1 U50 ( .A(n42), .B(n43), .Y(SUM[4]) );
  XOR2X1 U64 ( .A(n51), .B(SUM[0]), .Y(SUM[1]) );
  INVXL U70 ( .A(A[5]), .Y(n38) );
  INVXL U71 ( .A(n47), .Y(n46) );
  INVXL U72 ( .A(n36), .Y(n35) );
  INVXL U73 ( .A(A[3]), .Y(n45) );
  NOR2XL U74 ( .A(n27), .B(n20), .Y(n19) );
  INVXL U75 ( .A(A[2]), .Y(n49) );
  NAND2XL U76 ( .A(n46), .B(A[3]), .Y(n43) );
  INVXL U77 ( .A(A[6]), .Y(n34) );
  NAND2XL U78 ( .A(n35), .B(A[6]), .Y(n32) );
  XOR2X1 U79 ( .A(n5), .B(A[14]), .Y(SUM[14]) );
  CLKINVX1 U80 ( .A(A[15]), .Y(n1) );
  CLKINVX1 U81 ( .A(A[4]), .Y(n42) );
  CLKINVX1 U82 ( .A(A[10]), .Y(n18) );
  CLKINVX1 U83 ( .A(A[8]), .Y(n26) );
  CLKINVX1 U84 ( .A(A[11]), .Y(n14) );
  XOR2X1 U85 ( .A(n2), .B(n1), .Y(SUM[15]) );
  CLKINVX1 U86 ( .A(A[13]), .Y(n8) );
  XOR2X1 U87 ( .A(n12), .B(n11), .Y(SUM[12]) );
  CLKINVX1 U88 ( .A(A[12]), .Y(n11) );
  NOR2X1 U89 ( .A(n14), .B(n11), .Y(n10) );
  NAND2X1 U90 ( .A(n10), .B(A[13]), .Y(n6) );
  NAND2X1 U91 ( .A(A[7]), .B(A[6]), .Y(n29) );
  NAND2X1 U92 ( .A(A[5]), .B(n39), .Y(n36) );
  CLKINVX1 U93 ( .A(A[7]), .Y(n31) );
  NOR2X1 U94 ( .A(n29), .B(n36), .Y(n28) );
  NAND2X1 U95 ( .A(n28), .B(n17), .Y(n16) );
  NOR2X1 U96 ( .A(n6), .B(n16), .Y(n5) );
  CLKINVX1 U97 ( .A(n16), .Y(n15) );
  XOR2X1 U98 ( .A(n9), .B(n8), .Y(SUM[13]) );
  NAND2X1 U99 ( .A(n15), .B(A[11]), .Y(n12) );
  NAND2X1 U100 ( .A(n10), .B(n15), .Y(n9) );
  XNOR2X1 U101 ( .A(n15), .B(n14), .Y(SUM[11]) );
  NAND2X1 U102 ( .A(n5), .B(A[14]), .Y(n2) );
  NAND2X1 U103 ( .A(A[9]), .B(A[8]), .Y(n20) );
  NOR2X1 U104 ( .A(n20), .B(n18), .Y(n17) );
  NAND2X1 U105 ( .A(A[4]), .B(A[3]), .Y(n40) );
  CLKINVX1 U106 ( .A(A[1]), .Y(n51) );
  NOR2X1 U107 ( .A(n51), .B(SUM[0]), .Y(n50) );
  NAND2X1 U108 ( .A(A[2]), .B(n50), .Y(n47) );
  XNOR2X1 U109 ( .A(n49), .B(n50), .Y(SUM[2]) );
  NOR2X1 U110 ( .A(n40), .B(n47), .Y(n39) );
  CLKINVX1 U111 ( .A(A[0]), .Y(SUM[0]) );
  XNOR2X1 U112 ( .A(n38), .B(n39), .Y(SUM[5]) );
  XNOR2X1 U113 ( .A(n34), .B(n35), .Y(SUM[6]) );
  CLKINVX1 U114 ( .A(n28), .Y(n27) );
  XNOR2X1 U115 ( .A(n46), .B(n45), .Y(SUM[3]) );
  NOR2X1 U116 ( .A(n27), .B(n26), .Y(n23) );
  XNOR2X1 U117 ( .A(n23), .B(n22), .Y(SUM[9]) );
  CLKINVX1 U118 ( .A(A[9]), .Y(n22) );
  XNOR2X1 U119 ( .A(n19), .B(n18), .Y(SUM[10]) );
endmodule


module avg_compare_DW01_inc_27 ( A, SUM );
  input [15:0] A;
  output [15:0] SUM;
  wire   n8, n9, n15, n16, n19, n20, n23, n24, n25, n26, n27, n28, n29, n30,
         n31, n32, n34, n35, n36, n37, n38, n39, n40, n71, n72, n73;

  XOR2X1 U12 ( .A(n27), .B(A[12]), .Y(SUM[12]) );
  XOR2X1 U32 ( .A(n34), .B(A[7]), .Y(SUM[7]) );
  XOR2X1 U40 ( .A(n37), .B(A[5]), .Y(SUM[5]) );
  CLKMX2X2 U49 ( .A(A[14]), .B(n72), .S0(n27), .Y(SUM[14]) );
  MX2XL U50 ( .A(A[13]), .B(n71), .S0(n27), .Y(SUM[13]) );
  NOR2BX2 U51 ( .AN(n31), .B(n28), .Y(n27) );
  CLKAND2X3 U52 ( .A(n32), .B(n34), .Y(n31) );
  NOR2BX1 U53 ( .AN(n27), .B(n24), .Y(n23) );
  XOR2XL U54 ( .A(n25), .B(A[14]), .Y(n72) );
  NAND2XL U55 ( .A(n29), .B(A[11]), .Y(n28) );
  INVXL U56 ( .A(A[8]), .Y(n16) );
  XOR2XL U57 ( .A(n31), .B(A[9]), .Y(SUM[9]) );
  XNOR2XL U58 ( .A(n30), .B(A[10]), .Y(n73) );
  MX2XL U59 ( .A(A[10]), .B(n73), .S0(n31), .Y(SUM[10]) );
  XNOR2XL U60 ( .A(n26), .B(A[13]), .Y(n71) );
  XOR2XL U61 ( .A(n36), .B(A[6]), .Y(n19) );
  AND2X2 U62 ( .A(A[8]), .B(A[7]), .Y(n32) );
  XOR2X1 U63 ( .A(n23), .B(A[15]), .Y(SUM[15]) );
  AND2X2 U64 ( .A(A[12]), .B(A[13]), .Y(n25) );
  AND2X2 U65 ( .A(A[9]), .B(A[10]), .Y(n29) );
  XNOR2X1 U66 ( .A(A[8]), .B(A[7]), .Y(n15) );
  XNOR2X1 U67 ( .A(n29), .B(A[11]), .Y(n8) );
  CLKINVX1 U68 ( .A(A[6]), .Y(n20) );
  CLKINVX1 U69 ( .A(A[11]), .Y(n9) );
  CLKINVX1 U70 ( .A(A[9]), .Y(n30) );
  CLKINVX1 U71 ( .A(A[5]), .Y(n36) );
  CLKINVX1 U72 ( .A(A[12]), .Y(n26) );
  NAND2X1 U73 ( .A(n25), .B(A[14]), .Y(n24) );
  AND2X2 U74 ( .A(n35), .B(n37), .Y(n34) );
  AND2X2 U75 ( .A(A[5]), .B(A[6]), .Y(n35) );
  MXI2X1 U76 ( .A(n9), .B(n8), .S0(n31), .Y(SUM[11]) );
  CLKINVX1 U77 ( .A(A[0]), .Y(SUM[0]) );
  ADDHXL U78 ( .A(A[0]), .B(A[1]), .CO(n40), .S(SUM[1]) );
  ADDHXL U79 ( .A(A[2]), .B(n40), .CO(n39), .S(SUM[2]) );
  ADDHXL U80 ( .A(A[4]), .B(n38), .CO(n37), .S(SUM[4]) );
  MXI2X1 U81 ( .A(n20), .B(n19), .S0(n37), .Y(SUM[6]) );
  ADDHXL U82 ( .A(A[3]), .B(n39), .CO(n38), .S(SUM[3]) );
  MXI2X1 U83 ( .A(n16), .B(n15), .S0(n34), .Y(SUM[8]) );
endmodule


module avg_compare_DW01_sub_44 ( A, B, CI, DIFF, CO );
  input [15:0] A;
  input [15:0] B;
  output [15:0] DIFF;
  input CI;
  output CO;
  wire   n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n15, n16, n18,
         n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30, n31, n32,
         n33, n34, n35, n36, n37, n38, n39, n40, n42, n43, n44, n45, n46, n47,
         n48, n49, n50, n52, n54, n55, n56, n57, n61, n63, n64, n67, n68, n69,
         n70, n72, n74, n75, n78, n79, n80, n81, n82, n83, n84, n85, n87, n89,
         n90, n92, n94, n95, n96, n97, n98, n99, n100, n101, n102, n103, n104,
         n105, n106, n107, n108, n111, n112, n113, n115, n118, n125, n126,
         n129, n130, n131, n132, n133, n134, n135, n136, n137, n138, n139,
         n140, n141, n142, n143, n144, n200, n201, n202, n203, n204, n205,
         n206;

  XOR2X1 U26 ( .A(n40), .B(n5), .Y(DIFF[12]) );
  XOR2X1 U83 ( .A(n82), .B(n10), .Y(DIFF[7]) );
  XOR2X1 U93 ( .A(n90), .B(n11), .Y(DIFF[6]) );
  XOR2X1 U127 ( .A(n15), .B(n108), .Y(DIFF[2]) );
  XOR2X1 U134 ( .A(n16), .B(n113), .Y(DIFF[1]) );
  OAI21X1 U164 ( .A0(n96), .A1(n84), .B0(n85), .Y(n83) );
  AND2XL U165 ( .A(n126), .B(n103), .Y(n205) );
  OAI21XL U166 ( .A0(n104), .A1(n102), .B0(n103), .Y(n101) );
  NAND2X1 U167 ( .A(A[3]), .B(n141), .Y(n103) );
  XNOR2X1 U168 ( .A(n75), .B(n9), .Y(DIFF[8]) );
  AOI21X1 U169 ( .A0(n83), .A1(n47), .B0(n48), .Y(n46) );
  OAI21XL U170 ( .A0(n70), .A1(n49), .B0(n50), .Y(n48) );
  OR2X1 U171 ( .A(A[6]), .B(n138), .Y(n200) );
  OR2X1 U172 ( .A(A[9]), .B(n135), .Y(n201) );
  OR2X1 U173 ( .A(A[8]), .B(n136), .Y(n202) );
  OR2X1 U174 ( .A(A[5]), .B(n139), .Y(n203) );
  OR2X1 U175 ( .A(A[10]), .B(n134), .Y(n204) );
  INVXL U176 ( .A(n102), .Y(n126) );
  NOR2XL U177 ( .A(A[3]), .B(n141), .Y(n102) );
  INVXL U178 ( .A(n99), .Y(n125) );
  NOR2XL U179 ( .A(n102), .B(n99), .Y(n97) );
  OAI21X1 U180 ( .A0(n103), .A1(n99), .B0(n100), .Y(n98) );
  NOR2X1 U181 ( .A(A[4]), .B(n140), .Y(n99) );
  AOI21XL U182 ( .A0(n68), .A1(n201), .B0(n61), .Y(n57) );
  XNOR2X1 U183 ( .A(n104), .B(n205), .Y(DIFF[3]) );
  XNOR2XL U184 ( .A(n55), .B(n7), .Y(DIFF[10]) );
  NOR2X1 U185 ( .A(n69), .B(n49), .Y(n47) );
  OAI21X1 U186 ( .A0(n82), .A1(n80), .B0(n81), .Y(n75) );
  AOI21X1 U187 ( .A0(n97), .A1(n105), .B0(n98), .Y(n96) );
  NAND2XL U188 ( .A(n67), .B(n201), .Y(n56) );
  OAI21X1 U189 ( .A0(n108), .A1(n106), .B0(n107), .Y(n105) );
  XNOR2XL U190 ( .A(n101), .B(n13), .Y(DIFF[4]) );
  AOI21XL U191 ( .A0(n95), .A1(n203), .B0(n92), .Y(n90) );
  NAND2BXL U192 ( .AN(n80), .B(n81), .Y(n10) );
  XNOR2X4 U193 ( .A(n19), .B(n2), .Y(DIFF[15]) );
  NAND2BXL U194 ( .AN(n38), .B(n39), .Y(n5) );
  NAND2BXL U195 ( .AN(n106), .B(n107), .Y(n15) );
  NAND2BXL U196 ( .AN(n111), .B(n112), .Y(n16) );
  INVX1 U197 ( .A(n70), .Y(n68) );
  INVXL U198 ( .A(n37), .Y(n35) );
  INVXL U199 ( .A(n36), .Y(n34) );
  NAND2XL U200 ( .A(n36), .B(n29), .Y(n27) );
  XNOR2XL U201 ( .A(n95), .B(n12), .Y(DIFF[5]) );
  AOI21XL U202 ( .A0(n37), .A1(n29), .B0(n30), .Y(n28) );
  NOR2XL U203 ( .A(A[1]), .B(n143), .Y(n111) );
  NAND2XL U204 ( .A(A[4]), .B(n140), .Y(n100) );
  NAND2XL U205 ( .A(A[1]), .B(n143), .Y(n112) );
  NAND2XL U206 ( .A(A[5]), .B(n139), .Y(n94) );
  NOR2XL U207 ( .A(A[2]), .B(n142), .Y(n106) );
  NAND2XL U208 ( .A(A[6]), .B(n138), .Y(n89) );
  NOR2XL U209 ( .A(A[0]), .B(n144), .Y(n113) );
  NAND2XL U210 ( .A(A[2]), .B(n142), .Y(n107) );
  NOR2XL U211 ( .A(A[12]), .B(n132), .Y(n38) );
  NAND2XL U212 ( .A(A[12]), .B(n132), .Y(n39) );
  NAND2XL U213 ( .A(A[7]), .B(n137), .Y(n81) );
  NAND2XL U214 ( .A(A[8]), .B(n136), .Y(n74) );
  NAND2XL U215 ( .A(A[10]), .B(n134), .Y(n54) );
  NOR2XL U216 ( .A(A[7]), .B(n137), .Y(n80) );
  NAND2XL U217 ( .A(A[14]), .B(n130), .Y(n25) );
  NOR2XL U218 ( .A(A[14]), .B(n130), .Y(n24) );
  NAND2XL U219 ( .A(A[11]), .B(n133), .Y(n44) );
  NAND2XL U220 ( .A(A[13]), .B(n131), .Y(n32) );
  NOR2XL U221 ( .A(A[13]), .B(n131), .Y(n31) );
  NAND2XL U222 ( .A(A[9]), .B(n135), .Y(n63) );
  NOR2XL U223 ( .A(A[11]), .B(n133), .Y(n43) );
  OR2XL U224 ( .A(A[15]), .B(n129), .Y(n206) );
  NAND2XL U225 ( .A(A[15]), .B(n129), .Y(n18) );
  XNOR2XL U226 ( .A(A[0]), .B(n144), .Y(DIFF[0]) );
  INVXL U227 ( .A(B[1]), .Y(n143) );
  INVXL U228 ( .A(B[0]), .Y(n144) );
  INVXL U229 ( .A(B[3]), .Y(n141) );
  INVXL U230 ( .A(B[2]), .Y(n142) );
  INVXL U231 ( .A(B[4]), .Y(n140) );
  INVXL U232 ( .A(B[5]), .Y(n139) );
  INVXL U233 ( .A(B[6]), .Y(n138) );
  INVXL U234 ( .A(B[7]), .Y(n137) );
  INVXL U235 ( .A(B[8]), .Y(n136) );
  INVXL U236 ( .A(B[10]), .Y(n134) );
  INVXL U237 ( .A(B[11]), .Y(n133) );
  INVXL U238 ( .A(B[9]), .Y(n135) );
  INVXL U239 ( .A(B[12]), .Y(n132) );
  INVXL U240 ( .A(B[13]), .Y(n131) );
  INVXL U241 ( .A(B[14]), .Y(n130) );
  INVXL U242 ( .A(B[15]), .Y(n129) );
  CLKINVX1 U243 ( .A(n46), .Y(n45) );
  CLKINVX1 U244 ( .A(n69), .Y(n67) );
  CLKINVX1 U245 ( .A(n105), .Y(n104) );
  NAND2X1 U246 ( .A(n204), .B(n201), .Y(n49) );
  NAND2X1 U247 ( .A(n78), .B(n202), .Y(n69) );
  CLKINVX1 U248 ( .A(n96), .Y(n95) );
  CLKINVX1 U249 ( .A(n83), .Y(n82) );
  NAND2X1 U250 ( .A(n22), .B(n36), .Y(n20) );
  OA21XL U251 ( .A0(n111), .A1(n113), .B0(n112), .Y(n108) );
  AOI21X1 U252 ( .A0(n202), .A1(n79), .B0(n72), .Y(n70) );
  CLKINVX1 U253 ( .A(n74), .Y(n72) );
  NAND2X1 U254 ( .A(n206), .B(n18), .Y(n2) );
  OAI21X2 U255 ( .A0(n46), .A1(n20), .B0(n21), .Y(n19) );
  NAND2X1 U256 ( .A(n200), .B(n203), .Y(n84) );
  AOI21X1 U257 ( .A0(n200), .A1(n92), .B0(n87), .Y(n85) );
  CLKINVX1 U258 ( .A(n81), .Y(n79) );
  AOI21X1 U259 ( .A0(n204), .A1(n61), .B0(n52), .Y(n50) );
  CLKINVX1 U260 ( .A(n54), .Y(n52) );
  AOI21X1 U261 ( .A0(n45), .A1(n118), .B0(n42), .Y(n40) );
  CLKINVX1 U262 ( .A(n94), .Y(n92) );
  CLKINVX1 U263 ( .A(n80), .Y(n78) );
  NAND2X1 U264 ( .A(n200), .B(n89), .Y(n11) );
  CLKINVX1 U265 ( .A(n89), .Y(n87) );
  OAI21XL U266 ( .A0(n38), .A1(n44), .B0(n39), .Y(n37) );
  AOI21X1 U267 ( .A0(n37), .A1(n22), .B0(n23), .Y(n21) );
  OAI21XL U268 ( .A0(n24), .A1(n32), .B0(n25), .Y(n23) );
  CLKINVX1 U269 ( .A(n63), .Y(n61) );
  NOR2X1 U270 ( .A(n24), .B(n31), .Y(n22) );
  XNOR2X1 U271 ( .A(n26), .B(n3), .Y(DIFF[14]) );
  NAND2X1 U272 ( .A(n115), .B(n25), .Y(n3) );
  OAI21XL U273 ( .A0(n46), .A1(n27), .B0(n28), .Y(n26) );
  CLKINVX1 U274 ( .A(n24), .Y(n115) );
  XNOR2X1 U275 ( .A(n33), .B(n4), .Y(DIFF[13]) );
  NAND2X1 U276 ( .A(n29), .B(n32), .Y(n4) );
  OAI21XL U277 ( .A0(n46), .A1(n34), .B0(n35), .Y(n33) );
  NOR2X1 U278 ( .A(n38), .B(n43), .Y(n36) );
  XNOR2X1 U279 ( .A(n45), .B(n6), .Y(DIFF[11]) );
  NAND2X1 U280 ( .A(n118), .B(n44), .Y(n6) );
  CLKINVX1 U281 ( .A(n43), .Y(n118) );
  NAND2X1 U282 ( .A(n202), .B(n74), .Y(n9) );
  NAND2X1 U283 ( .A(n125), .B(n100), .Y(n13) );
  CLKINVX1 U284 ( .A(n32), .Y(n30) );
  NAND2X1 U285 ( .A(n204), .B(n54), .Y(n7) );
  OAI21XL U286 ( .A0(n82), .A1(n56), .B0(n57), .Y(n55) );
  NAND2X1 U287 ( .A(n203), .B(n94), .Y(n12) );
  XNOR2X1 U288 ( .A(n64), .B(n8), .Y(DIFF[9]) );
  NAND2X1 U289 ( .A(n201), .B(n63), .Y(n8) );
  OAI21XL U290 ( .A0(n82), .A1(n69), .B0(n70), .Y(n64) );
  CLKINVX1 U291 ( .A(n31), .Y(n29) );
  CLKINVX1 U292 ( .A(n44), .Y(n42) );
endmodule


module avg_compare_DW01_sub_45 ( A, B, CI, DIFF, CO );
  input [15:0] A;
  input [15:0] B;
  output [15:0] DIFF;
  input CI;
  output CO;
  wire   n1, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n19, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30, n31, n32,
         n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44, n45, n46,
         n47, n48, n50, n52, n53, n54, n55, n59, n61, n62, n65, n66, n67, n68,
         n70, n72, n73, n76, n77, n78, n79, n80, n81, n82, n83, n85, n87, n88,
         n90, n92, n93, n94, n95, n96, n97, n98, n99, n100, n101, n102, n103,
         n104, n105, n106, n109, n110, n111, n113, n115, n123, n127, n128,
         n129, n130, n131, n132, n133, n134, n135, n136, n137, n138, n139,
         n140, n141, n142, n198, n199, n200, n201, n202, n203, n204;

  XOR2X1 U37 ( .A(n1), .B(n7), .Y(DIFF[11]) );
  XOR2X1 U81 ( .A(n80), .B(n11), .Y(DIFF[7]) );
  XOR2X1 U91 ( .A(n88), .B(n12), .Y(DIFF[6]) );
  XOR2X1 U119 ( .A(n102), .B(n15), .Y(DIFF[3]) );
  XOR2X1 U125 ( .A(n16), .B(n106), .Y(DIFF[2]) );
  XOR2X1 U132 ( .A(n17), .B(n111), .Y(DIFF[1]) );
  OAI21X1 U162 ( .A0(n94), .A1(n82), .B0(n83), .Y(n81) );
  NAND2BX1 U163 ( .AN(n100), .B(n101), .Y(n15) );
  OAI21XL U164 ( .A0(n39), .A1(n43), .B0(n40), .Y(n38) );
  CLKINVX1 U165 ( .A(n81), .Y(n80) );
  BUFX2 U166 ( .A(n44), .Y(n1) );
  NAND2X1 U167 ( .A(A[7]), .B(n135), .Y(n79) );
  OR2X1 U168 ( .A(A[6]), .B(n136), .Y(n198) );
  OR2X1 U169 ( .A(A[9]), .B(n133), .Y(n199) );
  OR2X1 U170 ( .A(A[8]), .B(n134), .Y(n200) );
  OR2X1 U171 ( .A(A[10]), .B(n132), .Y(n201) );
  OR2X1 U172 ( .A(A[5]), .B(n137), .Y(n202) );
  INVXL U173 ( .A(n38), .Y(n36) );
  AOI21X1 U174 ( .A0(n38), .A1(n23), .B0(n24), .Y(n22) );
  NOR2XL U175 ( .A(n100), .B(n97), .Y(n95) );
  NOR2XL U176 ( .A(A[12]), .B(n130), .Y(n39) );
  NOR2XL U177 ( .A(A[2]), .B(n140), .Y(n104) );
  NOR2XL U178 ( .A(A[14]), .B(n128), .Y(n25) );
  OA21X2 U179 ( .A0(n1), .A1(n21), .B0(n22), .Y(n203) );
  XOR2X4 U180 ( .A(n203), .B(n3), .Y(DIFF[15]) );
  AOI21X1 U181 ( .A0(n95), .A1(n103), .B0(n96), .Y(n94) );
  NAND2XL U182 ( .A(n65), .B(n199), .Y(n54) );
  NAND2XL U183 ( .A(n76), .B(n200), .Y(n67) );
  AOI21XL U184 ( .A0(n66), .A1(n199), .B0(n59), .Y(n55) );
  NAND2BXL U185 ( .AN(n42), .B(n43), .Y(n7) );
  NOR2X1 U186 ( .A(A[13]), .B(n129), .Y(n32) );
  INVXL U187 ( .A(n97), .Y(n123) );
  AOI21X1 U188 ( .A0(n201), .A1(n59), .B0(n50), .Y(n48) );
  NAND2BXL U189 ( .AN(n104), .B(n105), .Y(n16) );
  NAND2XL U190 ( .A(A[13]), .B(n129), .Y(n33) );
  OR2XL U191 ( .A(A[15]), .B(n127), .Y(n204) );
  INVXL U192 ( .A(n103), .Y(n102) );
  AOI21XL U193 ( .A0(n81), .A1(n45), .B0(n46), .Y(n44) );
  NOR2XL U194 ( .A(n67), .B(n47), .Y(n45) );
  INVXL U195 ( .A(n94), .Y(n93) );
  INVXL U196 ( .A(n68), .Y(n66) );
  INVXL U197 ( .A(n37), .Y(n35) );
  NAND2XL U198 ( .A(n37), .B(n30), .Y(n28) );
  OAI21X1 U199 ( .A0(n80), .A1(n78), .B0(n79), .Y(n73) );
  OA21X4 U200 ( .A0(n109), .A1(n111), .B0(n110), .Y(n106) );
  XNOR2XL U201 ( .A(n99), .B(n14), .Y(DIFF[4]) );
  NAND2BXL U202 ( .AN(n78), .B(n79), .Y(n11) );
  AOI21XL U203 ( .A0(n93), .A1(n202), .B0(n90), .Y(n88) );
  XNOR2XL U204 ( .A(n93), .B(n13), .Y(DIFF[5]) );
  NAND2BXL U205 ( .AN(n109), .B(n110), .Y(n17) );
  NAND2XL U206 ( .A(n113), .B(n26), .Y(n4) );
  AOI21XL U207 ( .A0(n38), .A1(n30), .B0(n31), .Y(n29) );
  NOR2XL U208 ( .A(A[4]), .B(n138), .Y(n97) );
  NAND2XL U209 ( .A(A[1]), .B(n141), .Y(n110) );
  NAND2XL U210 ( .A(A[4]), .B(n138), .Y(n98) );
  NAND2XL U211 ( .A(A[3]), .B(n139), .Y(n101) );
  NAND2XL U212 ( .A(A[5]), .B(n137), .Y(n92) );
  NAND2XL U213 ( .A(A[6]), .B(n136), .Y(n87) );
  NAND2XL U214 ( .A(A[12]), .B(n130), .Y(n40) );
  NOR2XL U215 ( .A(A[3]), .B(n139), .Y(n100) );
  NAND2XL U216 ( .A(A[10]), .B(n132), .Y(n52) );
  NAND2XL U217 ( .A(A[2]), .B(n140), .Y(n105) );
  NAND2XL U218 ( .A(A[8]), .B(n134), .Y(n72) );
  NOR2XL U219 ( .A(A[7]), .B(n135), .Y(n78) );
  NAND2XL U220 ( .A(A[9]), .B(n133), .Y(n61) );
  NOR2XL U221 ( .A(A[11]), .B(n131), .Y(n42) );
  NAND2XL U222 ( .A(A[15]), .B(n127), .Y(n19) );
  XNOR2XL U223 ( .A(A[0]), .B(n142), .Y(DIFF[0]) );
  INVXL U224 ( .A(B[1]), .Y(n141) );
  INVXL U225 ( .A(B[0]), .Y(n142) );
  INVXL U226 ( .A(B[2]), .Y(n140) );
  INVXL U227 ( .A(B[4]), .Y(n138) );
  INVXL U228 ( .A(B[3]), .Y(n139) );
  INVXL U229 ( .A(B[6]), .Y(n136) );
  INVXL U230 ( .A(B[5]), .Y(n137) );
  INVXL U231 ( .A(B[7]), .Y(n135) );
  INVXL U232 ( .A(B[8]), .Y(n134) );
  INVXL U233 ( .A(B[10]), .Y(n132) );
  INVXL U234 ( .A(B[9]), .Y(n133) );
  INVXL U235 ( .A(B[12]), .Y(n130) );
  INVXL U236 ( .A(B[11]), .Y(n131) );
  INVXL U237 ( .A(B[13]), .Y(n129) );
  INVXL U238 ( .A(B[14]), .Y(n128) );
  CLKINVX1 U239 ( .A(n67), .Y(n65) );
  OAI21XL U240 ( .A0(n68), .A1(n47), .B0(n48), .Y(n46) );
  NAND2X1 U241 ( .A(n201), .B(n199), .Y(n47) );
  NAND2X1 U242 ( .A(n23), .B(n37), .Y(n21) );
  AOI21X1 U243 ( .A0(n200), .A1(n77), .B0(n70), .Y(n68) );
  CLKINVX1 U244 ( .A(n72), .Y(n70) );
  NAND2X1 U245 ( .A(n204), .B(n19), .Y(n3) );
  OAI21XL U246 ( .A0(n106), .A1(n104), .B0(n105), .Y(n103) );
  NAND2X1 U247 ( .A(n198), .B(n202), .Y(n82) );
  AOI21X1 U248 ( .A0(n198), .A1(n90), .B0(n85), .Y(n83) );
  CLKINVX1 U249 ( .A(n79), .Y(n77) );
  CLKINVX1 U250 ( .A(n52), .Y(n50) );
  OAI21XL U251 ( .A0(n101), .A1(n97), .B0(n98), .Y(n96) );
  CLKINVX1 U252 ( .A(n92), .Y(n90) );
  CLKINVX1 U253 ( .A(n78), .Y(n76) );
  CLKINVX1 U254 ( .A(n87), .Y(n85) );
  CLKINVX1 U255 ( .A(n61), .Y(n59) );
  OAI21XL U256 ( .A0(n25), .A1(n33), .B0(n26), .Y(n24) );
  NAND2X1 U257 ( .A(n198), .B(n87), .Y(n12) );
  NOR2X1 U258 ( .A(n25), .B(n32), .Y(n23) );
  NOR2X1 U259 ( .A(n39), .B(n42), .Y(n37) );
  XNOR2X1 U260 ( .A(n27), .B(n4), .Y(DIFF[14]) );
  OAI21XL U261 ( .A0(n1), .A1(n28), .B0(n29), .Y(n27) );
  CLKINVX1 U262 ( .A(n25), .Y(n113) );
  XNOR2X1 U263 ( .A(n73), .B(n10), .Y(DIFF[8]) );
  NAND2X1 U264 ( .A(n200), .B(n72), .Y(n10) );
  XNOR2X1 U265 ( .A(n34), .B(n5), .Y(DIFF[13]) );
  NAND2X1 U266 ( .A(n30), .B(n33), .Y(n5) );
  OAI21XL U267 ( .A0(n1), .A1(n35), .B0(n36), .Y(n34) );
  XNOR2X1 U268 ( .A(n41), .B(n6), .Y(DIFF[12]) );
  NAND2X1 U269 ( .A(n115), .B(n40), .Y(n6) );
  OAI21XL U270 ( .A0(n1), .A1(n42), .B0(n43), .Y(n41) );
  CLKINVX1 U271 ( .A(n39), .Y(n115) );
  XNOR2X1 U272 ( .A(n53), .B(n8), .Y(DIFF[10]) );
  NAND2X1 U273 ( .A(n201), .B(n52), .Y(n8) );
  OAI21XL U274 ( .A0(n80), .A1(n54), .B0(n55), .Y(n53) );
  XNOR2X1 U275 ( .A(n62), .B(n9), .Y(DIFF[9]) );
  NAND2X1 U276 ( .A(n199), .B(n61), .Y(n9) );
  OAI21XL U277 ( .A0(n80), .A1(n67), .B0(n68), .Y(n62) );
  NAND2X1 U278 ( .A(n123), .B(n98), .Y(n14) );
  OAI21XL U279 ( .A0(n102), .A1(n100), .B0(n101), .Y(n99) );
  NAND2X1 U280 ( .A(n202), .B(n92), .Y(n13) );
  CLKINVX1 U281 ( .A(n33), .Y(n31) );
  CLKINVX1 U282 ( .A(n32), .Y(n30) );
  NOR2X1 U283 ( .A(A[1]), .B(n141), .Y(n109) );
  NOR2X1 U284 ( .A(A[0]), .B(n142), .Y(n111) );
  NAND2X1 U285 ( .A(A[14]), .B(n128), .Y(n26) );
  NAND2X1 U286 ( .A(A[11]), .B(n131), .Y(n43) );
  CLKINVX1 U287 ( .A(B[15]), .Y(n127) );
endmodule


module avg_compare_DW01_sub_46 ( A, B, CI, DIFF, CO );
  input [15:0] A;
  input [15:0] B;
  output [15:0] DIFF;
  input CI;
  output CO;
  wire   n1, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n19, n21, n22, n23, n24, n25, n26, n27, n29, n30, n31, n32, n33,
         n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44, n45, n47, n49,
         n50, n51, n52, n56, n58, n59, n62, n63, n64, n65, n67, n69, n70, n73,
         n74, n75, n76, n77, n78, n79, n80, n82, n84, n85, n87, n89, n90, n91,
         n92, n93, n94, n95, n96, n97, n98, n99, n100, n101, n102, n103, n106,
         n107, n108, n110, n111, n112, n120, n124, n125, n126, n127, n128,
         n129, n130, n131, n132, n133, n134, n135, n136, n137, n138, n139,
         n195, n196, n197, n198, n199, n200, n201;

  XOR2X1 U6 ( .A(n27), .B(n4), .Y(DIFF[14]) );
  XOR2X1 U34 ( .A(n1), .B(n7), .Y(DIFF[11]) );
  XOR2X1 U78 ( .A(n77), .B(n11), .Y(DIFF[7]) );
  XOR2X1 U88 ( .A(n85), .B(n12), .Y(DIFF[6]) );
  XOR2X1 U116 ( .A(n99), .B(n15), .Y(DIFF[3]) );
  XOR2X1 U122 ( .A(n16), .B(n103), .Y(DIFF[2]) );
  XOR2X1 U129 ( .A(n17), .B(n108), .Y(DIFF[1]) );
  OAI21XL U159 ( .A0(n77), .A1(n75), .B0(n76), .Y(n70) );
  AOI21X1 U160 ( .A0(n78), .A1(n42), .B0(n43), .Y(n1) );
  OAI21XL U161 ( .A0(n99), .A1(n97), .B0(n98), .Y(n96) );
  OR2X1 U162 ( .A(A[6]), .B(n133), .Y(n195) );
  OR2X1 U163 ( .A(A[9]), .B(n130), .Y(n196) );
  OR2X1 U164 ( .A(A[8]), .B(n131), .Y(n197) );
  OR2X1 U165 ( .A(A[5]), .B(n134), .Y(n198) );
  OR2X1 U166 ( .A(A[10]), .B(n129), .Y(n199) );
  OAI21XL U167 ( .A0(n77), .A1(n64), .B0(n65), .Y(n59) );
  NAND2X1 U168 ( .A(n199), .B(n196), .Y(n44) );
  XNOR2X1 U169 ( .A(n96), .B(n14), .Y(DIFF[4]) );
  NAND2XL U170 ( .A(n62), .B(n196), .Y(n51) );
  NAND2XL U171 ( .A(n73), .B(n197), .Y(n64) );
  AOI21XL U172 ( .A0(n90), .A1(n198), .B0(n87), .Y(n85) );
  AOI21XL U173 ( .A0(n199), .A1(n56), .B0(n47), .Y(n45) );
  NAND2X1 U174 ( .A(n23), .B(n35), .Y(n21) );
  OAI21XL U175 ( .A0(n65), .A1(n44), .B0(n45), .Y(n43) );
  OAI21XL U176 ( .A0(n1), .A1(n33), .B0(n34), .Y(n32) );
  AOI21X1 U177 ( .A0(n63), .A1(n196), .B0(n56), .Y(n52) );
  OAI21XL U178 ( .A0(n1), .A1(n40), .B0(n41), .Y(n39) );
  XNOR2X1 U179 ( .A(n39), .B(n6), .Y(DIFF[12]) );
  NOR2XL U180 ( .A(n97), .B(n94), .Y(n92) );
  NAND2BXL U181 ( .AN(n75), .B(n76), .Y(n11) );
  AOI21X1 U182 ( .A0(n32), .A1(n111), .B0(n29), .Y(n27) );
  INVXL U183 ( .A(n25), .Y(n110) );
  NAND2BXL U184 ( .AN(n40), .B(n41), .Y(n7) );
  NAND2BXL U185 ( .AN(n97), .B(n98), .Y(n15) );
  NAND2BXL U186 ( .AN(n101), .B(n102), .Y(n16) );
  NAND2BXL U187 ( .AN(n106), .B(n107), .Y(n17) );
  NOR2XL U188 ( .A(n64), .B(n44), .Y(n42) );
  INVXL U189 ( .A(n35), .Y(n33) );
  INVXL U190 ( .A(n36), .Y(n34) );
  INVXL U191 ( .A(n65), .Y(n63) );
  OAI21X1 U192 ( .A0(n91), .A1(n79), .B0(n80), .Y(n78) );
  AOI21X1 U193 ( .A0(n92), .A1(n100), .B0(n93), .Y(n91) );
  OAI21X1 U194 ( .A0(n103), .A1(n101), .B0(n102), .Y(n100) );
  XOR2X4 U195 ( .A(n200), .B(n3), .Y(DIFF[15]) );
  OA21X4 U196 ( .A0(n1), .A1(n21), .B0(n22), .Y(n200) );
  XNOR2XL U197 ( .A(n90), .B(n13), .Y(DIFF[5]) );
  NOR2XL U198 ( .A(A[4]), .B(n135), .Y(n94) );
  NOR2XL U199 ( .A(A[1]), .B(n138), .Y(n106) );
  NAND2XL U200 ( .A(A[4]), .B(n135), .Y(n95) );
  NAND2XL U201 ( .A(A[1]), .B(n138), .Y(n107) );
  NAND2XL U202 ( .A(A[5]), .B(n134), .Y(n89) );
  NAND2XL U203 ( .A(A[3]), .B(n136), .Y(n98) );
  NAND2XL U204 ( .A(A[6]), .B(n133), .Y(n84) );
  NOR2XL U205 ( .A(A[2]), .B(n137), .Y(n101) );
  NAND2XL U206 ( .A(A[7]), .B(n132), .Y(n76) );
  NOR2XL U207 ( .A(A[12]), .B(n127), .Y(n37) );
  NAND2XL U208 ( .A(A[12]), .B(n127), .Y(n38) );
  NAND2XL U209 ( .A(A[10]), .B(n129), .Y(n49) );
  NOR2XL U210 ( .A(A[0]), .B(n139), .Y(n108) );
  NOR2XL U211 ( .A(A[3]), .B(n136), .Y(n97) );
  NAND2XL U212 ( .A(A[8]), .B(n131), .Y(n69) );
  NOR2XL U213 ( .A(A[7]), .B(n132), .Y(n75) );
  NAND2XL U214 ( .A(A[2]), .B(n137), .Y(n102) );
  NAND2XL U215 ( .A(A[14]), .B(n125), .Y(n26) );
  NOR2XL U216 ( .A(A[14]), .B(n125), .Y(n25) );
  NAND2XL U217 ( .A(A[13]), .B(n126), .Y(n31) );
  NOR2XL U218 ( .A(A[13]), .B(n126), .Y(n30) );
  NAND2XL U219 ( .A(A[11]), .B(n128), .Y(n41) );
  NAND2XL U220 ( .A(A[9]), .B(n130), .Y(n58) );
  OR2XL U221 ( .A(A[15]), .B(n124), .Y(n201) );
  NOR2XL U222 ( .A(A[11]), .B(n128), .Y(n40) );
  NAND2XL U223 ( .A(A[15]), .B(n124), .Y(n19) );
  XNOR2XL U224 ( .A(A[0]), .B(n139), .Y(DIFF[0]) );
  INVXL U225 ( .A(B[1]), .Y(n138) );
  INVXL U226 ( .A(B[0]), .Y(n139) );
  INVXL U227 ( .A(B[2]), .Y(n137) );
  INVXL U228 ( .A(B[3]), .Y(n136) );
  INVXL U229 ( .A(B[4]), .Y(n135) );
  INVXL U230 ( .A(B[5]), .Y(n134) );
  INVXL U231 ( .A(B[6]), .Y(n133) );
  INVXL U232 ( .A(B[7]), .Y(n132) );
  INVXL U233 ( .A(B[8]), .Y(n131) );
  INVXL U234 ( .A(B[10]), .Y(n129) );
  INVXL U235 ( .A(B[9]), .Y(n130) );
  INVXL U236 ( .A(B[11]), .Y(n128) );
  INVXL U237 ( .A(B[12]), .Y(n127) );
  INVXL U238 ( .A(B[13]), .Y(n126) );
  INVXL U239 ( .A(B[14]), .Y(n125) );
  INVXL U240 ( .A(B[15]), .Y(n124) );
  CLKINVX1 U241 ( .A(n64), .Y(n62) );
  CLKINVX1 U242 ( .A(n78), .Y(n77) );
  CLKINVX1 U243 ( .A(n91), .Y(n90) );
  CLKINVX1 U244 ( .A(n100), .Y(n99) );
  AOI21X1 U245 ( .A0(n197), .A1(n74), .B0(n67), .Y(n65) );
  CLKINVX1 U246 ( .A(n69), .Y(n67) );
  NAND2X1 U247 ( .A(n195), .B(n198), .Y(n79) );
  AOI21X1 U248 ( .A0(n195), .A1(n87), .B0(n82), .Y(n80) );
  NAND2X1 U249 ( .A(n201), .B(n19), .Y(n3) );
  CLKINVX1 U250 ( .A(n76), .Y(n74) );
  CLKINVX1 U251 ( .A(n49), .Y(n47) );
  OAI21XL U252 ( .A0(n98), .A1(n94), .B0(n95), .Y(n93) );
  OA21XL U253 ( .A0(n106), .A1(n108), .B0(n107), .Y(n103) );
  CLKINVX1 U254 ( .A(n89), .Y(n87) );
  NAND2X1 U255 ( .A(n112), .B(n38), .Y(n6) );
  CLKINVX1 U256 ( .A(n37), .Y(n112) );
  CLKINVX1 U257 ( .A(n75), .Y(n73) );
  CLKINVX1 U258 ( .A(n84), .Y(n82) );
  CLKINVX1 U259 ( .A(n58), .Y(n56) );
  NAND2X1 U260 ( .A(n110), .B(n26), .Y(n4) );
  XNOR2X1 U261 ( .A(n59), .B(n9), .Y(DIFF[9]) );
  NAND2X1 U262 ( .A(n196), .B(n58), .Y(n9) );
  NAND2X1 U263 ( .A(n195), .B(n84), .Y(n12) );
  OAI21XL U264 ( .A0(n37), .A1(n41), .B0(n38), .Y(n36) );
  AOI21X1 U265 ( .A0(n36), .A1(n23), .B0(n24), .Y(n22) );
  OAI21XL U266 ( .A0(n25), .A1(n31), .B0(n26), .Y(n24) );
  NOR2X1 U267 ( .A(n25), .B(n30), .Y(n23) );
  XNOR2X1 U268 ( .A(n50), .B(n8), .Y(DIFF[10]) );
  NAND2X1 U269 ( .A(n199), .B(n49), .Y(n8) );
  OAI21XL U270 ( .A0(n77), .A1(n51), .B0(n52), .Y(n50) );
  XNOR2X1 U271 ( .A(n70), .B(n10), .Y(DIFF[8]) );
  NAND2X1 U272 ( .A(n197), .B(n69), .Y(n10) );
  NOR2X1 U273 ( .A(n37), .B(n40), .Y(n35) );
  XNOR2X1 U274 ( .A(n32), .B(n5), .Y(DIFF[13]) );
  NAND2X1 U275 ( .A(n111), .B(n31), .Y(n5) );
  CLKINVX1 U276 ( .A(n30), .Y(n111) );
  NAND2X1 U277 ( .A(n120), .B(n95), .Y(n14) );
  CLKINVX1 U278 ( .A(n94), .Y(n120) );
  NAND2X1 U279 ( .A(n198), .B(n89), .Y(n13) );
  CLKINVX1 U280 ( .A(n31), .Y(n29) );
endmodule


module avg_compare_DW01_sub_47 ( A, B, CI, DIFF, CO );
  input [15:0] A;
  input [15:0] B;
  output [15:0] DIFF;
  input CI;
  output CO;
  wire   n1, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17,
         n19, n21, n22, n23, n24, n25, n26, n27, n29, n30, n31, n32, n33, n34,
         n35, n36, n37, n38, n39, n40, n41, n42, n43, n44, n45, n47, n49, n50,
         n51, n52, n56, n58, n59, n62, n63, n64, n65, n67, n69, n70, n73, n74,
         n75, n76, n77, n78, n79, n80, n82, n84, n85, n87, n89, n90, n91, n92,
         n93, n94, n95, n96, n97, n98, n99, n100, n101, n102, n103, n106, n107,
         n108, n110, n111, n112, n120, n124, n125, n126, n127, n128, n129,
         n130, n131, n132, n133, n134, n135, n136, n137, n138, n139, n195,
         n196, n197, n198, n199, n200, n201, n202;

  XOR2X1 U6 ( .A(n27), .B(n4), .Y(DIFF[14]) );
  XOR2X1 U34 ( .A(n1), .B(n7), .Y(DIFF[11]) );
  XOR2X1 U78 ( .A(n77), .B(n11), .Y(DIFF[7]) );
  XOR2X1 U88 ( .A(n85), .B(n12), .Y(DIFF[6]) );
  XOR2X1 U116 ( .A(n99), .B(n15), .Y(DIFF[3]) );
  XOR2X1 U122 ( .A(n16), .B(n103), .Y(DIFF[2]) );
  XOR2X1 U129 ( .A(n17), .B(n108), .Y(DIFF[1]) );
  AND2X2 U159 ( .A(n202), .B(n19), .Y(n201) );
  OA21XL U160 ( .A0(n1), .A1(n21), .B0(n22), .Y(n200) );
  OAI21XL U161 ( .A0(n77), .A1(n75), .B0(n76), .Y(n70) );
  OAI21XL U162 ( .A0(n91), .A1(n79), .B0(n80), .Y(n78) );
  OR2X1 U163 ( .A(A[6]), .B(n133), .Y(n195) );
  OR2X1 U164 ( .A(A[9]), .B(n130), .Y(n196) );
  OR2X1 U165 ( .A(A[8]), .B(n131), .Y(n197) );
  OR2X1 U166 ( .A(A[10]), .B(n129), .Y(n198) );
  OR2X1 U167 ( .A(A[5]), .B(n134), .Y(n199) );
  AOI21X1 U168 ( .A0(n32), .A1(n111), .B0(n29), .Y(n27) );
  OAI21X1 U169 ( .A0(n1), .A1(n33), .B0(n34), .Y(n32) );
  XNOR2X1 U170 ( .A(n59), .B(n9), .Y(DIFF[9]) );
  NOR2XL U171 ( .A(A[13]), .B(n126), .Y(n30) );
  OAI21XL U172 ( .A0(n65), .A1(n44), .B0(n45), .Y(n43) );
  AOI21XL U173 ( .A0(n63), .A1(n196), .B0(n56), .Y(n52) );
  XNOR2X2 U174 ( .A(n200), .B(n201), .Y(DIFF[15]) );
  AOI21XL U175 ( .A0(n92), .A1(n100), .B0(n93), .Y(n91) );
  XNOR2XL U176 ( .A(n96), .B(n14), .Y(DIFF[4]) );
  NOR2XL U177 ( .A(A[14]), .B(n125), .Y(n25) );
  NAND2X1 U178 ( .A(n62), .B(n196), .Y(n51) );
  AOI21X1 U179 ( .A0(n198), .A1(n56), .B0(n47), .Y(n45) );
  XNOR2X1 U180 ( .A(n32), .B(n5), .Y(DIFF[13]) );
  XNOR2X1 U181 ( .A(n39), .B(n6), .Y(DIFF[12]) );
  INVXL U182 ( .A(n37), .Y(n112) );
  NAND2BXL U183 ( .AN(n40), .B(n41), .Y(n7) );
  NOR2XL U184 ( .A(n97), .B(n94), .Y(n92) );
  NAND2BXL U185 ( .AN(n75), .B(n76), .Y(n11) );
  NAND2BXL U186 ( .AN(n97), .B(n98), .Y(n15) );
  OAI21XL U187 ( .A0(n99), .A1(n97), .B0(n98), .Y(n96) );
  NAND2BXL U188 ( .AN(n101), .B(n102), .Y(n16) );
  NAND2BXL U189 ( .AN(n106), .B(n107), .Y(n17) );
  NOR2XL U190 ( .A(n64), .B(n44), .Y(n42) );
  INVXL U191 ( .A(n65), .Y(n63) );
  NAND2XL U192 ( .A(n73), .B(n197), .Y(n64) );
  NAND2XL U193 ( .A(n23), .B(n35), .Y(n21) );
  XNOR2XL U194 ( .A(n70), .B(n10), .Y(DIFF[8]) );
  OAI21X1 U195 ( .A0(n103), .A1(n101), .B0(n102), .Y(n100) );
  AOI21XL U196 ( .A0(n36), .A1(n23), .B0(n24), .Y(n22) );
  AOI21XL U197 ( .A0(n90), .A1(n199), .B0(n87), .Y(n85) );
  XNOR2XL U198 ( .A(n90), .B(n13), .Y(DIFF[5]) );
  NOR2XL U199 ( .A(A[4]), .B(n135), .Y(n94) );
  NOR2XL U200 ( .A(A[1]), .B(n138), .Y(n106) );
  NAND2XL U201 ( .A(A[4]), .B(n135), .Y(n95) );
  NAND2XL U202 ( .A(A[1]), .B(n138), .Y(n107) );
  NAND2XL U203 ( .A(A[3]), .B(n136), .Y(n98) );
  NAND2XL U204 ( .A(A[5]), .B(n134), .Y(n89) );
  NOR2XL U205 ( .A(A[2]), .B(n137), .Y(n101) );
  NAND2XL U206 ( .A(A[6]), .B(n133), .Y(n84) );
  NOR2XL U207 ( .A(A[0]), .B(n139), .Y(n108) );
  NOR2XL U208 ( .A(A[3]), .B(n136), .Y(n97) );
  NAND2XL U209 ( .A(A[2]), .B(n137), .Y(n102) );
  NAND2XL U210 ( .A(A[7]), .B(n132), .Y(n76) );
  NOR2XL U211 ( .A(A[12]), .B(n127), .Y(n37) );
  NAND2XL U212 ( .A(A[8]), .B(n131), .Y(n69) );
  NAND2XL U213 ( .A(A[10]), .B(n129), .Y(n49) );
  NAND2XL U214 ( .A(A[12]), .B(n127), .Y(n38) );
  NOR2XL U215 ( .A(A[7]), .B(n132), .Y(n75) );
  NAND2XL U216 ( .A(A[9]), .B(n130), .Y(n58) );
  NAND2XL U217 ( .A(A[14]), .B(n125), .Y(n26) );
  NAND2XL U218 ( .A(A[11]), .B(n128), .Y(n41) );
  NAND2XL U219 ( .A(A[13]), .B(n126), .Y(n31) );
  NOR2XL U220 ( .A(A[11]), .B(n128), .Y(n40) );
  OR2XL U221 ( .A(A[15]), .B(n124), .Y(n202) );
  NAND2XL U222 ( .A(A[15]), .B(n124), .Y(n19) );
  XNOR2XL U223 ( .A(A[0]), .B(n139), .Y(DIFF[0]) );
  INVXL U224 ( .A(B[1]), .Y(n138) );
  INVXL U225 ( .A(B[0]), .Y(n139) );
  INVXL U226 ( .A(B[3]), .Y(n136) );
  INVXL U227 ( .A(B[4]), .Y(n135) );
  INVXL U228 ( .A(B[2]), .Y(n137) );
  INVXL U229 ( .A(B[5]), .Y(n134) );
  INVXL U230 ( .A(B[6]), .Y(n133) );
  INVXL U231 ( .A(B[7]), .Y(n132) );
  INVXL U232 ( .A(B[8]), .Y(n131) );
  INVXL U233 ( .A(B[10]), .Y(n129) );
  INVXL U234 ( .A(B[9]), .Y(n130) );
  INVXL U235 ( .A(B[12]), .Y(n127) );
  INVXL U236 ( .A(B[11]), .Y(n128) );
  INVXL U237 ( .A(B[13]), .Y(n126) );
  INVXL U238 ( .A(B[14]), .Y(n125) );
  INVXL U239 ( .A(B[15]), .Y(n124) );
  CLKINVX1 U240 ( .A(n64), .Y(n62) );
  AOI21X1 U241 ( .A0(n78), .A1(n42), .B0(n43), .Y(n1) );
  NAND2X1 U242 ( .A(n198), .B(n196), .Y(n44) );
  CLKINVX1 U243 ( .A(n35), .Y(n33) );
  CLKINVX1 U244 ( .A(n36), .Y(n34) );
  CLKINVX1 U245 ( .A(n78), .Y(n77) );
  CLKINVX1 U246 ( .A(n91), .Y(n90) );
  CLKINVX1 U247 ( .A(n100), .Y(n99) );
  AOI21X1 U248 ( .A0(n197), .A1(n74), .B0(n67), .Y(n65) );
  CLKINVX1 U249 ( .A(n69), .Y(n67) );
  NAND2X1 U250 ( .A(n195), .B(n199), .Y(n79) );
  AOI21X1 U251 ( .A0(n195), .A1(n87), .B0(n82), .Y(n80) );
  CLKINVX1 U252 ( .A(n76), .Y(n74) );
  CLKINVX1 U253 ( .A(n49), .Y(n47) );
  OAI21XL U254 ( .A0(n98), .A1(n94), .B0(n95), .Y(n93) );
  OA21XL U255 ( .A0(n106), .A1(n108), .B0(n107), .Y(n103) );
  CLKINVX1 U256 ( .A(n89), .Y(n87) );
  CLKINVX1 U257 ( .A(n75), .Y(n73) );
  NAND2X1 U258 ( .A(n110), .B(n26), .Y(n4) );
  CLKINVX1 U259 ( .A(n25), .Y(n110) );
  CLKINVX1 U260 ( .A(n84), .Y(n82) );
  OAI21XL U261 ( .A0(n37), .A1(n41), .B0(n38), .Y(n36) );
  OAI21XL U262 ( .A0(n25), .A1(n31), .B0(n26), .Y(n24) );
  CLKINVX1 U263 ( .A(n58), .Y(n56) );
  NOR2X1 U264 ( .A(n25), .B(n30), .Y(n23) );
  NOR2X1 U265 ( .A(n37), .B(n40), .Y(n35) );
  NAND2X1 U266 ( .A(n111), .B(n31), .Y(n5) );
  CLKINVX1 U267 ( .A(n30), .Y(n111) );
  NAND2X1 U268 ( .A(n195), .B(n84), .Y(n12) );
  NAND2X1 U269 ( .A(n112), .B(n38), .Y(n6) );
  OAI21XL U270 ( .A0(n1), .A1(n40), .B0(n41), .Y(n39) );
  NAND2X1 U271 ( .A(n197), .B(n69), .Y(n10) );
  XNOR2X1 U272 ( .A(n50), .B(n8), .Y(DIFF[10]) );
  NAND2X1 U273 ( .A(n198), .B(n49), .Y(n8) );
  OAI21XL U274 ( .A0(n77), .A1(n51), .B0(n52), .Y(n50) );
  NAND2X1 U275 ( .A(n196), .B(n58), .Y(n9) );
  OAI21XL U276 ( .A0(n77), .A1(n64), .B0(n65), .Y(n59) );
  NAND2X1 U277 ( .A(n199), .B(n89), .Y(n13) );
  NAND2X1 U278 ( .A(n120), .B(n95), .Y(n14) );
  CLKINVX1 U279 ( .A(n94), .Y(n120) );
  CLKINVX1 U280 ( .A(n31), .Y(n29) );
endmodule


module avg_compare_DW01_sub_48 ( A, B, CI, DIFF, CO );
  input [15:0] A;
  input [15:0] B;
  output [15:0] DIFF;
  input CI;
  output CO;
  wire   n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30, n31,
         n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44, n46,
         n48, n49, n51, n53, n54, n55, n56, n58, n60, n61, n64, n65, n66, n67,
         n68, n69, n70, n71, n72, n73, n74, n75, n76, n78, n80, n81, n82, n83,
         n84, n85, n86, n87, n88, n89, n90, n91, n92, n93, n94, n97, n98, n99,
         n101, n111, n115, n116, n117, n118, n119, n120, n121, n122, n123,
         n124, n125, n126, n127, n128, n129, n130, n186, n187, n188, n189,
         n190;

  XOR2X1 U22 ( .A(n34), .B(n5), .Y(DIFF[12]) );
  XOR2X1 U38 ( .A(n49), .B(n7), .Y(DIFF[10]) );
  XOR2X1 U79 ( .A(n76), .B(n11), .Y(DIFF[6]) );
  XOR2X1 U107 ( .A(n90), .B(n14), .Y(DIFF[3]) );
  XOR2X1 U113 ( .A(n15), .B(n94), .Y(DIFF[2]) );
  XOR2X1 U120 ( .A(n16), .B(n99), .Y(DIFF[1]) );
  OAI21X1 U150 ( .A0(n40), .A1(n20), .B0(n21), .Y(n19) );
  AOI21X1 U151 ( .A0(n31), .A1(n22), .B0(n23), .Y(n21) );
  XOR2X1 U152 ( .A(n68), .B(n10), .Y(DIFF[7]) );
  OAI21XL U153 ( .A0(n89), .A1(n85), .B0(n86), .Y(n84) );
  OAI21XL U154 ( .A0(n90), .A1(n88), .B0(n89), .Y(n87) );
  OR2X1 U155 ( .A(A[10]), .B(n120), .Y(n186) );
  OR2X1 U156 ( .A(A[5]), .B(n125), .Y(n187) );
  OR2X1 U157 ( .A(A[8]), .B(n122), .Y(n188) );
  OR2X1 U158 ( .A(A[9]), .B(n121), .Y(n189) );
  XOR2XL U159 ( .A(n29), .B(n4), .Y(DIFF[13]) );
  AOI21X1 U160 ( .A0(n39), .A1(n30), .B0(n31), .Y(n29) );
  AOI21XL U161 ( .A0(n69), .A1(n41), .B0(n42), .Y(n40) );
  CLKINVX2 U162 ( .A(n69), .Y(n68) );
  NOR2XL U163 ( .A(n32), .B(n37), .Y(n30) );
  INVXL U164 ( .A(n85), .Y(n111) );
  XNOR2X1 U165 ( .A(n19), .B(n2), .Y(DIFF[15]) );
  OA21X4 U166 ( .A0(n97), .A1(n99), .B0(n98), .Y(n94) );
  NAND2BX1 U167 ( .AN(n97), .B(n98), .Y(n16) );
  INVX1 U168 ( .A(n82), .Y(n81) );
  AOI21X1 U169 ( .A0(n83), .A1(n91), .B0(n84), .Y(n82) );
  AOI21X1 U170 ( .A0(n81), .A1(n187), .B0(n78), .Y(n76) );
  CLKINVX1 U171 ( .A(n74), .Y(n72) );
  OAI21X1 U172 ( .A0(n82), .A1(n70), .B0(n71), .Y(n69) );
  OAI21X1 U173 ( .A0(n94), .A1(n92), .B0(n93), .Y(n91) );
  XNOR2XL U174 ( .A(n87), .B(n13), .Y(DIFF[4]) );
  AOI21X1 U175 ( .A0(n39), .A1(n35), .B0(n36), .Y(n34) );
  NOR2XL U176 ( .A(A[12]), .B(n118), .Y(n32) );
  NOR2XL U177 ( .A(A[11]), .B(n119), .Y(n37) );
  AOI21X1 U178 ( .A0(n186), .A1(n51), .B0(n46), .Y(n44) );
  NOR2XL U179 ( .A(n88), .B(n85), .Y(n83) );
  NAND2BXL U180 ( .AN(n32), .B(n33), .Y(n5) );
  NAND2BXL U181 ( .AN(n66), .B(n67), .Y(n10) );
  NAND2BXL U182 ( .AN(n88), .B(n89), .Y(n14) );
  NAND2BXL U183 ( .AN(n92), .B(n93), .Y(n15) );
  INVX1 U184 ( .A(n40), .Y(n39) );
  NAND2XL U185 ( .A(n64), .B(n188), .Y(n55) );
  XNOR2XL U186 ( .A(n81), .B(n12), .Y(DIFF[5]) );
  AOI21XL U187 ( .A0(n54), .A1(n189), .B0(n51), .Y(n49) );
  NAND2BX1 U188 ( .AN(n27), .B(n28), .Y(n4) );
  NAND2XL U189 ( .A(A[5]), .B(n125), .Y(n80) );
  NOR2XL U190 ( .A(A[1]), .B(n129), .Y(n97) );
  NOR2XL U191 ( .A(A[4]), .B(n126), .Y(n85) );
  NAND2XL U192 ( .A(A[1]), .B(n129), .Y(n98) );
  NOR2XL U193 ( .A(A[6]), .B(n124), .Y(n74) );
  NAND2XL U194 ( .A(A[6]), .B(n124), .Y(n75) );
  NAND2XL U195 ( .A(A[4]), .B(n126), .Y(n86) );
  NAND2XL U196 ( .A(A[3]), .B(n127), .Y(n89) );
  NOR2XL U197 ( .A(A[2]), .B(n128), .Y(n92) );
  NAND2XL U198 ( .A(A[7]), .B(n123), .Y(n67) );
  NOR2XL U199 ( .A(A[0]), .B(n130), .Y(n99) );
  NAND2XL U200 ( .A(A[12]), .B(n118), .Y(n33) );
  NAND2XL U201 ( .A(A[2]), .B(n128), .Y(n93) );
  NOR2XL U202 ( .A(A[3]), .B(n127), .Y(n88) );
  NAND2XL U203 ( .A(A[8]), .B(n122), .Y(n60) );
  NAND2XL U204 ( .A(A[10]), .B(n120), .Y(n48) );
  NOR2XL U205 ( .A(A[7]), .B(n123), .Y(n66) );
  NOR2XL U206 ( .A(A[14]), .B(n116), .Y(n24) );
  NAND2XL U207 ( .A(A[14]), .B(n116), .Y(n25) );
  NAND2XL U208 ( .A(A[11]), .B(n119), .Y(n38) );
  NAND2XL U209 ( .A(A[13]), .B(n117), .Y(n28) );
  NOR2XL U210 ( .A(A[13]), .B(n117), .Y(n27) );
  NAND2XL U211 ( .A(A[9]), .B(n121), .Y(n53) );
  OR2XL U212 ( .A(A[15]), .B(n115), .Y(n190) );
  NAND2XL U213 ( .A(A[15]), .B(n115), .Y(n18) );
  XNOR2XL U214 ( .A(A[0]), .B(n130), .Y(DIFF[0]) );
  INVXL U215 ( .A(B[0]), .Y(n130) );
  INVXL U216 ( .A(B[1]), .Y(n129) );
  INVXL U217 ( .A(B[2]), .Y(n128) );
  INVXL U218 ( .A(B[3]), .Y(n127) );
  INVXL U219 ( .A(B[4]), .Y(n126) );
  INVXL U220 ( .A(B[5]), .Y(n125) );
  INVXL U221 ( .A(B[6]), .Y(n124) );
  INVXL U222 ( .A(B[7]), .Y(n123) );
  INVXL U223 ( .A(B[10]), .Y(n120) );
  INVXL U224 ( .A(B[8]), .Y(n122) );
  INVXL U225 ( .A(B[9]), .Y(n121) );
  INVXL U226 ( .A(B[11]), .Y(n119) );
  INVXL U227 ( .A(B[12]), .Y(n118) );
  INVXL U228 ( .A(B[13]), .Y(n117) );
  INVXL U229 ( .A(B[14]), .Y(n116) );
  NOR2X1 U230 ( .A(n55), .B(n43), .Y(n41) );
  OAI21XL U231 ( .A0(n56), .A1(n43), .B0(n44), .Y(n42) );
  NAND2X1 U232 ( .A(n186), .B(n189), .Y(n43) );
  OAI21XL U233 ( .A0(n68), .A1(n55), .B0(n56), .Y(n54) );
  NAND2X1 U234 ( .A(n22), .B(n30), .Y(n20) );
  CLKINVX1 U235 ( .A(n91), .Y(n90) );
  AOI21X1 U236 ( .A0(n188), .A1(n65), .B0(n58), .Y(n56) );
  CLKINVX1 U237 ( .A(n60), .Y(n58) );
  NAND2X1 U238 ( .A(n72), .B(n187), .Y(n70) );
  AOI21X1 U239 ( .A0(n72), .A1(n78), .B0(n73), .Y(n71) );
  CLKINVX1 U240 ( .A(n48), .Y(n46) );
  CLKINVX1 U241 ( .A(n67), .Y(n65) );
  CLKINVX1 U242 ( .A(n80), .Y(n78) );
  NAND2X1 U243 ( .A(n190), .B(n18), .Y(n2) );
  CLKINVX1 U244 ( .A(n66), .Y(n64) );
  CLKINVX1 U245 ( .A(n75), .Y(n73) );
  CLKINVX1 U246 ( .A(n53), .Y(n51) );
  NAND2X1 U247 ( .A(n186), .B(n48), .Y(n7) );
  OAI21XL U248 ( .A0(n24), .A1(n28), .B0(n25), .Y(n23) );
  NOR2X1 U249 ( .A(n24), .B(n27), .Y(n22) );
  OAI21XL U250 ( .A0(n32), .A1(n38), .B0(n33), .Y(n31) );
  NAND2X1 U251 ( .A(n72), .B(n75), .Y(n11) );
  XNOR2X1 U252 ( .A(n39), .B(n6), .Y(DIFF[11]) );
  NAND2X1 U253 ( .A(n35), .B(n38), .Y(n6) );
  XNOR2X1 U254 ( .A(n26), .B(n3), .Y(DIFF[14]) );
  NAND2X1 U255 ( .A(n101), .B(n25), .Y(n3) );
  OAI21XL U256 ( .A0(n29), .A1(n27), .B0(n28), .Y(n26) );
  CLKINVX1 U257 ( .A(n24), .Y(n101) );
  XNOR2X1 U258 ( .A(n54), .B(n8), .Y(DIFF[9]) );
  NAND2X1 U259 ( .A(n189), .B(n53), .Y(n8) );
  XNOR2X1 U260 ( .A(n61), .B(n9), .Y(DIFF[8]) );
  NAND2X1 U261 ( .A(n188), .B(n60), .Y(n9) );
  OAI21XL U262 ( .A0(n68), .A1(n66), .B0(n67), .Y(n61) );
  NAND2X1 U263 ( .A(n111), .B(n86), .Y(n13) );
  NAND2X1 U264 ( .A(n187), .B(n80), .Y(n12) );
  CLKINVX1 U265 ( .A(n37), .Y(n35) );
  CLKINVX1 U266 ( .A(n38), .Y(n36) );
  CLKINVX1 U267 ( .A(B[15]), .Y(n115) );
endmodule


module avg_compare_DW01_sub_49 ( A, B, CI, DIFF, CO );
  input [15:0] A;
  input [15:0] B;
  output [15:0] DIFF;
  input CI;
  output CO;
  wire   n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30, n31,
         n32, n33, n34, n36, n37, n38, n39, n40, n41, n42, n43, n44, n46, n48,
         n49, n51, n53, n54, n55, n56, n58, n60, n61, n64, n65, n66, n67, n68,
         n69, n70, n71, n73, n75, n76, n78, n80, n81, n82, n83, n84, n85, n86,
         n87, n88, n89, n90, n91, n92, n93, n94, n97, n98, n99, n101, n104,
         n111, n115, n116, n117, n118, n119, n120, n121, n122, n123, n124,
         n125, n126, n127, n128, n129, n130, n186, n187, n188, n189, n190,
         n191, n192, n193, n194;

  XOR2X1 U16 ( .A(n29), .B(n4), .Y(DIFF[13]) );
  XOR2X1 U22 ( .A(n34), .B(n5), .Y(DIFF[12]) );
  XOR2X1 U38 ( .A(n49), .B(n7), .Y(DIFF[10]) );
  XOR2X1 U69 ( .A(n68), .B(n10), .Y(DIFF[7]) );
  XOR2X1 U79 ( .A(n76), .B(n11), .Y(DIFF[6]) );
  XOR2X1 U107 ( .A(n90), .B(n14), .Y(DIFF[3]) );
  XOR2X1 U120 ( .A(n16), .B(n99), .Y(DIFF[1]) );
  XOR2XL U150 ( .A(n15), .B(n94), .Y(DIFF[2]) );
  OA21X4 U151 ( .A0(n97), .A1(n99), .B0(n98), .Y(n94) );
  XNOR2XL U152 ( .A(n87), .B(n13), .Y(DIFF[4]) );
  CLKINVX2 U153 ( .A(n69), .Y(n68) );
  OAI21X1 U154 ( .A0(n82), .A1(n70), .B0(n71), .Y(n69) );
  NAND2XL U155 ( .A(n191), .B(n192), .Y(n193) );
  OAI21XL U156 ( .A0(n90), .A1(n88), .B0(n89), .Y(n87) );
  NAND2X1 U157 ( .A(A[7]), .B(n123), .Y(n67) );
  OR2X1 U158 ( .A(A[10]), .B(n120), .Y(n186) );
  OR2X1 U159 ( .A(A[6]), .B(n124), .Y(n187) );
  OR2X1 U160 ( .A(A[9]), .B(n121), .Y(n188) );
  OR2X1 U161 ( .A(A[5]), .B(n125), .Y(n189) );
  OR2X1 U162 ( .A(A[8]), .B(n122), .Y(n190) );
  NAND2X1 U163 ( .A(n193), .B(n93), .Y(n91) );
  INVX1 U164 ( .A(n94), .Y(n191) );
  INVXL U165 ( .A(n92), .Y(n192) );
  NOR2X1 U166 ( .A(A[2]), .B(n128), .Y(n92) );
  INVXL U167 ( .A(n91), .Y(n90) );
  AOI21X1 U168 ( .A0(n54), .A1(n188), .B0(n51), .Y(n49) );
  XNOR2X1 U169 ( .A(n54), .B(n8), .Y(DIFF[9]) );
  OAI21X1 U170 ( .A0(n68), .A1(n55), .B0(n56), .Y(n54) );
  AOI21X1 U171 ( .A0(n83), .A1(n91), .B0(n84), .Y(n82) );
  INVXL U172 ( .A(n85), .Y(n111) );
  NOR2XL U173 ( .A(n88), .B(n85), .Y(n83) );
  AOI21X1 U174 ( .A0(n186), .A1(n51), .B0(n46), .Y(n44) );
  AOI21XL U175 ( .A0(n69), .A1(n41), .B0(n42), .Y(n40) );
  NOR2XL U176 ( .A(A[4]), .B(n126), .Y(n85) );
  NOR2XL U177 ( .A(A[1]), .B(n129), .Y(n97) );
  NOR2XL U178 ( .A(A[0]), .B(n130), .Y(n99) );
  NAND2X1 U179 ( .A(n186), .B(n188), .Y(n43) );
  NAND2BXL U180 ( .AN(n27), .B(n28), .Y(n4) );
  NAND2BXL U181 ( .AN(n66), .B(n67), .Y(n10) );
  OAI21XL U182 ( .A0(n40), .A1(n20), .B0(n21), .Y(n19) );
  NAND2BXL U183 ( .AN(n88), .B(n89), .Y(n14) );
  NAND2BXL U184 ( .AN(n97), .B(n98), .Y(n16) );
  NOR2XL U185 ( .A(n55), .B(n43), .Y(n41) );
  NAND2XL U186 ( .A(n64), .B(n190), .Y(n55) );
  AOI21XL U187 ( .A0(n39), .A1(n30), .B0(n31), .Y(n29) );
  XNOR2XL U188 ( .A(n61), .B(n9), .Y(DIFF[8]) );
  AOI21XL U189 ( .A0(n81), .A1(n189), .B0(n78), .Y(n76) );
  XNOR2XL U190 ( .A(n81), .B(n12), .Y(DIFF[5]) );
  AOI21XL U191 ( .A0(n31), .A1(n22), .B0(n23), .Y(n21) );
  NAND2BXL U192 ( .AN(n92), .B(n93), .Y(n15) );
  NAND2BX1 U193 ( .AN(n32), .B(n33), .Y(n5) );
  NAND2XL U194 ( .A(A[5]), .B(n125), .Y(n80) );
  NAND2XL U195 ( .A(A[1]), .B(n129), .Y(n98) );
  NAND2XL U196 ( .A(A[6]), .B(n124), .Y(n75) );
  NAND2XL U197 ( .A(A[4]), .B(n126), .Y(n86) );
  NAND2XL U198 ( .A(A[3]), .B(n127), .Y(n89) );
  NOR2XL U199 ( .A(A[12]), .B(n118), .Y(n32) );
  NAND2XL U200 ( .A(A[12]), .B(n118), .Y(n33) );
  NOR2XL U201 ( .A(A[3]), .B(n127), .Y(n88) );
  NOR2XL U202 ( .A(A[7]), .B(n123), .Y(n66) );
  NAND2XL U203 ( .A(A[8]), .B(n122), .Y(n60) );
  NAND2XL U204 ( .A(A[10]), .B(n120), .Y(n48) );
  NOR2XL U205 ( .A(A[14]), .B(n116), .Y(n24) );
  NAND2XL U206 ( .A(A[14]), .B(n116), .Y(n25) );
  NAND2XL U207 ( .A(A[11]), .B(n119), .Y(n38) );
  NAND2XL U208 ( .A(A[13]), .B(n117), .Y(n28) );
  NOR2XL U209 ( .A(A[13]), .B(n117), .Y(n27) );
  NAND2XL U210 ( .A(A[9]), .B(n121), .Y(n53) );
  NOR2XL U211 ( .A(A[11]), .B(n119), .Y(n37) );
  OR2XL U212 ( .A(A[15]), .B(n115), .Y(n194) );
  NAND2XL U213 ( .A(A[15]), .B(n115), .Y(n18) );
  XNOR2XL U214 ( .A(A[0]), .B(n130), .Y(DIFF[0]) );
  INVXL U215 ( .A(B[0]), .Y(n130) );
  INVXL U216 ( .A(B[1]), .Y(n129) );
  INVXL U217 ( .A(B[2]), .Y(n128) );
  INVXL U218 ( .A(B[3]), .Y(n127) );
  INVXL U219 ( .A(B[4]), .Y(n126) );
  INVXL U220 ( .A(B[6]), .Y(n124) );
  INVXL U221 ( .A(B[5]), .Y(n125) );
  INVXL U222 ( .A(B[10]), .Y(n120) );
  INVXL U223 ( .A(B[7]), .Y(n123) );
  INVXL U224 ( .A(B[8]), .Y(n122) );
  INVXL U225 ( .A(B[9]), .Y(n121) );
  INVXL U226 ( .A(B[11]), .Y(n119) );
  INVXL U227 ( .A(B[12]), .Y(n118) );
  INVXL U228 ( .A(B[13]), .Y(n117) );
  INVXL U229 ( .A(B[14]), .Y(n116) );
  INVXL U230 ( .A(B[15]), .Y(n115) );
  CLKINVX1 U231 ( .A(n40), .Y(n39) );
  OAI21XL U232 ( .A0(n56), .A1(n43), .B0(n44), .Y(n42) );
  CLKINVX1 U233 ( .A(n82), .Y(n81) );
  NAND2X1 U234 ( .A(n22), .B(n30), .Y(n20) );
  AOI21X1 U235 ( .A0(n39), .A1(n104), .B0(n36), .Y(n34) );
  AOI21X1 U236 ( .A0(n190), .A1(n65), .B0(n58), .Y(n56) );
  CLKINVX1 U237 ( .A(n60), .Y(n58) );
  NAND2X1 U238 ( .A(n187), .B(n189), .Y(n70) );
  AOI21X1 U239 ( .A0(n187), .A1(n78), .B0(n73), .Y(n71) );
  NAND2X1 U240 ( .A(n186), .B(n48), .Y(n7) );
  CLKINVX1 U241 ( .A(n48), .Y(n46) );
  OAI21XL U242 ( .A0(n89), .A1(n85), .B0(n86), .Y(n84) );
  XNOR2XL U243 ( .A(n19), .B(n2), .Y(DIFF[15]) );
  NAND2X1 U244 ( .A(n194), .B(n18), .Y(n2) );
  CLKINVX1 U245 ( .A(n67), .Y(n65) );
  CLKINVX1 U246 ( .A(n80), .Y(n78) );
  CLKINVX1 U247 ( .A(n66), .Y(n64) );
  CLKINVX1 U248 ( .A(n75), .Y(n73) );
  CLKINVX1 U249 ( .A(n53), .Y(n51) );
  OAI21XL U250 ( .A0(n24), .A1(n28), .B0(n25), .Y(n23) );
  NOR2X1 U251 ( .A(n24), .B(n27), .Y(n22) );
  NAND2X1 U252 ( .A(n187), .B(n75), .Y(n11) );
  OAI21XL U253 ( .A0(n32), .A1(n38), .B0(n33), .Y(n31) );
  XNOR2X1 U254 ( .A(n39), .B(n6), .Y(DIFF[11]) );
  NAND2X1 U255 ( .A(n104), .B(n38), .Y(n6) );
  CLKINVX1 U256 ( .A(n37), .Y(n104) );
  XNOR2X1 U257 ( .A(n26), .B(n3), .Y(DIFF[14]) );
  NAND2X1 U258 ( .A(n101), .B(n25), .Y(n3) );
  OAI21XL U259 ( .A0(n29), .A1(n27), .B0(n28), .Y(n26) );
  CLKINVX1 U260 ( .A(n24), .Y(n101) );
  NOR2X1 U261 ( .A(n32), .B(n37), .Y(n30) );
  NAND2X1 U262 ( .A(n188), .B(n53), .Y(n8) );
  NAND2X1 U263 ( .A(n190), .B(n60), .Y(n9) );
  OAI21XL U264 ( .A0(n68), .A1(n66), .B0(n67), .Y(n61) );
  NAND2X1 U265 ( .A(n111), .B(n86), .Y(n13) );
  NAND2X1 U266 ( .A(n189), .B(n80), .Y(n12) );
  CLKINVX1 U267 ( .A(n38), .Y(n36) );
  NAND2XL U268 ( .A(A[2]), .B(n128), .Y(n93) );
endmodule


module avg_compare ( din, d0, d1, d2, d3, d4, d5, d6, d7, d8, d9, d10, d11, 
        dout );
  input [15:0] din;
  input [15:0] d0;
  input [15:0] d1;
  input [15:0] d2;
  input [15:0] d3;
  input [15:0] d4;
  input [15:0] d5;
  input [15:0] d6;
  input [15:0] d7;
  input [15:0] d8;
  input [15:0] d9;
  input [15:0] d10;
  input [15:0] d11;
  output [15:0] dout;
  wire   N62, N63, N64, N65, N66, N67, N68, N69, N70, N71, N72, N73, N74, N75,
         N76, N77, N95, N96, N97, N98, N99, N100, N101, N102, N103, N104, N105,
         N106, N107, N108, N109, N110, N128, N129, N130, N131, N132, N133,
         N134, N135, N136, N137, N138, N139, N140, N141, N142, N143, N161,
         N162, N163, N164, N165, N166, N167, N168, N169, N170, N171, N172,
         N173, N174, N175, N176, N194, N195, N196, N197, N198, N199, N200,
         N201, N202, N203, N204, N205, N206, N207, N208, N209, N227, N228,
         N229, N230, N231, N232, N233, N234, N235, N236, N237, N238, N239,
         N240, N241, N242, N260, N261, N262, N263, N264, N265, N266, N267,
         N268, N269, N270, N271, N272, N273, N274, N275, N293, N294, N295,
         N296, N297, N298, N299, N300, N301, N302, N303, N304, N305, N306,
         N307, N308, N326, N327, N328, N329, N330, N331, N332, N333, N334,
         N335, N336, N337, N338, N339, N340, N341, N359, N360, N361, N362,
         N363, N364, N365, N366, N367, N368, N369, N370, N371, N372, N373,
         N374, N392, N393, N394, N395, N396, N397, N398, N399, N400, N401,
         N402, N403, N404, N405, N406, N407, N425, N426, N427, N428, N429,
         N430, N431, N432, N433, N434, N435, N436, N437, N438, N439, N440, N61,
         N60, N59, N58, N57, N56, N55, N54, N53, N52, N51, N50, N49, N48, N47,
         N46, N94, N93, N92, N91, N90, N89, N88, N87, N86, N85, N84, N83, N82,
         N81, N80, N79, N127, N126, N125, N124, N123, N122, N121, N120, N119,
         N118, N117, N116, N115, N114, N113, N112, N160, N159, N158, N157,
         N156, N155, N154, N153, N152, N151, N150, N149, N148, N147, N146,
         N145, N193, N192, N191, N190, N189, N188, N187, N186, N185, N184,
         N183, N182, N181, N180, N179, N178, N226, N225, N224, N223, N222,
         N221, N220, N219, N218, N217, N216, N215, N214, N213, N212, N211,
         N259, N258, N257, N256, N255, N254, N253, N252, N251, N250, N249,
         N248, N247, N246, N245, N244, N292, N291, N290, N289, N288, N287,
         N286, N285, N284, N283, N282, N281, N280, N279, N278, N277, N325,
         N324, N323, N322, N321, N320, N319, N318, N317, N316, N315, N314,
         N313, N312, N311, N310, N358, N357, N356, N355, N354, N353, N352,
         N351, N350, N349, N348, N347, N346, N345, N344, N343, N391, N390,
         N389, N388, N387, N386, N385, N384, N383, N382, N381, N380, N379,
         N378, N377, N376, N424, N423, N422, N421, N420, N419, N418, N417,
         N416, N415, N414, N413, N412, N411, N410, N409, n1, n2, n3, n4, n5,
         n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20,
         n21, n22, n23, n24, n25, n26, n27, n28, n29, n30, n31, n32, n33, n34,
         n35, n36, n37, n38, n39, n40, n41, n42, n43, n44, n45, n46, n47, n48,
         n49, n50, n51, n52, n53, n54, n55, n56, n57, n58, n59, n60, n61, n62,
         n63, n64, n65, n66, n67, n68, n69, n70, n71, n72, n73, n74, n75, n76,
         n77, n78, n79, n80, n81, n82, n83, n84, n85, n86, n87, n88, n89, n90,
         n91, n92, n93, n94, n95, n96, n97, n98, n99, n100, n101, n102, n103,
         n104, n105, n106, n107, n108, n109, n110, n111, n112, n113, n114,
         n115, n116, n117, n118, n119, n120, n121, n122, n123, n124, n125,
         n126, n127, n128, n129, n130, n131, n132, n133, n134, n135, n136,
         n137, n138, n139, n140, n141, n142, n143, n144, n145, n146, n147,
         n148, n149, n150, n151, n152, n153, n154, n155, n156, n157, n158,
         n159, n160, n161, n162, n163, n164, n165, n166, n167, n168, n169,
         n170, n171, n172, n173, n174, n175, n176, n177, n178, n179, n180,
         n181, n182, n195, n196, n197, n198, n199, n200, n201, n202, n203,
         n204, n205, n206, n207, n208, n209, n210, n211, n212, n213, n214,
         n215, n216, n217, n218, n219, n220, n221, n222, n223, n224, n225,
         n226, n227, n228, n229, n230, n231, n232, n233, n234, n235, n236,
         n237, n238, n239, n240, n241, n242, n243, n244, n245, n246, n247,
         n248, n249, n250, n251, n252, n253, n254, n255, n256, n257, n258,
         n259, n260, n261, n262, n263, n264, n265, n266, n267, n268, n269,
         n270, n271, n272, n273, n274, n275, n276, n277, n278, n279, n280,
         n281, n282, n283, n284, n285, n286, n287, n288, n289, n290, n291,
         n292, n293, n294, n295, n296, n297, n298, n299, n300, n301, n302,
         n303, n304, n305, n306, n307, n308, n309, n310, n311, n312, n313,
         n314, n315, n316, n317, n318, n319, n320, n321, n322, n323, n324,
         n325, n326, n327, n328, n329, n330, n331, n332, n333, n334, n335,
         n336, n337, n338, n339, n340, n341, n342, n343, n344, n345, n346,
         n347, n348, n349, n350, n351, n352, n353, n354, n355, n356, n357,
         n358, n359, n360, n361, n362, n363, n364, n365, n366, n367, n368,
         n369, n370, n371, n372, n373, n374, n375, n376, n377, n378, n379,
         n380, n381, n382, n383, n384, n385, n386, n387, n388, n389, n390,
         n391, n392, n393, n394, n395, n396, n397, n398, n399, n400, n401,
         n402, n403, n404, n405, n406, n407, n408, n409, n410, n411, n412,
         n413, n414, n415, n416, n417, n418, n419, n420, n421, n422, n423,
         n424, n425, n426, n427, n428, n429, n430, n431, n432, n433, n434,
         n435, n436, n437, n438, n439, n440, n441, n442, n443, n444, n445,
         n446, n447, n448, n449, n450, n451, n452, n453, n454, n455, n456,
         n457, n458, n459, n460, n461, n462, n463, n464, n465, n466, n467,
         n468, n469, n470, n471, n472, n473, n474, n475, n476, n477, n478,
         n479, n480, n481, n482, n483, n484, n485, n486, n487, n488, n489,
         n490, n491, n492, n493, n494, n495, n496, n497, n498, n499, n500,
         n501, n502, n503, n504, n505, n506, n507, n508, n509, n510, n511,
         n512, n513, n514, n515, n516, n517, n518, n519, n520, n521, n522,
         n523, n524, n525, n526, n527, n528, n529, n530, n531, n532, n533,
         n534, n535, n536, n537, n538, n539, n540, n541, n542, n543, n544,
         n545, n546, n547, n548, n549, n550, n551, n552, n553, n554, n555,
         n556, n557, n558, n559, n560, n561, n562, n563, n564, n565, n566,
         n567, n568, n569, n570, n571, n572, n573, n574, n575, n576, n577,
         n578, n579, n580, n581, n582, n583, n584, n585, n586, n587, n588,
         n589, n590, n591, n592, n593, n594, n595, n596, n597, n598, n599,
         n600, n601, n602, n603, n604, n605, n606, n607, n608, n609, n610,
         n611, n612, n613, n614, n615, n616, n617, n618, n619, n620, n621,
         n622, n623, n624, n625, n626, n627, n628, n629, n630, n631, n632,
         n633, n634, n635, n636, n637, n638, n639, n640, n641, n642, n643,
         n644, n645, n646, n647, n648, n649, n650, n651, n652, n653, n654,
         n655, n656, n657, n658, n659, n660, n661, n662, n663, n664, n665,
         n666, n667, n668, n669, n670, n671, n672, n673, n674, n675, n676,
         n677, n678, n679, n680, n681, n682, n683, n684, n685, n686, n687,
         n688, n689, n690, n691, n692, n693, n694, n695, n696, n697, n698,
         n699, n700, n701, n702, n703, n704, n705, n706, n707, n708, n709,
         n710, n711, n712, n713, n714, n715, n716, n717, n718, n719, n720,
         n721, n722, n723, n724, n725, n726, n727, n728, n729, n730, n731,
         n732, n733, n734, n735, n736, n737, n738, n739, n740, n741, n742,
         n743, n744, n745, n746, n747, n748, n749, n750, n751, n752, n753,
         n754, n755, n756, n757, n758, n759, n760, n761, n762, n763, n764,
         n765, n766, n767, n768, n769, n770, n771, n772, n773, n774, n775,
         n776, n777, n778, n779, n780, n781, n782, n783, n784, n785, n786,
         n787, n788, n789, n790, n791, n792, n793, n794, n795, n796, n797,
         n798, n799, n800, n801, n802, n803, n804, n805, n806, n807, n808,
         n809, n810, n811, n812, n813, n814, n815, n816, n817, n818, n819,
         n820, n821, n822, n823, n824, n825, n826, n827, n828, n829, n830,
         n831, n832, n833, n834, n835, n836, n837, n838, n839, n840, n841,
         n842, n843, n844, n845, n846, n847, n848, n849, n850, n851, n852,
         n853, n854, n855, n856, n857, n858, n859, n860, n861, n862, n863,
         n864, n865, n866, n867, n868, n869, n870, n871, n872, n873, n874,
         n875, n876, n877, n878, n879, n880, n881, n882, n883, n884, n885,
         n886, n887, n888, n889, n890, n891, n892, n893, n894, n895, n896,
         n897, n898, n899, n900, n901, n902, n903, n904, n905, n906, n907,
         n908, n909, n910, n911, n912, n913, n914, n915, n916, n917, n918,
         n919, n920, n921, n922, n923, n924, n925, n926, n927, n928, n929,
         n930, n931, n932, n933, n934, n935, n936, n937, n938, n939, n940,
         n941, n942, n943, n944, n945, n946, n947, n948, n949, n950, n951,
         n952, n953, n954, n955, n956, n957, n958, n959, n960, n961, n962,
         n963, n964, n965, n966, n967, n968, n969, n970, n971, n972, n973,
         n974, n975, n976, n977, n978, n979, n980, n981, n982, n983, n984,
         n985, n986, n987, n988, n989, n990, n991, n992, n993, n994, n995,
         n996, n997, n998, n999, n1000, n1001, n1002, n1003, n1004, n1005,
         n1006, n1007, n1008, n1009, n1010, n1011, n1012, n1013, n1014, n1015,
         n1016, n1017, n1018, n1019, n1020, n1021, n1022, n1023, n1024, n1025,
         n1026, n1027, n1028, n1029, n1030, n1031, n1032, n1033, n1034, n1035,
         n1036, n1037, n1038, n1039, n1040, n1041, n1042, n1043, n1044, n1045,
         n1046, n1047, n1048, n1049, n1050, n1051, n1052, n1053, n1054, n1055,
         n1056, n1057, n1058, n1059, n1060, n1061, n1062, n1063, n1064, n1065,
         n1066, n1067, n1068, n1069, n1070, n1071, n1072, n1073, n1074, n1075,
         n1076, n1077, n1078, n1079, n1080, n1081, n1082, n1083, n1084, n1085,
         n1086, n1087, n1088, n1089, n1090, n1091, n1092, n1093, n1094, n1095,
         n1096, n1097, n1098, n1099, n1100, n1101, n1102, n1103, n1104, n1105,
         n1106, n1107, n1108, n1109, n1110, n1111, n1112, n1113, n1114, n1115,
         n1116, n1117, n1118, n1119, n1120, n1121, n1122, n1123, n1124, n1125,
         n1126, n1127, n1128, n1129, n1130, n1131, n1132, n1133, n1134, n1135,
         n1136, n1137, n1138, n1139, n1140, n1141, n1142, n1143, n1144, n1145,
         n1146, n1147, n1148, n1149, n1150, n1151, n1152, n1153, n1154, n1155,
         n1156, n1157, n1158, n1159, n1160, n1161, n1162, n1163, n1164, n1165,
         n1166, n1167, n1168, n1169, n1170, n1171, n1172, n1173, n1174, n1175,
         n1176, n1177, n1178, n1179, n1180, n1181, n1182, n1183, n1184, n1185,
         n1186, n1187, n1188, n1189, n1190, n1191, n1192, n1193, n1194, n1195,
         n1196, n1197, n1198, n1199, n1200, n1201, n1202, n1203, n1204, n1205,
         n1206, n1207, n1208, n1209, n1210, n1211, n1212, n1213, n1214, n1215,
         n1216, n1217, n1218, n1219, n1220, n1221, n1222, n1223, n1224, n1225,
         n1226, n1227, n1228, n1229, n1230, n1231, n1232, n1233, n1234, n1235,
         n1236, n1237, n1238, n1239, n1240, n1241, n1242, n1243, n1244, n1245,
         n1246, n1247, n1248, n1249, n1250, n1251, n1252, n1253, n1254, n1255,
         n1256, n1257, n1258, n1259, n1260, n1261, n1262, n1263, n1264, n1265,
         n1266, n1267, n1268, n1269, n1270, n1271, n1272, n1273, n1274, n1275,
         n1276, n1277, n1278, n1279, n1280, n1281, n1282, n1283, n1284, n1285,
         n1286, n1287, n1288, n1289, n1290, n1291, n1292, n1293, n1294, n1295,
         n1296, n1297, n1298, n1299, n1300, n1301, n1302, n1303, n1304, n1305,
         n1306, n1307, n1308, n1309, n1310, n1311, n1312, n1313, n1314, n1315,
         n1316, n1317, n1318, n1319, n1320, n1321, n1322, n1323, n1324, n1325,
         n1326, n1327, n1328, n1329, n1330, n1331, n1332, n1333, n1334, n1335,
         n1336, n1337, n1338, n1339, n1340, n1341, n1342, n1343, n1344, n1345,
         n1346, n1347, n1348, n1349, n1350, n1351, n1352, n1353, n1354, n1355,
         n1356, n1357, n1358, n1359, n1360, n1361, n1362, n1363, n1364, n1365,
         n1366, n1367, n1368, n1369, n1370, n1371, n1372, n1373, n1374, n1375,
         n1376, n1377, n1378, n1379, n1380, n1381, n1382, n1383, n1384, n1385,
         n1386, n1387, n1388, n1389, n1390, n1391, n1392, n1393, n1394, n1395,
         n1396, n1397, n1398, n1399, n1400, n1401, n1402, n1403, n1404, n1405,
         n1406, n1407, n1408, n1409, n1410, n1411, n1412, n1413, n1414, n1415,
         n1416, n1417, n1418, n1419, n1420, n1421, n1422, n1423, n1424, n1425,
         n1426, n1427, n1428, n1429, n1430, n1431, n1432, n1433, n1434, n1435,
         n1436, n1437, n1438, n1439, n1440, n1441, n1442, n1443, n1444, n1445,
         n1446, n1447, n1448, n1449, n1450, n1451, n1452, n1453, n1454, n1455,
         n1456, n1457, n1458, n1459, n1460, n1461, n1462, n1463, n1464, n1465,
         n1466, n1467, n1468, n1469, n1470, n1471, n1472, n1473, n1474, n1475,
         n1476, n1477, n1478, n1479, n1480, n1481, n1482, n1483, n1484, n1485,
         n1486, n1487, n1488, n1489, n1490, n1491, n1492, n1493, n1494, n1495,
         n1496, n1497, n1498, n1499, n1500, n1501, n1502, n1503;
  wire   [15:0] d0_diff;
  wire   [15:0] d1_diff;
  wire   [15:0] d2_diff;
  wire   [15:0] d3_diff;
  wire   [15:0] d4_diff;
  wire   [15:0] d5_diff;
  wire   [15:0] d6_diff;
  wire   [15:0] d7_diff;
  wire   [15:0] d8_diff;
  wire   [15:0] d9_diff;
  wire   [15:0] d10_diff;
  wire   [15:0] d11_diff;

  avg_compare_DW01_inc_8_DW01_inc_9 add_0_root_add_162_ni ( .A({N310, N311, 
        N312, N313, N314, N315, N316, N317, N318, N319, N320, N321, N322, N323, 
        N324, N325}), .SUM({N341, N340, N339, N338, N337, N336, N335, N334, 
        N333, N332, N331, N330, N329, N328, N327, N326}) );
  avg_compare_DW01_inc_9_DW01_inc_10 add_0_root_add_163_ni ( .A({N343, N344, 
        N345, N346, N347, N348, N349, N350, N351, N352, N353, N354, N355, N356, 
        N357, N358}), .SUM({N374, N373, N372, N371, N370, N369, N368, N367, 
        N366, N365, N364, N363, N362, N361, N360, N359}) );
  avg_compare_DW01_inc_10_DW01_inc_11 add_0_root_add_164_ni ( .A({N376, N377, 
        N378, N379, N380, N381, N382, N383, N384, N385, N386, N387, N388, N389, 
        N390, N391}), .SUM({N407, N406, N405, N404, N403, N402, N401, N400, 
        N399, N398, N397, N396, N395, N394, N393, N392}) );
  avg_compare_DW01_inc_11_DW01_inc_12 add_0_root_add_165_ni ( .A({N409, N410, 
        N411, N412, N413, N414, N415, N416, N417, N418, N419, N420, N421, N422, 
        N423, N424}), .SUM({N440, N439, N438, N437, N436, N435, N434, N433, 
        N432, N431, N430, N429, N428, N427, N426, N425}) );
  avg_compare_DW01_inc_20 add_0_root_add_154_ni ( .A({N46, N47, N48, N49, N50, 
        N51, N52, N53, N54, N55, N56, N57, N58, N59, N60, N61}), .SUM({N77, 
        N76, N75, N74, N73, N72, N71, N70, N69, N68, N67, N66, N65, N64, N63, 
        N62}) );
  avg_compare_DW01_sub_32 sub_142 ( .A({din[15], n276, din[13], n275, 
        din[11:10], n274, n273, n3, n272, n271, din[4], n270, n269, n268, n267}), .B(d0), .CI(1'b0), .DIFF(d0_diff) );
  avg_compare_DW01_sub_33 sub_143 ( .A({din[15], n276, din[13], n275, 
        din[11:10], n274, n273, n2, n272, n271, din[4], n270, n269, n268, n267}), .B(d1), .CI(1'b0), .DIFF(d1_diff) );
  avg_compare_DW01_sub_40 sub_153 ( .A({din[15], n276, din[13], n275, 
        din[11:10], n274, n273, n4, n272, n271, din[4], n270, n269, n268, n267}), .B(d11), .CI(1'b0), .DIFF(d11_diff) );
  avg_compare_DW01_sub_41 sub_151 ( .A({din[15], n276, din[13], n275, 
        din[11:10], n274, n273, n3, n272, n271, din[4], n270, n269, n268, n267}), .B(d9), .CI(1'b0), .DIFF(d9_diff) );
  avg_compare_DW01_sub_42 sub_150 ( .A({din[15], n276, din[13], n275, 
        din[11:10], n274, n273, n3, n272, n271, din[4], n270, n269, n268, n267}), .B(d8), .CI(1'b0), .DIFF(d8_diff) );
  avg_compare_DW01_sub_43 sub_152 ( .A({din[15], n276, din[13], n275, 
        din[11:10], n274, n273, n3, n272, n271, din[4], n270, n269, n268, n267}), .B(d10), .CI(1'b0), .DIFF(d10_diff) );
  avg_compare_DW01_inc_21 add_0_root_add_161_ni ( .A({N277, N278, N279, N280, 
        N281, N282, N283, N284, N285, N286, N287, N288, N289, N290, N291, N292}), .SUM({N308, N307, N306, N305, N304, N303, N302, N301, N300, N299, N298, 
        N297, N296, N295, N294, N293}) );
  avg_compare_DW01_inc_22 add_0_root_add_160_ni ( .A({N244, N245, N246, N247, 
        N248, N249, N250, N251, N252, N253, N254, N255, N256, N257, N258, N259}), .SUM({N275, N274, N273, N272, N271, N270, N269, N268, N267, N266, N265, 
        N264, N263, N262, N261, N260}) );
  avg_compare_DW01_inc_23 add_0_root_add_158_ni ( .A({N178, N179, N180, N181, 
        N182, N183, N184, N185, N186, N187, N188, N189, N190, N191, N192, N193}), .SUM({N209, N208, N207, N206, N205, N204, N203, N202, N201, N200, N199, 
        N198, N197, N196, N195, N194}) );
  avg_compare_DW01_inc_24 add_0_root_add_157_ni ( .A({N145, N146, N147, N148, 
        N149, N150, N151, N152, N153, N154, N155, N156, N157, N158, N159, N160}), .SUM({N176, N175, N174, N173, N172, N171, N170, N169, N168, N167, N166, 
        N165, N164, N163, N162, N161}) );
  avg_compare_DW01_inc_25 add_0_root_add_156_ni ( .A({N112, N113, N114, N115, 
        N116, N117, N118, N119, N120, N121, N122, N123, N124, N125, N126, N127}), .SUM({N143, N142, N141, N140, N139, N138, N137, N136, N135, N134, N133, 
        N132, N131, N130, N129, N128}) );
  avg_compare_DW01_inc_26 add_0_root_add_159_ni ( .A({N211, N212, N213, N214, 
        N215, N216, N217, N218, N219, N220, N221, N222, N223, N224, N225, N226}), .SUM({N242, N241, N240, N239, N238, N237, N236, N235, N234, N233, N232, 
        N231, N230, N229, N228, N227}) );
  avg_compare_DW01_inc_27 add_0_root_add_155_ni ( .A({N79, N80, N81, N82, N83, 
        N84, N85, N86, N87, N88, N89, N90, N91, N92, N93, N94}), .SUM({N110, 
        N109, N108, N107, N106, N105, N104, N103, N102, N101, N100, N99, N98, 
        N97, N96, N95}) );
  avg_compare_DW01_sub_44 sub_148 ( .A({din[15], n276, din[13], n275, 
        din[11:10], n274, n273, n3, n272, n271, din[4], n270, n269, n268, n267}), .B(d6), .CI(1'b0), .DIFF(d6_diff) );
  avg_compare_DW01_sub_45 sub_149 ( .A({din[15], n276, din[13], n275, 
        din[11:10], n274, n273, n4, n272, n271, din[4], n270, n269, n268, n267}), .B(d7), .CI(1'b0), .DIFF(d7_diff) );
  avg_compare_DW01_sub_46 sub_147 ( .A({din[15], n276, din[13], n275, 
        din[11:10], n274, n273, n4, n272, n271, din[4], n270, n269, n268, n267}), .B(d5), .CI(1'b0), .DIFF(d5_diff) );
  avg_compare_DW01_sub_47 sub_146 ( .A({din[15], n276, din[13], n275, 
        din[11:10], n274, n273, n4, n272, n271, din[4], n270, n269, n268, n267}), .B(d4), .CI(1'b0), .DIFF(d4_diff) );
  avg_compare_DW01_sub_48 sub_144 ( .A({din[15], n276, din[13], n275, 
        din[11:10], n274, n273, n4, n272, n271, din[4], n270, n269, n268, n267}), .B(d2), .CI(1'b0), .DIFF(d2_diff) );
  avg_compare_DW01_sub_49 sub_145 ( .A({din[15], n276, din[13], n275, 
        din[11:10], n274, n273, n3, n272, n271, din[4], n270, n269, n268, n267}), .B(d3), .CI(1'b0), .DIFF(d3_diff) );
  XNOR2X1 U15 ( .A(n1096), .B(n1098), .Y(n856) );
  CLKMX2X2 U16 ( .A(n790), .B(n789), .S0(n1212), .Y(n1096) );
  CLKINVX6 U17 ( .A(n1222), .Y(n1221) );
  BUFX6 U18 ( .A(n1485), .Y(n41) );
  OA22X4 U19 ( .A0(n363), .A1(n159), .B0(n16), .B1(n422), .Y(n386) );
  XOR2X4 U20 ( .A(n392), .B(n90), .Y(n365) );
  MXI2X2 U21 ( .A(d1_diff[3]), .B(N98), .S0(n259), .Y(n392) );
  BUFX6 U22 ( .A(din[2]), .Y(n269) );
  CLKINVX3 U23 ( .A(n468), .Y(n800) );
  AO21X4 U24 ( .A0(n153), .A1(n468), .B0(n254), .Y(n469) );
  MXI2X2 U25 ( .A(n454), .B(n345), .S0(n1237), .Y(n468) );
  XOR2X4 U26 ( .A(n789), .B(n790), .Y(n253) );
  CLKMX2X2 U27 ( .A(n393), .B(n90), .S0(n1237), .Y(n789) );
  CLKMX2X2 U28 ( .A(n986), .B(n221), .S0(n1242), .Y(n1099) );
  INVX3 U29 ( .A(n1231), .Y(n1242) );
  INVX3 U30 ( .A(n279), .Y(n25) );
  MXI2X4 U31 ( .A(d3_diff[9]), .B(N170), .S0(n266), .Y(n279) );
  XNOR2X4 U32 ( .A(n1103), .B(n1102), .Y(n1205) );
  INVXL U33 ( .A(n989), .Y(n990) );
  OA22X4 U34 ( .A0(n931), .A1(n177), .B0(n227), .B1(n989), .Y(n956) );
  XNOR2X2 U35 ( .A(n989), .B(n227), .Y(n177) );
  MXI2X1 U36 ( .A(d9_diff[14]), .B(N373), .S0(n256), .Y(n989) );
  BUFX16 U37 ( .A(din[6]), .Y(n272) );
  OR3XL U38 ( .A(n1244), .B(n1243), .C(n1242), .Y(n1495) );
  MXI2XL U39 ( .A(n1000), .B(n999), .S0(n1242), .Y(n143) );
  MX2X1 U40 ( .A(n1017), .B(n1016), .S0(n1242), .Y(n1026) );
  MX2X1 U41 ( .A(n20), .B(n1025), .S0(n1242), .Y(n1039) );
  MX2XL U42 ( .A(n978), .B(n977), .S0(n1242), .Y(n1080) );
  CLKINVX2 U43 ( .A(d3_diff[4]), .Y(N156) );
  BUFX4 U44 ( .A(din[0]), .Y(n267) );
  OAI21X2 U45 ( .A0(n770), .A1(n769), .B0(n838), .Y(n775) );
  AOI21X4 U46 ( .A0(n764), .A1(n763), .B0(n846), .Y(n769) );
  INVX1 U47 ( .A(n845), .Y(n847) );
  XNOR2X2 U48 ( .A(n1156), .B(n1157), .Y(n845) );
  CLKINVX6 U49 ( .A(n1230), .Y(n1233) );
  NAND2X2 U50 ( .A(n34), .B(n912), .Y(n1230) );
  OA22X2 U51 ( .A0(n362), .A1(n156), .B0(n14), .B1(n361), .Y(n363) );
  MXI2X4 U52 ( .A(d1_diff[13]), .B(N108), .S0(n259), .Y(n361) );
  MX2XL U53 ( .A(d3_diff[8]), .B(N169), .S0(n266), .Y(n243) );
  OAI221X1 U54 ( .A0(n386), .A1(n385), .B0(n384), .B1(n383), .C0(n382), .Y(
        n387) );
  OAI31X2 U55 ( .A0(n390), .A1(n389), .A2(n388), .B0(n387), .Y(n1240) );
  INVX3 U56 ( .A(din[7]), .Y(n1) );
  CLKINVX2 U57 ( .A(n1), .Y(n2) );
  CLKINVX4 U58 ( .A(n1), .Y(n3) );
  INVX1 U59 ( .A(n1), .Y(n4) );
  OA22X1 U60 ( .A0(n381), .A1(n199), .B0(n242), .B1(n396), .Y(n384) );
  BUFX6 U61 ( .A(din[5]), .Y(n271) );
  BUFX6 U62 ( .A(din[9]), .Y(n274) );
  CLKINVX1 U63 ( .A(d6_diff[2]), .Y(N257) );
  INVX1 U64 ( .A(n495), .Y(n698) );
  CLKINVX1 U65 ( .A(d0_diff[8]), .Y(N53) );
  MXI2X1 U66 ( .A(d1_diff[10]), .B(N105), .S0(n259), .Y(n443) );
  MXI2X2 U67 ( .A(d1_diff[12]), .B(N107), .S0(n259), .Y(n435) );
  XNOR2X1 U68 ( .A(n691), .B(n217), .Y(n160) );
  MXI2X2 U69 ( .A(d1_diff[14]), .B(N109), .S0(n259), .Y(n422) );
  NAND2X1 U70 ( .A(n343), .B(n342), .Y(n1213) );
  INVX4 U71 ( .A(n1213), .Y(n1217) );
  OR3XL U72 ( .A(N46), .B(n383), .C(n364), .Y(n388) );
  CLKINVX6 U73 ( .A(n1240), .Y(n1237) );
  BUFX4 U74 ( .A(din[1]), .Y(n268) );
  CLKINVX1 U75 ( .A(d7_diff[2]), .Y(N290) );
  CLKINVX1 U76 ( .A(d1_diff[1]), .Y(N93) );
  CLKINVX1 U77 ( .A(d7_diff[11]), .Y(N281) );
  CLKINVX1 U78 ( .A(d6_diff[12]), .Y(N247) );
  CLKINVX1 U79 ( .A(d7_diff[6]), .Y(N286) );
  MXI2X1 U80 ( .A(d6_diff[10]), .B(N270), .S0(n261), .Y(n496) );
  CLKINVX1 U81 ( .A(d4_diff[11]), .Y(N182) );
  MXI2X1 U82 ( .A(d5_diff[3]), .B(N230), .S0(n263), .Y(n652) );
  CLKMX2X2 U83 ( .A(d4_diff[3]), .B(N197), .S0(n264), .Y(n91) );
  CLKINVX1 U84 ( .A(d11_diff[1]), .Y(N423) );
  CLKINVX1 U85 ( .A(d10_diff[1]), .Y(N390) );
  CLKINVX1 U86 ( .A(d9_diff[2]), .Y(N356) );
  CLKINVX1 U87 ( .A(d8_diff[1]), .Y(N324) );
  MXI2X1 U88 ( .A(d6_diff[9]), .B(N269), .S0(n261), .Y(n687) );
  CLKINVX1 U89 ( .A(d7_diff[1]), .Y(N291) );
  AND3X2 U90 ( .A(n319), .B(n324), .C(n243), .Y(n180) );
  CLKINVX1 U91 ( .A(d1_diff[9]), .Y(N85) );
  CLKINVX1 U92 ( .A(d1_diff[10]), .Y(N84) );
  CLKINVX1 U93 ( .A(d0_diff[13]), .Y(N48) );
  CLKINVX1 U94 ( .A(d0_diff[10]), .Y(N51) );
  CLKINVX1 U95 ( .A(d1_diff[5]), .Y(N89) );
  CLKINVX1 U96 ( .A(d1_diff[4]), .Y(N90) );
  CLKINVX1 U97 ( .A(n278), .Y(n449) );
  MXI2X1 U98 ( .A(d3_diff[10]), .B(N171), .S0(n266), .Y(n445) );
  CLKMX2X2 U99 ( .A(n988), .B(n225), .S0(n1233), .Y(n1100) );
  MXI2X1 U100 ( .A(d7_diff[10]), .B(N303), .S0(n262), .Y(n495) );
  CLKINVX1 U101 ( .A(d6_diff[6]), .Y(N253) );
  NAND3X1 U102 ( .A(n526), .B(n525), .C(n558), .Y(n530) );
  NAND2X1 U103 ( .A(n517), .B(n524), .Y(n525) );
  NAND3X1 U104 ( .A(n519), .B(n518), .C(n517), .Y(n526) );
  NAND3X1 U105 ( .A(n601), .B(n600), .C(n637), .Y(n604) );
  NAND3X1 U106 ( .A(n593), .B(n592), .C(n597), .Y(n601) );
  CLKINVX1 U107 ( .A(d5_diff[7]), .Y(N219) );
  CLKINVX1 U108 ( .A(N374), .Y(n1000) );
  CLKMX2X2 U109 ( .A(n696), .B(n220), .S0(n1215), .Y(n758) );
  XOR2X1 U110 ( .A(n791), .B(n117), .Y(n724) );
  CLKINVX1 U111 ( .A(d3_diff[6]), .Y(N154) );
  CLKINVX1 U112 ( .A(d2_diff[7]), .Y(N120) );
  CLKINVX1 U113 ( .A(d2_diff[6]), .Y(N121) );
  NAND2X1 U114 ( .A(n27), .B(n28), .Y(n324) );
  NAND2X1 U115 ( .A(n279), .B(n26), .Y(n27) );
  NAND2X1 U116 ( .A(n25), .B(n449), .Y(n28) );
  INVX1 U117 ( .A(n449), .Y(n26) );
  CLKINVX1 U118 ( .A(d1_diff[14]), .Y(N80) );
  CLKINVX1 U119 ( .A(d1_diff[7]), .Y(N87) );
  NAND2BX1 U120 ( .AN(N376), .B(N407), .Y(n1001) );
  CLKMX2X2 U121 ( .A(n1098), .B(n1097), .S0(n1214), .Y(n1103) );
  XNOR2X1 U122 ( .A(n1171), .B(n1170), .Y(n1172) );
  CLKBUFX3 U123 ( .A(d10_diff[15]), .Y(n258) );
  MXI2X1 U124 ( .A(d6_diff[13]), .B(N273), .S0(n261), .Y(n505) );
  CLKINVX1 U125 ( .A(n523), .Y(n561) );
  CLKINVX1 U126 ( .A(n261), .Y(N244) );
  NAND2BX1 U127 ( .AN(N277), .B(N308), .Y(n682) );
  MXI2X1 U128 ( .A(d4_diff[13]), .B(N207), .S0(n264), .Y(n584) );
  MXI2X1 U129 ( .A(d5_diff[12]), .B(N239), .S0(n263), .Y(n675) );
  MXI2X1 U130 ( .A(d5_diff[14]), .B(N241), .S0(n263), .Y(n691) );
  CLKINVX1 U131 ( .A(n720), .Y(n797) );
  CLKINVX1 U132 ( .A(n664), .Y(n665) );
  CLKMX2X2 U133 ( .A(n11), .B(n663), .S0(n1215), .Y(n804) );
  BUFX8 U134 ( .A(d0_diff[15]), .Y(n260) );
  CLKMX2X2 U135 ( .A(n8), .B(n413), .S0(n1217), .Y(n803) );
  OR2XL U136 ( .A(n851), .B(n850), .Y(n855) );
  OA22X1 U137 ( .A0(n1032), .A1(n144), .B0(n85), .B1(n1131), .Y(n1035) );
  OA22X1 U138 ( .A0(n1031), .A1(n142), .B0(n84), .B1(n1162), .Y(n1032) );
  OA22X1 U139 ( .A0(n1030), .A1(n140), .B0(n82), .B1(n1158), .Y(n1031) );
  OA22X1 U140 ( .A0(n114), .A1(n1052), .B0(n1051), .B1(n1070), .Y(n1053) );
  CLKINVX1 U141 ( .A(n799), .Y(n801) );
  CLKMX2X2 U142 ( .A(n1087), .B(n1086), .S0(n1232), .Y(n1093) );
  AO21X2 U143 ( .A0(n100), .A1(n101), .B0(n1183), .Y(n1187) );
  OAI2BB1X1 U144 ( .A0N(n539), .A1N(n538), .B0(n557), .Y(n152) );
  OAI2BB1X1 U145 ( .A0N(n71), .A1N(n72), .B0(n623), .Y(n625) );
  AO21XL U146 ( .A0(n611), .A1(n610), .B0(n208), .Y(n72) );
  NAND2BX1 U147 ( .AN(n878), .B(n79), .Y(n908) );
  NOR4X1 U148 ( .A(n175), .B(n910), .C(n178), .D(n196), .Y(n79) );
  NOR4X1 U149 ( .A(n922), .B(n955), .C(n921), .D(n202), .Y(n81) );
  OR2X1 U150 ( .A(n162), .B(n920), .Y(n952) );
  OA22X1 U151 ( .A0(n951), .A1(n215), .B0(n250), .B1(n950), .Y(n954) );
  OA22X1 U152 ( .A0(n949), .A1(n212), .B0(n247), .B1(n966), .Y(n951) );
  OA22X1 U153 ( .A0(n948), .A1(n210), .B0(n947), .B1(n981), .Y(n949) );
  OR2X1 U154 ( .A(n289), .B(n433), .Y(n328) );
  OR4X1 U155 ( .A(n169), .B(n161), .C(n159), .D(n156), .Y(n353) );
  XNOR2X1 U156 ( .A(n454), .B(n455), .Y(n218) );
  OR2X4 U157 ( .A(n104), .B(n488), .Y(n36) );
  OR2X1 U158 ( .A(n485), .B(n781), .Y(n38) );
  CLKBUFX3 U159 ( .A(n1491), .Y(n39) );
  CLKBUFX3 U160 ( .A(n1481), .Y(n45) );
  CLKBUFX3 U161 ( .A(n1477), .Y(n43) );
  CLKBUFX3 U162 ( .A(n1497), .Y(n42) );
  CLKBUFX3 U163 ( .A(n1499), .Y(n44) );
  CLKMX2X2 U164 ( .A(d2_diff[3]), .B(N131), .S0(n265), .Y(n5) );
  XNOR2X1 U165 ( .A(n1109), .B(n19), .Y(n6) );
  MX2XL U166 ( .A(d7_diff[13]), .B(N306), .S0(n262), .Y(n7) );
  CLKMX2X2 U167 ( .A(d3_diff[1]), .B(N162), .S0(n266), .Y(n8) );
  MX2XL U168 ( .A(d7_diff[11]), .B(N304), .S0(n262), .Y(n9) );
  MX2XL U169 ( .A(d7_diff[1]), .B(N294), .S0(n262), .Y(n10) );
  CLKMX2X2 U170 ( .A(d5_diff[1]), .B(N228), .S0(n263), .Y(n11) );
  MXI2X1 U171 ( .A(n655), .B(n654), .S0(n1221), .Y(n117) );
  OAI32X1 U172 ( .A0(n668), .A1(n521), .A2(n561), .B0(n516), .B1(n654), .Y(
        n520) );
  NAND2X1 U173 ( .A(n640), .B(n639), .Y(n1225) );
  OAI32X1 U174 ( .A0(n229), .A1(n666), .A2(n633), .B0(n91), .B1(n652), .Y(n594) );
  CLKMX2X2 U175 ( .A(d4_diff[12]), .B(N206), .S0(n264), .Y(n12) );
  CLKMX2X2 U176 ( .A(d0_diff[11]), .B(N73), .S0(n260), .Y(n13) );
  CLKMX2X2 U177 ( .A(d0_diff[13]), .B(N75), .S0(n260), .Y(n14) );
  CLKMX2X2 U178 ( .A(d0_diff[12]), .B(N74), .S0(n260), .Y(n15) );
  CLKMX2X2 U179 ( .A(d0_diff[14]), .B(N76), .S0(n260), .Y(n16) );
  CLKMX2X2 U180 ( .A(d2_diff[2]), .B(N130), .S0(n265), .Y(n17) );
  CLKMX2X2 U181 ( .A(d2_diff[12]), .B(N140), .S0(n265), .Y(n18) );
  MXI2X1 U182 ( .A(n83), .B(n1095), .S0(n1232), .Y(n19) );
  CLKMX2X2 U183 ( .A(d9_diff[0]), .B(N359), .S0(n256), .Y(n20) );
  CLKMX2X2 U184 ( .A(d10_diff[0]), .B(N392), .S0(n258), .Y(n21) );
  CLKMX2X2 U185 ( .A(d4_diff[7]), .B(N201), .S0(n264), .Y(n22) );
  CLKMX2X2 U186 ( .A(d2_diff[7]), .B(N135), .S0(n265), .Y(n23) );
  MXI2X1 U187 ( .A(d5_diff[13]), .B(N240), .S0(n263), .Y(n582) );
  OR3X2 U188 ( .A(n492), .B(n491), .C(n490), .Y(n24) );
  NAND2X4 U189 ( .A(n24), .B(n489), .Y(n1241) );
  OR2X1 U190 ( .A(n252), .B(n108), .Y(n491) );
  NAND4BX1 U191 ( .AN(n327), .B(n326), .C(n325), .D(n324), .Y(n337) );
  OR2X2 U192 ( .A(n738), .B(n110), .Y(n29) );
  OR2X4 U193 ( .A(n737), .B(n736), .Y(n30) );
  OR2X1 U194 ( .A(n133), .B(n783), .Y(n31) );
  NAND3X2 U195 ( .A(n29), .B(n30), .C(n31), .Y(n739) );
  NAND2X1 U196 ( .A(n653), .B(n1225), .Y(n32) );
  NAND2XL U197 ( .A(n91), .B(n1215), .Y(n33) );
  NAND2X1 U198 ( .A(n32), .B(n33), .Y(n791) );
  INVX3 U199 ( .A(n1225), .Y(n1215) );
  OR3X2 U200 ( .A(n915), .B(n914), .C(n913), .Y(n34) );
  OR3X2 U201 ( .A(N376), .B(n908), .C(n888), .Y(n913) );
  OR3X2 U202 ( .A(n960), .B(n959), .C(n958), .Y(n35) );
  NAND2X1 U203 ( .A(n35), .B(n957), .Y(n1231) );
  OR2X4 U204 ( .A(n487), .B(n486), .Y(n37) );
  NAND3X6 U205 ( .A(n36), .B(n37), .C(n38), .Y(n489) );
  XNOR2X4 U206 ( .A(n484), .B(n782), .Y(n104) );
  OR3X1 U207 ( .A(n1221), .B(n1223), .C(n1224), .Y(n1487) );
  AO21X2 U208 ( .A0(n94), .A1(n95), .B0(n1197), .Y(n1128) );
  OR3XL U209 ( .A(n1233), .B(n1244), .C(n1232), .Y(n1489) );
  MX2XL U210 ( .A(n1141), .B(n1140), .S0(n1232), .Y(n1170) );
  MX2X1 U211 ( .A(n1100), .B(n1099), .S0(n1232), .Y(n1102) );
  CLKINVX8 U212 ( .A(n1238), .Y(n1214) );
  OAI22X4 U213 ( .A0(n871), .A1(n870), .B0(n66), .B1(n67), .Y(n1238) );
  NAND2X2 U214 ( .A(n92), .B(n93), .Y(n870) );
  MX2XL U215 ( .A(n1157), .B(n1156), .S0(n1214), .Y(n1169) );
  AOI21X1 U216 ( .A0(n306), .A1(n305), .B0(n209), .Y(n307) );
  AND2XL U217 ( .A(n25), .B(n278), .Y(n179) );
  OR2X2 U218 ( .A(n853), .B(n855), .Y(n92) );
  OR3X1 U219 ( .A(n1223), .B(n1222), .C(n1224), .Y(n1485) );
  INVXL U220 ( .A(n791), .Y(n792) );
  OAI32X1 U221 ( .A0(n719), .A1(n718), .A2(n793), .B0(n117), .B1(n791), .Y(
        n723) );
  OAI21X1 U222 ( .A0(n1205), .A1(n6), .B0(n1111), .Y(n1112) );
  AO21XL U223 ( .A0(n1118), .A1(n1117), .B0(n97), .Y(n95) );
  NAND3X1 U224 ( .A(n1114), .B(n1113), .C(n1112), .Y(n1117) );
  INVX3 U225 ( .A(d6_diff[8]), .Y(N251) );
  INVXL U226 ( .A(n394), .Y(n395) );
  OA22X4 U227 ( .A0(n731), .A1(n111), .B0(n730), .B1(n819), .Y(n733) );
  OR3X2 U228 ( .A(n1142), .B(n842), .C(n840), .Y(n60) );
  INVX1 U229 ( .A(n840), .Y(n1143) );
  MX2X1 U230 ( .A(n753), .B(n752), .S0(n1223), .Y(n1139) );
  MX2X1 U231 ( .A(n125), .B(n759), .S0(n1223), .Y(n1157) );
  MXI2X1 U232 ( .A(n794), .B(n793), .S0(n1223), .Y(n128) );
  OR4XL U233 ( .A(n843), .B(n96), .C(n842), .D(n841), .Y(n851) );
  XNOR2X1 U234 ( .A(n443), .B(n89), .Y(n161) );
  MXI2X2 U235 ( .A(d7_diff[3]), .B(N296), .S0(n262), .Y(n516) );
  BUFX16 U236 ( .A(d7_diff[15]), .Y(n262) );
  NAND2XL U237 ( .A(n686), .B(n570), .Y(n573) );
  MXI2X1 U238 ( .A(d4_diff[9]), .B(N203), .S0(n264), .Y(n570) );
  NAND4BXL U239 ( .AN(n551), .B(n550), .C(n549), .D(n548), .Y(n562) );
  NAND2X1 U240 ( .A(n858), .B(n857), .Y(n66) );
  NOR2X1 U241 ( .A(n855), .B(n854), .Y(n858) );
  NOR2XL U242 ( .A(n445), .B(n88), .Y(n281) );
  MXI2XL U243 ( .A(n446), .B(n88), .S0(n1217), .Y(n74) );
  AO21XL U244 ( .A0(n172), .A1(n173), .B0(n337), .Y(n329) );
  INVX1 U245 ( .A(n812), .Y(n806) );
  CLKINVX8 U246 ( .A(n1241), .Y(n1212) );
  OR4XL U247 ( .A(n1475), .B(n1474), .C(n1473), .D(n1472), .Y(dout[14]) );
  OR4XL U248 ( .A(n1459), .B(n1458), .C(n1457), .D(n1456), .Y(dout[13]) );
  OR4XL U249 ( .A(n1443), .B(n1442), .C(n1441), .D(n1440), .Y(dout[12]) );
  OR4XL U250 ( .A(n1427), .B(n1426), .C(n1425), .D(n1424), .Y(dout[11]) );
  OR4XL U251 ( .A(n1411), .B(n1410), .C(n1409), .D(n1408), .Y(dout[10]) );
  OR4XL U252 ( .A(n1395), .B(n1394), .C(n1393), .D(n1392), .Y(dout[9]) );
  OR4XL U253 ( .A(n1379), .B(n1378), .C(n1377), .D(n1376), .Y(dout[8]) );
  OR4XL U254 ( .A(n1363), .B(n1362), .C(n1361), .D(n1360), .Y(dout[7]) );
  OR4XL U255 ( .A(n1347), .B(n1346), .C(n1345), .D(n1344), .Y(dout[6]) );
  OR4XL U256 ( .A(n1331), .B(n1330), .C(n1329), .D(n1328), .Y(dout[5]) );
  OR4XL U257 ( .A(n1315), .B(n1314), .C(n1313), .D(n1312), .Y(dout[4]) );
  OR4XL U258 ( .A(n1299), .B(n1298), .C(n1297), .D(n1296), .Y(dout[3]) );
  OR4XL U259 ( .A(n1283), .B(n1282), .C(n1281), .D(n1280), .Y(dout[2]) );
  OR4XL U260 ( .A(n1267), .B(n1266), .C(n1265), .D(n1264), .Y(dout[1]) );
  OR4XL U261 ( .A(n1251), .B(n1250), .C(n1249), .D(n1248), .Y(dout[0]) );
  OAI21X1 U262 ( .A0(n1190), .A1(n1189), .B0(n1188), .Y(n1191) );
  OAI31X2 U263 ( .A0(n742), .A1(n741), .A2(n740), .B0(n739), .Y(n1226) );
  AOI32XL U264 ( .A0(n460), .A1(n164), .A2(n459), .B0(n750), .B1(n458), .Y(
        n461) );
  INVX1 U265 ( .A(n458), .Y(n751) );
  MX2X1 U266 ( .A(n448), .B(n447), .S0(n1237), .Y(n457) );
  AOI32X1 U267 ( .A0(n477), .A1(n478), .A2(n476), .B0(n807), .B1(n475), .Y(
        n480) );
  MXI2X1 U268 ( .A(d1_diff[9]), .B(N104), .S0(n259), .Y(n354) );
  CLKMX2X2 U269 ( .A(n117), .B(n792), .S0(n1223), .Y(n1098) );
  OAI22X1 U270 ( .A0(n830), .A1(n861), .B0(n1119), .B1(n829), .Y(n837) );
  CLKMX2X2 U271 ( .A(n216), .B(n688), .S0(n1221), .Y(n753) );
  CLKMX2X2 U272 ( .A(n644), .B(n643), .S0(n1221), .Y(n796) );
  MXI2X1 U273 ( .A(n698), .B(n697), .S0(n1221), .Y(n125) );
  CLKMX2X2 U274 ( .A(n686), .B(n685), .S0(n1215), .Y(n752) );
  CLKMX2X2 U275 ( .A(n647), .B(n646), .S0(n1215), .Y(n720) );
  CLKMX2X2 U276 ( .A(n667), .B(n229), .S0(n1215), .Y(n793) );
  INVX1 U277 ( .A(n1101), .Y(n795) );
  CLKMX2X2 U278 ( .A(n73), .B(n788), .S0(n1212), .Y(n1101) );
  OAI32X1 U279 ( .A0(n795), .A1(n856), .A2(n128), .B0(n1096), .B1(n1098), .Y(
        n812) );
  INVXL U280 ( .A(n1096), .Y(n1097) );
  OR4XL U281 ( .A(n1503), .B(n1502), .C(n1501), .D(n1500), .Y(dout[15]) );
  BUFX4 U282 ( .A(n1487), .Y(n40) );
  CLKINVX6 U283 ( .A(n1226), .Y(n1223) );
  NAND4BXL U284 ( .AN(n566), .B(n565), .C(n564), .D(n563), .Y(n567) );
  CLKMX2X2 U285 ( .A(n453), .B(n452), .S0(n1217), .Y(n799) );
  MXI2X1 U286 ( .A(n421), .B(n17), .S0(n1217), .Y(n73) );
  MX2X1 U287 ( .A(n1143), .B(n1142), .S0(n1214), .Y(n1175) );
  CLKINVX4 U288 ( .A(n1244), .Y(n1239) );
  INVXL U289 ( .A(n594), .Y(n597) );
  OR2X2 U290 ( .A(n165), .B(n349), .Y(n382) );
  OR2XL U291 ( .A(n877), .B(n1002), .Y(n907) );
  INVX1 U292 ( .A(N110), .Y(n430) );
  INVX1 U293 ( .A(N341), .Y(n999) );
  INVX1 U294 ( .A(d7_diff[8]), .Y(N284) );
  INVX1 U295 ( .A(d7_diff[7]), .Y(N285) );
  INVX1 U296 ( .A(d0_diff[9]), .Y(N52) );
  INVX1 U297 ( .A(d0_diff[5]), .Y(N56) );
  AO21XL U298 ( .A0(n313), .A1(n312), .B0(n311), .Y(n173) );
  MXI2XL U299 ( .A(d6_diff[3]), .B(N263), .S0(n261), .Y(n515) );
  INVX1 U300 ( .A(n860), .Y(n811) );
  OAI2BB1X4 U301 ( .A0N(n60), .A1N(n755), .B0(n845), .Y(n764) );
  OR3XL U302 ( .A(n1238), .B(n1213), .C(n1216), .Y(n1481) );
  AOI21X1 U303 ( .A0(n823), .A1(n865), .B0(n822), .Y(n830) );
  INVX1 U304 ( .A(n1172), .Y(n1174) );
  OAI21X1 U305 ( .A0(n816), .A1(n815), .B0(n814), .Y(n823) );
  INVX1 U306 ( .A(n297), .Y(n336) );
  NAND3X1 U307 ( .A(n295), .B(n294), .C(n293), .Y(n302) );
  NOR2XL U308 ( .A(n854), .B(n856), .Y(n813) );
  NOR2XL U309 ( .A(n1125), .B(n1069), .Y(n56) );
  NAND2XL U310 ( .A(n46), .B(n47), .Y(n49) );
  INVX1 U311 ( .A(n63), .Y(n47) );
  INVX1 U312 ( .A(n1169), .Y(n46) );
  OA22X4 U313 ( .A0(n480), .A1(n108), .B0(n479), .B1(n817), .Y(n481) );
  CLKINVX1 U314 ( .A(n555), .Y(n529) );
  CLKINVX1 U315 ( .A(d7_diff[9]), .Y(N283) );
  MXI2X1 U316 ( .A(d3_diff[3]), .B(N164), .S0(n266), .Y(n394) );
  CLKINVX1 U317 ( .A(d7_diff[13]), .Y(N279) );
  CLKMX2X3 U318 ( .A(d0_diff[3]), .B(N65), .S0(n260), .Y(n90) );
  MXI2XL U319 ( .A(d3_diff[4]), .B(N165), .S0(n266), .Y(n300) );
  OAI222XL U320 ( .A0(n1493), .A1(n1292), .B0(n39), .B1(n1291), .C0(n1489), 
        .C1(n1290), .Y(n1297) );
  OAI222XL U321 ( .A0(n1493), .A1(n1308), .B0(n39), .B1(n1307), .C0(n1489), 
        .C1(n1306), .Y(n1313) );
  OAI222XL U322 ( .A0(n1493), .A1(n1236), .B0(n39), .B1(n1235), .C0(n1489), 
        .C1(n1234), .Y(n1249) );
  NAND2XL U323 ( .A(n53), .B(n54), .Y(n1204) );
  AO21X4 U324 ( .A0(n1182), .A1(n1181), .B0(n107), .Y(n101) );
  NOR4XL U325 ( .A(n127), .B(n124), .C(n119), .D(n450), .Y(n103) );
  OA22X4 U326 ( .A0(n735), .A1(n141), .B0(n734), .B1(n833), .Y(n737) );
  AO21X4 U327 ( .A0(n120), .A1(n163), .B0(n866), .Y(n115) );
  OA22X4 U328 ( .A0(n130), .A1(n481), .B0(n77), .B1(n824), .Y(n483) );
  OR4X4 U329 ( .A(n620), .B(n619), .C(n618), .D(n166), .Y(n621) );
  OR4X4 U330 ( .A(n615), .B(n171), .C(n160), .D(n614), .Y(n622) );
  OR2XL U331 ( .A(n587), .B(n684), .Y(n624) );
  OAI31X2 U332 ( .A0(n1064), .A1(n1063), .A2(n1062), .B0(n1061), .Y(n1243) );
  MX2XL U333 ( .A(n980), .B(n979), .S0(n1233), .Y(n1081) );
  NAND3XL U334 ( .A(n869), .B(n868), .C(n867), .Y(n67) );
  NAND2X1 U335 ( .A(n568), .B(n567), .Y(n1222) );
  NAND2BX1 U336 ( .AN(N244), .B(N275), .Y(n681) );
  AOI21XL U337 ( .A0(n69), .A1(n70), .B0(n68), .Y(n290) );
  OR3XL U338 ( .A(n347), .B(n218), .C(n346), .Y(n390) );
  XNOR2X4 U339 ( .A(n361), .B(n14), .Y(n156) );
  XNOR2X4 U340 ( .A(n422), .B(n16), .Y(n159) );
  NOR3XL U341 ( .A(N112), .B(n337), .C(n336), .Y(n338) );
  OA22XL U342 ( .A0(n927), .A1(n200), .B0(n237), .B1(n1012), .Y(n928) );
  NAND2XL U343 ( .A(n80), .B(n81), .Y(n953) );
  INVX3 U344 ( .A(d6_diff[9]), .Y(N250) );
  MXI2XL U345 ( .A(d7_diff[14]), .B(N307), .S0(n262), .Y(n506) );
  INVX3 U346 ( .A(d7_diff[10]), .Y(N282) );
  MXI2XL U347 ( .A(d9_diff[10]), .B(N369), .S0(n256), .Y(n1012) );
  BUFX4 U348 ( .A(d3_diff[15]), .Y(n266) );
  NOR4X1 U349 ( .A(n107), .B(n1147), .C(n1172), .D(n1146), .Y(n53) );
  OAI2BB1X4 U350 ( .A0N(n58), .A1N(n59), .B0(n844), .Y(n786) );
  OR2XL U351 ( .A(n1148), .B(n772), .Y(n58) );
  INVXL U352 ( .A(n1204), .Y(n55) );
  AOI21X1 U353 ( .A0(n1128), .A1(n1127), .B0(n112), .Y(n57) );
  NOR2XL U354 ( .A(n1067), .B(n835), .Y(n836) );
  OR2XL U355 ( .A(n852), .B(n1133), .Y(n93) );
  NOR4X1 U356 ( .A(n129), .B(n123), .C(n434), .D(n104), .Y(n102) );
  XNOR2X1 U357 ( .A(n1168), .B(n65), .Y(n107) );
  INVXL U358 ( .A(n478), .Y(n408) );
  MX2XL U359 ( .A(n1134), .B(n1133), .S0(n1214), .Y(n1166) );
  XOR2X1 U360 ( .A(n828), .B(n829), .Y(n861) );
  XNOR2X1 U361 ( .A(n1080), .B(n1042), .Y(n109) );
  OA22X4 U362 ( .A0(n132), .A1(n483), .B0(n482), .B1(n831), .Y(n487) );
  XNOR2X1 U363 ( .A(n756), .B(n74), .Y(n119) );
  OA22X4 U364 ( .A0(n139), .A1(n733), .B0(n732), .B1(n826), .Y(n735) );
  INVXL U365 ( .A(n809), .Y(n726) );
  OA22X4 U366 ( .A0(n711), .A1(n126), .B0(n125), .B1(n758), .Y(n713) );
  OR3XL U367 ( .A(n1217), .B(n1238), .C(n1216), .Y(n1477) );
  OR2XL U368 ( .A(n1082), .B(n1084), .Y(n116) );
  MX2XL U369 ( .A(n803), .B(n802), .S0(n1212), .Y(n1082) );
  XNOR2X1 U370 ( .A(n824), .B(n77), .Y(n130) );
  INVX1 U371 ( .A(n613), .Y(n614) );
  NOR4XL U372 ( .A(n136), .B(n134), .C(n126), .D(n131), .Y(n62) );
  NAND2XL U373 ( .A(n61), .B(n62), .Y(n736) );
  NOR4X1 U374 ( .A(n137), .B(n690), .C(n110), .D(n689), .Y(n61) );
  INVX1 U375 ( .A(n321), .Y(n322) );
  XNOR2X1 U376 ( .A(n831), .B(n482), .Y(n132) );
  INVXL U377 ( .A(n709), .Y(n754) );
  AOI32X1 U378 ( .A0(n1050), .A1(n1049), .A2(n1048), .B0(n1078), .B1(n1047), 
        .Y(n1052) );
  OR2XL U379 ( .A(n109), .B(n114), .Y(n1063) );
  OR3XL U380 ( .A(n1194), .B(n976), .C(n975), .Y(n1064) );
  OAI222X2 U381 ( .A0(n113), .A1(n1060), .B0(n1059), .B1(n1058), .C0(n1057), 
        .C1(n1135), .Y(n1061) );
  OA22X4 U382 ( .A0(n1035), .A1(n146), .B0(n1034), .B1(n1151), .Y(n1036) );
  XOR2X1 U383 ( .A(n802), .B(n803), .Y(n254) );
  CLKMX2X2 U384 ( .A(n395), .B(n5), .S0(n1217), .Y(n790) );
  NOR3XL U385 ( .A(N244), .B(n562), .C(n561), .Y(n563) );
  NAND4X1 U386 ( .A(n544), .B(n543), .C(n542), .D(n541), .Y(n551) );
  NOR2X2 U387 ( .A(n547), .B(n167), .Y(n549) );
  NAND2XL U388 ( .A(n704), .B(n598), .Y(n605) );
  OR2XL U389 ( .A(n648), .B(n22), .Y(n71) );
  XOR2X1 U390 ( .A(n496), .B(n698), .Y(n542) );
  NAND2BX1 U391 ( .AN(N178), .B(N209), .Y(n683) );
  NOR3XL U392 ( .A(N178), .B(n634), .C(n633), .Y(n635) );
  OAI21X1 U393 ( .A0(n285), .A1(n284), .B0(n321), .Y(n69) );
  NAND2XL U394 ( .A(n288), .B(n287), .Y(n70) );
  XNOR2X1 U395 ( .A(n675), .B(n12), .Y(n166) );
  OR2XL U396 ( .A(n348), .B(n198), .Y(n389) );
  AOI32XL U397 ( .A0(n357), .A1(n219), .A2(n356), .B0(n448), .B1(n355), .Y(
        n358) );
  XOR2X1 U398 ( .A(n437), .B(n18), .Y(n316) );
  INVXL U399 ( .A(n691), .Y(n692) );
  NOR4BBXL U400 ( .AN(n627), .BN(n628), .C(n630), .D(n208), .Y(n638) );
  INVX1 U401 ( .A(n378), .Y(n415) );
  OR2XL U402 ( .A(n210), .B(n212), .Y(n959) );
  OR3XL U403 ( .A(n241), .B(n874), .C(n873), .Y(n915) );
  NOR4X1 U404 ( .A(n203), .B(n200), .C(n177), .D(n197), .Y(n80) );
  MX2XL U405 ( .A(d4_diff[14]), .B(N208), .S0(n264), .Y(n217) );
  MXI2XL U406 ( .A(d6_diff[12]), .B(N272), .S0(n261), .Y(n500) );
  NAND2XL U407 ( .A(n266), .B(N176), .Y(n433) );
  CLKINVX1 U408 ( .A(d4_diff[14]), .Y(N179) );
  CLKINVX1 U409 ( .A(d5_diff[8]), .Y(N218) );
  CLKINVX1 U410 ( .A(d5_diff[9]), .Y(N217) );
  MX2XL U411 ( .A(d7_diff[9]), .B(N302), .S0(n262), .Y(n216) );
  CLKINVX1 U412 ( .A(d1_diff[6]), .Y(N88) );
  MX2XL U413 ( .A(d2_diff[10]), .B(N138), .S0(n265), .Y(n88) );
  CLKINVX2 U414 ( .A(d1_diff[8]), .Y(N86) );
  CLKINVX1 U415 ( .A(d6_diff[1]), .Y(N258) );
  MX2XL U416 ( .A(d0_diff[10]), .B(N72), .S0(n260), .Y(n89) );
  BUFX4 U417 ( .A(d2_diff[15]), .Y(n265) );
  BUFX8 U418 ( .A(d11_diff[15]), .Y(n255) );
  INVXL U419 ( .A(d1[1]), .Y(n1263) );
  INVXL U420 ( .A(d8[11]), .Y(n1419) );
  INVXL U421 ( .A(d8[13]), .Y(n1451) );
  NAND2XL U422 ( .A(n1169), .B(n63), .Y(n48) );
  NAND2X1 U423 ( .A(n48), .B(n49), .Y(n105) );
  NOR4X1 U424 ( .A(n1183), .B(n106), .C(n105), .D(n1178), .Y(n54) );
  NAND2XL U425 ( .A(n424), .B(n277), .Y(n51) );
  NAND2XL U426 ( .A(n50), .B(n425), .Y(n52) );
  NAND2X1 U427 ( .A(n51), .B(n52), .Y(n317) );
  INVXL U428 ( .A(n424), .Y(n50) );
  MXI2XL U429 ( .A(d3_diff[14]), .B(N175), .S0(n266), .Y(n424) );
  INVX1 U430 ( .A(n317), .Y(n68) );
  BUFX8 U431 ( .A(din[3]), .Y(n270) );
  BUFX8 U432 ( .A(din[8]), .Y(n273) );
  INVXL U433 ( .A(n1188), .Y(n1147) );
  INVXL U434 ( .A(n1110), .Y(n1104) );
  INVXL U435 ( .A(n1110), .Y(n1111) );
  INVXL U436 ( .A(n844), .Y(n848) );
  INVXL U437 ( .A(n838), .Y(n843) );
  OR2XL U438 ( .A(n1212), .B(n1239), .Y(n1216) );
  MX2XL U439 ( .A(n751), .B(n750), .S0(n1212), .Y(n1137) );
  BUFX8 U440 ( .A(din[14]), .Y(n276) );
  OR2XL U441 ( .A(n1089), .B(n1090), .Y(n1106) );
  INVX1 U442 ( .A(n1073), .Y(n821) );
  NAND2XL U443 ( .A(n1171), .B(n1170), .Y(n1177) );
  NOR3XL U444 ( .A(n1205), .B(n1204), .C(n1203), .Y(n1206) );
  NAND2XL U445 ( .A(n1108), .B(n1107), .Y(n1118) );
  INVXL U446 ( .A(n856), .Y(n857) );
  INVXL U447 ( .A(n773), .Y(n1148) );
  NOR2XL U448 ( .A(n97), .B(n112), .Y(n1199) );
  INVXL U449 ( .A(n1197), .Y(n1198) );
  MX2XL U450 ( .A(n1079), .B(n1078), .S0(n1232), .Y(n1107) );
  MX2XL U451 ( .A(n1136), .B(n1135), .S0(n1232), .Y(n1164) );
  INVX1 U452 ( .A(n1134), .Y(n852) );
  NOR2XL U453 ( .A(n1072), .B(n821), .Y(n822) );
  NAND2XL U454 ( .A(n1075), .B(n1077), .Y(n814) );
  OAI21X1 U455 ( .A0(n56), .A1(n57), .B0(n55), .Y(n1193) );
  INVX1 U456 ( .A(n724), .Y(n719) );
  INVX1 U457 ( .A(n1161), .Y(n761) );
  INVXL U458 ( .A(n783), .Y(n784) );
  AO21X4 U459 ( .A0(n775), .A1(n774), .B0(n849), .Y(n59) );
  NAND2XL U460 ( .A(n1137), .B(n1139), .Y(n755) );
  NOR2XL U461 ( .A(n1160), .B(n761), .Y(n770) );
  OR2XL U462 ( .A(n1168), .B(n65), .Y(n100) );
  INVXL U463 ( .A(n1137), .Y(n1138) );
  AO21X4 U464 ( .A0(n98), .A1(n99), .B0(n1178), .Y(n1182) );
  OR2XL U465 ( .A(n1169), .B(n63), .Y(n98) );
  AO21X4 U466 ( .A0(n1177), .A1(n1176), .B0(n105), .Y(n99) );
  INVX1 U467 ( .A(n1149), .Y(n772) );
  OR2XL U468 ( .A(n1214), .B(n1239), .Y(n1224) );
  MX2XL U469 ( .A(n128), .B(n1101), .S0(n1214), .Y(n1109) );
  INVX1 U470 ( .A(n820), .Y(n730) );
  XOR2XL U471 ( .A(n474), .B(n808), .Y(n478) );
  INVXL U472 ( .A(n1075), .Y(n1076) );
  INVX1 U473 ( .A(n1120), .Y(n829) );
  INVXL U474 ( .A(n728), .Y(n707) );
  MX2XL U475 ( .A(n1161), .B(n1160), .S0(n1214), .Y(n1179) );
  MX2XL U476 ( .A(n1073), .B(n1072), .S0(n1214), .Y(n1116) );
  MX2XL U477 ( .A(n1153), .B(n1152), .S0(n1214), .Y(n1167) );
  INVXL U478 ( .A(n725), .Y(n670) );
  INVXL U479 ( .A(n828), .Y(n1119) );
  INVX1 U480 ( .A(n1068), .Y(n835) );
  MX2XL U481 ( .A(n1149), .B(n1148), .S0(n1214), .Y(n1184) );
  MX2XL U482 ( .A(n818), .B(n817), .S0(n1212), .Y(n1072) );
  INVX1 U483 ( .A(n834), .Y(n734) );
  NOR4XL U484 ( .A(n120), .B(n862), .C(n861), .D(n860), .Y(n869) );
  MX2XL U485 ( .A(n1120), .B(n1119), .S0(n1214), .Y(n1123) );
  INVXL U486 ( .A(n762), .Y(n1160) );
  NAND2XL U487 ( .A(n1180), .B(n1179), .Y(n1181) );
  MX2XL U488 ( .A(n1068), .B(n1067), .S0(n1214), .Y(n1126) );
  NAND2XL U489 ( .A(n1124), .B(n1123), .Y(n1127) );
  NAND2XL U490 ( .A(n1152), .B(n780), .Y(n785) );
  INVXL U491 ( .A(n473), .Y(n456) );
  CLKINVX1 U492 ( .A(n1243), .Y(n1232) );
  INVX1 U493 ( .A(n1044), .Y(n1038) );
  INVX1 U494 ( .A(n1027), .Y(n1141) );
  MX2XL U495 ( .A(n1081), .B(n1080), .S0(n1232), .Y(n1089) );
  INVXL U496 ( .A(n1026), .Y(n1140) );
  MX2XL U497 ( .A(n1071), .B(n1070), .S0(n1232), .Y(n1115) );
  MX2XL U498 ( .A(n1151), .B(n1150), .S0(n1232), .Y(n1185) );
  OR3XL U499 ( .A(n149), .B(n148), .C(n974), .Y(n975) );
  INVXL U500 ( .A(n1056), .Y(n1135) );
  INVXL U501 ( .A(n1045), .Y(n976) );
  OR2XL U502 ( .A(n118), .B(n670), .Y(n741) );
  OR3XL U503 ( .A(n157), .B(n141), .C(n661), .Y(n742) );
  NAND2X2 U504 ( .A(n1211), .B(n1210), .Y(n1244) );
  INVX1 U505 ( .A(n748), .Y(n712) );
  MX2XL U506 ( .A(n669), .B(n668), .S0(n1221), .Y(n794) );
  MX2XL U507 ( .A(n150), .B(n805), .S0(n1223), .Y(n1084) );
  INVX1 U508 ( .A(n520), .Y(n517) );
  OR3XL U509 ( .A(n456), .B(n486), .C(n153), .Y(n490) );
  INVX1 U510 ( .A(n365), .Y(n364) );
  INVXL U511 ( .A(n368), .Y(n370) );
  INVX1 U512 ( .A(n681), .Y(n511) );
  AO21XL U513 ( .A0(n366), .A1(n365), .B0(n368), .Y(n375) );
  INVX1 U514 ( .A(n744), .Y(n715) );
  AOI32XL U515 ( .A0(n710), .A1(n170), .A2(n709), .B0(n708), .B1(n753), .Y(
        n711) );
  MX2XL U516 ( .A(n810), .B(n809), .S0(n1223), .Y(n1077) );
  MX2XL U517 ( .A(n754), .B(n170), .S0(n1223), .Y(n840) );
  OR2X4 U518 ( .A(n622), .B(n621), .Y(n634) );
  INVXL U519 ( .A(n612), .Y(n615) );
  NAND4XL U520 ( .A(n638), .B(n637), .C(n636), .D(n635), .Y(n639) );
  OAI21X1 U521 ( .A0(n590), .A1(n589), .B0(n588), .Y(n626) );
  MX2XL U522 ( .A(n135), .B(n779), .S0(n1223), .Y(n1153) );
  MX2XL U523 ( .A(n138), .B(n768), .S0(n1223), .Y(n1130) );
  OAI21XL U524 ( .A0(n1093), .A1(n1092), .B0(n1091), .Y(n1105) );
  CLKINVX1 U525 ( .A(n1202), .Y(n1091) );
  MX2XL U526 ( .A(n74), .B(n757), .S0(n1212), .Y(n1156) );
  MX2XL U527 ( .A(n749), .B(n164), .S0(n1212), .Y(n839) );
  INVXL U528 ( .A(n546), .Y(n547) );
  MX2XL U529 ( .A(n405), .B(n404), .S0(n1237), .Y(n474) );
  MX2XL U530 ( .A(n25), .B(n449), .S0(n1217), .Y(n458) );
  MXI2XL U531 ( .A(n684), .B(n683), .S0(n1215), .Y(n133) );
  MX2XL U532 ( .A(n76), .B(n766), .S0(n1212), .Y(n1129) );
  OR3XL U533 ( .A(n1243), .B(n1231), .C(n1244), .Y(n1491) );
  MX2XL U534 ( .A(n407), .B(n406), .S0(n1217), .Y(n475) );
  INVXL U535 ( .A(n296), .Y(n293) );
  INVXL U536 ( .A(n617), .Y(n618) );
  OR3XL U537 ( .A(n1244), .B(n1230), .C(n1232), .Y(n1493) );
  INVX1 U538 ( .A(n595), .Y(n633) );
  INVX1 U539 ( .A(n827), .Y(n732) );
  MX2XL U540 ( .A(n704), .B(n703), .S0(n1215), .Y(n809) );
  MX2XL U541 ( .A(n417), .B(n416), .S0(n1217), .Y(n818) );
  INVXL U542 ( .A(n824), .Y(n825) );
  MX2XL U543 ( .A(n657), .B(n656), .S0(n1215), .Y(n819) );
  OR2X4 U544 ( .A(n863), .B(n431), .Y(n484) );
  INVX1 U545 ( .A(n432), .Y(n289) );
  INVXL U546 ( .A(n356), .Y(n350) );
  NAND4XL U547 ( .A(n558), .B(n557), .C(n556), .D(n555), .Y(n566) );
  OR3XL U548 ( .A(n207), .B(n168), .C(n199), .Y(n346) );
  AND2XL U549 ( .A(n559), .B(n560), .Y(n564) );
  INVXL U550 ( .A(n366), .Y(n348) );
  AND3XL U551 ( .A(n333), .B(n332), .C(n331), .Y(n145) );
  OR3XL U552 ( .A(n1038), .B(n1058), .C(n174), .Y(n1062) );
  OA22X4 U553 ( .A0(n1036), .A1(n147), .B0(n86), .B1(n1154), .Y(n1060) );
  OA22X4 U554 ( .A0(n149), .A1(n1055), .B0(n1054), .B1(n1065), .Y(n1059) );
  INVX1 U555 ( .A(n933), .Y(n932) );
  AO21XL U556 ( .A0(n934), .A1(n933), .B0(n936), .Y(n944) );
  XNOR2XL U557 ( .A(n1093), .B(n163), .Y(n122) );
  XOR2XL U558 ( .A(n1093), .B(n1088), .Y(n121) );
  AOI32XL U559 ( .A0(n1029), .A1(n204), .A2(n1028), .B0(n1140), .B1(n1027), 
        .Y(n1030) );
  NOR2BXL U560 ( .AN(n335), .B(n209), .Y(n339) );
  NOR2XL U561 ( .A(n206), .B(n632), .Y(n636) );
  INVXL U562 ( .A(n631), .Y(n632) );
  MXI2XL U563 ( .A(n82), .B(n1159), .S0(n1232), .Y(n63) );
  MX2XL U564 ( .A(n1144), .B(n204), .S0(n1232), .Y(n1173) );
  INVX1 U565 ( .A(n889), .Y(n888) );
  INVXL U566 ( .A(n892), .Y(n894) );
  MX2XL U567 ( .A(n971), .B(n970), .S0(n1242), .Y(n1046) );
  MX2XL U568 ( .A(n84), .B(n1163), .S0(n1232), .Y(n1180) );
  MX2XL U569 ( .A(n973), .B(n972), .S0(n1233), .Y(n1047) );
  MXI2XL U570 ( .A(n86), .B(n1155), .S0(n1232), .Y(n64) );
  MX2XL U571 ( .A(n982), .B(n981), .S0(n1242), .Y(n1070) );
  MXI2XL U572 ( .A(n85), .B(n1132), .S0(n1232), .Y(n65) );
  XOR2XL U573 ( .A(n1144), .B(n204), .Y(n1003) );
  MX2XL U574 ( .A(n984), .B(n983), .S0(n1233), .Y(n1071) );
  INVXL U575 ( .A(n925), .Y(n921) );
  MX2XL U576 ( .A(n87), .B(n1122), .S0(n1232), .Y(n1124) );
  INVXL U577 ( .A(n881), .Y(n875) );
  MX2XL U578 ( .A(n1002), .B(n1001), .S0(n1233), .Y(n1057) );
  MX2XL U579 ( .A(n1066), .B(n1065), .S0(n1232), .Y(n1125) );
  OR3XL U580 ( .A(n201), .B(n215), .C(n917), .Y(n918) );
  INVXL U581 ( .A(n945), .Y(n917) );
  INVXL U582 ( .A(n934), .Y(n919) );
  OR3XL U583 ( .A(n205), .B(n214), .C(n872), .Y(n873) );
  INVXL U584 ( .A(n900), .Y(n872) );
  INVXL U585 ( .A(n890), .Y(n874) );
  OA21X4 U586 ( .A0(n154), .A1(n155), .B0(n542), .Y(n497) );
  AND2XL U587 ( .A(n687), .B(n216), .Y(n154) );
  AND3X4 U588 ( .A(n224), .B(n545), .C(n548), .Y(n155) );
  AOI21XL U589 ( .A0(n502), .A1(n501), .B0(n167), .Y(n503) );
  OAI21X1 U590 ( .A0(n513), .A1(n512), .B0(n544), .Y(n554) );
  MX2XL U591 ( .A(n798), .B(n797), .S0(n1223), .Y(n1088) );
  NOR2XL U592 ( .A(n658), .B(n527), .Y(n533) );
  NAND2XL U593 ( .A(n705), .B(n231), .Y(n531) );
  INVX1 U594 ( .A(n516), .Y(n655) );
  INVXL U595 ( .A(n803), .Y(n471) );
  AOI32XL U596 ( .A0(n374), .A1(n375), .A2(n376), .B0(n405), .B1(n373), .Y(
        n379) );
  AO21X4 U597 ( .A0(n218), .A1(n455), .B0(n168), .Y(n369) );
  INVXL U598 ( .A(n687), .Y(n688) );
  INVXL U599 ( .A(n505), .Y(n569) );
  NAND4XL U600 ( .A(n341), .B(n340), .C(n339), .D(n338), .Y(n342) );
  OAI21X1 U601 ( .A0(n291), .A1(n290), .B0(n318), .Y(n330) );
  INVXL U602 ( .A(n705), .Y(n706) );
  MX2XL U603 ( .A(n419), .B(n222), .S0(n1237), .Y(n787) );
  INVX1 U604 ( .A(n584), .Y(n641) );
  INVX1 U605 ( .A(n577), .Y(n700) );
  OA22X4 U606 ( .A0(n360), .A1(n158), .B0(n15), .B1(n435), .Y(n362) );
  NOR2XL U607 ( .A(n697), .B(n495), .Y(n498) );
  INVXL U608 ( .A(n496), .Y(n697) );
  MX2XL U609 ( .A(n576), .B(n700), .S0(n1215), .Y(n747) );
  AOI21XL U610 ( .A0(n586), .A1(n585), .B0(n160), .Y(n589) );
  NAND2XL U611 ( .A(n584), .B(n583), .Y(n585) );
  INVXL U612 ( .A(n582), .Y(n583) );
  AOI21XL U613 ( .A0(n579), .A1(n578), .B0(n166), .Y(n580) );
  NAND2XL U614 ( .A(n577), .B(n576), .Y(n578) );
  INVXL U615 ( .A(n699), .Y(n576) );
  AOI21XL U616 ( .A0(n573), .A1(n572), .B0(n171), .Y(n574) );
  MX2XL U617 ( .A(n692), .B(n217), .S0(n1215), .Y(n778) );
  INVX1 U618 ( .A(n570), .Y(n685) );
  XNOR2X4 U619 ( .A(n435), .B(n15), .Y(n158) );
  INVXL U620 ( .A(n443), .Y(n444) );
  MX2XL U621 ( .A(N211), .B(N178), .S0(n1215), .Y(n660) );
  XOR2XL U622 ( .A(n441), .B(n442), .Y(n320) );
  INVX1 U623 ( .A(n283), .Y(n442) );
  MXI2XL U624 ( .A(n234), .B(n680), .S0(n1215), .Y(n170) );
  XOR2XL U625 ( .A(n219), .B(n428), .Y(n351) );
  OR2X4 U626 ( .A(N79), .B(n430), .Y(n349) );
  MXI2XL U627 ( .A(n219), .B(n428), .S0(n1237), .Y(n164) );
  NOR2XL U628 ( .A(n416), .B(n303), .Y(n308) );
  NAND2XL U629 ( .A(n407), .B(n299), .Y(n306) );
  NAND2XL U630 ( .A(n334), .B(n297), .Y(n298) );
  MX2XL U631 ( .A(n583), .B(n641), .S0(n1215), .Y(n743) );
  MX2XL U632 ( .A(n676), .B(n12), .S0(n1215), .Y(n767) );
  INVXL U633 ( .A(n675), .Y(n676) );
  MX2XL U634 ( .A(n440), .B(n13), .S0(n1237), .Y(n745) );
  NOR2XL U635 ( .A(n656), .B(n602), .Y(n607) );
  INVXL U636 ( .A(n500), .Y(n677) );
  NOR2XL U637 ( .A(n677), .B(n499), .Y(n504) );
  INVXL U638 ( .A(n441), .Y(n282) );
  XNOR2XL U639 ( .A(n377), .B(n415), .Y(n198) );
  INVXL U640 ( .A(n507), .Y(n693) );
  NAND2XL U641 ( .A(n664), .B(n10), .Y(n519) );
  NOR2XL U642 ( .A(n695), .B(n220), .Y(n575) );
  MX2XL U643 ( .A(n243), .B(n427), .S0(n1217), .Y(n459) );
  MX2XL U644 ( .A(n436), .B(n15), .S0(n1237), .Y(n765) );
  INVXL U645 ( .A(n435), .Y(n436) );
  MXI2XL U646 ( .A(n282), .B(n442), .S0(n1217), .Y(n75) );
  INVXL U647 ( .A(n372), .Y(n405) );
  XNOR2XL U648 ( .A(n427), .B(n243), .Y(n326) );
  NAND4XL U649 ( .A(n318), .B(n317), .C(n316), .D(n315), .Y(n327) );
  NOR2XL U650 ( .A(n675), .B(n12), .Y(n581) );
  MX2XL U651 ( .A(n391), .B(n14), .S0(n1237), .Y(n464) );
  INVXL U652 ( .A(n361), .Y(n391) );
  INVX1 U653 ( .A(n288), .Y(n344) );
  MXI2XL U654 ( .A(n438), .B(n18), .S0(n1217), .Y(n76) );
  XOR2XL U655 ( .A(n680), .B(n234), .Y(n620) );
  MXI2XL U656 ( .A(n309), .B(n403), .S0(n1217), .Y(n77) );
  INVXL U657 ( .A(n286), .Y(n287) );
  MX2XL U658 ( .A(n608), .B(n672), .S0(n1215), .Y(n826) );
  MX2XL U659 ( .A(n423), .B(n16), .S0(n1237), .Y(n776) );
  INVXL U660 ( .A(n422), .Y(n423) );
  INVXL U661 ( .A(n367), .Y(n410) );
  NOR2XL U662 ( .A(n437), .B(n18), .Y(n285) );
  INVX1 U663 ( .A(N77), .Y(n429) );
  MX2XL U664 ( .A(n433), .B(n432), .S0(n1217), .Y(n485) );
  MX2XL U665 ( .A(n287), .B(n344), .S0(n1217), .Y(n426) );
  MXI2XL U666 ( .A(n50), .B(n425), .S0(n1217), .Y(n78) );
  MX2XL U667 ( .A(n399), .B(n23), .S0(n1217), .Y(n832) );
  MX2XL U668 ( .A(n649), .B(n22), .S0(n1215), .Y(n833) );
  INVXL U669 ( .A(n300), .Y(n407) );
  MXI2XL U670 ( .A(n1196), .B(n1195), .S0(n1232), .Y(n1201) );
  NAND2XL U671 ( .A(n1199), .B(n1198), .Y(n1200) );
  MXI2XL U672 ( .A(N409), .B(N376), .S0(n1233), .Y(n1196) );
  INVXL U673 ( .A(n377), .Y(n414) );
  NOR2XL U674 ( .A(n691), .B(n217), .Y(n590) );
  NOR2XL U675 ( .A(n424), .B(n425), .Y(n291) );
  INVXL U676 ( .A(n304), .Y(n416) );
  OR3XL U677 ( .A(n236), .B(n919), .C(n918), .Y(n960) );
  INVXL U678 ( .A(n985), .Y(n986) );
  AO21X4 U679 ( .A0(n174), .A1(n1039), .B0(n109), .Y(n1040) );
  INVXL U680 ( .A(n1043), .Y(n1041) );
  OR2XL U681 ( .A(n211), .B(n213), .Y(n914) );
  INVXL U682 ( .A(n987), .Y(n988) );
  OR2X4 U683 ( .A(N343), .B(n1000), .Y(n920) );
  OR3XL U684 ( .A(N310), .B(n953), .C(n932), .Y(n958) );
  NAND2BX2 U685 ( .AN(N409), .B(N440), .Y(n1002) );
  MXI2XL U686 ( .A(n246), .B(n998), .S0(n1242), .Y(n204) );
  MX2XL U687 ( .A(n1013), .B(n237), .S0(n1242), .Y(n1158) );
  AOI32XL U688 ( .A0(n882), .A1(n244), .A2(n881), .B0(n1019), .B1(n880), .Y(
        n883) );
  INVX1 U689 ( .A(n880), .Y(n1018) );
  XNOR2XL U690 ( .A(n1010), .B(n230), .Y(n195) );
  MXI2XL U691 ( .A(n1015), .B(n228), .S0(n1233), .Y(n82) );
  MX2XL U692 ( .A(n963), .B(n235), .S0(n1242), .Y(n1094) );
  MXI2XL U693 ( .A(n965), .B(n240), .S0(n1233), .Y(n83) );
  MX2XL U694 ( .A(n244), .B(n997), .S0(n1233), .Y(n1028) );
  MX2XL U695 ( .A(n1009), .B(n239), .S0(n1242), .Y(n1162) );
  INVXL U696 ( .A(n879), .Y(n1019) );
  MXI2XL U697 ( .A(n1011), .B(n230), .S0(n1233), .Y(n84) );
  MX2XL U698 ( .A(N343), .B(N310), .S0(n1242), .Y(n1194) );
  MX2XL U699 ( .A(n1005), .B(n238), .S0(n1242), .Y(n1131) );
  MX2XL U700 ( .A(n996), .B(n233), .S0(n1242), .Y(n1034) );
  MXI2XL U701 ( .A(n1007), .B(n232), .S0(n1233), .Y(n85) );
  MX2XL U702 ( .A(n990), .B(n227), .S0(n1242), .Y(n1154) );
  MX2XL U703 ( .A(n967), .B(n247), .S0(n1242), .Y(n1121) );
  INVXL U704 ( .A(n946), .Y(n981) );
  MXI2XL U705 ( .A(n992), .B(n223), .S0(n1233), .Y(n86) );
  MX2XL U706 ( .A(n994), .B(n226), .S0(n1233), .Y(n1033) );
  INVXL U707 ( .A(n993), .Y(n994) );
  MXI2XL U708 ( .A(n969), .B(n248), .S0(n1233), .Y(n87) );
  INVXL U709 ( .A(n901), .Y(n983) );
  INVXL U710 ( .A(n896), .Y(n973) );
  INVXL U711 ( .A(n926), .Y(n998) );
  INVXL U712 ( .A(n882), .Y(n997) );
  MX2XL U713 ( .A(n961), .B(n250), .S0(n1242), .Y(n1065) );
  MX2XL U714 ( .A(n916), .B(n249), .S0(n1233), .Y(n1066) );
  INVXL U715 ( .A(n905), .Y(n916) );
  INVXL U716 ( .A(n642), .Y(n644) );
  MXI2XL U717 ( .A(d1_diff[1]), .B(N96), .S0(n259), .Y(n371) );
  MXI2X1 U718 ( .A(d6_diff[11]), .B(N271), .S0(n261), .Y(n701) );
  INVX2 U719 ( .A(d6_diff[7]), .Y(N252) );
  MX2XL U720 ( .A(d7_diff[8]), .B(N301), .S0(n262), .Y(n224) );
  OAI21X1 U721 ( .A0(n514), .A1(n565), .B0(n556), .Y(n518) );
  MXI2XL U722 ( .A(d6_diff[8]), .B(N268), .S0(n261), .Y(n545) );
  MXI2XL U723 ( .A(d1_diff[2]), .B(N97), .S0(n259), .Y(n418) );
  MXI2XL U724 ( .A(d7_diff[12]), .B(N305), .S0(n262), .Y(n499) );
  MXI2XL U725 ( .A(d1_diff[11]), .B(N106), .S0(n259), .Y(n439) );
  MXI2XL U726 ( .A(d7_diff[2]), .B(N295), .S0(n262), .Y(n521) );
  INVX1 U727 ( .A(d1_diff[13]), .Y(N81) );
  INVX2 U728 ( .A(d6_diff[13]), .Y(N246) );
  MXI2XL U729 ( .A(d6_diff[2]), .B(N262), .S0(n261), .Y(n522) );
  INVX1 U730 ( .A(d1_diff[12]), .Y(N82) );
  MXI2XL U731 ( .A(d2_diff[8]), .B(N136), .S0(n265), .Y(n319) );
  INVXL U732 ( .A(n262), .Y(N277) );
  INVX1 U733 ( .A(n345), .Y(n455) );
  MXI2XL U734 ( .A(d5_diff[9]), .B(N236), .S0(n263), .Y(n571) );
  MXI2XL U735 ( .A(d7_diff[5]), .B(N298), .S0(n262), .Y(n527) );
  INVX1 U736 ( .A(d5_diff[14]), .Y(N212) );
  CLKINVX2 U737 ( .A(d5_diff[11]), .Y(N215) );
  MXI2XL U738 ( .A(d5_diff[10]), .B(N237), .S0(n263), .Y(n695) );
  CLKINVX2 U739 ( .A(d1_diff[2]), .Y(N92) );
  MXI2XL U740 ( .A(d7_diff[7]), .B(N300), .S0(n262), .Y(n536) );
  INVXL U741 ( .A(n264), .Y(N178) );
  MXI2XL U742 ( .A(d0_diff[8]), .B(N70), .S0(n260), .Y(n357) );
  MXI2XL U743 ( .A(d3_diff[2]), .B(N163), .S0(n266), .Y(n420) );
  INVXL U744 ( .A(n263), .Y(N211) );
  INVX1 U745 ( .A(n277), .Y(n425) );
  MXI2XL U746 ( .A(d6_diff[5]), .B(N265), .S0(n261), .Y(n528) );
  MXI2XL U747 ( .A(d7_diff[6]), .B(N299), .S0(n262), .Y(n673) );
  OAI21X1 U748 ( .A0(n591), .A1(n627), .B0(n629), .Y(n592) );
  MX2XL U749 ( .A(d0_diff[2]), .B(N64), .S0(n260), .Y(n222) );
  MXI2XL U750 ( .A(d2_diff[1]), .B(N129), .S0(n265), .Y(n412) );
  MXI2XL U751 ( .A(d4_diff[8]), .B(N202), .S0(n264), .Y(n616) );
  MXI2XL U752 ( .A(d6_diff[7]), .B(N267), .S0(n261), .Y(n537) );
  MXI2XL U753 ( .A(d1_diff[6]), .B(N101), .S0(n259), .Y(n400) );
  MX2XL U754 ( .A(d5_diff[8]), .B(N235), .S0(n263), .Y(n234) );
  MXI2XL U755 ( .A(d6_diff[6]), .B(N266), .S0(n261), .Y(n535) );
  MXI2XL U756 ( .A(d5_diff[2]), .B(N229), .S0(n263), .Y(n666) );
  MX2XL U757 ( .A(d4_diff[2]), .B(N196), .S0(n264), .Y(n229) );
  MXI2XL U758 ( .A(d4_diff[1]), .B(N195), .S0(n264), .Y(n662) );
  MXI2XL U759 ( .A(d0_diff[4]), .B(N66), .S0(n260), .Y(n373) );
  MXI2XL U760 ( .A(d1_diff[7]), .B(N102), .S0(n259), .Y(n396) );
  INVXL U761 ( .A(n260), .Y(N46) );
  MXI2XL U762 ( .A(d4_diff[4]), .B(N198), .S0(n264), .Y(n598) );
  MXI2XL U763 ( .A(d5_diff[4]), .B(N231), .S0(n263), .Y(n599) );
  MXI2XL U764 ( .A(d2_diff[6]), .B(N134), .S0(n265), .Y(n310) );
  MXI2XL U765 ( .A(d3_diff[6]), .B(N167), .S0(n266), .Y(n402) );
  MXI2XL U766 ( .A(d5_diff[5]), .B(N232), .S0(n263), .Y(n602) );
  MXI2XL U767 ( .A(d3_diff[7]), .B(N168), .S0(n266), .Y(n398) );
  MXI2XL U768 ( .A(d4_diff[5]), .B(N199), .S0(n264), .Y(n603) );
  MXI2XL U769 ( .A(d4_diff[6]), .B(N200), .S0(n264), .Y(n609) );
  MX2XL U770 ( .A(d0_diff[6]), .B(N68), .S0(n260), .Y(n245) );
  MXI2XL U771 ( .A(n266), .B(n265), .S0(n1217), .Y(n864) );
  MXI2XL U772 ( .A(d5_diff[6]), .B(N233), .S0(n263), .Y(n671) );
  MXI2XL U773 ( .A(d5_diff[7]), .B(N234), .S0(n263), .Y(n648) );
  MXI2XL U774 ( .A(d9_diff[9]), .B(N368), .S0(n256), .Y(n923) );
  MXI2XL U775 ( .A(d9_diff[1]), .B(N360), .S0(n256), .Y(n940) );
  CLKINVX2 U776 ( .A(d9_diff[1]), .Y(N357) );
  MX2XL U777 ( .A(d0_diff[7]), .B(N69), .S0(n260), .Y(n242) );
  MX2XL U778 ( .A(d9_diff[8]), .B(N367), .S0(n256), .Y(n246) );
  MXI2XL U779 ( .A(d9_diff[13]), .B(N372), .S0(n256), .Y(n995) );
  MX2XL U780 ( .A(n1024), .B(n21), .S0(n1233), .Y(n1085) );
  MXI2XL U781 ( .A(d9_diff[2]), .B(N361), .S0(n256), .Y(n962) );
  MXI2XL U782 ( .A(d9_diff[11]), .B(N370), .S0(n256), .Y(n1008) );
  MXI2XL U783 ( .A(d8_diff[1]), .B(N327), .S0(n257), .Y(n935) );
  MXI2XL U784 ( .A(d9_diff[12]), .B(N371), .S0(n256), .Y(n1004) );
  MXI2XL U785 ( .A(d11_diff[1]), .B(N426), .S0(n255), .Y(n895) );
  AO21XL U786 ( .A0(n241), .A1(n21), .B0(n205), .Y(n893) );
  INVXL U787 ( .A(n256), .Y(N343) );
  MXI2XL U788 ( .A(d10_diff[1]), .B(N393), .S0(n258), .Y(n891) );
  MXI2XL U789 ( .A(d9_diff[4]), .B(N363), .S0(n256), .Y(n941) );
  MX2X1 U790 ( .A(d11_diff[8]), .B(N433), .S0(n255), .Y(n244) );
  MXI2XL U791 ( .A(d9_diff[5]), .B(N364), .S0(n256), .Y(n947) );
  MXI2XL U792 ( .A(d9_diff[6]), .B(N365), .S0(n256), .Y(n966) );
  MXI2XL U793 ( .A(d9_diff[7]), .B(N366), .S0(n256), .Y(n950) );
  MXI2XL U794 ( .A(d6_diff[0]), .B(N260), .S0(n261), .Y(n514) );
  MXI2XL U795 ( .A(d2_diff[0]), .B(N128), .S0(n265), .Y(n292) );
  MXI2XL U796 ( .A(d4_diff[0]), .B(N194), .S0(n264), .Y(n591) );
  MXI2XL U797 ( .A(d3_diff[0]), .B(N161), .S0(n266), .Y(n451) );
  MXI2XL U798 ( .A(d5_diff[0]), .B(N227), .S0(n263), .Y(n645) );
  BUFX8 U799 ( .A(d8_diff[15]), .Y(n257) );
  MXI2XL U800 ( .A(d8_diff[0]), .B(N326), .S0(n257), .Y(n937) );
  MXI2XL U801 ( .A(d11_diff[0]), .B(N425), .S0(n255), .Y(n1023) );
  INVXL U802 ( .A(d9[3]), .Y(n1293) );
  INVXL U803 ( .A(d0[3]), .Y(n1294) );
  INVXL U804 ( .A(d1[3]), .Y(n1295) );
  INVXL U805 ( .A(d9[4]), .Y(n1309) );
  INVXL U806 ( .A(d1[4]), .Y(n1311) );
  INVXL U807 ( .A(d0[1]), .Y(n1262) );
  INVXL U808 ( .A(d9[2]), .Y(n1277) );
  INVXL U809 ( .A(d0[2]), .Y(n1278) );
  INVXL U810 ( .A(d1[2]), .Y(n1279) );
  INVXL U811 ( .A(d9[5]), .Y(n1325) );
  INVXL U812 ( .A(d0[5]), .Y(n1326) );
  INVXL U813 ( .A(d1[5]), .Y(n1327) );
  INVXL U814 ( .A(d9[6]), .Y(n1341) );
  INVXL U815 ( .A(d1[6]), .Y(n1343) );
  INVXL U816 ( .A(d9[7]), .Y(n1357) );
  INVXL U817 ( .A(d1[7]), .Y(n1359) );
  INVXL U818 ( .A(d9[8]), .Y(n1373) );
  INVXL U819 ( .A(d0[8]), .Y(n1374) );
  INVXL U820 ( .A(d1[8]), .Y(n1375) );
  INVXL U821 ( .A(d9[9]), .Y(n1389) );
  INVXL U822 ( .A(d1[9]), .Y(n1391) );
  INVXL U823 ( .A(d9[0]), .Y(n1245) );
  INVXL U824 ( .A(d1[0]), .Y(n1247) );
  INVXL U825 ( .A(d10[10]), .Y(n1404) );
  INVXL U826 ( .A(d8[10]), .Y(n1403) );
  INVXL U827 ( .A(d11[11]), .Y(n1418) );
  INVXL U828 ( .A(d11[12]), .Y(n1434) );
  INVXL U829 ( .A(d10[12]), .Y(n1436) );
  INVXL U830 ( .A(d8[12]), .Y(n1435) );
  INVXL U831 ( .A(d11[13]), .Y(n1450) );
  INVXL U832 ( .A(d10[14]), .Y(n1468) );
  INVXL U833 ( .A(d8[14]), .Y(n1467) );
  INVXL U834 ( .A(d0[10]), .Y(n1406) );
  INVXL U835 ( .A(d0[11]), .Y(n1422) );
  INVXL U836 ( .A(d0[12]), .Y(n1438) );
  INVXL U837 ( .A(d0[13]), .Y(n1454) );
  INVXL U838 ( .A(d0[14]), .Y(n1470) );
  INVXL U839 ( .A(d1[10]), .Y(n1407) );
  INVXL U840 ( .A(d1[12]), .Y(n1439) );
  INVXL U841 ( .A(d8[3]), .Y(n1291) );
  INVXL U842 ( .A(d8[6]), .Y(n1339) );
  INVXL U843 ( .A(d8[0]), .Y(n1235) );
  INVXL U844 ( .A(d10[0]), .Y(n1236) );
  INVXL U845 ( .A(d1[11]), .Y(n1423) );
  INVXL U846 ( .A(d1[13]), .Y(n1455) );
  INVXL U847 ( .A(d1[14]), .Y(n1471) );
  INVXL U848 ( .A(d10[3]), .Y(n1292) );
  INVXL U849 ( .A(d10[6]), .Y(n1340) );
  INVXL U850 ( .A(d8[4]), .Y(n1307) );
  INVXL U851 ( .A(d8[5]), .Y(n1323) );
  INVXL U852 ( .A(d8[7]), .Y(n1355) );
  INVXL U853 ( .A(d8[8]), .Y(n1371) );
  INVXL U854 ( .A(d8[9]), .Y(n1387) );
  INVXL U855 ( .A(d9[10]), .Y(n1405) );
  INVXL U856 ( .A(d9[12]), .Y(n1437) );
  INVXL U857 ( .A(d10[4]), .Y(n1308) );
  INVXL U858 ( .A(d10[5]), .Y(n1324) );
  INVXL U859 ( .A(d10[7]), .Y(n1356) );
  INVXL U860 ( .A(d10[8]), .Y(n1372) );
  INVXL U861 ( .A(d10[9]), .Y(n1388) );
  INVXL U862 ( .A(d6[3]), .Y(n1288) );
  INVXL U863 ( .A(d6[6]), .Y(n1336) );
  INVXL U864 ( .A(d9[11]), .Y(n1421) );
  INVXL U865 ( .A(d9[13]), .Y(n1453) );
  INVXL U866 ( .A(d9[14]), .Y(n1469) );
  INVXL U867 ( .A(d9[15]), .Y(n1494) );
  INVXL U868 ( .A(d4[1]), .Y(n1255) );
  INVXL U869 ( .A(d7[6]), .Y(n1337) );
  INVXL U870 ( .A(d7[10]), .Y(n1401) );
  INVXL U871 ( .A(d7[12]), .Y(n1433) );
  INVXL U872 ( .A(d7[1]), .Y(n1257) );
  INVXL U873 ( .A(d7[2]), .Y(n1273) );
  INVXL U874 ( .A(d11[3]), .Y(n1290) );
  INVXL U875 ( .A(d11[4]), .Y(n1306) );
  INVXL U876 ( .A(d11[5]), .Y(n1322) );
  INVXL U877 ( .A(d11[6]), .Y(n1338) );
  INVXL U878 ( .A(d11[7]), .Y(n1354) );
  INVXL U879 ( .A(d6[4]), .Y(n1304) );
  INVXL U880 ( .A(d6[5]), .Y(n1320) );
  INVXL U881 ( .A(d6[7]), .Y(n1352) );
  INVXL U882 ( .A(d6[8]), .Y(n1368) );
  INVXL U883 ( .A(d6[10]), .Y(n1400) );
  INVXL U884 ( .A(d6[12]), .Y(n1432) );
  INVXL U885 ( .A(d6[14]), .Y(n1464) );
  INVXL U886 ( .A(d5[3]), .Y(n1285) );
  INVXL U887 ( .A(d5[4]), .Y(n1301) );
  INVXL U888 ( .A(d5[5]), .Y(n1317) );
  INVXL U889 ( .A(d5[6]), .Y(n1333) );
  INVXL U890 ( .A(d5[7]), .Y(n1349) );
  INVXL U891 ( .A(d6[9]), .Y(n1384) );
  INVXL U892 ( .A(d6[11]), .Y(n1416) );
  INVXL U893 ( .A(d6[13]), .Y(n1448) );
  INVXL U894 ( .A(d6[15]), .Y(n1484) );
  INVXL U895 ( .A(d7[0]), .Y(n1229) );
  INVXL U896 ( .A(d7[3]), .Y(n1289) );
  INVXL U897 ( .A(d7[4]), .Y(n1305) );
  INVXL U898 ( .A(d7[5]), .Y(n1321) );
  INVXL U899 ( .A(d7[7]), .Y(n1353) );
  INVXL U900 ( .A(d7[8]), .Y(n1369) );
  INVXL U901 ( .A(d7[9]), .Y(n1385) );
  INVXL U902 ( .A(d7[11]), .Y(n1417) );
  INVXL U903 ( .A(d7[13]), .Y(n1449) );
  INVXL U904 ( .A(d7[14]), .Y(n1465) );
  INVXL U905 ( .A(d5[2]), .Y(n1269) );
  INVXL U906 ( .A(d11[2]), .Y(n1274) );
  INVXL U907 ( .A(d11[8]), .Y(n1370) );
  INVXL U908 ( .A(d11[9]), .Y(n1386) );
  INVXL U909 ( .A(d5[8]), .Y(n1365) );
  INVXL U910 ( .A(d5[9]), .Y(n1381) );
  INVXL U911 ( .A(d5[10]), .Y(n1397) );
  INVXL U912 ( .A(d5[11]), .Y(n1413) );
  INVXL U913 ( .A(d5[12]), .Y(n1429) );
  INVXL U914 ( .A(d5[13]), .Y(n1445) );
  INVXL U915 ( .A(d5[14]), .Y(n1461) );
  INVXL U916 ( .A(d5[15]), .Y(n1478) );
  INVXL U917 ( .A(d4[0]), .Y(n1227) );
  INVXL U918 ( .A(d4[3]), .Y(n1287) );
  INVXL U919 ( .A(d4[6]), .Y(n1335) );
  INVXL U920 ( .A(d8[2]), .Y(n1275) );
  INVXL U921 ( .A(d4[4]), .Y(n1303) );
  INVXL U922 ( .A(d4[5]), .Y(n1319) );
  INVXL U923 ( .A(d4[7]), .Y(n1351) );
  INVXL U924 ( .A(d4[8]), .Y(n1367) );
  INVXL U925 ( .A(d4[10]), .Y(n1399) );
  INVXL U926 ( .A(d4[12]), .Y(n1431) );
  INVXL U927 ( .A(d4[14]), .Y(n1463) );
  INVXL U928 ( .A(d2[1]), .Y(n1254) );
  INVXL U929 ( .A(d2[0]), .Y(n1220) );
  INVXL U930 ( .A(d2[2]), .Y(n1270) );
  INVXL U931 ( .A(d2[3]), .Y(n1286) );
  INVXL U932 ( .A(d2[4]), .Y(n1302) );
  INVXL U933 ( .A(d2[5]), .Y(n1318) );
  INVXL U934 ( .A(d2[6]), .Y(n1334) );
  INVXL U935 ( .A(d2[7]), .Y(n1350) );
  INVXL U936 ( .A(d2[8]), .Y(n1366) );
  INVXL U937 ( .A(d2[9]), .Y(n1382) );
  INVXL U938 ( .A(d2[10]), .Y(n1398) );
  INVXL U939 ( .A(d2[11]), .Y(n1414) );
  INVXL U940 ( .A(d2[12]), .Y(n1430) );
  INVXL U941 ( .A(d2[13]), .Y(n1446) );
  INVXL U942 ( .A(d2[14]), .Y(n1462) );
  INVXL U943 ( .A(d4[9]), .Y(n1383) );
  INVXL U944 ( .A(d4[11]), .Y(n1415) );
  INVXL U945 ( .A(d4[13]), .Y(n1447) );
  INVXL U946 ( .A(d4[15]), .Y(n1482) );
  INVXL U947 ( .A(d10[2]), .Y(n1276) );
  INVXL U948 ( .A(d3[6]), .Y(n1332) );
  INVXL U949 ( .A(d3[10]), .Y(n1396) );
  INVXL U950 ( .A(d3[12]), .Y(n1428) );
  INVXL U951 ( .A(d6[2]), .Y(n1272) );
  INVXL U952 ( .A(d3[2]), .Y(n1268) );
  INVXL U953 ( .A(d3[0]), .Y(n1218) );
  INVXL U954 ( .A(d3[1]), .Y(n1252) );
  INVXL U955 ( .A(d3[3]), .Y(n1284) );
  INVXL U956 ( .A(d3[4]), .Y(n1300) );
  INVXL U957 ( .A(d3[5]), .Y(n1316) );
  INVXL U958 ( .A(d3[7]), .Y(n1348) );
  INVXL U959 ( .A(d3[8]), .Y(n1364) );
  INVXL U960 ( .A(d3[9]), .Y(n1380) );
  INVXL U961 ( .A(d3[11]), .Y(n1412) );
  INVXL U962 ( .A(d3[13]), .Y(n1444) );
  INVXL U963 ( .A(d3[14]), .Y(n1460) );
  INVXL U964 ( .A(d3[15]), .Y(n1476) );
  INVXL U965 ( .A(d6[0]), .Y(n1228) );
  INVXL U966 ( .A(d11[1]), .Y(n1258) );
  INVXL U967 ( .A(d11[0]), .Y(n1234) );
  INVXL U968 ( .A(d4[2]), .Y(n1271) );
  INVXL U969 ( .A(d5[1]), .Y(n1253) );
  INVXL U970 ( .A(d5[0]), .Y(n1219) );
  AOI21XL U971 ( .A0(n837), .A1(n859), .B0(n836), .Y(n853) );
  MX2XL U972 ( .A(n782), .B(n781), .S0(n1212), .Y(n1133) );
  OR2X1 U973 ( .A(n1115), .B(n1074), .Y(n94) );
  XOR2X1 U974 ( .A(n1175), .B(n1145), .Y(n1146) );
  XNOR2X1 U975 ( .A(n1090), .B(n1089), .Y(n1202) );
  OAI21XL U976 ( .A0(n813), .A1(n812), .B0(n811), .Y(n815) );
  XNOR2X1 U977 ( .A(n1166), .B(n1164), .Y(n1188) );
  CLKBUFX3 U978 ( .A(din[12]), .Y(n275) );
  XNOR2X1 U979 ( .A(n1184), .B(n1185), .Y(n1183) );
  OR4X1 U980 ( .A(n849), .B(n848), .C(n847), .D(n846), .Y(n850) );
  XOR2X1 U981 ( .A(n773), .B(n772), .Y(n849) );
  XNOR2X1 U982 ( .A(n1108), .B(n1107), .Y(n1203) );
  CLKMX2X2 U983 ( .A(n808), .B(n807), .S0(n1212), .Y(n1075) );
  XOR2X1 U984 ( .A(n1142), .B(n1143), .Y(n841) );
  XNOR2X1 U985 ( .A(n1133), .B(n852), .Y(n96) );
  XOR2X1 U986 ( .A(n1116), .B(n1115), .Y(n97) );
  XOR2X1 U987 ( .A(n1072), .B(n821), .Y(n865) );
  NOR2X1 U988 ( .A(n1202), .B(n6), .Y(n1207) );
  NOR2BX1 U989 ( .AN(n865), .B(n866), .Y(n867) );
  CLKINVX1 U990 ( .A(n1116), .Y(n1074) );
  CLKINVX1 U991 ( .A(n1126), .Y(n1069) );
  NAND2X1 U992 ( .A(n1166), .B(n1165), .Y(n1192) );
  CLKINVX1 U993 ( .A(n1164), .Y(n1165) );
  OAI32X1 U994 ( .A0(n19), .A1(n1205), .A2(n1109), .B0(n1103), .B1(n1102), .Y(
        n1110) );
  CLKINVX1 U995 ( .A(n1203), .Y(n1113) );
  NAND3X1 U996 ( .A(n1106), .B(n1105), .C(n1104), .Y(n1114) );
  CLKINVX1 U997 ( .A(n540), .Y(n544) );
  NOR2X1 U998 ( .A(n1167), .B(n64), .Y(n1190) );
  AOI21X1 U999 ( .A0(n1187), .A1(n1186), .B0(n106), .Y(n1189) );
  NAND2X1 U1000 ( .A(n1185), .B(n1184), .Y(n1186) );
  CLKMX2X2 U1001 ( .A(n1139), .B(n1138), .S0(n1214), .Y(n1171) );
  NAND3X1 U1002 ( .A(n1175), .B(n1174), .C(n1173), .Y(n1176) );
  OR3X2 U1003 ( .A(n1215), .B(n1226), .C(n1224), .Y(n1479) );
  XNOR2X1 U1004 ( .A(n1179), .B(n1180), .Y(n1178) );
  XOR2X1 U1005 ( .A(n457), .B(n751), .Y(n460) );
  CLKMX2X2 U1006 ( .A(n1084), .B(n1083), .S0(n1214), .Y(n1090) );
  CLKINVX1 U1007 ( .A(n1082), .Y(n1083) );
  NAND2X1 U1008 ( .A(n102), .B(n103), .Y(n486) );
  XNOR2X1 U1009 ( .A(n1167), .B(n64), .Y(n106) );
  CLKINVX1 U1010 ( .A(n794), .Y(n718) );
  CLKMX2X2 U1011 ( .A(n1130), .B(n1129), .S0(n1214), .Y(n1168) );
  CLKINVX1 U1012 ( .A(n859), .Y(n862) );
  CLKINVX1 U1013 ( .A(n1173), .Y(n1145) );
  CLKINVX1 U1014 ( .A(n457), .Y(n750) );
  XNOR2X1 U1015 ( .A(n1137), .B(n1139), .Y(n842) );
  NAND2X1 U1016 ( .A(n1129), .B(n771), .Y(n774) );
  NAND2X1 U1017 ( .A(n1156), .B(n760), .Y(n763) );
  XNOR2X1 U1018 ( .A(n1082), .B(n1084), .Y(n866) );
  XNOR2X1 U1019 ( .A(n1152), .B(n1153), .Y(n844) );
  CLKMX2X2 U1020 ( .A(n1077), .B(n1076), .S0(n1214), .Y(n1108) );
  XOR2X1 U1021 ( .A(n1101), .B(n128), .Y(n854) );
  XNOR2X1 U1022 ( .A(n1075), .B(n1077), .Y(n860) );
  CLKINVX1 U1023 ( .A(n839), .Y(n1142) );
  MX2XL U1024 ( .A(n784), .B(n133), .S0(n1223), .Y(n1134) );
  XOR2X1 U1025 ( .A(n762), .B(n761), .Y(n846) );
  XNOR2X1 U1026 ( .A(n1129), .B(n1130), .Y(n838) );
  XOR2X1 U1027 ( .A(n1067), .B(n835), .Y(n859) );
  CLKINVX1 U1028 ( .A(n752), .Y(n708) );
  XNOR2X1 U1029 ( .A(n817), .B(n479), .Y(n108) );
  MX2XL U1030 ( .A(n820), .B(n819), .S0(n1223), .Y(n1073) );
  OR3X2 U1031 ( .A(n132), .B(n130), .C(n408), .Y(n409) );
  XNOR2X1 U1032 ( .A(n1123), .B(n1124), .Y(n1197) );
  CLKINVX1 U1033 ( .A(n1081), .Y(n1042) );
  XNOR2X1 U1034 ( .A(n783), .B(n133), .Y(n110) );
  CLKINVX1 U1035 ( .A(n474), .Y(n807) );
  CLKINVX1 U1036 ( .A(n475), .Y(n808) );
  XNOR2X1 U1037 ( .A(n819), .B(n730), .Y(n111) );
  XOR2X1 U1038 ( .A(n1126), .B(n1125), .Y(n112) );
  CLKINVX1 U1039 ( .A(n710), .Y(n689) );
  XOR2X1 U1040 ( .A(n1026), .B(n1141), .Y(n1029) );
  CLKINVX1 U1041 ( .A(n619), .Y(n588) );
  CLKINVX1 U1042 ( .A(n818), .Y(n479) );
  CLKINVX1 U1043 ( .A(n1157), .Y(n760) );
  CLKINVX1 U1044 ( .A(n1130), .Y(n771) );
  XOR2X1 U1045 ( .A(n1046), .B(n1079), .Y(n1050) );
  CLKINVX1 U1046 ( .A(n1047), .Y(n1079) );
  CLKINVX1 U1047 ( .A(n484), .Y(n781) );
  OR2X1 U1048 ( .A(n1022), .B(n1021), .Y(n1058) );
  OR4X1 U1049 ( .A(n144), .B(n142), .C(n140), .D(n1020), .Y(n1021) );
  OR4X1 U1050 ( .A(n147), .B(n146), .C(n1003), .D(n113), .Y(n1022) );
  CLKINVX1 U1051 ( .A(n1029), .Y(n1020) );
  XNOR2X1 U1052 ( .A(n1056), .B(n1136), .Y(n113) );
  CLKINVX1 U1053 ( .A(n1153), .Y(n780) );
  CLKINVX1 U1054 ( .A(n1046), .Y(n1078) );
  XNOR2X1 U1055 ( .A(n1070), .B(n1051), .Y(n114) );
  CLKINVX1 U1056 ( .A(n1071), .Y(n1051) );
  CLKINVX1 U1057 ( .A(n1057), .Y(n1136) );
  CLKINVX1 U1058 ( .A(n1050), .Y(n974) );
  OR3X2 U1059 ( .A(n139), .B(n736), .C(n707), .Y(n740) );
  OAI2BB1X1 U1060 ( .A0N(n511), .A1N(n682), .B0(n552), .Y(n540) );
  AND3X4 U1061 ( .A(n806), .B(n115), .C(n116), .Y(n816) );
  OR2X1 U1062 ( .A(n511), .B(n682), .Y(n552) );
  NAND4X1 U1063 ( .A(n1209), .B(n1208), .C(n1207), .D(n1206), .Y(n1210) );
  NAND3X2 U1064 ( .A(n1193), .B(n1192), .C(n1191), .Y(n1211) );
  MXI2XL U1065 ( .A(n121), .B(n122), .S0(n1214), .Y(n1208) );
  XNOR2X1 U1066 ( .A(n804), .B(n150), .Y(n118) );
  OR4XL U1067 ( .A(n1238), .B(n1241), .C(n1237), .D(n1239), .Y(n1499) );
  CLKINVX1 U1068 ( .A(n472), .Y(n470) );
  OAI32X1 U1069 ( .A0(n253), .A1(n73), .A2(n787), .B0(n467), .B1(n789), .Y(
        n472) );
  CLKINVX1 U1070 ( .A(n790), .Y(n467) );
  OAI2BB1X1 U1071 ( .A0N(n251), .A1N(n473), .B0(n470), .Y(n476) );
  MXI2XL U1072 ( .A(n121), .B(n122), .S0(n1214), .Y(n1092) );
  OAI2BB1X1 U1073 ( .A0N(n587), .A1N(n684), .B0(n624), .Y(n619) );
  NAND3X1 U1074 ( .A(n626), .B(n625), .C(n624), .Y(n640) );
  XNOR2X1 U1075 ( .A(n752), .B(n753), .Y(n710) );
  OAI2BB1X1 U1076 ( .A0N(n165), .A1N(n349), .B0(n382), .Y(n385) );
  XOR2X1 U1077 ( .A(n787), .B(n73), .Y(n473) );
  OR4XL U1078 ( .A(n1241), .B(n1240), .C(n1239), .D(n1238), .Y(n1497) );
  XOR2X1 U1079 ( .A(n1099), .B(n1037), .Y(n1044) );
  OAI32X1 U1080 ( .A0(n1094), .A1(n83), .A2(n1038), .B0(n1037), .B1(n1099), 
        .Y(n1043) );
  OA22X1 U1081 ( .A0(n148), .A1(n1053), .B0(n87), .B1(n1121), .Y(n1055) );
  OAI2BB1X1 U1082 ( .A0N(n162), .A1N(n920), .B0(n952), .Y(n955) );
  XNOR2X1 U1083 ( .A(n1088), .B(n163), .Y(n120) );
  OAI2BB1X1 U1084 ( .A0N(n877), .A1N(n1002), .B0(n907), .Y(n910) );
  CLKINVX1 U1085 ( .A(n1001), .Y(n877) );
  CLKINVX1 U1086 ( .A(n1100), .Y(n1037) );
  CLKINVX1 U1087 ( .A(n1158), .Y(n1159) );
  CLKINVX1 U1088 ( .A(n1094), .Y(n1095) );
  CLKINVX1 U1089 ( .A(n683), .Y(n587) );
  CLKINVX1 U1090 ( .A(n1154), .Y(n1155) );
  XNOR2X1 U1091 ( .A(n426), .B(n493), .Y(n123) );
  CLKINVX1 U1092 ( .A(n464), .Y(n493) );
  CLKINVX1 U1093 ( .A(n1162), .Y(n1163) );
  XOR2X1 U1094 ( .A(n749), .B(n164), .Y(n434) );
  XNOR2X1 U1095 ( .A(n745), .B(n75), .Y(n124) );
  XOR2X1 U1096 ( .A(n793), .B(n718), .Y(n725) );
  CLKINVX1 U1097 ( .A(n778), .Y(n779) );
  CLKINVX1 U1098 ( .A(n804), .Y(n805) );
  CLKINVX1 U1099 ( .A(n787), .Y(n788) );
  CLKINVX1 U1100 ( .A(n776), .Y(n777) );
  XNOR2X1 U1101 ( .A(n758), .B(n125), .Y(n126) );
  CLKINVX1 U1102 ( .A(n1131), .Y(n1132) );
  XNOR2X1 U1103 ( .A(n765), .B(n76), .Y(n127) );
  XNOR2X1 U1104 ( .A(n776), .B(n78), .Y(n129) );
  CLKINVX1 U1105 ( .A(n314), .Y(n318) );
  CLKINVX1 U1106 ( .A(n745), .Y(n746) );
  CLKINVX1 U1107 ( .A(n767), .Y(n768) );
  CLKINVX1 U1108 ( .A(n758), .Y(n759) );
  CLKINVX1 U1109 ( .A(n765), .Y(n766) );
  MX2XL U1110 ( .A(n748), .B(n747), .S0(n1223), .Y(n1161) );
  MX2XL U1111 ( .A(n744), .B(n743), .S0(n1223), .Y(n1149) );
  MX2XL U1112 ( .A(n415), .B(n414), .S0(n1237), .Y(n817) );
  XNOR2X1 U1113 ( .A(n809), .B(n810), .Y(n728) );
  XNOR2X1 U1114 ( .A(n747), .B(n712), .Y(n131) );
  XOR2X1 U1115 ( .A(n754), .B(n170), .Y(n690) );
  CLKINVX1 U1116 ( .A(n1121), .Y(n1122) );
  MX2XL U1117 ( .A(n827), .B(n826), .S0(n1223), .Y(n1120) );
  XNOR2X1 U1118 ( .A(n778), .B(n135), .Y(n134) );
  MXI2XL U1119 ( .A(n694), .B(n693), .S0(n1221), .Y(n135) );
  MX2XL U1120 ( .A(n682), .B(n681), .S0(n1221), .Y(n783) );
  MX2XL U1121 ( .A(n659), .B(n658), .S0(n1221), .Y(n820) );
  CLKINVX1 U1122 ( .A(n485), .Y(n782) );
  MX2XL U1123 ( .A(n834), .B(n833), .S0(n1223), .Y(n1068) );
  XNOR2X1 U1124 ( .A(n743), .B(n715), .Y(n136) );
  CLKINVX1 U1125 ( .A(n459), .Y(n749) );
  CLKINVX1 U1126 ( .A(n320), .Y(n323) );
  XNOR2X1 U1127 ( .A(n767), .B(n138), .Y(n137) );
  MXI2XL U1128 ( .A(n678), .B(n677), .S0(n1221), .Y(n138) );
  CLKMX2X2 U1129 ( .A(n1019), .B(n1018), .S0(n1233), .Y(n1027) );
  XOR2X1 U1130 ( .A(n1094), .B(n83), .Y(n1045) );
  CLKINVX1 U1131 ( .A(n832), .Y(n482) );
  XNOR2X1 U1132 ( .A(n826), .B(n732), .Y(n139) );
  XNOR2X1 U1133 ( .A(n1158), .B(n82), .Y(n140) );
  MX2XL U1134 ( .A(n651), .B(n650), .S0(n1221), .Y(n834) );
  XNOR2X1 U1135 ( .A(n833), .B(n734), .Y(n141) );
  XNOR2X1 U1136 ( .A(n1162), .B(n84), .Y(n142) );
  NAND2BX1 U1137 ( .AN(n1194), .B(n143), .Y(n1056) );
  CLKINVX1 U1138 ( .A(n376), .Y(n347) );
  CLKINVX1 U1139 ( .A(n426), .Y(n494) );
  CLKINVX1 U1140 ( .A(n332), .Y(n311) );
  XNOR2X1 U1141 ( .A(n1131), .B(n85), .Y(n144) );
  AND2X2 U1142 ( .A(n145), .B(n334), .Y(n341) );
  XNOR2X1 U1143 ( .A(n1033), .B(n1150), .Y(n146) );
  CLKINVX1 U1144 ( .A(n1034), .Y(n1150) );
  XNOR2X1 U1145 ( .A(n1154), .B(n86), .Y(n147) );
  XNOR2X1 U1146 ( .A(n1121), .B(n87), .Y(n148) );
  CLKINVX1 U1147 ( .A(n1028), .Y(n1144) );
  XNOR2X1 U1148 ( .A(n1065), .B(n1054), .Y(n149) );
  CLKINVX1 U1149 ( .A(n1066), .Y(n1054) );
  CLKINVX1 U1150 ( .A(n1033), .Y(n1151) );
  CLKINVX1 U1151 ( .A(n1194), .Y(n1195) );
  XNOR2X1 U1152 ( .A(n224), .B(n679), .Y(n550) );
  NAND3XL U1153 ( .A(n554), .B(n553), .C(n552), .Y(n568) );
  OAI211X1 U1154 ( .A0(n150), .A1(n804), .B0(n722), .C0(n721), .Y(n729) );
  AO21X1 U1155 ( .A0(n157), .A1(n720), .B0(n118), .Y(n721) );
  MXI2X1 U1156 ( .A(n10), .B(n665), .S0(n1221), .Y(n150) );
  AO21X4 U1157 ( .A0(n151), .A1(n152), .B0(n562), .Y(n553) );
  OR2X1 U1158 ( .A(n650), .B(n536), .Y(n151) );
  OAI21XL U1159 ( .A0(n533), .A1(n532), .B0(n559), .Y(n539) );
  AOI21X1 U1160 ( .A0(n531), .A1(n530), .B0(n529), .Y(n532) );
  XOR2X1 U1161 ( .A(n515), .B(n655), .Y(n523) );
  NAND2X1 U1162 ( .A(n560), .B(n523), .Y(n524) );
  XOR2X1 U1163 ( .A(n507), .B(n694), .Y(n541) );
  CLKINVX1 U1164 ( .A(n392), .Y(n393) );
  OA22XL U1165 ( .A0(n380), .A1(n207), .B0(n245), .B1(n400), .Y(n381) );
  OA22XL U1166 ( .A0(n379), .A1(n198), .B0(n378), .B1(n414), .Y(n380) );
  OAI211X1 U1167 ( .A0(n371), .A1(n410), .B0(n370), .C0(n369), .Y(n374) );
  OAI32X1 U1168 ( .A0(n222), .A1(n418), .A2(n364), .B0(n90), .B1(n392), .Y(
        n368) );
  OAI211X1 U1169 ( .A0(n471), .A1(n802), .B0(n470), .C0(n469), .Y(n477) );
  XOR2X1 U1170 ( .A(n505), .B(n7), .Y(n543) );
  CLKINVX1 U1171 ( .A(n506), .Y(n694) );
  XNOR2X1 U1172 ( .A(n799), .B(n800), .Y(n153) );
  AOI21X1 U1173 ( .A0(n510), .A1(n509), .B0(n508), .Y(n512) );
  NAND2X1 U1174 ( .A(n7), .B(n505), .Y(n509) );
  CLKINVX1 U1175 ( .A(n541), .Y(n508) );
  OAI21XL U1176 ( .A0(n504), .A1(n503), .B0(n543), .Y(n510) );
  NAND2X1 U1177 ( .A(n9), .B(n701), .Y(n501) );
  OAI21X1 U1178 ( .A0(n498), .A1(n497), .B0(n546), .Y(n502) );
  CLKINVX1 U1179 ( .A(n418), .Y(n419) );
  OR4X2 U1180 ( .A(n351), .B(n385), .C(n350), .D(n158), .Y(n352) );
  NAND2BX2 U1181 ( .AN(N211), .B(N242), .Y(n684) );
  XNOR2X1 U1182 ( .A(n796), .B(n797), .Y(n157) );
  XOR2X1 U1183 ( .A(n687), .B(n216), .Y(n548) );
  XOR2X1 U1184 ( .A(n701), .B(n9), .Y(n546) );
  XOR2X1 U1185 ( .A(n652), .B(n91), .Y(n595) );
  CLKINVX1 U1186 ( .A(n634), .Y(n623) );
  OAI21XL U1187 ( .A0(n607), .A1(n606), .B0(n628), .Y(n611) );
  AOI21X1 U1188 ( .A0(n605), .A1(n604), .B0(n206), .Y(n606) );
  NAND2X1 U1189 ( .A(n597), .B(n596), .Y(n600) );
  NAND2X1 U1190 ( .A(n631), .B(n595), .Y(n596) );
  CLKINVX1 U1191 ( .A(n662), .Y(n663) );
  XOR2X1 U1192 ( .A(n354), .B(n447), .Y(n356) );
  INVX3 U1193 ( .A(n355), .Y(n447) );
  CLKINVX1 U1194 ( .A(n652), .Y(n653) );
  XOR2X1 U1195 ( .A(n998), .B(n246), .Y(n922) );
  OAI211X1 U1196 ( .A0(n1042), .A1(n1080), .B0(n1041), .C0(n1040), .Y(n1049)
         );
  NOR2X1 U1197 ( .A(N310), .B(n999), .Y(n162) );
  MXI2X1 U1198 ( .A(n801), .B(n800), .S0(n1212), .Y(n163) );
  OR4X1 U1199 ( .A(n876), .B(n875), .C(n195), .D(n176), .Y(n878) );
  XOR2X1 U1200 ( .A(n244), .B(n997), .Y(n876) );
  OAI221XL U1201 ( .A0(n911), .A1(n910), .B0(n909), .B1(n908), .C0(n907), .Y(
        n912) );
  OA22X1 U1202 ( .A0(n906), .A1(n214), .B0(n249), .B1(n905), .Y(n909) );
  OA22X1 U1203 ( .A0(n887), .A1(n175), .B0(n223), .B1(n991), .Y(n911) );
  OA22X1 U1204 ( .A0(n904), .A1(n213), .B0(n248), .B1(n968), .Y(n906) );
  CLKINVX1 U1205 ( .A(n1085), .Y(n1087) );
  XOR2X1 U1206 ( .A(n582), .B(n641), .Y(n613) );
  NOR2X1 U1207 ( .A(N46), .B(n429), .Y(n165) );
  XNOR2X1 U1208 ( .A(n500), .B(n678), .Y(n167) );
  CLKINVX1 U1209 ( .A(n499), .Y(n678) );
  CLKINVX1 U1210 ( .A(n439), .Y(n440) );
  CLKINVX1 U1211 ( .A(n666), .Y(n667) );
  CLKINVX1 U1212 ( .A(n371), .Y(n411) );
  XNOR2X1 U1213 ( .A(n367), .B(n411), .Y(n168) );
  XNOR2X1 U1214 ( .A(n439), .B(n13), .Y(n169) );
  CLKINVX1 U1215 ( .A(n796), .Y(n798) );
  OAI2BB1X1 U1216 ( .A0N(n289), .A1N(n433), .B0(n328), .Y(n314) );
  NAND3X1 U1217 ( .A(n330), .B(n329), .C(n328), .Y(n343) );
  NOR2X1 U1218 ( .A(n323), .B(n322), .Y(n325) );
  NAND2BX1 U1219 ( .AN(N112), .B(N143), .Y(n432) );
  CLKINVX1 U1220 ( .A(n412), .Y(n413) );
  MX2XL U1221 ( .A(n224), .B(n679), .S0(n1221), .Y(n709) );
  CLKINVX1 U1222 ( .A(n695), .Y(n696) );
  CLKINVX1 U1223 ( .A(n445), .Y(n446) );
  NAND3X1 U1224 ( .A(n616), .B(n617), .C(n234), .Y(n572) );
  OAI21XL U1225 ( .A0(n575), .A1(n574), .B0(n612), .Y(n579) );
  OAI21XL U1226 ( .A0(n581), .A1(n580), .B0(n613), .Y(n586) );
  XNOR2X1 U1227 ( .A(n695), .B(n220), .Y(n171) );
  XOR2X1 U1228 ( .A(n985), .B(n221), .Y(n933) );
  OAI32X1 U1229 ( .A0(n962), .A1(n235), .A2(n932), .B0(n221), .B1(n985), .Y(
        n936) );
  AOI32X1 U1230 ( .A0(n945), .A1(n944), .A2(n943), .B0(n971), .B1(n942), .Y(
        n948) );
  OAI211X1 U1231 ( .A0(n940), .A1(n977), .B0(n939), .C0(n938), .Y(n943) );
  AO21X1 U1232 ( .A0(n236), .A1(n1025), .B0(n201), .Y(n938) );
  CLKINVX1 U1233 ( .A(n936), .Y(n939) );
  XOR2X1 U1234 ( .A(n571), .B(n685), .Y(n617) );
  CLKINVX1 U1235 ( .A(n354), .Y(n448) );
  OR2X1 U1236 ( .A(n398), .B(n23), .Y(n172) );
  XOR2X1 U1237 ( .A(n418), .B(n222), .Y(n366) );
  OAI32X1 U1238 ( .A0(n420), .A1(n17), .A2(n336), .B0(n5), .B1(n394), .Y(n296)
         );
  XOR2X1 U1239 ( .A(n394), .B(n5), .Y(n297) );
  OAI21XL U1240 ( .A0(n308), .A1(n307), .B0(n335), .Y(n313) );
  NAND3X1 U1241 ( .A(n302), .B(n301), .C(n333), .Y(n305) );
  NAND2X1 U1242 ( .A(n293), .B(n298), .Y(n301) );
  XOR2X1 U1243 ( .A(n699), .B(n700), .Y(n612) );
  CLKINVX1 U1244 ( .A(n420), .Y(n421) );
  XNOR2X1 U1245 ( .A(n1085), .B(n1086), .Y(n174) );
  CLKINVX1 U1246 ( .A(n1039), .Y(n1086) );
  XNOR2X1 U1247 ( .A(n991), .B(n223), .Y(n175) );
  CLKINVX1 U1248 ( .A(n962), .Y(n963) );
  XOR2X1 U1249 ( .A(n879), .B(n1018), .Y(n881) );
  OA22X1 U1250 ( .A0(n886), .A1(n176), .B0(n226), .B1(n993), .Y(n887) );
  OA22X1 U1251 ( .A0(n885), .A1(n196), .B0(n232), .B1(n1006), .Y(n886) );
  OA22X1 U1252 ( .A0(n884), .A1(n195), .B0(n230), .B1(n1010), .Y(n885) );
  OA22X1 U1253 ( .A0(n883), .A1(n178), .B0(n228), .B1(n1014), .Y(n884) );
  MX2XL U1254 ( .A(n231), .B(n706), .S0(n1221), .Y(n810) );
  XOR2X1 U1255 ( .A(n528), .B(n659), .Y(n555) );
  CLKINVX1 U1256 ( .A(n527), .Y(n659) );
  MX2XL U1257 ( .A(n401), .B(n245), .S0(n1237), .Y(n824) );
  CLKINVX1 U1258 ( .A(n400), .Y(n401) );
  CLKINVX1 U1259 ( .A(n964), .Y(n965) );
  XNOR2X1 U1260 ( .A(n993), .B(n226), .Y(n176) );
  XOR2X1 U1261 ( .A(n664), .B(n10), .Y(n556) );
  CLKINVX1 U1262 ( .A(n522), .Y(n668) );
  XOR2X1 U1263 ( .A(n987), .B(n225), .Y(n889) );
  OAI32X1 U1264 ( .A0(n964), .A1(n240), .A2(n888), .B0(n225), .B1(n987), .Y(
        n892) );
  OA22X1 U1265 ( .A0(n903), .A1(n211), .B0(n902), .B1(n983), .Y(n904) );
  AOI32X1 U1266 ( .A0(n900), .A1(n899), .A2(n898), .B0(n973), .B1(n897), .Y(
        n903) );
  AO21X1 U1267 ( .A0(n890), .A1(n889), .B0(n892), .Y(n899) );
  OAI211X1 U1268 ( .A0(n895), .A1(n979), .B0(n894), .C0(n893), .Y(n898) );
  MX2XL U1269 ( .A(n9), .B(n702), .S0(n1221), .Y(n748) );
  CLKINVX1 U1270 ( .A(n701), .Y(n702) );
  XOR2X1 U1271 ( .A(n537), .B(n651), .Y(n557) );
  CLKINVX1 U1272 ( .A(n536), .Y(n651) );
  MX2XL U1273 ( .A(n397), .B(n242), .S0(n1237), .Y(n831) );
  CLKINVX1 U1274 ( .A(n396), .Y(n397) );
  XNOR2X1 U1275 ( .A(n1014), .B(n228), .Y(n178) );
  XOR2X1 U1276 ( .A(n445), .B(n88), .Y(n315) );
  OA21XL U1277 ( .A0(n179), .A1(n180), .B0(n315), .Y(n280) );
  OA21XL U1278 ( .A0(n181), .A1(n182), .B0(n316), .Y(n284) );
  OA21XL U1279 ( .A0(n281), .A1(n280), .B0(n320), .Y(n181) );
  AND2X2 U1280 ( .A(n283), .B(n282), .Y(n182) );
  XOR2X1 U1281 ( .A(n522), .B(n669), .Y(n560) );
  CLKINVX1 U1282 ( .A(n521), .Y(n669) );
  XOR2X1 U1283 ( .A(n286), .B(n344), .Y(n321) );
  CLKINVX1 U1284 ( .A(n515), .Y(n654) );
  XOR2X1 U1285 ( .A(n372), .B(n404), .Y(n376) );
  CLKINVX1 U1286 ( .A(n545), .Y(n679) );
  NOR2X1 U1287 ( .A(n1201), .B(n1200), .Y(n1209) );
  XOR2X1 U1288 ( .A(n662), .B(n11), .Y(n629) );
  CLKINVX1 U1289 ( .A(n437), .Y(n438) );
  MX2XL U1290 ( .A(n7), .B(n569), .S0(n1221), .Y(n744) );
  XNOR2X1 U1291 ( .A(n1006), .B(n232), .Y(n196) );
  XOR2X1 U1292 ( .A(n705), .B(n231), .Y(n558) );
  XOR2X1 U1293 ( .A(n666), .B(n229), .Y(n631) );
  CLKINVX1 U1294 ( .A(n616), .Y(n680) );
  XNOR2X1 U1295 ( .A(n995), .B(n233), .Y(n197) );
  CLKINVX1 U1296 ( .A(n571), .Y(n686) );
  CLKINVX1 U1297 ( .A(n373), .Y(n404) );
  XOR2X1 U1298 ( .A(n923), .B(n1016), .Y(n925) );
  AOI32X1 U1299 ( .A0(n246), .A1(n926), .A2(n925), .B0(n1017), .B1(n924), .Y(
        n927) );
  OA22X1 U1300 ( .A0(n930), .A1(n197), .B0(n233), .B1(n995), .Y(n931) );
  OA22X1 U1301 ( .A0(n929), .A1(n202), .B0(n238), .B1(n1004), .Y(n930) );
  OA22X1 U1302 ( .A0(n928), .A1(n203), .B0(n239), .B1(n1008), .Y(n929) );
  CLKINVX1 U1303 ( .A(n924), .Y(n1016) );
  XNOR2X1 U1304 ( .A(n396), .B(n242), .Y(n199) );
  CLKINVX1 U1305 ( .A(n357), .Y(n428) );
  NOR2X1 U1306 ( .A(n693), .B(n506), .Y(n513) );
  XOR2X1 U1307 ( .A(n599), .B(n703), .Y(n637) );
  CLKINVX1 U1308 ( .A(n598), .Y(n703) );
  XOR2X1 U1309 ( .A(n673), .B(n674), .Y(n559) );
  CLKINVX1 U1310 ( .A(n535), .Y(n674) );
  XNOR2X1 U1311 ( .A(n1012), .B(n237), .Y(n200) );
  XNOR2X1 U1312 ( .A(n935), .B(n978), .Y(n201) );
  XNOR2X1 U1313 ( .A(n1004), .B(n238), .Y(n202) );
  XNOR2X1 U1314 ( .A(n1008), .B(n239), .Y(n203) );
  OR3XL U1315 ( .A(n660), .B(n719), .C(n111), .Y(n661) );
  CLKINVX1 U1316 ( .A(n398), .Y(n399) );
  MX2XL U1317 ( .A(n534), .B(n674), .S0(n1221), .Y(n827) );
  CLKINVX1 U1318 ( .A(n940), .Y(n978) );
  CLKINVX1 U1319 ( .A(n1012), .Y(n1013) );
  CLKINVX1 U1320 ( .A(n895), .Y(n980) );
  XNOR2X1 U1321 ( .A(n891), .B(n980), .Y(n205) );
  XNOR2X1 U1322 ( .A(n603), .B(n657), .Y(n206) );
  CLKINVX1 U1323 ( .A(n602), .Y(n657) );
  XNOR2X1 U1324 ( .A(n400), .B(n245), .Y(n207) );
  CLKINVX1 U1325 ( .A(n1014), .Y(n1015) );
  XOR2X1 U1326 ( .A(n412), .B(n8), .Y(n331) );
  NAND2X1 U1327 ( .A(n662), .B(n11), .Y(n593) );
  XOR2X1 U1328 ( .A(n420), .B(n17), .Y(n334) );
  XOR2X1 U1329 ( .A(n671), .B(n672), .Y(n628) );
  CLKINVX1 U1330 ( .A(n609), .Y(n672) );
  CLKINVX1 U1331 ( .A(n629), .Y(n630) );
  XNOR2X1 U1332 ( .A(n648), .B(n22), .Y(n208) );
  CLKINVX1 U1333 ( .A(n537), .Y(n650) );
  XOR2X1 U1334 ( .A(n962), .B(n235), .Y(n934) );
  CLKINVX1 U1335 ( .A(n923), .Y(n1017) );
  CLKINVX1 U1336 ( .A(n1008), .Y(n1009) );
  CLKINVX1 U1337 ( .A(n528), .Y(n658) );
  CLKINVX1 U1338 ( .A(n935), .Y(n977) );
  NAND2X1 U1339 ( .A(n535), .B(n534), .Y(n538) );
  CLKINVX1 U1340 ( .A(n673), .Y(n534) );
  CLKINVX1 U1341 ( .A(n648), .Y(n649) );
  XOR2X1 U1342 ( .A(n300), .B(n406), .Y(n333) );
  CLKINVX1 U1343 ( .A(n319), .Y(n427) );
  CLKINVX1 U1344 ( .A(n299), .Y(n406) );
  CLKINVX1 U1345 ( .A(n1010), .Y(n1011) );
  CLKINVX1 U1346 ( .A(n599), .Y(n704) );
  XOR2X1 U1347 ( .A(n964), .B(n240), .Y(n890) );
  XOR2X1 U1348 ( .A(n941), .B(n970), .Y(n945) );
  CLKINVX1 U1349 ( .A(n942), .Y(n970) );
  XNOR2X1 U1350 ( .A(n304), .B(n417), .Y(n209) );
  CLKINVX1 U1351 ( .A(n303), .Y(n417) );
  CLKINVX1 U1352 ( .A(n891), .Y(n979) );
  XOR2X1 U1353 ( .A(n398), .B(n23), .Y(n332) );
  CLKINVX1 U1354 ( .A(n1004), .Y(n1005) );
  CLKINVX1 U1355 ( .A(n603), .Y(n656) );
  NAND2X1 U1356 ( .A(n412), .B(n8), .Y(n295) );
  XOR2X1 U1357 ( .A(n402), .B(n403), .Y(n335) );
  CLKINVX1 U1358 ( .A(n995), .Y(n996) );
  CLKINVX1 U1359 ( .A(n310), .Y(n403) );
  CLKINVX1 U1360 ( .A(n1006), .Y(n1007) );
  NAND2X1 U1361 ( .A(n609), .B(n608), .Y(n610) );
  CLKINVX1 U1362 ( .A(n671), .Y(n608) );
  XOR2X1 U1363 ( .A(n896), .B(n972), .Y(n900) );
  CLKINVX1 U1364 ( .A(n897), .Y(n972) );
  CLKINVX1 U1365 ( .A(n966), .Y(n967) );
  CLKINVX1 U1366 ( .A(n991), .Y(n992) );
  CLKINVX1 U1367 ( .A(n968), .Y(n969) );
  XNOR2X1 U1368 ( .A(n946), .B(n982), .Y(n210) );
  CLKINVX1 U1369 ( .A(n947), .Y(n982) );
  NAND2X1 U1370 ( .A(n310), .B(n309), .Y(n312) );
  CLKINVX1 U1371 ( .A(n402), .Y(n309) );
  CLKINVX1 U1372 ( .A(n902), .Y(n984) );
  XNOR2X1 U1373 ( .A(n901), .B(n984), .Y(n211) );
  XNOR2X1 U1374 ( .A(n966), .B(n247), .Y(n212) );
  CLKINVX1 U1375 ( .A(n950), .Y(n961) );
  CLKINVX1 U1376 ( .A(n941), .Y(n971) );
  XNOR2X1 U1377 ( .A(n968), .B(n248), .Y(n213) );
  XNOR2X1 U1378 ( .A(n905), .B(n249), .Y(n214) );
  XNOR2X1 U1379 ( .A(n950), .B(n250), .Y(n215) );
  CLKINVX1 U1380 ( .A(d6_diff[3]), .Y(N256) );
  CLKINVX1 U1381 ( .A(d6_diff[4]), .Y(N255) );
  MXI2X1 U1382 ( .A(d6_diff[14]), .B(N274), .S0(n261), .Y(n507) );
  CLKINVX1 U1383 ( .A(d7_diff[3]), .Y(N289) );
  CLKINVX1 U1384 ( .A(d7_diff[4]), .Y(N288) );
  CLKINVX1 U1385 ( .A(d1_diff[3]), .Y(N91) );
  CLKINVX1 U1386 ( .A(n645), .Y(n647) );
  CLKINVX1 U1387 ( .A(d8_diff[4]), .Y(N321) );
  CLKINVX1 U1388 ( .A(d8_diff[5]), .Y(N320) );
  CLKINVX1 U1389 ( .A(d8_diff[3]), .Y(N322) );
  CLKINVX1 U1390 ( .A(d8_diff[6]), .Y(N319) );
  CLKINVX1 U1391 ( .A(d8_diff[7]), .Y(N318) );
  CLKINVX1 U1392 ( .A(d8_diff[8]), .Y(N317) );
  CLKINVX1 U1393 ( .A(d8_diff[9]), .Y(N316) );
  CLKINVX1 U1394 ( .A(d8_diff[2]), .Y(N323) );
  CLKINVX1 U1395 ( .A(d8_diff[10]), .Y(N315) );
  CLKINVX1 U1396 ( .A(d8_diff[11]), .Y(N314) );
  CLKINVX1 U1397 ( .A(d8_diff[12]), .Y(N313) );
  CLKINVX1 U1398 ( .A(d8_diff[13]), .Y(N312) );
  CLKINVX1 U1399 ( .A(d8_diff[14]), .Y(N311) );
  CLKINVX1 U1400 ( .A(d10_diff[3]), .Y(N388) );
  CLKINVX1 U1401 ( .A(d10_diff[4]), .Y(N387) );
  CLKINVX1 U1402 ( .A(d10_diff[5]), .Y(N386) );
  CLKINVX1 U1403 ( .A(d10_diff[6]), .Y(N385) );
  CLKINVX1 U1404 ( .A(d10_diff[7]), .Y(N384) );
  CLKINVX1 U1405 ( .A(d10_diff[8]), .Y(N383) );
  CLKINVX1 U1406 ( .A(d10_diff[9]), .Y(N382) );
  CLKINVX1 U1407 ( .A(d10_diff[2]), .Y(N389) );
  CLKINVX1 U1408 ( .A(d10_diff[10]), .Y(N381) );
  CLKINVX1 U1409 ( .A(d10_diff[11]), .Y(N380) );
  CLKINVX1 U1410 ( .A(d10_diff[12]), .Y(N379) );
  CLKINVX1 U1411 ( .A(d10_diff[13]), .Y(N378) );
  CLKINVX1 U1412 ( .A(d10_diff[14]), .Y(N377) );
  CLKINVX1 U1413 ( .A(d11_diff[4]), .Y(N420) );
  CLKINVX1 U1414 ( .A(d11_diff[5]), .Y(N419) );
  CLKINVX1 U1415 ( .A(d11_diff[3]), .Y(N421) );
  CLKINVX1 U1416 ( .A(d11_diff[6]), .Y(N418) );
  CLKINVX1 U1417 ( .A(d11_diff[7]), .Y(N417) );
  CLKINVX1 U1418 ( .A(d11_diff[8]), .Y(N416) );
  CLKINVX1 U1419 ( .A(d11_diff[9]), .Y(N415) );
  CLKINVX1 U1420 ( .A(d11_diff[10]), .Y(N414) );
  CLKINVX1 U1421 ( .A(d11_diff[11]), .Y(N413) );
  CLKINVX1 U1422 ( .A(d11_diff[2]), .Y(N422) );
  CLKINVX1 U1423 ( .A(d11_diff[12]), .Y(N412) );
  CLKINVX1 U1424 ( .A(d11_diff[13]), .Y(N411) );
  CLKINVX1 U1425 ( .A(d11_diff[14]), .Y(N410) );
  CLKINVX1 U1426 ( .A(d5_diff[12]), .Y(N214) );
  CLKINVX1 U1427 ( .A(d0_diff[14]), .Y(N47) );
  CLKINVX1 U1428 ( .A(d9_diff[4]), .Y(N354) );
  CLKINVX1 U1429 ( .A(d9_diff[5]), .Y(N353) );
  CLKINVX1 U1430 ( .A(d9_diff[3]), .Y(N355) );
  CLKINVX1 U1431 ( .A(d9_diff[6]), .Y(N352) );
  CLKINVX1 U1432 ( .A(d9_diff[7]), .Y(N351) );
  CLKINVX1 U1433 ( .A(d9_diff[8]), .Y(N350) );
  CLKINVX1 U1434 ( .A(d9_diff[9]), .Y(N349) );
  CLKINVX1 U1435 ( .A(d9_diff[10]), .Y(N348) );
  CLKINVX1 U1436 ( .A(d9_diff[11]), .Y(N347) );
  CLKINVX1 U1437 ( .A(d9_diff[12]), .Y(N346) );
  CLKINVX1 U1438 ( .A(d9_diff[13]), .Y(N345) );
  CLKINVX1 U1439 ( .A(d9_diff[14]), .Y(N344) );
  CLKINVX1 U1440 ( .A(d5_diff[6]), .Y(N220) );
  CLKINVX1 U1441 ( .A(d5_diff[10]), .Y(N216) );
  CLKINVX1 U1442 ( .A(d2_diff[13]), .Y(N114) );
  MX2XL U1443 ( .A(d1_diff[8]), .B(N103), .S0(n259), .Y(n219) );
  CLKINVX1 U1444 ( .A(d6_diff[14]), .Y(N245) );
  CLKINVX1 U1445 ( .A(d4_diff[7]), .Y(N186) );
  CLKINVX1 U1446 ( .A(d7_diff[14]), .Y(N278) );
  CLKMX2X2 U1447 ( .A(d4_diff[10]), .B(N204), .S0(n264), .Y(n220) );
  CLKINVX1 U1448 ( .A(d0_diff[7]), .Y(N54) );
  CLKMX2X2 U1449 ( .A(d8_diff[3]), .B(N329), .S0(n257), .Y(n221) );
  CLKINVX1 U1450 ( .A(d2_diff[12]), .Y(N115) );
  CLKINVX1 U1451 ( .A(d4_diff[13]), .Y(N180) );
  CLKINVX1 U1452 ( .A(d6_diff[11]), .Y(N248) );
  CLKINVX1 U1453 ( .A(d0_diff[12]), .Y(N49) );
  CLKINVX1 U1454 ( .A(d4_diff[6]), .Y(N187) );
  CLKINVX1 U1455 ( .A(d4_diff[12]), .Y(N181) );
  INVXL U1456 ( .A(n259), .Y(N79) );
  CLKINVX1 U1457 ( .A(d0_diff[4]), .Y(N57) );
  CLKINVX1 U1458 ( .A(n266), .Y(N145) );
  CLKINVX1 U1459 ( .A(d3_diff[12]), .Y(N148) );
  CLKINVX1 U1460 ( .A(d5_diff[3]), .Y(N223) );
  CLKINVX1 U1461 ( .A(d7_diff[12]), .Y(N280) );
  CLKINVX1 U1462 ( .A(d5_diff[13]), .Y(N213) );
  CLKINVX1 U1463 ( .A(d4_diff[8]), .Y(N185) );
  CLKINVX1 U1464 ( .A(n451), .Y(n453) );
  CLKINVX1 U1465 ( .A(d1_diff[11]), .Y(N83) );
  MXI2X1 U1466 ( .A(d5_diff[11]), .B(N238), .S0(n263), .Y(n699) );
  CLKINVX1 U1467 ( .A(d3_diff[10]), .Y(N150) );
  CLKINVX1 U1468 ( .A(d0_diff[2]), .Y(N59) );
  CLKINVX1 U1469 ( .A(d3_diff[13]), .Y(N147) );
  CLKINVX1 U1470 ( .A(d0_diff[6]), .Y(N55) );
  MXI2X1 U1471 ( .A(d0_diff[1]), .B(N63), .S0(n260), .Y(n367) );
  MXI2X1 U1472 ( .A(d11_diff[14]), .B(N439), .S0(n255), .Y(n991) );
  MXI2X1 U1473 ( .A(d4_diff[11]), .B(N205), .S0(n264), .Y(n577) );
  CLKMX2X2 U1474 ( .A(d10_diff[14]), .B(N406), .S0(n258), .Y(n223) );
  CLKINVX1 U1475 ( .A(d0_diff[11]), .Y(N50) );
  MXI2X1 U1476 ( .A(d10_diff[9]), .B(N401), .S0(n258), .Y(n880) );
  MXI2X1 U1477 ( .A(d11_diff[9]), .B(N434), .S0(n255), .Y(n879) );
  CLKINVX1 U1478 ( .A(d2_diff[10]), .Y(N117) );
  CLKINVX1 U1479 ( .A(d7_diff[5]), .Y(N287) );
  CLKINVX1 U1480 ( .A(d4_diff[10]), .Y(N183) );
  MXI2X1 U1481 ( .A(d11_diff[13]), .B(N438), .S0(n255), .Y(n993) );
  CLKINVX1 U1482 ( .A(d5_diff[1]), .Y(N225) );
  CLKMX2X2 U1483 ( .A(d10_diff[3]), .B(N395), .S0(n258), .Y(n225) );
  CLKINVX1 U1484 ( .A(d0_diff[1]), .Y(N60) );
  CLKINVX1 U1485 ( .A(d4_diff[9]), .Y(N184) );
  CLKINVX1 U1486 ( .A(d4_diff[3]), .Y(N190) );
  CLKMX2X2 U1487 ( .A(d10_diff[13]), .B(N405), .S0(n258), .Y(n226) );
  CLKINVX1 U1488 ( .A(d3_diff[7]), .Y(N153) );
  MXI2X1 U1489 ( .A(d9_diff[3]), .B(N362), .S0(n256), .Y(n985) );
  CLKINVX1 U1490 ( .A(d6_diff[10]), .Y(N249) );
  CLKINVX1 U1491 ( .A(d5_diff[2]), .Y(N224) );
  XOR2X1 U1492 ( .A(n642), .B(n643), .Y(n565) );
  CLKINVX1 U1493 ( .A(n514), .Y(n643) );
  CLKINVX1 U1494 ( .A(d6_diff[5]), .Y(N254) );
  MXI2X1 U1495 ( .A(d2_diff[14]), .B(N142), .S0(n265), .Y(n277) );
  MXI2X1 U1496 ( .A(d11_diff[3]), .B(N428), .S0(n255), .Y(n987) );
  CLKMX2X2 U1497 ( .A(d8_diff[14]), .B(N340), .S0(n257), .Y(n227) );
  MXI2X1 U1498 ( .A(d6_diff[1]), .B(N261), .S0(n261), .Y(n664) );
  MXI2X1 U1499 ( .A(d11_diff[10]), .B(N435), .S0(n255), .Y(n1014) );
  CLKINVX1 U1500 ( .A(d5_diff[4]), .Y(N222) );
  CLKMX2X2 U1501 ( .A(d10_diff[10]), .B(N402), .S0(n258), .Y(n228) );
  MXI2X1 U1502 ( .A(d3_diff[12]), .B(N173), .S0(n266), .Y(n437) );
  MXI2X1 U1503 ( .A(d3_diff[13]), .B(N174), .S0(n266), .Y(n286) );
  XOR2X1 U1504 ( .A(n645), .B(n646), .Y(n627) );
  CLKINVX1 U1505 ( .A(n591), .Y(n646) );
  CLKINVX1 U1506 ( .A(n1023), .Y(n1024) );
  CLKINVX1 U1507 ( .A(d3_diff[11]), .Y(N149) );
  MXI2X1 U1508 ( .A(d2_diff[13]), .B(N141), .S0(n265), .Y(n288) );
  MXI2XL U1509 ( .A(d1_diff[4]), .B(N99), .S0(n259), .Y(n372) );
  MXI2X1 U1510 ( .A(d11_diff[11]), .B(N436), .S0(n255), .Y(n1010) );
  MXI2X1 U1511 ( .A(d2_diff[9]), .B(N137), .S0(n265), .Y(n278) );
  CLKINVX1 U1512 ( .A(d3_diff[14]), .Y(N146) );
  CLKINVX1 U1513 ( .A(d5_diff[5]), .Y(N221) );
  CLKINVX1 U1514 ( .A(d0_diff[3]), .Y(N58) );
  CLKMX2X2 U1515 ( .A(d10_diff[11]), .B(N403), .S0(n258), .Y(n230) );
  MXI2X1 U1516 ( .A(d2_diff[11]), .B(N139), .S0(n265), .Y(n283) );
  CLKINVX1 U1517 ( .A(d2_diff[11]), .Y(N116) );
  MXI2X1 U1518 ( .A(d11_diff[12]), .B(N437), .S0(n255), .Y(n1006) );
  CLKMX2X2 U1519 ( .A(d7_diff[4]), .B(N297), .S0(n262), .Y(n231) );
  MXI2X1 U1520 ( .A(d3_diff[11]), .B(N172), .S0(n266), .Y(n441) );
  CLKMX2X2 U1521 ( .A(d10_diff[12]), .B(N404), .S0(n258), .Y(n232) );
  CLKINVX1 U1522 ( .A(d4_diff[2]), .Y(N191) );
  CLKINVX1 U1523 ( .A(d2_diff[14]), .Y(N113) );
  CLKINVX1 U1524 ( .A(d3_diff[3]), .Y(N157) );
  MXI2X1 U1525 ( .A(d6_diff[4]), .B(N264), .S0(n261), .Y(n705) );
  CLKINVX1 U1526 ( .A(d3_diff[9]), .Y(N151) );
  CLKMX2X2 U1527 ( .A(d8_diff[13]), .B(N339), .S0(n257), .Y(n233) );
  CLKINVX1 U1528 ( .A(d4_diff[5]), .Y(N188) );
  MXI2X1 U1529 ( .A(d8_diff[9]), .B(N335), .S0(n257), .Y(n924) );
  MXI2XL U1530 ( .A(d1_diff[5]), .B(N100), .S0(n259), .Y(n378) );
  CLKINVX1 U1531 ( .A(d2_diff[3]), .Y(N124) );
  CLKINVX1 U1532 ( .A(d4_diff[1]), .Y(N192) );
  CLKINVX1 U1533 ( .A(d3_diff[2]), .Y(N158) );
  CLKINVX1 U1534 ( .A(n265), .Y(N112) );
  CLKINVX1 U1535 ( .A(d3_diff[8]), .Y(N152) );
  CLKINVX1 U1536 ( .A(d2_diff[2]), .Y(N125) );
  CLKINVX1 U1537 ( .A(d2_diff[9]), .Y(N118) );
  CLKMX2X2 U1538 ( .A(d8_diff[2]), .B(N328), .S0(n257), .Y(n235) );
  CLKINVX1 U1539 ( .A(d2_diff[8]), .Y(N119) );
  CLKINVX1 U1540 ( .A(d4_diff[4]), .Y(N189) );
  XNOR2X1 U1541 ( .A(n937), .B(n20), .Y(n236) );
  CLKMX2X2 U1542 ( .A(d8_diff[10]), .B(N336), .S0(n257), .Y(n237) );
  CLKMX2X2 U1543 ( .A(d8_diff[12]), .B(N338), .S0(n257), .Y(n238) );
  CLKINVX1 U1544 ( .A(d3_diff[1]), .Y(N159) );
  CLKINVX1 U1545 ( .A(d2_diff[1]), .Y(N126) );
  CLKINVX1 U1546 ( .A(d3_diff[5]), .Y(N155) );
  CLKINVX1 U1547 ( .A(d2_diff[4]), .Y(N123) );
  CLKMX2X2 U1548 ( .A(d8_diff[11]), .B(N337), .S0(n257), .Y(n239) );
  MXI2X1 U1549 ( .A(d0_diff[5]), .B(N67), .S0(n260), .Y(n377) );
  CLKMX2X2 U1550 ( .A(d10_diff[2]), .B(N394), .S0(n258), .Y(n240) );
  CLKINVX1 U1551 ( .A(d2_diff[5]), .Y(N122) );
  MXI2X1 U1552 ( .A(d11_diff[2]), .B(N427), .S0(n255), .Y(n964) );
  XOR2X1 U1553 ( .A(n451), .B(n452), .Y(n340) );
  OAI21XL U1554 ( .A0(n292), .A1(n340), .B0(n331), .Y(n294) );
  CLKINVX1 U1555 ( .A(n292), .Y(n452) );
  XNOR2X1 U1556 ( .A(n1023), .B(n21), .Y(n241) );
  MXI2X1 U1557 ( .A(d10_diff[8]), .B(N400), .S0(n258), .Y(n882) );
  CLKINVX1 U1558 ( .A(n937), .Y(n1025) );
  CLKINVX1 U1559 ( .A(n257), .Y(N310) );
  MXI2X1 U1560 ( .A(d2_diff[4]), .B(N132), .S0(n265), .Y(n299) );
  MXI2X1 U1561 ( .A(d8_diff[8]), .B(N334), .S0(n257), .Y(n926) );
  MXI2X1 U1562 ( .A(d8_diff[4]), .B(N330), .S0(n257), .Y(n942) );
  MXI2X1 U1563 ( .A(d3_diff[5]), .B(N166), .S0(n266), .Y(n303) );
  MXI2X1 U1564 ( .A(d2_diff[5]), .B(N133), .S0(n265), .Y(n304) );
  MXI2X1 U1565 ( .A(d10_diff[4]), .B(N396), .S0(n258), .Y(n897) );
  MXI2X1 U1566 ( .A(d11_diff[4]), .B(N429), .S0(n255), .Y(n896) );
  CLKINVX1 U1567 ( .A(n258), .Y(N376) );
  CLKINVX1 U1568 ( .A(n255), .Y(N409) );
  MXI2X1 U1569 ( .A(d8_diff[5]), .B(N331), .S0(n257), .Y(n946) );
  MXI2X1 U1570 ( .A(d11_diff[5]), .B(N430), .S0(n255), .Y(n902) );
  CLKMX2X2 U1571 ( .A(d8_diff[6]), .B(N332), .S0(n257), .Y(n247) );
  MXI2X1 U1572 ( .A(d10_diff[5]), .B(N397), .S0(n258), .Y(n901) );
  MXI2X1 U1573 ( .A(d11_diff[6]), .B(N431), .S0(n255), .Y(n968) );
  CLKMX2X2 U1574 ( .A(d10_diff[6]), .B(N398), .S0(n258), .Y(n248) );
  MXI2X1 U1575 ( .A(d11_diff[7]), .B(N432), .S0(n255), .Y(n905) );
  CLKMX2X2 U1576 ( .A(d10_diff[7]), .B(N399), .S0(n258), .Y(n249) );
  CLKMX2X2 U1577 ( .A(d8_diff[7]), .B(N333), .S0(n257), .Y(n250) );
  BUFX8 U1578 ( .A(d6_diff[15]), .Y(n261) );
  BUFX8 U1579 ( .A(d4_diff[15]), .Y(n264) );
  CLKBUFX8 U1580 ( .A(d5_diff[15]), .Y(n263) );
  MXI2X1 U1581 ( .A(d1_diff[0]), .B(N95), .S0(n259), .Y(n454) );
  MXI2X1 U1582 ( .A(d0_diff[0]), .B(N62), .S0(n260), .Y(n345) );
  CLKBUFX3 U1583 ( .A(d9_diff[15]), .Y(n256) );
  CLKINVX1 U1584 ( .A(d1_diff[0]), .Y(N94) );
  MXI2XL U1585 ( .A(d7_diff[0]), .B(N293), .S0(n262), .Y(n642) );
  CLKINVX1 U1586 ( .A(d7_diff[0]), .Y(N292) );
  CLKINVX1 U1587 ( .A(d8_diff[0]), .Y(N325) );
  CLKINVX1 U1588 ( .A(d6_diff[0]), .Y(N259) );
  CLKINVX1 U1589 ( .A(d10_diff[0]), .Y(N391) );
  CLKINVX1 U1590 ( .A(d11_diff[0]), .Y(N424) );
  CLKINVX1 U1591 ( .A(d9_diff[0]), .Y(N358) );
  CLKINVX1 U1592 ( .A(d5_diff[0]), .Y(N226) );
  CLKINVX1 U1593 ( .A(d0_diff[0]), .Y(N61) );
  CLKINVX1 U1594 ( .A(d4_diff[0]), .Y(N193) );
  CLKINVX1 U1595 ( .A(d3_diff[0]), .Y(N160) );
  CLKINVX1 U1596 ( .A(d2_diff[0]), .Y(N127) );
  OAI222XL U1597 ( .A0(n45), .A1(n1398), .B0(n1479), .B1(n1397), .C0(n43), 
        .C1(n1396), .Y(n1411) );
  OAI222XL U1598 ( .A0(n40), .A1(n1401), .B0(n41), .B1(n1400), .C0(n1483), 
        .C1(n1399), .Y(n1410) );
  OAI222XL U1599 ( .A0(n44), .A1(n1407), .B0(n42), .B1(n1406), .C0(n1495), 
        .C1(n1405), .Y(n1408) );
  OAI222XL U1600 ( .A0(n45), .A1(n1414), .B0(n1479), .B1(n1413), .C0(n43), 
        .C1(n1412), .Y(n1427) );
  OAI222XL U1601 ( .A0(n40), .A1(n1417), .B0(n41), .B1(n1416), .C0(n1483), 
        .C1(n1415), .Y(n1426) );
  OAI222XL U1602 ( .A0(n44), .A1(n1423), .B0(n42), .B1(n1422), .C0(n1495), 
        .C1(n1421), .Y(n1424) );
  OAI222XL U1603 ( .A0(n45), .A1(n1430), .B0(n1479), .B1(n1429), .C0(n43), 
        .C1(n1428), .Y(n1443) );
  OAI222XL U1604 ( .A0(n40), .A1(n1433), .B0(n41), .B1(n1432), .C0(n1483), 
        .C1(n1431), .Y(n1442) );
  OAI222XL U1605 ( .A0(n44), .A1(n1439), .B0(n42), .B1(n1438), .C0(n1495), 
        .C1(n1437), .Y(n1440) );
  OAI222XL U1606 ( .A0(n45), .A1(n1446), .B0(n1479), .B1(n1445), .C0(n43), 
        .C1(n1444), .Y(n1459) );
  OAI222XL U1607 ( .A0(n40), .A1(n1449), .B0(n41), .B1(n1448), .C0(n1483), 
        .C1(n1447), .Y(n1458) );
  OAI222XL U1608 ( .A0(n44), .A1(n1455), .B0(n42), .B1(n1454), .C0(n1495), 
        .C1(n1453), .Y(n1456) );
  OAI222XL U1609 ( .A0(n45), .A1(n1462), .B0(n1479), .B1(n1461), .C0(n43), 
        .C1(n1460), .Y(n1475) );
  OAI222XL U1610 ( .A0(n40), .A1(n1465), .B0(n41), .B1(n1464), .C0(n1483), 
        .C1(n1463), .Y(n1474) );
  OAI222XL U1611 ( .A0(n44), .A1(n1471), .B0(n42), .B1(n1470), .C0(n1495), 
        .C1(n1469), .Y(n1472) );
  OAI222XL U1612 ( .A0(n45), .A1(n1480), .B0(n1479), .B1(n1478), .C0(n43), 
        .C1(n1476), .Y(n1503) );
  OAI222XL U1613 ( .A0(n40), .A1(n1486), .B0(n41), .B1(n1484), .C0(n1483), 
        .C1(n1482), .Y(n1502) );
  OAI222XL U1614 ( .A0(n44), .A1(n1498), .B0(n42), .B1(n1496), .C0(n1495), 
        .C1(n1494), .Y(n1500) );
  OAI222XL U1615 ( .A0(n45), .A1(n1254), .B0(n1479), .B1(n1253), .C0(n43), 
        .C1(n1252), .Y(n1267) );
  OAI222XL U1616 ( .A0(n45), .A1(n1270), .B0(n1479), .B1(n1269), .C0(n43), 
        .C1(n1268), .Y(n1283) );
  OAI222XL U1617 ( .A0(n45), .A1(n1334), .B0(n1479), .B1(n1333), .C0(n43), 
        .C1(n1332), .Y(n1347) );
  OAI222XL U1618 ( .A0(n45), .A1(n1350), .B0(n1479), .B1(n1349), .C0(n43), 
        .C1(n1348), .Y(n1363) );
  OAI222XL U1619 ( .A0(n45), .A1(n1366), .B0(n1479), .B1(n1365), .C0(n43), 
        .C1(n1364), .Y(n1379) );
  OAI222XL U1620 ( .A0(n45), .A1(n1318), .B0(n1479), .B1(n1317), .C0(n43), 
        .C1(n1316), .Y(n1331) );
  OAI222XL U1621 ( .A0(n40), .A1(n1321), .B0(n41), .B1(n1320), .C0(n1483), 
        .C1(n1319), .Y(n1330) );
  OAI222XL U1622 ( .A0(n45), .A1(n1382), .B0(n1479), .B1(n1381), .C0(n43), 
        .C1(n1380), .Y(n1395) );
  OAI222XL U1623 ( .A0(n40), .A1(n1385), .B0(n41), .B1(n1384), .C0(n1483), 
        .C1(n1383), .Y(n1394) );
  OAI222XL U1624 ( .A0(n45), .A1(n1220), .B0(n1479), .B1(n1219), .C0(n43), 
        .C1(n1218), .Y(n1251) );
  OAI222XL U1625 ( .A0(n40), .A1(n1229), .B0(n41), .B1(n1228), .C0(n1483), 
        .C1(n1227), .Y(n1250) );
  OAI222XL U1626 ( .A0(n1493), .A1(n1404), .B0(n39), .B1(n1403), .C0(n1489), 
        .C1(n1402), .Y(n1409) );
  CLKINVX1 U1627 ( .A(d11[10]), .Y(n1402) );
  OAI222XL U1628 ( .A0(n1493), .A1(n1420), .B0(n39), .B1(n1419), .C0(n1489), 
        .C1(n1418), .Y(n1425) );
  CLKINVX1 U1629 ( .A(d10[11]), .Y(n1420) );
  OAI222XL U1630 ( .A0(n1493), .A1(n1436), .B0(n39), .B1(n1435), .C0(n1489), 
        .C1(n1434), .Y(n1441) );
  OAI222XL U1631 ( .A0(n1493), .A1(n1452), .B0(n39), .B1(n1451), .C0(n1489), 
        .C1(n1450), .Y(n1457) );
  CLKINVX1 U1632 ( .A(d10[13]), .Y(n1452) );
  OAI222XL U1633 ( .A0(n1493), .A1(n1468), .B0(n39), .B1(n1467), .C0(n1489), 
        .C1(n1466), .Y(n1473) );
  CLKINVX1 U1634 ( .A(d11[14]), .Y(n1466) );
  OAI222XL U1635 ( .A0(n1493), .A1(n1492), .B0(n39), .B1(n1490), .C0(n1489), 
        .C1(n1488), .Y(n1501) );
  CLKINVX1 U1636 ( .A(d11[15]), .Y(n1488) );
  CLKINVX1 U1637 ( .A(d10[15]), .Y(n1492) );
  CLKINVX1 U1638 ( .A(d8[15]), .Y(n1490) );
  OAI222XL U1639 ( .A0(n44), .A1(n1295), .B0(n42), .B1(n1294), .C0(n1495), 
        .C1(n1293), .Y(n1296) );
  OAI222XL U1640 ( .A0(n44), .A1(n1311), .B0(n42), .B1(n1310), .C0(n1495), 
        .C1(n1309), .Y(n1312) );
  CLKINVX1 U1641 ( .A(d0[4]), .Y(n1310) );
  OAI222XL U1642 ( .A0(n44), .A1(n1263), .B0(n42), .B1(n1262), .C0(n1495), 
        .C1(n1261), .Y(n1264) );
  CLKINVX1 U1643 ( .A(d9[1]), .Y(n1261) );
  OAI222XL U1644 ( .A0(n44), .A1(n1279), .B0(n42), .B1(n1278), .C0(n1495), 
        .C1(n1277), .Y(n1280) );
  OAI222XL U1645 ( .A0(n44), .A1(n1327), .B0(n42), .B1(n1326), .C0(n1495), 
        .C1(n1325), .Y(n1328) );
  OAI222XL U1646 ( .A0(n44), .A1(n1343), .B0(n42), .B1(n1342), .C0(n1495), 
        .C1(n1341), .Y(n1344) );
  CLKINVX1 U1647 ( .A(d0[6]), .Y(n1342) );
  OAI222XL U1648 ( .A0(n44), .A1(n1359), .B0(n42), .B1(n1358), .C0(n1495), 
        .C1(n1357), .Y(n1360) );
  CLKINVX1 U1649 ( .A(d0[7]), .Y(n1358) );
  OAI222XL U1650 ( .A0(n44), .A1(n1375), .B0(n42), .B1(n1374), .C0(n1495), 
        .C1(n1373), .Y(n1376) );
  OAI222XL U1651 ( .A0(n44), .A1(n1391), .B0(n42), .B1(n1390), .C0(n1495), 
        .C1(n1389), .Y(n1392) );
  CLKINVX1 U1652 ( .A(d0[9]), .Y(n1390) );
  OAI222XL U1653 ( .A0(n44), .A1(n1247), .B0(n42), .B1(n1246), .C0(n1495), 
        .C1(n1245), .Y(n1248) );
  CLKINVX1 U1654 ( .A(d0[0]), .Y(n1246) );
  CLKINVX1 U1655 ( .A(d7[15]), .Y(n1486) );
  CLKINVX1 U1656 ( .A(d1[15]), .Y(n1498) );
  CLKINVX1 U1657 ( .A(d0[15]), .Y(n1496) );
  INVXL U1658 ( .A(d8[1]), .Y(n1259) );
  INVXL U1659 ( .A(d6[1]), .Y(n1256) );
  CLKINVX1 U1660 ( .A(d2[15]), .Y(n1480) );
  INVXL U1661 ( .A(d10[1]), .Y(n1260) );
  CLKINVX1 U1662 ( .A(n756), .Y(n757) );
  CLKMX2X2 U1663 ( .A(n444), .B(n89), .S0(n1237), .Y(n756) );
  OR3X2 U1664 ( .A(n863), .B(n253), .C(n409), .Y(n492) );
  MX2X1 U1665 ( .A(N79), .B(N46), .S0(n1237), .Y(n863) );
  MX2XL U1666 ( .A(n430), .B(n429), .S0(n1237), .Y(n431) );
  CLKMX2X2 U1667 ( .A(n411), .B(n410), .S0(n1237), .Y(n802) );
  INVXL U1668 ( .A(n253), .Y(n251) );
  XOR2XL U1669 ( .A(n802), .B(n803), .Y(n252) );
  AOI32X1 U1670 ( .A0(n729), .A1(n728), .A2(n727), .B0(n726), .B1(n810), .Y(
        n731) );
  AO21XL U1671 ( .A0(n1045), .A1(n1044), .B0(n1043), .Y(n1048) );
  OAI221XL U1672 ( .A0(n956), .A1(n955), .B0(n954), .B1(n953), .C0(n952), .Y(
        n957) );
  INVXL U1673 ( .A(n723), .Y(n722) );
  MXI2XL U1674 ( .A(n864), .B(n863), .S0(n1212), .Y(n868) );
  MX2X1 U1675 ( .A(n832), .B(n831), .S0(n1212), .Y(n1067) );
  MX2XL U1676 ( .A(n77), .B(n825), .S0(n1212), .Y(n828) );
  CLKMX2X2 U1677 ( .A(n78), .B(n777), .S0(n1212), .Y(n1152) );
  CLKMX2X2 U1678 ( .A(n75), .B(n746), .S0(n1212), .Y(n762) );
  MX2X1 U1679 ( .A(n494), .B(n493), .S0(n1212), .Y(n773) );
  INVXL U1680 ( .A(n460), .Y(n450) );
  AO21XL U1681 ( .A0(n725), .A1(n724), .B0(n723), .Y(n727) );
  MXI2X2 U1682 ( .A(d0_diff[9]), .B(N71), .S0(n260), .Y(n355) );
  OAI222XL U1683 ( .A0(n1493), .A1(n1388), .B0(n39), .B1(n1387), .C0(n1489), 
        .C1(n1386), .Y(n1393) );
  OAI222XL U1684 ( .A0(n1493), .A1(n1372), .B0(n39), .B1(n1371), .C0(n1489), 
        .C1(n1370), .Y(n1377) );
  OAI222XL U1685 ( .A0(n40), .A1(n1369), .B0(n41), .B1(n1368), .C0(n1483), 
        .C1(n1367), .Y(n1378) );
  OAI222XL U1686 ( .A0(n1493), .A1(n1356), .B0(n39), .B1(n1355), .C0(n1489), 
        .C1(n1354), .Y(n1361) );
  OAI222XL U1687 ( .A0(n40), .A1(n1353), .B0(n41), .B1(n1352), .C0(n1483), 
        .C1(n1351), .Y(n1362) );
  OAI222XL U1688 ( .A0(n1493), .A1(n1340), .B0(n39), .B1(n1339), .C0(n1489), 
        .C1(n1338), .Y(n1345) );
  OAI222XL U1689 ( .A0(n40), .A1(n1337), .B0(n41), .B1(n1336), .C0(n1483), 
        .C1(n1335), .Y(n1346) );
  OR3X2 U1690 ( .A(n1226), .B(n1225), .C(n1224), .Y(n1483) );
  OAI222XL U1691 ( .A0(n1493), .A1(n1324), .B0(n39), .B1(n1323), .C0(n1489), 
        .C1(n1322), .Y(n1329) );
  OAI222XL U1692 ( .A0(n45), .A1(n1302), .B0(n1479), .B1(n1301), .C0(n43), 
        .C1(n1300), .Y(n1315) );
  OAI222XL U1693 ( .A0(n40), .A1(n1305), .B0(n41), .B1(n1304), .C0(n1483), 
        .C1(n1303), .Y(n1314) );
  OAI222XL U1694 ( .A0(n45), .A1(n1286), .B0(n1479), .B1(n1285), .C0(n43), 
        .C1(n1284), .Y(n1299) );
  OAI222XL U1695 ( .A0(n40), .A1(n1289), .B0(n41), .B1(n1288), .C0(n1483), 
        .C1(n1287), .Y(n1298) );
  OAI222XL U1696 ( .A0(n1493), .A1(n1276), .B0(n39), .B1(n1275), .C0(n1489), 
        .C1(n1274), .Y(n1281) );
  OAI222XL U1697 ( .A0(n40), .A1(n1273), .B0(n41), .B1(n1272), .C0(n1483), 
        .C1(n1271), .Y(n1282) );
  OAI222XL U1698 ( .A0(n1493), .A1(n1260), .B0(n39), .B1(n1259), .C0(n1489), 
        .C1(n1258), .Y(n1265) );
  OAI222XL U1699 ( .A0(n40), .A1(n1257), .B0(n41), .B1(n1256), .C0(n1483), 
        .C1(n1255), .Y(n1266) );
  BUFX12 U1700 ( .A(d1_diff[15]), .Y(n259) );
  OR2X4 U1701 ( .A(n353), .B(n352), .Y(n383) );
  OA22X4 U1702 ( .A0(n358), .A1(n161), .B0(n89), .B1(n443), .Y(n359) );
  OA22X4 U1703 ( .A0(n359), .A1(n169), .B0(n13), .B1(n439), .Y(n360) );
  OA22X4 U1704 ( .A0(n461), .A1(n119), .B0(n74), .B1(n756), .Y(n462) );
  OA22X4 U1705 ( .A0(n462), .A1(n124), .B0(n75), .B1(n745), .Y(n463) );
  OA22X4 U1706 ( .A0(n463), .A1(n127), .B0(n76), .B1(n765), .Y(n465) );
  OA22X4 U1707 ( .A0(n465), .A1(n123), .B0(n464), .B1(n494), .Y(n466) );
  OA22X4 U1708 ( .A0(n466), .A1(n129), .B0(n78), .B1(n776), .Y(n488) );
  OA22X4 U1709 ( .A0(n131), .A1(n713), .B0(n712), .B1(n747), .Y(n714) );
  OA22X4 U1710 ( .A0(n714), .A1(n137), .B0(n138), .B1(n767), .Y(n716) );
  OA22X4 U1711 ( .A0(n136), .A1(n716), .B0(n715), .B1(n743), .Y(n717) );
  OA22X4 U1712 ( .A0(n717), .A1(n134), .B0(n135), .B1(n778), .Y(n738) );
  AOI21X4 U1713 ( .A0(n786), .A1(n785), .B0(n96), .Y(n871) );
endmodule


module FF ( in, reset, clk, out );
  input [15:0] in;
  output [15:0] out;
  input reset, clk;
  wire   n1;

  DFFRX1 \out_reg[15]  ( .D(in[15]), .CK(clk), .RN(n1), .Q(out[15]) );
  DFFRX1 \out_reg[14]  ( .D(in[14]), .CK(clk), .RN(n1), .Q(out[14]) );
  DFFRX1 \out_reg[13]  ( .D(in[13]), .CK(clk), .RN(n1), .Q(out[13]) );
  DFFRX1 \out_reg[12]  ( .D(in[12]), .CK(clk), .RN(n1), .Q(out[12]) );
  DFFRX1 \out_reg[11]  ( .D(in[11]), .CK(clk), .RN(n1), .Q(out[11]) );
  DFFRX1 \out_reg[10]  ( .D(in[10]), .CK(clk), .RN(n1), .Q(out[10]) );
  DFFRX1 \out_reg[9]  ( .D(in[9]), .CK(clk), .RN(n1), .Q(out[9]) );
  DFFRX1 \out_reg[8]  ( .D(in[8]), .CK(clk), .RN(n1), .Q(out[8]) );
  DFFRX1 \out_reg[7]  ( .D(in[7]), .CK(clk), .RN(n1), .Q(out[7]) );
  DFFRX1 \out_reg[6]  ( .D(in[6]), .CK(clk), .RN(n1), .Q(out[6]) );
  DFFRX1 \out_reg[5]  ( .D(in[5]), .CK(clk), .RN(n1), .Q(out[5]) );
  DFFRX1 \out_reg[4]  ( .D(in[4]), .CK(clk), .RN(n1), .Q(out[4]) );
  DFFRX1 \out_reg[3]  ( .D(in[3]), .CK(clk), .RN(n1), .Q(out[3]) );
  DFFRX1 \out_reg[2]  ( .D(in[2]), .CK(clk), .RN(n1), .Q(out[2]) );
  DFFRX1 \out_reg[1]  ( .D(in[1]), .CK(clk), .RN(n1), .Q(out[1]) );
  DFFRX1 \out_reg[0]  ( .D(in[0]), .CK(clk), .RN(n1), .Q(out[0]) );
  CLKINVX1 U3 ( .A(reset), .Y(n1) );
endmodule


module avg ( din, reset, clk, ready, dout );
  input [15:0] din;
  output [15:0] dout;
  input reset, clk;
  output ready;
  wire   \state[0] , n2, n4;
  wire   [3:0] count;
  wire   [15:0] FF0;
  wire   [15:0] FF1;
  wire   [15:0] FF2;
  wire   [15:0] FF3;
  wire   [15:0] FF4;
  wire   [15:0] FF5;
  wire   [15:0] FF6;
  wire   [15:0] FF7;
  wire   [15:0] FF8;
  wire   [15:0] FF9;
  wire   [15:0] FF10;
  wire   [15:0] FF11;
  wire   [15:0] davg;
  wire   [15:0] next_dout;
  wire   SYNOPSYS_UNCONNECTED__0;
  assign ready = \state[0] ;

  FSM FSM1 ( .reset(reset), .clk(clk), .start_flag(n4), .state({
        SYNOPSYS_UNCONNECTED__0, \state[0] }) );
  counter counter1 ( .reset(reset), .clk(clk), .count(count) );
  FIFO FIFO1 ( .in(din), .reset(reset), .clk(clk), .FF0(FF0), .FF1(FF1), .FF2(
        FF2), .FF3(FF3), .FF4(FF4), .FF5(FF5), .FF6(FF6), .FF7(FF7), .FF8(FF8), 
        .FF9(FF9), .FF10(FF10), .FF11(FF11) );
  avg_maker avg_maker1 ( .d0(FF0), .d1(FF1), .d2(FF2), .d3(FF3), .d4(FF4), 
        .d5(FF5), .d6(FF6), .d7(FF7), .d8(FF8), .d9(FF9), .d10(FF10), .d11(
        FF11), .dout(davg) );
  avg_compare avg_compare1 ( .din(davg), .d0(FF0), .d1(FF1), .d2(FF2), .d3(FF3), .d4(FF4), .d5(FF5), .d6(FF6), .d7(FF7), .d8(FF8), .d9(FF9), .d10(FF10), 
        .d11(FF11), .dout(next_dout) );
  FF FF_out ( .in(next_dout), .reset(reset), .clk(clk), .out(dout) );
  CLKINVX1 U4 ( .A(n2), .Y(n4) );
  NAND4BX1 U5 ( .AN(count[2]), .B(count[0]), .C(count[3]), .D(count[1]), .Y(n2) );
endmodule

