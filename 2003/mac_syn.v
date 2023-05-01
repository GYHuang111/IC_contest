/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : T-2022.03
// Date      : Wed Jul  6 16:28:20 2022
/////////////////////////////////////////////////////////////


module booth_table_0 ( din, neg, recode_bit );
  input [2:0] din;
  output [1:0] recode_bit;
  output neg;
  wire   n1, n2;

  AOI2BB1X1 U3 ( .A0N(neg), .A1N(n1), .B0(recode_bit[0]), .Y(recode_bit[1]) );
  NOR2BX1 U4 ( .AN(din[2]), .B(n2), .Y(neg) );
  XOR2X1 U5 ( .A(din[0]), .B(din[1]), .Y(recode_bit[0]) );
  NOR2BX1 U6 ( .AN(n2), .B(din[2]), .Y(n1) );
  AND2X2 U7 ( .A(din[1]), .B(din[0]), .Y(n2) );
endmodule


module booth_table_8 ( din, neg, recode_bit );
  input [2:0] din;
  output [1:0] recode_bit;
  output neg;
  wire   n3, n4;

  AOI2BB1X1 U3 ( .A0N(neg), .A1N(n4), .B0(recode_bit[0]), .Y(recode_bit[1]) );
  NOR2BX1 U4 ( .AN(din[2]), .B(n3), .Y(neg) );
  XOR2X1 U5 ( .A(din[0]), .B(din[1]), .Y(recode_bit[0]) );
  NOR2BX1 U6 ( .AN(n3), .B(din[2]), .Y(n4) );
  AND2X2 U7 ( .A(din[1]), .B(din[0]), .Y(n3) );
endmodule


module booth_table_7 ( din, neg, recode_bit );
  input [2:0] din;
  output [1:0] recode_bit;
  output neg;
  wire   n3, n4;

  AOI2BB1X1 U3 ( .A0N(neg), .A1N(n4), .B0(recode_bit[0]), .Y(recode_bit[1]) );
  NOR2BX1 U4 ( .AN(din[2]), .B(n3), .Y(neg) );
  XOR2X1 U5 ( .A(din[0]), .B(din[1]), .Y(recode_bit[0]) );
  NOR2BX1 U6 ( .AN(n3), .B(din[2]), .Y(n4) );
  AND2X2 U7 ( .A(din[1]), .B(din[0]), .Y(n3) );
endmodule


module booth_table_6 ( din, neg, recode_bit );
  input [2:0] din;
  output [1:0] recode_bit;
  output neg;
  wire   n3, n4;

  NOR2BX1 U3 ( .AN(din[2]), .B(n3), .Y(neg) );
  XOR2X1 U4 ( .A(din[0]), .B(din[1]), .Y(recode_bit[0]) );
  AOI2BB1X1 U5 ( .A0N(neg), .A1N(n4), .B0(recode_bit[0]), .Y(recode_bit[1]) );
  NOR2BX1 U6 ( .AN(n3), .B(din[2]), .Y(n4) );
  AND2X2 U7 ( .A(din[1]), .B(din[0]), .Y(n3) );
endmodule


module booth_table_5 ( din, neg, recode_bit );
  input [2:0] din;
  output [1:0] recode_bit;
  output neg;
  wire   n3, n4;

  AOI2BB1X1 U3 ( .A0N(neg), .A1N(n4), .B0(recode_bit[0]), .Y(recode_bit[1]) );
  XOR2X1 U4 ( .A(din[0]), .B(din[1]), .Y(recode_bit[0]) );
  NOR2BX1 U5 ( .AN(n3), .B(din[2]), .Y(n4) );
  NOR2BX1 U6 ( .AN(din[2]), .B(n3), .Y(neg) );
  AND2X2 U7 ( .A(din[1]), .B(din[0]), .Y(n3) );
endmodule


module booth_table_4 ( din, neg, recode_bit );
  input [2:0] din;
  output [1:0] recode_bit;
  output neg;
  wire   n3, n4;

  AOI2BB1X1 U3 ( .A0N(neg), .A1N(n4), .B0(recode_bit[0]), .Y(recode_bit[1]) );
  NOR2BX1 U4 ( .AN(din[2]), .B(n3), .Y(neg) );
  XOR2X1 U5 ( .A(din[0]), .B(din[1]), .Y(recode_bit[0]) );
  NOR2BX1 U6 ( .AN(n3), .B(din[2]), .Y(n4) );
  AND2X2 U7 ( .A(din[1]), .B(din[0]), .Y(n3) );
endmodule


module booth_table_3 ( din, neg, recode_bit );
  input [2:0] din;
  output [1:0] recode_bit;
  output neg;
  wire   n3, n4;

  AOI2BB1X1 U3 ( .A0N(neg), .A1N(n4), .B0(recode_bit[0]), .Y(recode_bit[1]) );
  NOR2BX1 U4 ( .AN(din[2]), .B(n3), .Y(neg) );
  XOR2X1 U5 ( .A(din[0]), .B(din[1]), .Y(recode_bit[0]) );
  NOR2BX1 U6 ( .AN(n3), .B(din[2]), .Y(n4) );
  AND2X2 U7 ( .A(din[1]), .B(din[0]), .Y(n3) );
endmodule


module booth_table_2 ( din, neg, recode_bit );
  input [2:0] din;
  output [1:0] recode_bit;
  output neg;
  wire   n3, n4;

  AOI2BB1X1 U3 ( .A0N(neg), .A1N(n4), .B0(recode_bit[0]), .Y(recode_bit[1]) );
  NOR2BX1 U4 ( .AN(din[2]), .B(n3), .Y(neg) );
  XOR2X1 U5 ( .A(din[0]), .B(din[1]), .Y(recode_bit[0]) );
  NOR2BX1 U6 ( .AN(n3), .B(din[2]), .Y(n4) );
  AND2X2 U7 ( .A(din[1]), .B(din[0]), .Y(n3) );
endmodule


module booth_table_1 ( din, neg, recode_bit );
  input [2:0] din;
  output [1:0] recode_bit;
  output neg;
  wire   n3, n4;

  AOI2BB1X1 U3 ( .A0N(neg), .A1N(n4), .B0(recode_bit[0]), .Y(recode_bit[1]) );
  XOR2X1 U4 ( .A(din[0]), .B(din[1]), .Y(recode_bit[0]) );
  NOR2BX1 U5 ( .AN(din[2]), .B(n3), .Y(neg) );
  NOR2BX1 U6 ( .AN(n3), .B(din[2]), .Y(n4) );
  AND2X2 U7 ( .A(din[1]), .B(din[0]), .Y(n3) );
endmodule


module booth_encode_16bit_0 ( multiplicand, neg, recode_bit, encode_out );
  input [15:0] multiplicand;
  input [1:0] recode_bit;
  output [39:0] encode_out;
  input neg;
  wire   N43, N44, N45, N46, N47, N48, N49, N50, N51, N52, N53, N54, N55, N56,
         N57, N80, N82, N83, N84, N85, N86, N87, N88, N89, N90, N91, N92, N93,
         N94, N95, N96, n45, n46, n47, n48, n49, n50, n51, n52, n53, n54, n55,
         n56, n57, n58, n59, n65, n67, n69, n76, n77, n80, n81, n82, n83, n84,
         n85, n86, n87, n88, \add_417/carry[15] , \add_417/carry[14] ,
         \add_417/carry[13] , \add_417/carry[12] , \add_417/carry[11] ,
         \add_417/carry[10] , \add_417/carry[9] , \add_417/carry[8] ,
         \add_417/carry[7] , \add_417/carry[6] , \add_417/carry[5] ,
         \add_417/carry[4] , \add_417/carry[3] , \add_417/carry[2] ,
         \add_417/A[0] , \add_417/A[1] , \add_417/A[2] , \add_417/A[3] ,
         \add_417/A[4] , \add_417/A[5] , \add_417/A[6] , \add_417/A[7] ,
         \add_417/A[8] , \add_417/A[9] , \add_417/A[10] , \add_417/A[11] ,
         \add_417/A[12] , \add_417/A[13] , \add_417/A[14] ,
         \add_416/carry[15] , \add_416/carry[14] , \add_416/carry[13] ,
         \add_416/carry[12] , \add_416/carry[11] , \add_416/carry[10] ,
         \add_416/carry[9] , \add_416/carry[8] , \add_416/carry[7] ,
         \add_416/carry[6] , \add_416/carry[5] , \add_416/carry[4] ,
         \add_416/carry[3] , \add_416/carry[2] , n1, n2, n3, n4, n5, n6, n7,
         n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, \encode_out[39] ,
         \encode_out[38] , \encode_out[37] , \encode_out[36] ,
         \encode_out[35] , \encode_out[28] , \encode_out[26] , n27, n28, n29,
         n30;
  assign encode_out[27] = \encode_out[39] ;
  assign encode_out[21] = \encode_out[39] ;
  assign encode_out[33] = \encode_out[39] ;
  assign encode_out[39] = \encode_out[39] ;
  assign encode_out[23] = \encode_out[38] ;
  assign encode_out[32] = \encode_out[38] ;
  assign encode_out[20] = \encode_out[38] ;
  assign encode_out[38] = \encode_out[38] ;
  assign encode_out[31] = \encode_out[37] ;
  assign encode_out[37] = \encode_out[37] ;
  assign encode_out[18] = \encode_out[36] ;
  assign encode_out[30] = \encode_out[36] ;
  assign encode_out[24] = \encode_out[36] ;
  assign encode_out[36] = \encode_out[36] ;
  assign encode_out[29] = \encode_out[35] ;
  assign encode_out[35] = \encode_out[35] ;
  assign encode_out[25] = \encode_out[28] ;
  assign encode_out[34] = \encode_out[28] ;
  assign encode_out[22] = \encode_out[28] ;
  assign encode_out[28] = \encode_out[28] ;
  assign encode_out[17] = \encode_out[26] ;
  assign encode_out[26] = \encode_out[26] ;

  NOR2X1 U3 ( .A(\add_417/carry[15] ), .B(multiplicand[15]), .Y(n1) );
  CLKBUFX3 U4 ( .A(n1), .Y(n16) );
  CLKBUFX3 U5 ( .A(n1), .Y(n17) );
  CLKINVX1 U6 ( .A(n5), .Y(n7) );
  CLKINVX1 U7 ( .A(n5), .Y(n8) );
  CLKINVX1 U8 ( .A(n5), .Y(n9) );
  CLKINVX1 U9 ( .A(n5), .Y(n10) );
  CLKINVX1 U10 ( .A(n6), .Y(n11) );
  CLKINVX1 U11 ( .A(n6), .Y(n12) );
  CLKINVX1 U12 ( .A(n6), .Y(n13) );
  NOR2X1 U13 ( .A(\add_416/carry[15] ), .B(multiplicand[15]), .Y(N80) );
  CLKINVX1 U14 ( .A(n54), .Y(\encode_out[39] ) );
  CLKINVX1 U15 ( .A(n56), .Y(\encode_out[38] ) );
  CLKINVX1 U16 ( .A(n57), .Y(\encode_out[37] ) );
  CLKINVX1 U17 ( .A(n58), .Y(\encode_out[36] ) );
  CLKINVX1 U18 ( .A(n59), .Y(\encode_out[35] ) );
  CLKINVX1 U19 ( .A(n67), .Y(\encode_out[28] ) );
  CLKINVX1 U20 ( .A(n69), .Y(\encode_out[26] ) );
  OAI221XL U21 ( .A0(\add_417/A[0] ), .A1(n28), .B0(\add_417/A[1] ), .B1(n27), 
        .C0(n76), .Y(encode_out[1]) );
  OAI221XL U22 ( .A0(\add_417/A[1] ), .A1(n28), .B0(\add_417/A[2] ), .B1(n27), 
        .C0(n65), .Y(encode_out[2]) );
  CLKINVX1 U23 ( .A(n81), .Y(n28) );
  OAI221XL U24 ( .A0(\add_417/A[2] ), .A1(n28), .B0(\add_417/A[3] ), .B1(n27), 
        .C0(n53), .Y(encode_out[3]) );
  AOI22X1 U25 ( .A0(N82), .A1(n4), .B0(multiplicand[0]), .B1(n7), .Y(n76) );
  OAI221XL U26 ( .A0(\add_417/A[3] ), .A1(n28), .B0(\add_417/A[4] ), .B1(n27), 
        .C0(n52), .Y(encode_out[4]) );
  OAI221XL U27 ( .A0(\add_417/A[4] ), .A1(n28), .B0(\add_417/A[5] ), .B1(n27), 
        .C0(n51), .Y(encode_out[5]) );
  OAI221XL U28 ( .A0(\add_417/A[5] ), .A1(n28), .B0(\add_417/A[6] ), .B1(n27), 
        .C0(n50), .Y(encode_out[6]) );
  OAI221XL U29 ( .A0(\add_417/A[6] ), .A1(n28), .B0(\add_417/A[7] ), .B1(n27), 
        .C0(n49), .Y(encode_out[7]) );
  AOI22X1 U30 ( .A0(N88), .A1(n4), .B0(N48), .B1(n13), .Y(n49) );
  OAI221XL U31 ( .A0(\add_417/A[7] ), .A1(n28), .B0(\add_417/A[8] ), .B1(n27), 
        .C0(n48), .Y(encode_out[8]) );
  AOI22X1 U32 ( .A0(N89), .A1(n46), .B0(N49), .B1(n13), .Y(n48) );
  OAI221XL U33 ( .A0(\add_417/A[8] ), .A1(n28), .B0(\add_417/A[9] ), .B1(n27), 
        .C0(n45), .Y(encode_out[9]) );
  AOI22X1 U34 ( .A0(N90), .A1(n3), .B0(N50), .B1(n13), .Y(n45) );
  OAI221XL U35 ( .A0(\add_417/A[9] ), .A1(n28), .B0(\add_417/A[10] ), .B1(n27), 
        .C0(n88), .Y(encode_out[10]) );
  AOI22X1 U36 ( .A0(N91), .A1(n4), .B0(N51), .B1(n13), .Y(n88) );
  OAI221XL U37 ( .A0(\add_417/A[10] ), .A1(n28), .B0(\add_417/A[11] ), .B1(n27), .C0(n87), .Y(encode_out[11]) );
  AOI22X1 U38 ( .A0(N92), .A1(n46), .B0(N52), .B1(n13), .Y(n87) );
  OAI221XL U39 ( .A0(\add_417/A[11] ), .A1(n28), .B0(\add_417/A[12] ), .B1(n27), .C0(n86), .Y(encode_out[12]) );
  AOI22X1 U40 ( .A0(N93), .A1(n3), .B0(N53), .B1(n13), .Y(n86) );
  OAI221XL U41 ( .A0(\add_417/A[12] ), .A1(n28), .B0(\add_417/A[13] ), .B1(n27), .C0(n85), .Y(encode_out[13]) );
  AOI22X1 U42 ( .A0(N94), .A1(n4), .B0(N54), .B1(n13), .Y(n85) );
  OAI221XL U43 ( .A0(\add_417/A[13] ), .A1(n28), .B0(\add_417/A[14] ), .B1(n27), .C0(n84), .Y(encode_out[14]) );
  AOI22X1 U44 ( .A0(N95), .A1(n46), .B0(N55), .B1(n13), .Y(n84) );
  OAI221XL U45 ( .A0(\add_417/A[14] ), .A1(n28), .B0(n2), .B1(n27), .C0(n83), 
        .Y(encode_out[15]) );
  AOI22X1 U46 ( .A0(N96), .A1(n3), .B0(N56), .B1(n13), .Y(n83) );
  CLKINVX1 U47 ( .A(n80), .Y(encode_out[16]) );
  CLKINVX1 U48 ( .A(n77), .Y(encode_out[19]) );
  CLKINVX1 U49 ( .A(n47), .Y(n5) );
  CLKINVX1 U50 ( .A(n82), .Y(n27) );
  AOI22X1 U51 ( .A0(N83), .A1(n46), .B0(N43), .B1(n8), .Y(n65) );
  AOI22X1 U52 ( .A0(N84), .A1(n3), .B0(N44), .B1(n9), .Y(n53) );
  AOI22X1 U53 ( .A0(N85), .A1(n4), .B0(N45), .B1(n10), .Y(n52) );
  AOI22X1 U54 ( .A0(N86), .A1(n46), .B0(N46), .B1(n11), .Y(n51) );
  CLKINVX1 U55 ( .A(n47), .Y(n6) );
  AOI22X1 U56 ( .A0(N87), .A1(n3), .B0(N47), .B1(n12), .Y(n50) );
  ADDHXL U57 ( .A(\add_417/A[1] ), .B(\add_417/A[0] ), .CO(\add_417/carry[2] ), 
        .S(N82) );
  ADDHXL U58 ( .A(\add_417/A[2] ), .B(\add_417/carry[2] ), .CO(
        \add_417/carry[3] ), .S(N83) );
  ADDHXL U59 ( .A(\add_417/A[3] ), .B(\add_417/carry[3] ), .CO(
        \add_417/carry[4] ), .S(N84) );
  ADDHXL U60 ( .A(\add_417/A[4] ), .B(\add_417/carry[4] ), .CO(
        \add_417/carry[5] ), .S(N85) );
  ADDHXL U61 ( .A(\add_417/A[1] ), .B(\add_417/A[0] ), .CO(\add_416/carry[2] ), 
        .S(N43) );
  ADDHXL U62 ( .A(\add_417/A[5] ), .B(\add_417/carry[5] ), .CO(
        \add_417/carry[6] ), .S(N86) );
  ADDHXL U63 ( .A(\add_417/A[2] ), .B(\add_416/carry[2] ), .CO(
        \add_416/carry[3] ), .S(N44) );
  ADDHXL U64 ( .A(\add_417/A[6] ), .B(\add_417/carry[6] ), .CO(
        \add_417/carry[7] ), .S(N87) );
  ADDHXL U65 ( .A(\add_417/A[3] ), .B(\add_416/carry[3] ), .CO(
        \add_416/carry[4] ), .S(N45) );
  ADDHXL U66 ( .A(\add_417/A[7] ), .B(\add_417/carry[7] ), .CO(
        \add_417/carry[8] ), .S(N88) );
  ADDHXL U67 ( .A(\add_417/A[4] ), .B(\add_416/carry[4] ), .CO(
        \add_416/carry[5] ), .S(N46) );
  ADDHXL U68 ( .A(\add_417/A[8] ), .B(\add_417/carry[8] ), .CO(
        \add_417/carry[9] ), .S(N89) );
  ADDHXL U69 ( .A(\add_417/A[5] ), .B(\add_416/carry[5] ), .CO(
        \add_416/carry[6] ), .S(N47) );
  ADDHXL U70 ( .A(\add_417/A[9] ), .B(\add_417/carry[9] ), .CO(
        \add_417/carry[10] ), .S(N90) );
  ADDHXL U71 ( .A(\add_417/A[6] ), .B(\add_416/carry[6] ), .CO(
        \add_416/carry[7] ), .S(N48) );
  ADDHXL U72 ( .A(\add_417/A[10] ), .B(\add_417/carry[10] ), .CO(
        \add_417/carry[11] ), .S(N91) );
  ADDHXL U73 ( .A(\add_417/A[7] ), .B(\add_416/carry[7] ), .CO(
        \add_416/carry[8] ), .S(N49) );
  ADDHXL U74 ( .A(\add_417/A[11] ), .B(\add_417/carry[11] ), .CO(
        \add_417/carry[12] ), .S(N92) );
  AOI221XL U75 ( .A0(N57), .A1(n13), .B0(n16), .B1(n4), .C0(n14), .Y(n80) );
  ADDHXL U76 ( .A(\add_417/A[12] ), .B(\add_417/carry[12] ), .CO(
        \add_417/carry[13] ), .S(N93) );
  ADDHXL U77 ( .A(\add_417/A[13] ), .B(\add_417/carry[13] ), .CO(
        \add_417/carry[14] ), .S(N94) );
  ADDHXL U78 ( .A(\add_417/A[14] ), .B(\add_417/carry[14] ), .CO(
        \add_417/carry[15] ), .S(N95) );
  ADDHXL U79 ( .A(\add_417/A[8] ), .B(\add_416/carry[8] ), .CO(
        \add_416/carry[9] ), .S(N50) );
  ADDHXL U80 ( .A(\add_417/A[9] ), .B(\add_416/carry[9] ), .CO(
        \add_416/carry[10] ), .S(N51) );
  ADDHXL U81 ( .A(\add_417/A[10] ), .B(\add_416/carry[10] ), .CO(
        \add_416/carry[11] ), .S(N52) );
  ADDHXL U82 ( .A(\add_417/A[11] ), .B(\add_416/carry[11] ), .CO(
        \add_416/carry[12] ), .S(N53) );
  ADDHXL U83 ( .A(\add_417/A[12] ), .B(\add_416/carry[12] ), .CO(
        \add_416/carry[13] ), .S(N54) );
  ADDHXL U84 ( .A(\add_417/A[14] ), .B(\add_416/carry[14] ), .CO(
        \add_416/carry[15] ), .S(N56) );
  ADDHXL U85 ( .A(\add_417/A[13] ), .B(\add_416/carry[13] ), .CO(
        \add_416/carry[14] ), .S(N55) );
  AOI221XL U86 ( .A0(N80), .A1(n13), .B0(n16), .B1(n46), .C0(n14), .Y(n77) );
  OA21XL U87 ( .A0(n81), .A1(n82), .B0(multiplicand[15]), .Y(n14) );
  OA21XL U88 ( .A0(n81), .A1(n82), .B0(multiplicand[15]), .Y(n15) );
  OA21XL U89 ( .A0(n81), .A1(n82), .B0(multiplicand[15]), .Y(n55) );
  AOI221XL U90 ( .A0(N80), .A1(n13), .B0(n17), .B1(n46), .C0(n55), .Y(n58) );
  AOI221XL U91 ( .A0(N80), .A1(n13), .B0(n16), .B1(n46), .C0(n55), .Y(n54) );
  AOI221XL U92 ( .A0(N80), .A1(n13), .B0(n17), .B1(n4), .C0(n15), .Y(n56) );
  AOI221XL U93 ( .A0(N80), .A1(n13), .B0(n16), .B1(n3), .C0(n14), .Y(n57) );
  AOI221XL U94 ( .A0(N80), .A1(n13), .B0(n16), .B1(n4), .C0(n15), .Y(n59) );
  AOI221XL U95 ( .A0(N80), .A1(n13), .B0(n17), .B1(n3), .C0(n14), .Y(n67) );
  AOI221XL U96 ( .A0(N80), .A1(n12), .B0(n17), .B1(n4), .C0(n15), .Y(n69) );
  NOR3X1 U97 ( .A(neg), .B(recode_bit[0]), .C(n29), .Y(n81) );
  CLKINVX1 U98 ( .A(recode_bit[1]), .Y(n29) );
  AND3X2 U99 ( .A(neg), .B(n29), .C(recode_bit[0]), .Y(n4) );
  AND3X2 U100 ( .A(neg), .B(n30), .C(recode_bit[1]), .Y(n47) );
  AND3X2 U101 ( .A(neg), .B(n29), .C(recode_bit[0]), .Y(n3) );
  AO22X1 U102 ( .A0(multiplicand[0]), .A1(n82), .B0(multiplicand[0]), .B1(n3), 
        .Y(encode_out[0]) );
  NOR3X1 U103 ( .A(neg), .B(recode_bit[1]), .C(n30), .Y(n82) );
  AND3X2 U104 ( .A(neg), .B(n29), .C(recode_bit[0]), .Y(n46) );
  CLKINVX1 U105 ( .A(recode_bit[0]), .Y(n30) );
  CLKINVX1 U106 ( .A(multiplicand[0]), .Y(\add_417/A[0] ) );
  CLKINVX1 U107 ( .A(multiplicand[1]), .Y(\add_417/A[1] ) );
  CLKINVX1 U108 ( .A(multiplicand[2]), .Y(\add_417/A[2] ) );
  CLKINVX1 U109 ( .A(multiplicand[3]), .Y(\add_417/A[3] ) );
  CLKINVX1 U110 ( .A(multiplicand[4]), .Y(\add_417/A[4] ) );
  CLKINVX1 U111 ( .A(multiplicand[5]), .Y(\add_417/A[5] ) );
  CLKINVX1 U112 ( .A(multiplicand[6]), .Y(\add_417/A[6] ) );
  CLKINVX1 U113 ( .A(multiplicand[7]), .Y(\add_417/A[7] ) );
  CLKINVX1 U114 ( .A(multiplicand[8]), .Y(\add_417/A[8] ) );
  CLKINVX1 U115 ( .A(multiplicand[9]), .Y(\add_417/A[9] ) );
  CLKINVX1 U116 ( .A(multiplicand[10]), .Y(\add_417/A[10] ) );
  CLKINVX1 U117 ( .A(multiplicand[11]), .Y(\add_417/A[11] ) );
  CLKINVX1 U118 ( .A(multiplicand[12]), .Y(\add_417/A[12] ) );
  CLKINVX1 U119 ( .A(multiplicand[13]), .Y(\add_417/A[13] ) );
  CLKINVX1 U120 ( .A(multiplicand[15]), .Y(n2) );
  CLKINVX1 U121 ( .A(multiplicand[14]), .Y(\add_417/A[14] ) );
  XOR2X1 U122 ( .A(\add_416/carry[15] ), .B(n2), .Y(N57) );
  XOR2X1 U123 ( .A(\add_417/carry[15] ), .B(n2), .Y(N96) );
endmodule


module booth_encode_16bit_7 ( multiplicand, neg, recode_bit, encode_out );
  input [15:0] multiplicand;
  input [1:0] recode_bit;
  output [39:0] encode_out;
  input neg;
  wire   N43, N44, N45, N46, N47, N48, N49, N50, N51, N52, N53, N54, N55, N56,
         N57, N80, N82, N83, N84, N85, N86, N87, N88, N89, N90, N91, N92, N93,
         N94, N95, N96, \add_417/carry[15] , \add_417/carry[14] ,
         \add_417/carry[13] , \add_417/carry[12] , \add_417/carry[11] ,
         \add_417/carry[10] , \add_417/carry[9] , \add_417/carry[8] ,
         \add_417/carry[7] , \add_417/carry[6] , \add_417/carry[5] ,
         \add_417/carry[4] , \add_417/carry[3] , \add_417/carry[2] ,
         \add_417/A[0] , \add_417/A[1] , \add_417/A[2] , \add_417/A[3] ,
         \add_417/A[4] , \add_417/A[5] , \add_417/A[6] , \add_417/A[7] ,
         \add_417/A[8] , \add_417/A[9] , \add_417/A[10] , \add_417/A[11] ,
         \add_417/A[12] , \add_417/A[13] , \add_417/A[14] ,
         \add_416/carry[15] , \add_416/carry[14] , \add_416/carry[13] ,
         \add_416/carry[12] , \add_416/carry[11] , \add_416/carry[10] ,
         \add_416/carry[9] , \add_416/carry[8] , \add_416/carry[7] ,
         \add_416/carry[6] , \add_416/carry[5] , \add_416/carry[4] ,
         \add_416/carry[3] , \add_416/carry[2] , n1, n2, n3, n4, n5, n6, n7,
         n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, \encode_out[39] ,
         \encode_out[38] , \encode_out[31] , \encode_out[30] ,
         \encode_out[29] , \encode_out[28] , n26, n27, n28, n29, n30, n31, n32,
         n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44, n57, n58,
         n59, n60, n61, n62, n63, n64, n65, n66, n67, n68, n69;
  assign encode_out[18] = \encode_out[39] ;
  assign encode_out[39] = \encode_out[39] ;
  assign encode_out[26] = \encode_out[38] ;
  assign encode_out[32] = \encode_out[38] ;
  assign encode_out[23] = \encode_out[38] ;
  assign encode_out[38] = \encode_out[38] ;
  assign encode_out[37] = \encode_out[31] ;
  assign encode_out[31] = \encode_out[31] ;
  assign encode_out[36] = \encode_out[30] ;
  assign encode_out[27] = \encode_out[30] ;
  assign encode_out[21] = \encode_out[30] ;
  assign encode_out[33] = \encode_out[30] ;
  assign encode_out[24] = \encode_out[30] ;
  assign encode_out[30] = \encode_out[30] ;
  assign encode_out[20] = \encode_out[29] ;
  assign encode_out[35] = \encode_out[29] ;
  assign encode_out[17] = \encode_out[29] ;
  assign encode_out[29] = \encode_out[29] ;
  assign encode_out[25] = \encode_out[28] ;
  assign encode_out[34] = \encode_out[28] ;
  assign encode_out[22] = \encode_out[28] ;
  assign encode_out[28] = \encode_out[28] ;

  NOR2X1 U3 ( .A(\add_417/carry[15] ), .B(multiplicand[15]), .Y(n1) );
  OAI221XL U4 ( .A0(\add_417/A[1] ), .A1(n27), .B0(\add_417/A[2] ), .B1(n26), 
        .C0(n43), .Y(encode_out[2]) );
  CLKBUFX3 U5 ( .A(n1), .Y(n16) );
  CLKBUFX3 U6 ( .A(n1), .Y(n17) );
  CLKINVX1 U7 ( .A(n5), .Y(n8) );
  CLKINVX1 U8 ( .A(n5), .Y(n7) );
  CLKINVX1 U9 ( .A(n5), .Y(n9) );
  CLKINVX1 U10 ( .A(n5), .Y(n10) );
  CLKINVX1 U11 ( .A(n6), .Y(n11) );
  CLKINVX1 U12 ( .A(n6), .Y(n12) );
  CLKINVX1 U13 ( .A(n6), .Y(n13) );
  NOR2X1 U14 ( .A(\add_416/carry[15] ), .B(multiplicand[15]), .Y(N80) );
  CLKINVX1 U15 ( .A(n60), .Y(\encode_out[39] ) );
  CLKINVX1 U16 ( .A(n58), .Y(\encode_out[38] ) );
  CLKINVX1 U17 ( .A(n57), .Y(\encode_out[31] ) );
  CLKINVX1 U18 ( .A(n44), .Y(\encode_out[30] ) );
  CLKINVX1 U19 ( .A(n42), .Y(\encode_out[29] ) );
  CLKINVX1 U20 ( .A(n41), .Y(\encode_out[28] ) );
  OAI221XL U21 ( .A0(\add_417/A[0] ), .A1(n27), .B0(\add_417/A[1] ), .B1(n26), 
        .C0(n40), .Y(encode_out[1]) );
  AOI22X1 U22 ( .A0(N82), .A1(n4), .B0(multiplicand[0]), .B1(n7), .Y(n40) );
  AOI22X1 U23 ( .A0(N83), .A1(n68), .B0(N43), .B1(n8), .Y(n43) );
  OAI221XL U24 ( .A0(\add_417/A[2] ), .A1(n27), .B0(\add_417/A[3] ), .B1(n26), 
        .C0(n61), .Y(encode_out[3]) );
  CLKINVX1 U25 ( .A(n37), .Y(n27) );
  OAI221XL U26 ( .A0(\add_417/A[3] ), .A1(n27), .B0(\add_417/A[4] ), .B1(n26), 
        .C0(n62), .Y(encode_out[4]) );
  AOI22X1 U27 ( .A0(N85), .A1(n4), .B0(N45), .B1(n10), .Y(n62) );
  CLKINVX1 U28 ( .A(n67), .Y(n5) );
  OAI221XL U29 ( .A0(\add_417/A[4] ), .A1(n27), .B0(\add_417/A[5] ), .B1(n26), 
        .C0(n63), .Y(encode_out[5]) );
  AOI22X1 U30 ( .A0(N86), .A1(n68), .B0(N46), .B1(n11), .Y(n63) );
  OAI221XL U31 ( .A0(\add_417/A[5] ), .A1(n27), .B0(\add_417/A[6] ), .B1(n26), 
        .C0(n64), .Y(encode_out[6]) );
  AOI22X1 U32 ( .A0(N87), .A1(n3), .B0(N47), .B1(n12), .Y(n64) );
  OAI221XL U33 ( .A0(\add_417/A[6] ), .A1(n27), .B0(\add_417/A[7] ), .B1(n26), 
        .C0(n65), .Y(encode_out[7]) );
  AOI22X1 U34 ( .A0(N88), .A1(n4), .B0(N48), .B1(n13), .Y(n65) );
  OAI221XL U35 ( .A0(\add_417/A[7] ), .A1(n27), .B0(\add_417/A[8] ), .B1(n26), 
        .C0(n66), .Y(encode_out[8]) );
  AOI22X1 U36 ( .A0(N89), .A1(n68), .B0(N49), .B1(n13), .Y(n66) );
  OAI221XL U37 ( .A0(\add_417/A[8] ), .A1(n27), .B0(\add_417/A[9] ), .B1(n26), 
        .C0(n69), .Y(encode_out[9]) );
  OAI221XL U38 ( .A0(\add_417/A[9] ), .A1(n27), .B0(\add_417/A[10] ), .B1(n26), 
        .C0(n30), .Y(encode_out[10]) );
  OAI221XL U39 ( .A0(\add_417/A[10] ), .A1(n27), .B0(\add_417/A[11] ), .B1(n26), .C0(n31), .Y(encode_out[11]) );
  OAI221XL U40 ( .A0(\add_417/A[11] ), .A1(n27), .B0(\add_417/A[12] ), .B1(n26), .C0(n32), .Y(encode_out[12]) );
  OAI221XL U41 ( .A0(\add_417/A[12] ), .A1(n27), .B0(\add_417/A[13] ), .B1(n26), .C0(n33), .Y(encode_out[13]) );
  OAI221XL U42 ( .A0(\add_417/A[13] ), .A1(n27), .B0(\add_417/A[14] ), .B1(n26), .C0(n34), .Y(encode_out[14]) );
  OAI221XL U43 ( .A0(\add_417/A[14] ), .A1(n27), .B0(n2), .B1(n26), .C0(n35), 
        .Y(encode_out[15]) );
  CLKINVX1 U44 ( .A(n38), .Y(encode_out[16]) );
  CLKINVX1 U45 ( .A(n39), .Y(encode_out[19]) );
  AOI221XL U46 ( .A0(N80), .A1(n13), .B0(n16), .B1(n68), .C0(n14), .Y(n39) );
  AOI22X1 U47 ( .A0(N84), .A1(n3), .B0(N44), .B1(n9), .Y(n61) );
  CLKINVX1 U48 ( .A(n36), .Y(n26) );
  CLKINVX1 U49 ( .A(n67), .Y(n6) );
  ADDHXL U50 ( .A(\add_417/A[3] ), .B(\add_417/carry[3] ), .CO(
        \add_417/carry[4] ), .S(N84) );
  ADDHXL U51 ( .A(\add_417/A[2] ), .B(\add_417/carry[2] ), .CO(
        \add_417/carry[3] ), .S(N83) );
  ADDHXL U52 ( .A(\add_417/A[1] ), .B(\add_417/A[0] ), .CO(\add_417/carry[2] ), 
        .S(N82) );
  ADDHXL U53 ( .A(\add_417/A[4] ), .B(\add_417/carry[4] ), .CO(
        \add_417/carry[5] ), .S(N85) );
  ADDHXL U54 ( .A(\add_417/A[5] ), .B(\add_417/carry[5] ), .CO(
        \add_417/carry[6] ), .S(N86) );
  ADDHXL U55 ( .A(\add_417/A[2] ), .B(\add_416/carry[2] ), .CO(
        \add_416/carry[3] ), .S(N44) );
  ADDHXL U56 ( .A(\add_417/A[1] ), .B(\add_417/A[0] ), .CO(\add_416/carry[2] ), 
        .S(N43) );
  ADDHXL U57 ( .A(\add_417/A[6] ), .B(\add_417/carry[6] ), .CO(
        \add_417/carry[7] ), .S(N87) );
  ADDHXL U58 ( .A(\add_417/A[3] ), .B(\add_416/carry[3] ), .CO(
        \add_416/carry[4] ), .S(N45) );
  ADDHXL U59 ( .A(\add_417/A[7] ), .B(\add_417/carry[7] ), .CO(
        \add_417/carry[8] ), .S(N88) );
  ADDHXL U60 ( .A(\add_417/A[4] ), .B(\add_416/carry[4] ), .CO(
        \add_416/carry[5] ), .S(N46) );
  ADDHXL U61 ( .A(\add_417/A[8] ), .B(\add_417/carry[8] ), .CO(
        \add_417/carry[9] ), .S(N89) );
  ADDHXL U62 ( .A(\add_417/A[5] ), .B(\add_416/carry[5] ), .CO(
        \add_416/carry[6] ), .S(N47) );
  ADDHXL U63 ( .A(\add_417/A[9] ), .B(\add_417/carry[9] ), .CO(
        \add_417/carry[10] ), .S(N90) );
  AOI22X1 U64 ( .A0(N90), .A1(n3), .B0(N50), .B1(n13), .Y(n69) );
  ADDHXL U65 ( .A(\add_417/A[6] ), .B(\add_416/carry[6] ), .CO(
        \add_416/carry[7] ), .S(N48) );
  ADDHXL U66 ( .A(\add_417/A[10] ), .B(\add_417/carry[10] ), .CO(
        \add_417/carry[11] ), .S(N91) );
  AOI22X1 U67 ( .A0(N91), .A1(n4), .B0(N51), .B1(n13), .Y(n30) );
  ADDHXL U68 ( .A(\add_417/A[7] ), .B(\add_416/carry[7] ), .CO(
        \add_416/carry[8] ), .S(N49) );
  ADDHXL U69 ( .A(\add_417/A[11] ), .B(\add_417/carry[11] ), .CO(
        \add_417/carry[12] ), .S(N92) );
  AOI22X1 U70 ( .A0(N92), .A1(n68), .B0(N52), .B1(n13), .Y(n31) );
  ADDHXL U71 ( .A(\add_417/A[8] ), .B(\add_416/carry[8] ), .CO(
        \add_416/carry[9] ), .S(N50) );
  AOI221XL U72 ( .A0(N57), .A1(n13), .B0(n16), .B1(n4), .C0(n14), .Y(n38) );
  ADDHXL U73 ( .A(\add_417/A[12] ), .B(\add_417/carry[12] ), .CO(
        \add_417/carry[13] ), .S(N93) );
  ADDHXL U74 ( .A(\add_417/A[13] ), .B(\add_417/carry[13] ), .CO(
        \add_417/carry[14] ), .S(N94) );
  ADDHXL U75 ( .A(\add_417/A[14] ), .B(\add_417/carry[14] ), .CO(
        \add_417/carry[15] ), .S(N95) );
  AOI22X1 U76 ( .A0(N93), .A1(n3), .B0(N53), .B1(n13), .Y(n32) );
  ADDHXL U77 ( .A(\add_417/A[9] ), .B(\add_416/carry[9] ), .CO(
        \add_416/carry[10] ), .S(N51) );
  AOI22X1 U78 ( .A0(N94), .A1(n4), .B0(N54), .B1(n13), .Y(n33) );
  ADDHXL U79 ( .A(\add_417/A[10] ), .B(\add_416/carry[10] ), .CO(
        \add_416/carry[11] ), .S(N52) );
  AOI22X1 U80 ( .A0(N96), .A1(n3), .B0(N56), .B1(n13), .Y(n35) );
  AOI22X1 U81 ( .A0(N95), .A1(n68), .B0(N55), .B1(n13), .Y(n34) );
  ADDHXL U82 ( .A(\add_417/A[11] ), .B(\add_416/carry[11] ), .CO(
        \add_416/carry[12] ), .S(N53) );
  ADDHXL U83 ( .A(\add_417/A[12] ), .B(\add_416/carry[12] ), .CO(
        \add_416/carry[13] ), .S(N54) );
  ADDHXL U84 ( .A(\add_417/A[13] ), .B(\add_416/carry[13] ), .CO(
        \add_416/carry[14] ), .S(N55) );
  ADDHXL U85 ( .A(\add_417/A[14] ), .B(\add_416/carry[14] ), .CO(
        \add_416/carry[15] ), .S(N56) );
  OA21XL U86 ( .A0(n37), .A1(n36), .B0(multiplicand[15]), .Y(n14) );
  OA21XL U87 ( .A0(n37), .A1(n36), .B0(multiplicand[15]), .Y(n15) );
  OA21XL U88 ( .A0(n37), .A1(n36), .B0(multiplicand[15]), .Y(n59) );
  AOI221XL U89 ( .A0(N80), .A1(n13), .B0(n16), .B1(n3), .C0(n14), .Y(n57) );
  AOI221XL U90 ( .A0(N80), .A1(n13), .B0(n17), .B1(n68), .C0(n59), .Y(n44) );
  AOI221XL U91 ( .A0(N80), .A1(n13), .B0(n16), .B1(n68), .C0(n59), .Y(n60) );
  AOI221XL U92 ( .A0(N80), .A1(n13), .B0(n17), .B1(n4), .C0(n15), .Y(n58) );
  AOI221XL U93 ( .A0(N80), .A1(n13), .B0(n16), .B1(n4), .C0(n15), .Y(n42) );
  AOI221XL U94 ( .A0(N80), .A1(n13), .B0(n17), .B1(n3), .C0(n14), .Y(n41) );
  NOR3X1 U95 ( .A(neg), .B(recode_bit[0]), .C(n28), .Y(n37) );
  CLKINVX1 U96 ( .A(recode_bit[1]), .Y(n28) );
  AND3X2 U97 ( .A(neg), .B(n29), .C(recode_bit[1]), .Y(n67) );
  AND3X2 U98 ( .A(neg), .B(n28), .C(recode_bit[0]), .Y(n68) );
  AND3X2 U99 ( .A(neg), .B(n28), .C(recode_bit[0]), .Y(n4) );
  AND3X2 U100 ( .A(neg), .B(n28), .C(recode_bit[0]), .Y(n3) );
  AO22X1 U101 ( .A0(multiplicand[0]), .A1(n36), .B0(multiplicand[0]), .B1(n3), 
        .Y(encode_out[0]) );
  NOR3X1 U102 ( .A(neg), .B(recode_bit[1]), .C(n29), .Y(n36) );
  CLKINVX1 U103 ( .A(recode_bit[0]), .Y(n29) );
  CLKINVX1 U104 ( .A(multiplicand[0]), .Y(\add_417/A[0] ) );
  CLKINVX1 U105 ( .A(multiplicand[1]), .Y(\add_417/A[1] ) );
  CLKINVX1 U106 ( .A(multiplicand[2]), .Y(\add_417/A[2] ) );
  CLKINVX1 U107 ( .A(multiplicand[3]), .Y(\add_417/A[3] ) );
  CLKINVX1 U108 ( .A(multiplicand[4]), .Y(\add_417/A[4] ) );
  CLKINVX1 U109 ( .A(multiplicand[5]), .Y(\add_417/A[5] ) );
  CLKINVX1 U110 ( .A(multiplicand[6]), .Y(\add_417/A[6] ) );
  CLKINVX1 U111 ( .A(multiplicand[7]), .Y(\add_417/A[7] ) );
  CLKINVX1 U112 ( .A(multiplicand[8]), .Y(\add_417/A[8] ) );
  CLKINVX1 U113 ( .A(multiplicand[9]), .Y(\add_417/A[9] ) );
  CLKINVX1 U114 ( .A(multiplicand[10]), .Y(\add_417/A[10] ) );
  CLKINVX1 U115 ( .A(multiplicand[11]), .Y(\add_417/A[11] ) );
  CLKINVX1 U116 ( .A(multiplicand[12]), .Y(\add_417/A[12] ) );
  CLKINVX1 U117 ( .A(multiplicand[13]), .Y(\add_417/A[13] ) );
  CLKINVX1 U118 ( .A(multiplicand[15]), .Y(n2) );
  CLKINVX1 U119 ( .A(multiplicand[14]), .Y(\add_417/A[14] ) );
  XOR2X1 U120 ( .A(\add_416/carry[15] ), .B(n2), .Y(N57) );
  XOR2X1 U121 ( .A(\add_417/carry[15] ), .B(n2), .Y(N96) );
endmodule


module booth_encode_16bit_6 ( multiplicand, neg, recode_bit, encode_out );
  input [15:0] multiplicand;
  input [1:0] recode_bit;
  output [39:0] encode_out;
  input neg;
  wire   N42, N43, N44, N45, N46, N47, N48, N49, N50, N51, N52, N53, N54, N55,
         N56, N57, N80, N81, N82, N83, N84, N85, N86, N87, N88, N89, N90, N91,
         N92, N93, N94, N95, N96, \add_417/carry[15] , \add_417/carry[14] ,
         \add_417/carry[13] , \add_417/carry[12] , \add_417/carry[11] ,
         \add_417/carry[10] , \add_417/carry[9] , \add_417/carry[8] ,
         \add_417/carry[7] , \add_417/carry[6] , \add_417/carry[5] ,
         \add_417/carry[4] , \add_417/carry[3] , \add_417/carry[2] ,
         \add_417/A[0] , \add_417/A[1] , \add_417/A[2] , \add_417/A[3] ,
         \add_417/A[4] , \add_417/A[5] , \add_417/A[6] , \add_417/A[7] ,
         \add_417/A[8] , \add_417/A[9] , \add_417/A[10] , \add_417/A[11] ,
         \add_417/A[12] , \add_417/A[13] , \add_417/A[14] ,
         \add_416/carry[15] , \add_416/carry[14] , \add_416/carry[13] ,
         \add_416/carry[12] , \add_416/carry[11] , \add_416/carry[10] ,
         \add_416/carry[9] , \add_416/carry[8] , \add_416/carry[7] ,
         \add_416/carry[6] , \add_416/carry[5] , \add_416/carry[4] ,
         \add_416/carry[3] , \add_416/carry[2] , n1, n2, n3, n4, n5, n6, n7,
         n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, \encode_out[34] ,
         \encode_out[33] , \encode_out[32] , \encode_out[31] ,
         \encode_out[30] , n25, n26, n27, n28, n29, n30, n31, n32, n33, n34,
         n35, n36, n37, n38, n39, n40, n41, n42, n43, n44, n54, n56, n57, n58,
         n59, n60, n61, n62, n63, n64, n65;
  assign encode_out[22] = \encode_out[34] ;
  assign encode_out[28] = \encode_out[34] ;
  assign encode_out[34] = \encode_out[34] ;
  assign encode_out[18] = \encode_out[33] ;
  assign encode_out[39] = \encode_out[33] ;
  assign encode_out[21] = \encode_out[33] ;
  assign encode_out[33] = \encode_out[33] ;
  assign encode_out[38] = \encode_out[32] ;
  assign encode_out[26] = \encode_out[32] ;
  assign encode_out[20] = \encode_out[32] ;
  assign encode_out[17] = \encode_out[32] ;
  assign encode_out[23] = \encode_out[32] ;
  assign encode_out[35] = \encode_out[32] ;
  assign encode_out[29] = \encode_out[32] ;
  assign encode_out[32] = \encode_out[32] ;
  assign encode_out[37] = \encode_out[31] ;
  assign encode_out[25] = \encode_out[31] ;
  assign encode_out[31] = \encode_out[31] ;
  assign encode_out[27] = \encode_out[30] ;
  assign encode_out[36] = \encode_out[30] ;
  assign encode_out[24] = \encode_out[30] ;
  assign encode_out[30] = \encode_out[30] ;

  NOR2X1 U3 ( .A(\add_417/carry[15] ), .B(multiplicand[15]), .Y(n1) );
  CLKBUFX3 U4 ( .A(n1), .Y(n16) );
  CLKBUFX3 U5 ( .A(n1), .Y(n17) );
  CLKINVX1 U6 ( .A(n5), .Y(n7) );
  CLKINVX1 U7 ( .A(n5), .Y(n8) );
  CLKINVX1 U8 ( .A(n5), .Y(n9) );
  CLKINVX1 U9 ( .A(n5), .Y(n10) );
  CLKINVX1 U10 ( .A(n6), .Y(n11) );
  CLKINVX1 U11 ( .A(n6), .Y(n12) );
  CLKINVX1 U12 ( .A(n6), .Y(n13) );
  NOR2X1 U13 ( .A(\add_416/carry[15] ), .B(multiplicand[15]), .Y(N80) );
  CLKINVX1 U14 ( .A(n54), .Y(\encode_out[34] ) );
  CLKINVX1 U15 ( .A(n44), .Y(\encode_out[33] ) );
  CLKINVX1 U16 ( .A(n43), .Y(\encode_out[32] ) );
  CLKINVX1 U17 ( .A(n42), .Y(\encode_out[31] ) );
  CLKINVX1 U18 ( .A(n41), .Y(\encode_out[30] ) );
  OAI221XL U19 ( .A0(\add_417/A[2] ), .A1(n26), .B0(\add_417/A[3] ), .B1(n25), 
        .C0(n57), .Y(encode_out[3]) );
  CLKINVX1 U20 ( .A(n36), .Y(n26) );
  OAI221XL U21 ( .A0(\add_417/A[0] ), .A1(n26), .B0(\add_417/A[1] ), .B1(n25), 
        .C0(n39), .Y(encode_out[1]) );
  OAI221XL U22 ( .A0(\add_417/A[1] ), .A1(n26), .B0(\add_417/A[2] ), .B1(n25), 
        .C0(n40), .Y(encode_out[2]) );
  AOI22X1 U23 ( .A0(N82), .A1(n4), .B0(N42), .B1(n7), .Y(n39) );
  CLKINVX1 U24 ( .A(\add_417/A[0] ), .Y(N42) );
  OAI221XL U25 ( .A0(\add_417/A[3] ), .A1(n26), .B0(\add_417/A[4] ), .B1(n25), 
        .C0(n58), .Y(encode_out[4]) );
  OAI221XL U26 ( .A0(\add_417/A[4] ), .A1(n26), .B0(\add_417/A[5] ), .B1(n25), 
        .C0(n59), .Y(encode_out[5]) );
  OAI221XL U27 ( .A0(\add_417/A[5] ), .A1(n26), .B0(\add_417/A[6] ), .B1(n25), 
        .C0(n60), .Y(encode_out[6]) );
  OAI221XL U28 ( .A0(\add_417/A[6] ), .A1(n26), .B0(\add_417/A[7] ), .B1(n25), 
        .C0(n61), .Y(encode_out[7]) );
  AOI22X1 U29 ( .A0(N88), .A1(n4), .B0(N48), .B1(n13), .Y(n61) );
  OAI221XL U30 ( .A0(\add_417/A[7] ), .A1(n26), .B0(\add_417/A[8] ), .B1(n25), 
        .C0(n62), .Y(encode_out[8]) );
  AOI22X1 U31 ( .A0(N89), .A1(n64), .B0(N49), .B1(n13), .Y(n62) );
  OAI221XL U32 ( .A0(\add_417/A[8] ), .A1(n26), .B0(\add_417/A[9] ), .B1(n25), 
        .C0(n65), .Y(encode_out[9]) );
  AOI22X1 U33 ( .A0(N90), .A1(n3), .B0(N50), .B1(n13), .Y(n65) );
  OAI221XL U34 ( .A0(\add_417/A[9] ), .A1(n26), .B0(\add_417/A[10] ), .B1(n25), 
        .C0(n29), .Y(encode_out[10]) );
  AOI22X1 U35 ( .A0(N91), .A1(n4), .B0(N51), .B1(n13), .Y(n29) );
  OAI221XL U36 ( .A0(\add_417/A[10] ), .A1(n26), .B0(\add_417/A[11] ), .B1(n25), .C0(n30), .Y(encode_out[11]) );
  AOI22X1 U37 ( .A0(N92), .A1(n64), .B0(N52), .B1(n13), .Y(n30) );
  OAI221XL U38 ( .A0(\add_417/A[11] ), .A1(n26), .B0(\add_417/A[12] ), .B1(n25), .C0(n31), .Y(encode_out[12]) );
  AOI22X1 U39 ( .A0(N93), .A1(n3), .B0(N53), .B1(n13), .Y(n31) );
  OAI221XL U40 ( .A0(\add_417/A[12] ), .A1(n26), .B0(\add_417/A[13] ), .B1(n25), .C0(n32), .Y(encode_out[13]) );
  AOI22X1 U41 ( .A0(N94), .A1(n4), .B0(N54), .B1(n13), .Y(n32) );
  OAI221XL U42 ( .A0(\add_417/A[13] ), .A1(n26), .B0(\add_417/A[14] ), .B1(n25), .C0(n33), .Y(encode_out[14]) );
  AOI22X1 U43 ( .A0(N95), .A1(n64), .B0(N55), .B1(n13), .Y(n33) );
  OAI221XL U44 ( .A0(\add_417/A[14] ), .A1(n26), .B0(n2), .B1(n25), .C0(n34), 
        .Y(encode_out[15]) );
  AOI22X1 U45 ( .A0(N96), .A1(n3), .B0(N56), .B1(n13), .Y(n34) );
  CLKINVX1 U46 ( .A(n37), .Y(encode_out[16]) );
  CLKINVX1 U47 ( .A(n38), .Y(encode_out[19]) );
  CLKINVX1 U48 ( .A(n63), .Y(n5) );
  CLKINVX1 U49 ( .A(n35), .Y(n25) );
  AOI22X1 U50 ( .A0(N83), .A1(n64), .B0(N43), .B1(n8), .Y(n40) );
  AOI22X1 U51 ( .A0(N84), .A1(n3), .B0(N44), .B1(n9), .Y(n57) );
  AOI22X1 U52 ( .A0(N85), .A1(n4), .B0(N45), .B1(n10), .Y(n58) );
  AOI22X1 U53 ( .A0(N86), .A1(n64), .B0(N46), .B1(n11), .Y(n59) );
  CLKINVX1 U54 ( .A(n63), .Y(n6) );
  AOI22X1 U55 ( .A0(N87), .A1(n3), .B0(N47), .B1(n12), .Y(n60) );
  ADDHXL U56 ( .A(\add_417/A[1] ), .B(\add_417/A[0] ), .CO(\add_417/carry[2] ), 
        .S(N82) );
  ADDHXL U57 ( .A(\add_417/A[2] ), .B(\add_417/carry[2] ), .CO(
        \add_417/carry[3] ), .S(N83) );
  ADDHXL U58 ( .A(\add_417/A[3] ), .B(\add_417/carry[3] ), .CO(
        \add_417/carry[4] ), .S(N84) );
  ADDHXL U59 ( .A(\add_417/A[4] ), .B(\add_417/carry[4] ), .CO(
        \add_417/carry[5] ), .S(N85) );
  ADDHXL U60 ( .A(\add_417/A[1] ), .B(\add_417/A[0] ), .CO(\add_416/carry[2] ), 
        .S(N43) );
  ADDHXL U61 ( .A(\add_417/A[5] ), .B(\add_417/carry[5] ), .CO(
        \add_417/carry[6] ), .S(N86) );
  ADDHXL U62 ( .A(\add_417/A[2] ), .B(\add_416/carry[2] ), .CO(
        \add_416/carry[3] ), .S(N44) );
  ADDHXL U63 ( .A(\add_417/A[6] ), .B(\add_417/carry[6] ), .CO(
        \add_417/carry[7] ), .S(N87) );
  ADDHXL U64 ( .A(\add_417/A[3] ), .B(\add_416/carry[3] ), .CO(
        \add_416/carry[4] ), .S(N45) );
  ADDHXL U65 ( .A(\add_417/A[7] ), .B(\add_417/carry[7] ), .CO(
        \add_417/carry[8] ), .S(N88) );
  ADDHXL U66 ( .A(\add_417/A[4] ), .B(\add_416/carry[4] ), .CO(
        \add_416/carry[5] ), .S(N46) );
  ADDHXL U67 ( .A(\add_417/A[8] ), .B(\add_417/carry[8] ), .CO(
        \add_417/carry[9] ), .S(N89) );
  ADDHXL U68 ( .A(\add_417/A[5] ), .B(\add_416/carry[5] ), .CO(
        \add_416/carry[6] ), .S(N47) );
  ADDHXL U69 ( .A(\add_417/A[9] ), .B(\add_417/carry[9] ), .CO(
        \add_417/carry[10] ), .S(N90) );
  ADDHXL U70 ( .A(\add_417/A[6] ), .B(\add_416/carry[6] ), .CO(
        \add_416/carry[7] ), .S(N48) );
  ADDHXL U71 ( .A(\add_417/A[10] ), .B(\add_417/carry[10] ), .CO(
        \add_417/carry[11] ), .S(N91) );
  ADDHXL U72 ( .A(\add_417/A[7] ), .B(\add_416/carry[7] ), .CO(
        \add_416/carry[8] ), .S(N49) );
  ADDHXL U73 ( .A(\add_417/A[11] ), .B(\add_417/carry[11] ), .CO(
        \add_417/carry[12] ), .S(N92) );
  AOI221XL U74 ( .A0(N57), .A1(n13), .B0(n16), .B1(n4), .C0(n14), .Y(n37) );
  ADDHXL U75 ( .A(\add_417/A[12] ), .B(\add_417/carry[12] ), .CO(
        \add_417/carry[13] ), .S(N93) );
  ADDHXL U76 ( .A(\add_417/A[13] ), .B(\add_417/carry[13] ), .CO(
        \add_417/carry[14] ), .S(N94) );
  ADDHXL U77 ( .A(\add_417/A[14] ), .B(\add_417/carry[14] ), .CO(
        \add_417/carry[15] ), .S(N95) );
  ADDHXL U78 ( .A(\add_417/A[8] ), .B(\add_416/carry[8] ), .CO(
        \add_416/carry[9] ), .S(N50) );
  ADDHXL U79 ( .A(\add_417/A[9] ), .B(\add_416/carry[9] ), .CO(
        \add_416/carry[10] ), .S(N51) );
  ADDHXL U80 ( .A(\add_417/A[10] ), .B(\add_416/carry[10] ), .CO(
        \add_416/carry[11] ), .S(N52) );
  ADDHXL U81 ( .A(\add_417/A[11] ), .B(\add_416/carry[11] ), .CO(
        \add_416/carry[12] ), .S(N53) );
  ADDHXL U82 ( .A(\add_417/A[12] ), .B(\add_416/carry[12] ), .CO(
        \add_416/carry[13] ), .S(N54) );
  ADDHXL U83 ( .A(\add_417/A[14] ), .B(\add_416/carry[14] ), .CO(
        \add_416/carry[15] ), .S(N56) );
  ADDHXL U84 ( .A(\add_417/A[13] ), .B(\add_416/carry[13] ), .CO(
        \add_416/carry[14] ), .S(N55) );
  AOI221XL U85 ( .A0(N80), .A1(n13), .B0(n16), .B1(n64), .C0(n14), .Y(n38) );
  OA21XL U86 ( .A0(n36), .A1(n35), .B0(multiplicand[15]), .Y(n14) );
  OA21XL U87 ( .A0(n36), .A1(n35), .B0(multiplicand[15]), .Y(n15) );
  OA21XL U88 ( .A0(n36), .A1(n35), .B0(multiplicand[15]), .Y(n56) );
  AOI221XL U89 ( .A0(N80), .A1(n13), .B0(n17), .B1(n3), .C0(n14), .Y(n54) );
  AOI221XL U90 ( .A0(N80), .A1(n13), .B0(n16), .B1(n64), .C0(n56), .Y(n44) );
  AOI221XL U91 ( .A0(N80), .A1(n13), .B0(n17), .B1(n4), .C0(n15), .Y(n43) );
  AOI221XL U92 ( .A0(N80), .A1(n13), .B0(n16), .B1(n3), .C0(n14), .Y(n42) );
  AOI221XL U93 ( .A0(N80), .A1(n13), .B0(n17), .B1(n64), .C0(n56), .Y(n41) );
  NOR3X1 U94 ( .A(neg), .B(recode_bit[0]), .C(n27), .Y(n36) );
  CLKINVX1 U95 ( .A(recode_bit[1]), .Y(n27) );
  AND3X2 U96 ( .A(neg), .B(n27), .C(recode_bit[0]), .Y(n4) );
  AND3X2 U97 ( .A(neg), .B(n28), .C(recode_bit[1]), .Y(n63) );
  NOR3X1 U98 ( .A(neg), .B(recode_bit[1]), .C(n28), .Y(n35) );
  AND3X2 U99 ( .A(neg), .B(n27), .C(recode_bit[0]), .Y(n3) );
  AO22X1 U100 ( .A0(multiplicand[0]), .A1(n35), .B0(N81), .B1(n3), .Y(
        encode_out[0]) );
  CLKINVX1 U101 ( .A(\add_417/A[0] ), .Y(N81) );
  AND3X2 U102 ( .A(neg), .B(n27), .C(recode_bit[0]), .Y(n64) );
  CLKINVX1 U103 ( .A(recode_bit[0]), .Y(n28) );
  CLKINVX1 U104 ( .A(multiplicand[0]), .Y(\add_417/A[0] ) );
  CLKINVX1 U105 ( .A(multiplicand[1]), .Y(\add_417/A[1] ) );
  CLKINVX1 U106 ( .A(multiplicand[2]), .Y(\add_417/A[2] ) );
  CLKINVX1 U107 ( .A(multiplicand[3]), .Y(\add_417/A[3] ) );
  CLKINVX1 U108 ( .A(multiplicand[4]), .Y(\add_417/A[4] ) );
  CLKINVX1 U109 ( .A(multiplicand[5]), .Y(\add_417/A[5] ) );
  CLKINVX1 U110 ( .A(multiplicand[6]), .Y(\add_417/A[6] ) );
  CLKINVX1 U111 ( .A(multiplicand[7]), .Y(\add_417/A[7] ) );
  CLKINVX1 U112 ( .A(multiplicand[8]), .Y(\add_417/A[8] ) );
  CLKINVX1 U113 ( .A(multiplicand[9]), .Y(\add_417/A[9] ) );
  CLKINVX1 U114 ( .A(multiplicand[10]), .Y(\add_417/A[10] ) );
  CLKINVX1 U115 ( .A(multiplicand[11]), .Y(\add_417/A[11] ) );
  CLKINVX1 U116 ( .A(multiplicand[12]), .Y(\add_417/A[12] ) );
  CLKINVX1 U117 ( .A(multiplicand[13]), .Y(\add_417/A[13] ) );
  CLKINVX1 U118 ( .A(multiplicand[15]), .Y(n2) );
  CLKINVX1 U119 ( .A(multiplicand[14]), .Y(\add_417/A[14] ) );
  XOR2X1 U120 ( .A(\add_416/carry[15] ), .B(n2), .Y(N57) );
  XOR2X1 U121 ( .A(\add_417/carry[15] ), .B(n2), .Y(N96) );
endmodule


module booth_encode_16bit_5 ( multiplicand, neg, recode_bit, encode_out );
  input [15:0] multiplicand;
  input [1:0] recode_bit;
  output [39:0] encode_out;
  input neg;
  wire   N43, N44, N45, N46, N47, N48, N49, N50, N51, N52, N53, N54, N55, N56,
         N57, N80, N81, N82, N83, N84, N85, N86, N87, N88, N89, N90, N91, N92,
         N93, N94, N95, N96, \add_417/carry[15] , \add_417/carry[14] ,
         \add_417/carry[13] , \add_417/carry[12] , \add_417/carry[11] ,
         \add_417/carry[10] , \add_417/carry[9] , \add_417/carry[8] ,
         \add_417/carry[7] , \add_417/carry[6] , \add_417/carry[5] ,
         \add_417/carry[4] , \add_417/carry[3] , \add_417/carry[2] ,
         \add_417/A[0] , \add_417/A[1] , \add_417/A[2] , \add_417/A[3] ,
         \add_417/A[4] , \add_417/A[5] , \add_417/A[6] , \add_417/A[7] ,
         \add_417/A[8] , \add_417/A[9] , \add_417/A[10] , \add_417/A[11] ,
         \add_417/A[12] , \add_417/A[13] , \add_417/A[14] ,
         \add_416/carry[15] , \add_416/carry[14] , \add_416/carry[13] ,
         \add_416/carry[12] , \add_416/carry[11] , \add_416/carry[10] ,
         \add_416/carry[9] , \add_416/carry[8] , \add_416/carry[7] ,
         \add_416/carry[6] , \add_416/carry[5] , \add_416/carry[4] ,
         \add_416/carry[3] , \add_416/carry[2] , n1, n2, n3, n4, n5, n6, n7,
         n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, \encode_out[36] ,
         \encode_out[35] , \encode_out[34] , \encode_out[33] ,
         \encode_out[32] , n25, n26, n27, n28, n29, n30, n31, n32, n33, n34,
         n35, n36, n37, n38, n39, n40, n41, n42, n43, n44, n54, n56, n57, n58,
         n59, n60, n61, n62, n63, n64, n65;
  assign encode_out[18] = \encode_out[36] ;
  assign encode_out[21] = \encode_out[36] ;
  assign encode_out[30] = \encode_out[36] ;
  assign encode_out[36] = \encode_out[36] ;
  assign encode_out[23] = \encode_out[35] ;
  assign encode_out[35] = \encode_out[35] ;
  assign encode_out[22] = \encode_out[34] ;
  assign encode_out[25] = \encode_out[34] ;
  assign encode_out[28] = \encode_out[34] ;
  assign encode_out[37] = \encode_out[34] ;
  assign encode_out[31] = \encode_out[34] ;
  assign encode_out[34] = \encode_out[34] ;
  assign encode_out[24] = \encode_out[33] ;
  assign encode_out[39] = \encode_out[33] ;
  assign encode_out[27] = \encode_out[33] ;
  assign encode_out[33] = \encode_out[33] ;
  assign encode_out[20] = \encode_out[32] ;
  assign encode_out[26] = \encode_out[32] ;
  assign encode_out[38] = \encode_out[32] ;
  assign encode_out[17] = \encode_out[32] ;
  assign encode_out[29] = \encode_out[32] ;
  assign encode_out[32] = \encode_out[32] ;

  NOR2X1 U3 ( .A(\add_417/carry[15] ), .B(multiplicand[15]), .Y(n1) );
  OAI221XL U4 ( .A0(\add_417/A[1] ), .A1(n26), .B0(\add_417/A[2] ), .B1(n25), 
        .C0(n40), .Y(encode_out[2]) );
  CLKBUFX3 U5 ( .A(n1), .Y(n16) );
  CLKBUFX3 U6 ( .A(n1), .Y(n17) );
  CLKINVX1 U7 ( .A(n5), .Y(n8) );
  CLKINVX1 U8 ( .A(n5), .Y(n9) );
  CLKINVX1 U9 ( .A(n5), .Y(n10) );
  CLKINVX1 U10 ( .A(n5), .Y(n7) );
  CLKINVX1 U11 ( .A(n6), .Y(n11) );
  CLKINVX1 U12 ( .A(n6), .Y(n12) );
  CLKINVX1 U13 ( .A(n6), .Y(n13) );
  NOR2X1 U14 ( .A(\add_416/carry[15] ), .B(multiplicand[15]), .Y(N80) );
  CLKINVX1 U15 ( .A(n54), .Y(\encode_out[36] ) );
  CLKINVX1 U16 ( .A(n44), .Y(\encode_out[35] ) );
  CLKINVX1 U17 ( .A(n43), .Y(\encode_out[34] ) );
  CLKINVX1 U18 ( .A(n42), .Y(\encode_out[33] ) );
  CLKINVX1 U19 ( .A(n41), .Y(\encode_out[32] ) );
  OAI221XL U20 ( .A0(\add_417/A[0] ), .A1(n26), .B0(\add_417/A[1] ), .B1(n25), 
        .C0(n39), .Y(encode_out[1]) );
  AOI22X1 U21 ( .A0(N82), .A1(n4), .B0(N81), .B1(n7), .Y(n39) );
  OAI221XL U22 ( .A0(\add_417/A[4] ), .A1(n26), .B0(\add_417/A[5] ), .B1(n25), 
        .C0(n59), .Y(encode_out[5]) );
  AOI22X1 U23 ( .A0(N86), .A1(n64), .B0(N46), .B1(n11), .Y(n59) );
  OAI221XL U24 ( .A0(\add_417/A[2] ), .A1(n26), .B0(\add_417/A[3] ), .B1(n25), 
        .C0(n57), .Y(encode_out[3]) );
  OAI221XL U25 ( .A0(\add_417/A[3] ), .A1(n26), .B0(\add_417/A[4] ), .B1(n25), 
        .C0(n58), .Y(encode_out[4]) );
  AOI22X1 U26 ( .A0(N85), .A1(n4), .B0(N45), .B1(n10), .Y(n58) );
  OAI221XL U27 ( .A0(\add_417/A[5] ), .A1(n26), .B0(\add_417/A[6] ), .B1(n25), 
        .C0(n60), .Y(encode_out[6]) );
  AOI22X1 U28 ( .A0(N87), .A1(n3), .B0(N47), .B1(n12), .Y(n60) );
  OAI221XL U29 ( .A0(\add_417/A[6] ), .A1(n26), .B0(\add_417/A[7] ), .B1(n25), 
        .C0(n61), .Y(encode_out[7]) );
  AOI22X1 U30 ( .A0(N88), .A1(n4), .B0(N48), .B1(n13), .Y(n61) );
  OAI221XL U31 ( .A0(\add_417/A[7] ), .A1(n26), .B0(\add_417/A[8] ), .B1(n25), 
        .C0(n62), .Y(encode_out[8]) );
  AOI22X1 U32 ( .A0(N89), .A1(n64), .B0(N49), .B1(n13), .Y(n62) );
  OAI221XL U33 ( .A0(\add_417/A[8] ), .A1(n26), .B0(\add_417/A[9] ), .B1(n25), 
        .C0(n65), .Y(encode_out[9]) );
  OAI221XL U34 ( .A0(\add_417/A[9] ), .A1(n26), .B0(\add_417/A[10] ), .B1(n25), 
        .C0(n29), .Y(encode_out[10]) );
  OAI221XL U35 ( .A0(\add_417/A[10] ), .A1(n26), .B0(\add_417/A[11] ), .B1(n25), .C0(n30), .Y(encode_out[11]) );
  OAI221XL U36 ( .A0(\add_417/A[11] ), .A1(n26), .B0(\add_417/A[12] ), .B1(n25), .C0(n31), .Y(encode_out[12]) );
  OAI221XL U37 ( .A0(\add_417/A[12] ), .A1(n26), .B0(\add_417/A[13] ), .B1(n25), .C0(n32), .Y(encode_out[13]) );
  OAI221XL U38 ( .A0(\add_417/A[13] ), .A1(n26), .B0(\add_417/A[14] ), .B1(n25), .C0(n33), .Y(encode_out[14]) );
  OAI221XL U39 ( .A0(\add_417/A[14] ), .A1(n26), .B0(n2), .B1(n25), .C0(n34), 
        .Y(encode_out[15]) );
  CLKINVX1 U40 ( .A(n37), .Y(encode_out[16]) );
  CLKINVX1 U41 ( .A(n38), .Y(encode_out[19]) );
  AOI221XL U42 ( .A0(N80), .A1(n13), .B0(n16), .B1(n64), .C0(n14), .Y(n38) );
  AOI22X1 U43 ( .A0(N83), .A1(n64), .B0(N43), .B1(n8), .Y(n40) );
  CLKINVX1 U44 ( .A(n36), .Y(n26) );
  AOI22X1 U45 ( .A0(N84), .A1(n3), .B0(N44), .B1(n9), .Y(n57) );
  CLKINVX1 U46 ( .A(n63), .Y(n5) );
  CLKINVX1 U47 ( .A(n35), .Y(n25) );
  CLKINVX1 U48 ( .A(n63), .Y(n6) );
  ADDHXL U49 ( .A(\add_417/A[3] ), .B(\add_417/carry[3] ), .CO(
        \add_417/carry[4] ), .S(N84) );
  ADDHXL U50 ( .A(\add_417/A[2] ), .B(\add_417/carry[2] ), .CO(
        \add_417/carry[3] ), .S(N83) );
  ADDHXL U51 ( .A(\add_417/A[1] ), .B(\add_417/A[0] ), .CO(\add_417/carry[2] ), 
        .S(N82) );
  ADDHXL U52 ( .A(\add_417/A[4] ), .B(\add_417/carry[4] ), .CO(
        \add_417/carry[5] ), .S(N85) );
  ADDHXL U53 ( .A(\add_417/A[5] ), .B(\add_417/carry[5] ), .CO(
        \add_417/carry[6] ), .S(N86) );
  ADDHXL U54 ( .A(\add_417/A[2] ), .B(\add_416/carry[2] ), .CO(
        \add_416/carry[3] ), .S(N44) );
  ADDHXL U55 ( .A(\add_417/A[1] ), .B(\add_417/A[0] ), .CO(\add_416/carry[2] ), 
        .S(N43) );
  ADDHXL U56 ( .A(\add_417/A[6] ), .B(\add_417/carry[6] ), .CO(
        \add_417/carry[7] ), .S(N87) );
  ADDHXL U57 ( .A(\add_417/A[3] ), .B(\add_416/carry[3] ), .CO(
        \add_416/carry[4] ), .S(N45) );
  ADDHXL U58 ( .A(\add_417/A[7] ), .B(\add_417/carry[7] ), .CO(
        \add_417/carry[8] ), .S(N88) );
  ADDHXL U59 ( .A(\add_417/A[4] ), .B(\add_416/carry[4] ), .CO(
        \add_416/carry[5] ), .S(N46) );
  ADDHXL U60 ( .A(\add_417/A[8] ), .B(\add_417/carry[8] ), .CO(
        \add_417/carry[9] ), .S(N89) );
  ADDHXL U61 ( .A(\add_417/A[5] ), .B(\add_416/carry[5] ), .CO(
        \add_416/carry[6] ), .S(N47) );
  ADDHXL U62 ( .A(\add_417/A[9] ), .B(\add_417/carry[9] ), .CO(
        \add_417/carry[10] ), .S(N90) );
  AOI22X1 U63 ( .A0(N90), .A1(n3), .B0(N50), .B1(n13), .Y(n65) );
  ADDHXL U64 ( .A(\add_417/A[6] ), .B(\add_416/carry[6] ), .CO(
        \add_416/carry[7] ), .S(N48) );
  ADDHXL U65 ( .A(\add_417/A[10] ), .B(\add_417/carry[10] ), .CO(
        \add_417/carry[11] ), .S(N91) );
  AOI22X1 U66 ( .A0(N91), .A1(n4), .B0(N51), .B1(n13), .Y(n29) );
  ADDHXL U67 ( .A(\add_417/A[7] ), .B(\add_416/carry[7] ), .CO(
        \add_416/carry[8] ), .S(N49) );
  ADDHXL U68 ( .A(\add_417/A[11] ), .B(\add_417/carry[11] ), .CO(
        \add_417/carry[12] ), .S(N92) );
  AOI22X1 U69 ( .A0(N92), .A1(n64), .B0(N52), .B1(n13), .Y(n30) );
  ADDHXL U70 ( .A(\add_417/A[8] ), .B(\add_416/carry[8] ), .CO(
        \add_416/carry[9] ), .S(N50) );
  AOI221XL U71 ( .A0(N57), .A1(n13), .B0(n16), .B1(n4), .C0(n14), .Y(n37) );
  ADDHXL U72 ( .A(\add_417/A[12] ), .B(\add_417/carry[12] ), .CO(
        \add_417/carry[13] ), .S(N93) );
  ADDHXL U73 ( .A(\add_417/A[13] ), .B(\add_417/carry[13] ), .CO(
        \add_417/carry[14] ), .S(N94) );
  ADDHXL U74 ( .A(\add_417/A[14] ), .B(\add_417/carry[14] ), .CO(
        \add_417/carry[15] ), .S(N95) );
  AOI22X1 U75 ( .A0(N93), .A1(n3), .B0(N53), .B1(n13), .Y(n31) );
  ADDHXL U76 ( .A(\add_417/A[9] ), .B(\add_416/carry[9] ), .CO(
        \add_416/carry[10] ), .S(N51) );
  AOI22X1 U77 ( .A0(N94), .A1(n4), .B0(N54), .B1(n13), .Y(n32) );
  ADDHXL U78 ( .A(\add_417/A[10] ), .B(\add_416/carry[10] ), .CO(
        \add_416/carry[11] ), .S(N52) );
  AOI22X1 U79 ( .A0(N96), .A1(n3), .B0(N56), .B1(n13), .Y(n34) );
  AOI22X1 U80 ( .A0(N95), .A1(n64), .B0(N55), .B1(n13), .Y(n33) );
  ADDHXL U81 ( .A(\add_417/A[11] ), .B(\add_416/carry[11] ), .CO(
        \add_416/carry[12] ), .S(N53) );
  ADDHXL U82 ( .A(\add_417/A[12] ), .B(\add_416/carry[12] ), .CO(
        \add_416/carry[13] ), .S(N54) );
  ADDHXL U83 ( .A(\add_417/A[13] ), .B(\add_416/carry[13] ), .CO(
        \add_416/carry[14] ), .S(N55) );
  ADDHXL U84 ( .A(\add_417/A[14] ), .B(\add_416/carry[14] ), .CO(
        \add_416/carry[15] ), .S(N56) );
  OA21XL U85 ( .A0(n36), .A1(n35), .B0(multiplicand[15]), .Y(n14) );
  OA21XL U86 ( .A0(n36), .A1(n35), .B0(multiplicand[15]), .Y(n15) );
  OA21XL U87 ( .A0(n36), .A1(n35), .B0(multiplicand[15]), .Y(n56) );
  AOI221XL U88 ( .A0(N80), .A1(n13), .B0(n17), .B1(n64), .C0(n56), .Y(n54) );
  AOI221XL U89 ( .A0(N80), .A1(n13), .B0(n17), .B1(n3), .C0(n14), .Y(n43) );
  AOI221XL U90 ( .A0(N80), .A1(n13), .B0(n16), .B1(n64), .C0(n56), .Y(n42) );
  AOI221XL U91 ( .A0(N80), .A1(n13), .B0(n17), .B1(n4), .C0(n15), .Y(n41) );
  AOI221XL U92 ( .A0(N80), .A1(n13), .B0(n16), .B1(n4), .C0(n15), .Y(n44) );
  NOR3X1 U93 ( .A(neg), .B(recode_bit[0]), .C(n27), .Y(n36) );
  CLKINVX1 U94 ( .A(recode_bit[1]), .Y(n27) );
  AND3X2 U95 ( .A(neg), .B(n27), .C(recode_bit[0]), .Y(n64) );
  AND3X2 U96 ( .A(neg), .B(n27), .C(recode_bit[0]), .Y(n3) );
  AND3X2 U97 ( .A(neg), .B(n28), .C(recode_bit[1]), .Y(n63) );
  NOR3X1 U98 ( .A(neg), .B(recode_bit[1]), .C(n28), .Y(n35) );
  AND3X2 U99 ( .A(neg), .B(n27), .C(recode_bit[0]), .Y(n4) );
  CLKINVX1 U100 ( .A(recode_bit[0]), .Y(n28) );
  AO22X1 U101 ( .A0(multiplicand[0]), .A1(n35), .B0(N81), .B1(n3), .Y(
        encode_out[0]) );
  CLKINVX1 U102 ( .A(\add_417/A[0] ), .Y(N81) );
  CLKINVX1 U103 ( .A(multiplicand[0]), .Y(\add_417/A[0] ) );
  CLKINVX1 U104 ( .A(multiplicand[1]), .Y(\add_417/A[1] ) );
  CLKINVX1 U105 ( .A(multiplicand[2]), .Y(\add_417/A[2] ) );
  CLKINVX1 U106 ( .A(multiplicand[3]), .Y(\add_417/A[3] ) );
  CLKINVX1 U107 ( .A(multiplicand[4]), .Y(\add_417/A[4] ) );
  CLKINVX1 U108 ( .A(multiplicand[5]), .Y(\add_417/A[5] ) );
  CLKINVX1 U109 ( .A(multiplicand[6]), .Y(\add_417/A[6] ) );
  CLKINVX1 U110 ( .A(multiplicand[7]), .Y(\add_417/A[7] ) );
  CLKINVX1 U111 ( .A(multiplicand[8]), .Y(\add_417/A[8] ) );
  CLKINVX1 U112 ( .A(multiplicand[9]), .Y(\add_417/A[9] ) );
  CLKINVX1 U113 ( .A(multiplicand[10]), .Y(\add_417/A[10] ) );
  CLKINVX1 U114 ( .A(multiplicand[11]), .Y(\add_417/A[11] ) );
  CLKINVX1 U115 ( .A(multiplicand[12]), .Y(\add_417/A[12] ) );
  CLKINVX1 U116 ( .A(multiplicand[13]), .Y(\add_417/A[13] ) );
  CLKINVX1 U117 ( .A(multiplicand[15]), .Y(n2) );
  CLKINVX1 U118 ( .A(multiplicand[14]), .Y(\add_417/A[14] ) );
  XOR2X1 U119 ( .A(\add_416/carry[15] ), .B(n2), .Y(N57) );
  XOR2X1 U120 ( .A(\add_417/carry[15] ), .B(n2), .Y(N96) );
endmodule


module booth_encode_16bit_4 ( multiplicand, neg, recode_bit, encode_out );
  input [15:0] multiplicand;
  input [1:0] recode_bit;
  output [39:0] encode_out;
  input neg;
  wire   N42, N43, N44, N45, N46, N47, N48, N49, N50, N51, N52, N53, N54, N55,
         N56, N57, N80, N81, N82, N83, N84, N85, N86, N87, N88, N89, N90, N91,
         N92, N93, N94, N95, N96, \add_417/carry[15] , \add_417/carry[14] ,
         \add_417/carry[13] , \add_417/carry[12] , \add_417/carry[11] ,
         \add_417/carry[10] , \add_417/carry[9] , \add_417/carry[8] ,
         \add_417/carry[7] , \add_417/carry[6] , \add_417/carry[5] ,
         \add_417/carry[4] , \add_417/carry[3] , \add_417/carry[2] ,
         \add_417/A[0] , \add_417/A[1] , \add_417/A[2] , \add_417/A[3] ,
         \add_417/A[4] , \add_417/A[5] , \add_417/A[6] , \add_417/A[7] ,
         \add_417/A[8] , \add_417/A[9] , \add_417/A[10] , \add_417/A[11] ,
         \add_417/A[12] , \add_417/A[13] , \add_417/A[14] ,
         \add_416/carry[15] , \add_416/carry[14] , \add_416/carry[13] ,
         \add_416/carry[12] , \add_416/carry[11] , \add_416/carry[10] ,
         \add_416/carry[9] , \add_416/carry[8] , \add_416/carry[7] ,
         \add_416/carry[6] , \add_416/carry[5] , \add_416/carry[4] ,
         \add_416/carry[3] , \add_416/carry[2] , n1, n2, n3, n4, n5, n6, n7,
         n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, \encode_out[39] ,
         \encode_out[38] , \encode_out[37] , \encode_out[35] ,
         \encode_out[34] , n25, n26, n27, n28, n29, n30, n31, n32, n33, n34,
         n35, n36, n37, n38, n39, n40, n41, n42, n43, n44, n56, n57, n58, n59,
         n60, n61, n62, n63, n64, n65, n66;
  assign encode_out[18] = \encode_out[39] ;
  assign encode_out[21] = \encode_out[39] ;
  assign encode_out[27] = \encode_out[39] ;
  assign encode_out[33] = \encode_out[39] ;
  assign encode_out[36] = \encode_out[39] ;
  assign encode_out[24] = \encode_out[39] ;
  assign encode_out[30] = \encode_out[39] ;
  assign encode_out[39] = \encode_out[39] ;
  assign encode_out[17] = \encode_out[38] ;
  assign encode_out[20] = \encode_out[38] ;
  assign encode_out[26] = \encode_out[38] ;
  assign encode_out[32] = \encode_out[38] ;
  assign encode_out[38] = \encode_out[38] ;
  assign encode_out[28] = \encode_out[37] ;
  assign encode_out[37] = \encode_out[37] ;
  assign encode_out[23] = \encode_out[35] ;
  assign encode_out[29] = \encode_out[35] ;
  assign encode_out[35] = \encode_out[35] ;
  assign encode_out[22] = \encode_out[34] ;
  assign encode_out[25] = \encode_out[34] ;
  assign encode_out[31] = \encode_out[34] ;
  assign encode_out[34] = \encode_out[34] ;

  NOR2X1 U3 ( .A(\add_417/carry[15] ), .B(multiplicand[15]), .Y(n1) );
  CLKBUFX3 U4 ( .A(n1), .Y(n16) );
  CLKBUFX3 U5 ( .A(n1), .Y(n17) );
  CLKINVX1 U6 ( .A(n5), .Y(n7) );
  CLKINVX1 U7 ( .A(n5), .Y(n8) );
  CLKINVX1 U8 ( .A(n5), .Y(n9) );
  CLKINVX1 U9 ( .A(n5), .Y(n10) );
  CLKINVX1 U10 ( .A(n6), .Y(n11) );
  CLKINVX1 U11 ( .A(n6), .Y(n12) );
  CLKINVX1 U12 ( .A(n6), .Y(n13) );
  NOR2X1 U13 ( .A(\add_416/carry[15] ), .B(multiplicand[15]), .Y(N80) );
  CLKINVX1 U14 ( .A(n57), .Y(\encode_out[39] ) );
  CLKINVX1 U15 ( .A(n44), .Y(\encode_out[38] ) );
  CLKINVX1 U16 ( .A(n43), .Y(\encode_out[37] ) );
  CLKINVX1 U17 ( .A(n42), .Y(\encode_out[35] ) );
  CLKINVX1 U18 ( .A(n41), .Y(\encode_out[34] ) );
  OAI221XL U19 ( .A0(\add_417/A[2] ), .A1(n26), .B0(\add_417/A[3] ), .B1(n25), 
        .C0(n58), .Y(encode_out[3]) );
  OAI221XL U20 ( .A0(\add_417/A[0] ), .A1(n26), .B0(\add_417/A[1] ), .B1(n25), 
        .C0(n39), .Y(encode_out[1]) );
  OAI221XL U21 ( .A0(\add_417/A[1] ), .A1(n26), .B0(\add_417/A[2] ), .B1(n25), 
        .C0(n40), .Y(encode_out[2]) );
  CLKINVX1 U22 ( .A(n36), .Y(n26) );
  AOI22X1 U23 ( .A0(N82), .A1(n4), .B0(N42), .B1(n7), .Y(n39) );
  CLKINVX1 U24 ( .A(\add_417/A[0] ), .Y(N42) );
  OAI221XL U25 ( .A0(\add_417/A[3] ), .A1(n26), .B0(\add_417/A[4] ), .B1(n25), 
        .C0(n59), .Y(encode_out[4]) );
  OAI221XL U26 ( .A0(\add_417/A[4] ), .A1(n26), .B0(\add_417/A[5] ), .B1(n25), 
        .C0(n60), .Y(encode_out[5]) );
  OAI221XL U27 ( .A0(\add_417/A[5] ), .A1(n26), .B0(\add_417/A[6] ), .B1(n25), 
        .C0(n61), .Y(encode_out[6]) );
  OAI221XL U28 ( .A0(\add_417/A[6] ), .A1(n26), .B0(\add_417/A[7] ), .B1(n25), 
        .C0(n62), .Y(encode_out[7]) );
  AOI22X1 U29 ( .A0(N88), .A1(n4), .B0(N48), .B1(n13), .Y(n62) );
  OAI221XL U30 ( .A0(\add_417/A[7] ), .A1(n26), .B0(\add_417/A[8] ), .B1(n25), 
        .C0(n63), .Y(encode_out[8]) );
  AOI22X1 U31 ( .A0(N89), .A1(n65), .B0(N49), .B1(n13), .Y(n63) );
  OAI221XL U32 ( .A0(\add_417/A[8] ), .A1(n26), .B0(\add_417/A[9] ), .B1(n25), 
        .C0(n66), .Y(encode_out[9]) );
  AOI22X1 U33 ( .A0(N90), .A1(n3), .B0(N50), .B1(n13), .Y(n66) );
  OAI221XL U34 ( .A0(\add_417/A[9] ), .A1(n26), .B0(\add_417/A[10] ), .B1(n25), 
        .C0(n29), .Y(encode_out[10]) );
  AOI22X1 U35 ( .A0(N91), .A1(n4), .B0(N51), .B1(n13), .Y(n29) );
  OAI221XL U36 ( .A0(\add_417/A[10] ), .A1(n26), .B0(\add_417/A[11] ), .B1(n25), .C0(n30), .Y(encode_out[11]) );
  AOI22X1 U37 ( .A0(N92), .A1(n65), .B0(N52), .B1(n13), .Y(n30) );
  OAI221XL U38 ( .A0(\add_417/A[11] ), .A1(n26), .B0(\add_417/A[12] ), .B1(n25), .C0(n31), .Y(encode_out[12]) );
  AOI22X1 U39 ( .A0(N93), .A1(n3), .B0(N53), .B1(n13), .Y(n31) );
  OAI221XL U40 ( .A0(\add_417/A[12] ), .A1(n26), .B0(\add_417/A[13] ), .B1(n25), .C0(n32), .Y(encode_out[13]) );
  AOI22X1 U41 ( .A0(N94), .A1(n4), .B0(N54), .B1(n13), .Y(n32) );
  OAI221XL U42 ( .A0(\add_417/A[13] ), .A1(n26), .B0(\add_417/A[14] ), .B1(n25), .C0(n33), .Y(encode_out[14]) );
  AOI22X1 U43 ( .A0(N95), .A1(n65), .B0(N55), .B1(n13), .Y(n33) );
  OAI221XL U44 ( .A0(\add_417/A[14] ), .A1(n26), .B0(n2), .B1(n25), .C0(n34), 
        .Y(encode_out[15]) );
  AOI22X1 U45 ( .A0(N96), .A1(n3), .B0(N56), .B1(n13), .Y(n34) );
  CLKINVX1 U46 ( .A(n37), .Y(encode_out[16]) );
  CLKINVX1 U47 ( .A(n38), .Y(encode_out[19]) );
  CLKINVX1 U48 ( .A(n64), .Y(n5) );
  CLKINVX1 U49 ( .A(n35), .Y(n25) );
  AOI22X1 U50 ( .A0(N83), .A1(n65), .B0(N43), .B1(n8), .Y(n40) );
  AOI22X1 U51 ( .A0(N84), .A1(n3), .B0(N44), .B1(n9), .Y(n58) );
  AOI22X1 U52 ( .A0(N85), .A1(n4), .B0(N45), .B1(n10), .Y(n59) );
  AOI22X1 U53 ( .A0(N86), .A1(n65), .B0(N46), .B1(n11), .Y(n60) );
  CLKINVX1 U54 ( .A(n64), .Y(n6) );
  AOI22X1 U55 ( .A0(N87), .A1(n3), .B0(N47), .B1(n12), .Y(n61) );
  ADDHXL U56 ( .A(\add_417/A[1] ), .B(\add_417/A[0] ), .CO(\add_417/carry[2] ), 
        .S(N82) );
  ADDHXL U57 ( .A(\add_417/A[2] ), .B(\add_417/carry[2] ), .CO(
        \add_417/carry[3] ), .S(N83) );
  ADDHXL U58 ( .A(\add_417/A[3] ), .B(\add_417/carry[3] ), .CO(
        \add_417/carry[4] ), .S(N84) );
  ADDHXL U59 ( .A(\add_417/A[4] ), .B(\add_417/carry[4] ), .CO(
        \add_417/carry[5] ), .S(N85) );
  ADDHXL U60 ( .A(\add_417/A[1] ), .B(\add_417/A[0] ), .CO(\add_416/carry[2] ), 
        .S(N43) );
  ADDHXL U61 ( .A(\add_417/A[5] ), .B(\add_417/carry[5] ), .CO(
        \add_417/carry[6] ), .S(N86) );
  ADDHXL U62 ( .A(\add_417/A[2] ), .B(\add_416/carry[2] ), .CO(
        \add_416/carry[3] ), .S(N44) );
  ADDHXL U63 ( .A(\add_417/A[6] ), .B(\add_417/carry[6] ), .CO(
        \add_417/carry[7] ), .S(N87) );
  ADDHXL U64 ( .A(\add_417/A[3] ), .B(\add_416/carry[3] ), .CO(
        \add_416/carry[4] ), .S(N45) );
  ADDHXL U65 ( .A(\add_417/A[7] ), .B(\add_417/carry[7] ), .CO(
        \add_417/carry[8] ), .S(N88) );
  ADDHXL U66 ( .A(\add_417/A[4] ), .B(\add_416/carry[4] ), .CO(
        \add_416/carry[5] ), .S(N46) );
  ADDHXL U67 ( .A(\add_417/A[8] ), .B(\add_417/carry[8] ), .CO(
        \add_417/carry[9] ), .S(N89) );
  ADDHXL U68 ( .A(\add_417/A[5] ), .B(\add_416/carry[5] ), .CO(
        \add_416/carry[6] ), .S(N47) );
  ADDHXL U69 ( .A(\add_417/A[9] ), .B(\add_417/carry[9] ), .CO(
        \add_417/carry[10] ), .S(N90) );
  ADDHXL U70 ( .A(\add_417/A[6] ), .B(\add_416/carry[6] ), .CO(
        \add_416/carry[7] ), .S(N48) );
  ADDHXL U71 ( .A(\add_417/A[10] ), .B(\add_417/carry[10] ), .CO(
        \add_417/carry[11] ), .S(N91) );
  ADDHXL U72 ( .A(\add_417/A[7] ), .B(\add_416/carry[7] ), .CO(
        \add_416/carry[8] ), .S(N49) );
  ADDHXL U73 ( .A(\add_417/A[11] ), .B(\add_417/carry[11] ), .CO(
        \add_417/carry[12] ), .S(N92) );
  AOI221XL U74 ( .A0(N57), .A1(n13), .B0(n16), .B1(n4), .C0(n14), .Y(n37) );
  ADDHXL U75 ( .A(\add_417/A[12] ), .B(\add_417/carry[12] ), .CO(
        \add_417/carry[13] ), .S(N93) );
  ADDHXL U76 ( .A(\add_417/A[13] ), .B(\add_417/carry[13] ), .CO(
        \add_417/carry[14] ), .S(N94) );
  ADDHXL U77 ( .A(\add_417/A[14] ), .B(\add_417/carry[14] ), .CO(
        \add_417/carry[15] ), .S(N95) );
  ADDHXL U78 ( .A(\add_417/A[8] ), .B(\add_416/carry[8] ), .CO(
        \add_416/carry[9] ), .S(N50) );
  ADDHXL U79 ( .A(\add_417/A[9] ), .B(\add_416/carry[9] ), .CO(
        \add_416/carry[10] ), .S(N51) );
  ADDHXL U80 ( .A(\add_417/A[10] ), .B(\add_416/carry[10] ), .CO(
        \add_416/carry[11] ), .S(N52) );
  ADDHXL U81 ( .A(\add_417/A[11] ), .B(\add_416/carry[11] ), .CO(
        \add_416/carry[12] ), .S(N53) );
  ADDHXL U82 ( .A(\add_417/A[12] ), .B(\add_416/carry[12] ), .CO(
        \add_416/carry[13] ), .S(N54) );
  ADDHXL U83 ( .A(\add_417/A[14] ), .B(\add_416/carry[14] ), .CO(
        \add_416/carry[15] ), .S(N56) );
  ADDHXL U84 ( .A(\add_417/A[13] ), .B(\add_416/carry[13] ), .CO(
        \add_416/carry[14] ), .S(N55) );
  AOI221XL U85 ( .A0(N80), .A1(n13), .B0(n16), .B1(n65), .C0(n14), .Y(n38) );
  OA21XL U86 ( .A0(n36), .A1(n35), .B0(multiplicand[15]), .Y(n14) );
  OA21XL U87 ( .A0(n36), .A1(n35), .B0(multiplicand[15]), .Y(n15) );
  OA21XL U88 ( .A0(n36), .A1(n35), .B0(multiplicand[15]), .Y(n56) );
  AOI221XL U89 ( .A0(N80), .A1(n13), .B0(n17), .B1(n3), .C0(n14), .Y(n41) );
  AOI221XL U90 ( .A0(N80), .A1(n13), .B0(n16), .B1(n65), .C0(n56), .Y(n57) );
  AOI221XL U91 ( .A0(N80), .A1(n13), .B0(n17), .B1(n4), .C0(n15), .Y(n44) );
  AOI221XL U92 ( .A0(N80), .A1(n13), .B0(n16), .B1(n3), .C0(n14), .Y(n43) );
  AOI221XL U93 ( .A0(N80), .A1(n13), .B0(n16), .B1(n4), .C0(n15), .Y(n42) );
  NOR3X1 U94 ( .A(neg), .B(recode_bit[0]), .C(n27), .Y(n36) );
  CLKINVX1 U95 ( .A(recode_bit[1]), .Y(n27) );
  AND3X2 U96 ( .A(neg), .B(n27), .C(recode_bit[0]), .Y(n4) );
  AND3X2 U97 ( .A(neg), .B(n28), .C(recode_bit[1]), .Y(n64) );
  NOR3X1 U98 ( .A(neg), .B(recode_bit[1]), .C(n28), .Y(n35) );
  AND3X2 U99 ( .A(neg), .B(n27), .C(recode_bit[0]), .Y(n3) );
  AO22X1 U100 ( .A0(multiplicand[0]), .A1(n35), .B0(N81), .B1(n3), .Y(
        encode_out[0]) );
  CLKINVX1 U101 ( .A(\add_417/A[0] ), .Y(N81) );
  AND3X2 U102 ( .A(neg), .B(n27), .C(recode_bit[0]), .Y(n65) );
  CLKINVX1 U103 ( .A(recode_bit[0]), .Y(n28) );
  CLKINVX1 U104 ( .A(multiplicand[0]), .Y(\add_417/A[0] ) );
  CLKINVX1 U105 ( .A(multiplicand[1]), .Y(\add_417/A[1] ) );
  CLKINVX1 U106 ( .A(multiplicand[2]), .Y(\add_417/A[2] ) );
  CLKINVX1 U107 ( .A(multiplicand[3]), .Y(\add_417/A[3] ) );
  CLKINVX1 U108 ( .A(multiplicand[4]), .Y(\add_417/A[4] ) );
  CLKINVX1 U109 ( .A(multiplicand[5]), .Y(\add_417/A[5] ) );
  CLKINVX1 U110 ( .A(multiplicand[6]), .Y(\add_417/A[6] ) );
  CLKINVX1 U111 ( .A(multiplicand[7]), .Y(\add_417/A[7] ) );
  CLKINVX1 U112 ( .A(multiplicand[8]), .Y(\add_417/A[8] ) );
  CLKINVX1 U113 ( .A(multiplicand[9]), .Y(\add_417/A[9] ) );
  CLKINVX1 U114 ( .A(multiplicand[10]), .Y(\add_417/A[10] ) );
  CLKINVX1 U115 ( .A(multiplicand[11]), .Y(\add_417/A[11] ) );
  CLKINVX1 U116 ( .A(multiplicand[12]), .Y(\add_417/A[12] ) );
  CLKINVX1 U117 ( .A(multiplicand[13]), .Y(\add_417/A[13] ) );
  CLKINVX1 U118 ( .A(multiplicand[15]), .Y(n2) );
  CLKINVX1 U119 ( .A(multiplicand[14]), .Y(\add_417/A[14] ) );
  XOR2X1 U120 ( .A(\add_416/carry[15] ), .B(n2), .Y(N57) );
  XOR2X1 U121 ( .A(\add_417/carry[15] ), .B(n2), .Y(N96) );
endmodule


module booth_encode_16bit_3 ( multiplicand, neg, recode_bit, encode_out );
  input [15:0] multiplicand;
  input [1:0] recode_bit;
  output [39:0] encode_out;
  input neg;
  wire   N42, N43, N44, N45, N46, N47, N48, N49, N50, N51, N52, N53, N54, N55,
         N56, N57, N80, N81, N82, N83, N84, N85, N86, N87, N88, N89, N90, N91,
         N92, N93, N94, N95, N96, \add_417/carry[15] , \add_417/carry[14] ,
         \add_417/carry[13] , \add_417/carry[12] , \add_417/carry[11] ,
         \add_417/carry[10] , \add_417/carry[9] , \add_417/carry[8] ,
         \add_417/carry[7] , \add_417/carry[6] , \add_417/carry[5] ,
         \add_417/carry[4] , \add_417/carry[3] , \add_417/carry[2] ,
         \add_417/A[0] , \add_417/A[1] , \add_417/A[2] , \add_417/A[3] ,
         \add_417/A[4] , \add_417/A[5] , \add_417/A[6] , \add_417/A[7] ,
         \add_417/A[8] , \add_417/A[9] , \add_417/A[10] , \add_417/A[11] ,
         \add_417/A[12] , \add_417/A[13] , \add_417/A[14] ,
         \add_416/carry[15] , \add_416/carry[14] , \add_416/carry[13] ,
         \add_416/carry[12] , \add_416/carry[11] , \add_416/carry[10] ,
         \add_416/carry[9] , \add_416/carry[8] , \add_416/carry[7] ,
         \add_416/carry[6] , \add_416/carry[5] , \add_416/carry[4] ,
         \add_416/carry[3] , \add_416/carry[2] , n1, n2, n3, n4, n5, n6, n7,
         n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, \encode_out[39] ,
         \encode_out[38] , \encode_out[37] , \encode_out[36] , n24, n25, n26,
         n27, n28, n29, n30, n31, n32, n33, n34, n35, n36, n37, n38, n39, n40,
         n41, n42, n43, n44, n54, n55, n56, n57, n58, n59, n60, n61, n62;
  assign encode_out[24] = \encode_out[39] ;
  assign encode_out[33] = \encode_out[39] ;
  assign encode_out[39] = \encode_out[39] ;
  assign encode_out[17] = \encode_out[38] ;
  assign encode_out[20] = \encode_out[38] ;
  assign encode_out[23] = \encode_out[38] ;
  assign encode_out[26] = \encode_out[38] ;
  assign encode_out[29] = \encode_out[38] ;
  assign encode_out[32] = \encode_out[38] ;
  assign encode_out[35] = \encode_out[38] ;
  assign encode_out[38] = \encode_out[38] ;
  assign encode_out[22] = \encode_out[37] ;
  assign encode_out[25] = \encode_out[37] ;
  assign encode_out[28] = \encode_out[37] ;
  assign encode_out[31] = \encode_out[37] ;
  assign encode_out[34] = \encode_out[37] ;
  assign encode_out[37] = \encode_out[37] ;
  assign encode_out[18] = \encode_out[36] ;
  assign encode_out[21] = \encode_out[36] ;
  assign encode_out[27] = \encode_out[36] ;
  assign encode_out[30] = \encode_out[36] ;
  assign encode_out[36] = \encode_out[36] ;

  NOR2X1 U3 ( .A(\add_417/carry[15] ), .B(multiplicand[15]), .Y(n1) );
  OAI221XL U4 ( .A0(\add_417/A[1] ), .A1(n25), .B0(\add_417/A[2] ), .B1(n24), 
        .C0(n39), .Y(encode_out[2]) );
  CLKBUFX3 U5 ( .A(n1), .Y(n16) );
  CLKBUFX3 U6 ( .A(n1), .Y(n17) );
  CLKINVX1 U7 ( .A(n5), .Y(n8) );
  CLKINVX1 U8 ( .A(n5), .Y(n9) );
  CLKINVX1 U9 ( .A(n5), .Y(n10) );
  CLKINVX1 U10 ( .A(n6), .Y(n11) );
  CLKINVX1 U11 ( .A(n6), .Y(n12) );
  CLKINVX1 U12 ( .A(n5), .Y(n7) );
  CLKINVX1 U13 ( .A(n6), .Y(n13) );
  NOR2X1 U14 ( .A(\add_416/carry[15] ), .B(multiplicand[15]), .Y(N80) );
  CLKINVX1 U15 ( .A(n44), .Y(\encode_out[39] ) );
  CLKINVX1 U16 ( .A(n42), .Y(\encode_out[38] ) );
  CLKINVX1 U17 ( .A(n41), .Y(\encode_out[37] ) );
  CLKINVX1 U18 ( .A(n40), .Y(\encode_out[36] ) );
  OAI221XL U19 ( .A0(\add_417/A[0] ), .A1(n25), .B0(\add_417/A[1] ), .B1(n24), 
        .C0(n38), .Y(encode_out[1]) );
  AOI22X1 U20 ( .A0(N82), .A1(n4), .B0(N42), .B1(n7), .Y(n38) );
  AOI22X1 U21 ( .A0(N83), .A1(n61), .B0(N43), .B1(n8), .Y(n39) );
  OAI221XL U22 ( .A0(\add_417/A[4] ), .A1(n25), .B0(\add_417/A[5] ), .B1(n24), 
        .C0(n56), .Y(encode_out[5]) );
  AOI22X1 U23 ( .A0(N86), .A1(n61), .B0(N46), .B1(n11), .Y(n56) );
  CLKINVX1 U24 ( .A(n35), .Y(n25) );
  OAI221XL U25 ( .A0(\add_417/A[2] ), .A1(n25), .B0(\add_417/A[3] ), .B1(n24), 
        .C0(n54), .Y(encode_out[3]) );
  OAI221XL U26 ( .A0(\add_417/A[3] ), .A1(n25), .B0(\add_417/A[4] ), .B1(n24), 
        .C0(n55), .Y(encode_out[4]) );
  AOI22X1 U27 ( .A0(N85), .A1(n4), .B0(N45), .B1(n10), .Y(n55) );
  OAI221XL U28 ( .A0(\add_417/A[5] ), .A1(n25), .B0(\add_417/A[6] ), .B1(n24), 
        .C0(n57), .Y(encode_out[6]) );
  AOI22X1 U29 ( .A0(N87), .A1(n3), .B0(N47), .B1(n12), .Y(n57) );
  OAI221XL U30 ( .A0(\add_417/A[6] ), .A1(n25), .B0(\add_417/A[7] ), .B1(n24), 
        .C0(n58), .Y(encode_out[7]) );
  AOI22X1 U31 ( .A0(N88), .A1(n4), .B0(N48), .B1(n13), .Y(n58) );
  OAI221XL U32 ( .A0(\add_417/A[7] ), .A1(n25), .B0(\add_417/A[8] ), .B1(n24), 
        .C0(n59), .Y(encode_out[8]) );
  AOI22X1 U33 ( .A0(N89), .A1(n61), .B0(N49), .B1(n13), .Y(n59) );
  OAI221XL U34 ( .A0(\add_417/A[8] ), .A1(n25), .B0(\add_417/A[9] ), .B1(n24), 
        .C0(n62), .Y(encode_out[9]) );
  OAI221XL U35 ( .A0(\add_417/A[9] ), .A1(n25), .B0(\add_417/A[10] ), .B1(n24), 
        .C0(n28), .Y(encode_out[10]) );
  OAI221XL U36 ( .A0(\add_417/A[10] ), .A1(n25), .B0(\add_417/A[11] ), .B1(n24), .C0(n29), .Y(encode_out[11]) );
  OAI221XL U37 ( .A0(\add_417/A[11] ), .A1(n25), .B0(\add_417/A[12] ), .B1(n24), .C0(n30), .Y(encode_out[12]) );
  OAI221XL U38 ( .A0(\add_417/A[12] ), .A1(n25), .B0(\add_417/A[13] ), .B1(n24), .C0(n31), .Y(encode_out[13]) );
  OAI221XL U39 ( .A0(\add_417/A[13] ), .A1(n25), .B0(\add_417/A[14] ), .B1(n24), .C0(n32), .Y(encode_out[14]) );
  OAI221XL U40 ( .A0(\add_417/A[14] ), .A1(n25), .B0(n2), .B1(n24), .C0(n33), 
        .Y(encode_out[15]) );
  CLKINVX1 U41 ( .A(n36), .Y(encode_out[16]) );
  CLKINVX1 U42 ( .A(n37), .Y(encode_out[19]) );
  AOI221XL U43 ( .A0(N80), .A1(n13), .B0(n16), .B1(n61), .C0(n14), .Y(n37) );
  AOI22X1 U44 ( .A0(N84), .A1(n3), .B0(N44), .B1(n9), .Y(n54) );
  CLKINVX1 U45 ( .A(n60), .Y(n5) );
  CLKINVX1 U46 ( .A(n34), .Y(n24) );
  CLKINVX1 U47 ( .A(n60), .Y(n6) );
  ADDHXL U48 ( .A(\add_417/A[3] ), .B(\add_417/carry[3] ), .CO(
        \add_417/carry[4] ), .S(N84) );
  ADDHXL U49 ( .A(\add_417/A[2] ), .B(\add_417/carry[2] ), .CO(
        \add_417/carry[3] ), .S(N83) );
  ADDHXL U50 ( .A(\add_417/A[1] ), .B(\add_417/A[0] ), .CO(\add_417/carry[2] ), 
        .S(N82) );
  ADDHXL U51 ( .A(\add_417/A[4] ), .B(\add_417/carry[4] ), .CO(
        \add_417/carry[5] ), .S(N85) );
  ADDHXL U52 ( .A(\add_417/A[5] ), .B(\add_417/carry[5] ), .CO(
        \add_417/carry[6] ), .S(N86) );
  ADDHXL U53 ( .A(\add_417/A[2] ), .B(\add_416/carry[2] ), .CO(
        \add_416/carry[3] ), .S(N44) );
  ADDHXL U54 ( .A(\add_417/A[1] ), .B(\add_417/A[0] ), .CO(\add_416/carry[2] ), 
        .S(N43) );
  ADDHXL U55 ( .A(\add_417/A[6] ), .B(\add_417/carry[6] ), .CO(
        \add_417/carry[7] ), .S(N87) );
  ADDHXL U56 ( .A(\add_417/A[3] ), .B(\add_416/carry[3] ), .CO(
        \add_416/carry[4] ), .S(N45) );
  ADDHXL U57 ( .A(\add_417/A[7] ), .B(\add_417/carry[7] ), .CO(
        \add_417/carry[8] ), .S(N88) );
  ADDHXL U58 ( .A(\add_417/A[4] ), .B(\add_416/carry[4] ), .CO(
        \add_416/carry[5] ), .S(N46) );
  ADDHXL U59 ( .A(\add_417/A[8] ), .B(\add_417/carry[8] ), .CO(
        \add_417/carry[9] ), .S(N89) );
  ADDHXL U60 ( .A(\add_417/A[5] ), .B(\add_416/carry[5] ), .CO(
        \add_416/carry[6] ), .S(N47) );
  ADDHXL U61 ( .A(\add_417/A[9] ), .B(\add_417/carry[9] ), .CO(
        \add_417/carry[10] ), .S(N90) );
  AOI22X1 U62 ( .A0(N90), .A1(n3), .B0(N50), .B1(n13), .Y(n62) );
  ADDHXL U63 ( .A(\add_417/A[6] ), .B(\add_416/carry[6] ), .CO(
        \add_416/carry[7] ), .S(N48) );
  ADDHXL U64 ( .A(\add_417/A[10] ), .B(\add_417/carry[10] ), .CO(
        \add_417/carry[11] ), .S(N91) );
  AOI22X1 U65 ( .A0(N91), .A1(n4), .B0(N51), .B1(n13), .Y(n28) );
  ADDHXL U66 ( .A(\add_417/A[7] ), .B(\add_416/carry[7] ), .CO(
        \add_416/carry[8] ), .S(N49) );
  ADDHXL U67 ( .A(\add_417/A[11] ), .B(\add_417/carry[11] ), .CO(
        \add_417/carry[12] ), .S(N92) );
  AOI22X1 U68 ( .A0(N92), .A1(n61), .B0(N52), .B1(n13), .Y(n29) );
  ADDHXL U69 ( .A(\add_417/A[8] ), .B(\add_416/carry[8] ), .CO(
        \add_416/carry[9] ), .S(N50) );
  AOI221XL U70 ( .A0(N57), .A1(n13), .B0(n16), .B1(n4), .C0(n14), .Y(n36) );
  ADDHXL U71 ( .A(\add_417/A[12] ), .B(\add_417/carry[12] ), .CO(
        \add_417/carry[13] ), .S(N93) );
  ADDHXL U72 ( .A(\add_417/A[13] ), .B(\add_417/carry[13] ), .CO(
        \add_417/carry[14] ), .S(N94) );
  ADDHXL U73 ( .A(\add_417/A[14] ), .B(\add_417/carry[14] ), .CO(
        \add_417/carry[15] ), .S(N95) );
  AOI22X1 U74 ( .A0(N93), .A1(n3), .B0(N53), .B1(n13), .Y(n30) );
  ADDHXL U75 ( .A(\add_417/A[9] ), .B(\add_416/carry[9] ), .CO(
        \add_416/carry[10] ), .S(N51) );
  AOI22X1 U76 ( .A0(N94), .A1(n4), .B0(N54), .B1(n13), .Y(n31) );
  ADDHXL U77 ( .A(\add_417/A[10] ), .B(\add_416/carry[10] ), .CO(
        \add_416/carry[11] ), .S(N52) );
  AOI22X1 U78 ( .A0(N96), .A1(n3), .B0(N56), .B1(n13), .Y(n33) );
  AOI22X1 U79 ( .A0(N95), .A1(n61), .B0(N55), .B1(n13), .Y(n32) );
  ADDHXL U80 ( .A(\add_417/A[11] ), .B(\add_416/carry[11] ), .CO(
        \add_416/carry[12] ), .S(N53) );
  ADDHXL U81 ( .A(\add_417/A[12] ), .B(\add_416/carry[12] ), .CO(
        \add_416/carry[13] ), .S(N54) );
  ADDHXL U82 ( .A(\add_417/A[13] ), .B(\add_416/carry[13] ), .CO(
        \add_416/carry[14] ), .S(N55) );
  ADDHXL U83 ( .A(\add_417/A[14] ), .B(\add_416/carry[14] ), .CO(
        \add_416/carry[15] ), .S(N56) );
  CLKINVX1 U84 ( .A(\add_417/A[0] ), .Y(N42) );
  OA21XL U85 ( .A0(n35), .A1(n34), .B0(multiplicand[15]), .Y(n14) );
  OA21XL U86 ( .A0(n35), .A1(n34), .B0(multiplicand[15]), .Y(n15) );
  OA21XL U87 ( .A0(n35), .A1(n34), .B0(multiplicand[15]), .Y(n43) );
  AOI221XL U88 ( .A0(N80), .A1(n13), .B0(n17), .B1(n61), .C0(n43), .Y(n40) );
  AOI221XL U89 ( .A0(N80), .A1(n13), .B0(n16), .B1(n61), .C0(n43), .Y(n44) );
  AOI221XL U90 ( .A0(N80), .A1(n13), .B0(n17), .B1(n4), .C0(n15), .Y(n42) );
  AOI221XL U91 ( .A0(N80), .A1(n13), .B0(n16), .B1(n3), .C0(n14), .Y(n41) );
  NOR3X1 U92 ( .A(neg), .B(recode_bit[0]), .C(n26), .Y(n35) );
  CLKINVX1 U93 ( .A(recode_bit[1]), .Y(n26) );
  AND3X2 U94 ( .A(neg), .B(n26), .C(recode_bit[0]), .Y(n61) );
  AND3X2 U95 ( .A(neg), .B(n26), .C(recode_bit[0]), .Y(n3) );
  AND3X2 U96 ( .A(neg), .B(n27), .C(recode_bit[1]), .Y(n60) );
  NOR3X1 U97 ( .A(neg), .B(recode_bit[1]), .C(n27), .Y(n34) );
  AND3X2 U98 ( .A(neg), .B(n26), .C(recode_bit[0]), .Y(n4) );
  AO22X1 U99 ( .A0(multiplicand[0]), .A1(n34), .B0(N81), .B1(n3), .Y(
        encode_out[0]) );
  CLKINVX1 U100 ( .A(\add_417/A[0] ), .Y(N81) );
  CLKINVX1 U101 ( .A(recode_bit[0]), .Y(n27) );
  CLKINVX1 U102 ( .A(multiplicand[0]), .Y(\add_417/A[0] ) );
  CLKINVX1 U103 ( .A(multiplicand[1]), .Y(\add_417/A[1] ) );
  CLKINVX1 U104 ( .A(multiplicand[2]), .Y(\add_417/A[2] ) );
  CLKINVX1 U105 ( .A(multiplicand[3]), .Y(\add_417/A[3] ) );
  CLKINVX1 U106 ( .A(multiplicand[4]), .Y(\add_417/A[4] ) );
  CLKINVX1 U107 ( .A(multiplicand[5]), .Y(\add_417/A[5] ) );
  CLKINVX1 U108 ( .A(multiplicand[6]), .Y(\add_417/A[6] ) );
  CLKINVX1 U109 ( .A(multiplicand[7]), .Y(\add_417/A[7] ) );
  CLKINVX1 U110 ( .A(multiplicand[8]), .Y(\add_417/A[8] ) );
  CLKINVX1 U111 ( .A(multiplicand[9]), .Y(\add_417/A[9] ) );
  CLKINVX1 U112 ( .A(multiplicand[10]), .Y(\add_417/A[10] ) );
  CLKINVX1 U113 ( .A(multiplicand[11]), .Y(\add_417/A[11] ) );
  CLKINVX1 U114 ( .A(multiplicand[12]), .Y(\add_417/A[12] ) );
  CLKINVX1 U115 ( .A(multiplicand[13]), .Y(\add_417/A[13] ) );
  CLKINVX1 U116 ( .A(multiplicand[15]), .Y(n2) );
  CLKINVX1 U117 ( .A(multiplicand[14]), .Y(\add_417/A[14] ) );
  XOR2X1 U118 ( .A(\add_416/carry[15] ), .B(n2), .Y(N57) );
  XOR2X1 U119 ( .A(\add_417/carry[15] ), .B(n2), .Y(N96) );
endmodule


module booth_encode_16bit_2 ( multiplicand, neg, recode_bit, encode_out );
  input [15:0] multiplicand;
  input [1:0] recode_bit;
  output [39:0] encode_out;
  input neg;
  wire   N42, N43, N44, N45, N46, N47, N48, N49, N50, N51, N52, N53, N54, N55,
         N56, N57, N80, N81, N82, N83, N84, N85, N86, N87, N88, N89, N90, N91,
         N92, N93, N94, N95, N96, \add_417/carry[15] , \add_417/carry[14] ,
         \add_417/carry[13] , \add_417/carry[12] , \add_417/carry[11] ,
         \add_417/carry[10] , \add_417/carry[9] , \add_417/carry[8] ,
         \add_417/carry[7] , \add_417/carry[6] , \add_417/carry[5] ,
         \add_417/carry[4] , \add_417/carry[3] , \add_417/carry[2] ,
         \add_417/A[0] , \add_417/A[1] , \add_417/A[2] , \add_417/A[3] ,
         \add_417/A[4] , \add_417/A[5] , \add_417/A[6] , \add_417/A[7] ,
         \add_417/A[8] , \add_417/A[9] , \add_417/A[10] , \add_417/A[11] ,
         \add_417/A[12] , \add_417/A[13] , \add_417/A[14] ,
         \add_416/carry[15] , \add_416/carry[14] , \add_416/carry[13] ,
         \add_416/carry[12] , \add_416/carry[11] , \add_416/carry[10] ,
         \add_416/carry[9] , \add_416/carry[8] , \add_416/carry[7] ,
         \add_416/carry[6] , \add_416/carry[5] , \add_416/carry[4] ,
         \add_416/carry[3] , \add_416/carry[2] , n1, n2, n3, n4, n5, n6, n7,
         n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, \encode_out[39] ,
         \encode_out[38] , \encode_out[22] , n23, n24, n25, n26, n27, n28, n29,
         n30, n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43,
         n44, n52, n53, n54, n55, n56, n57, n58;
  assign encode_out[18] = \encode_out[39] ;
  assign encode_out[21] = \encode_out[39] ;
  assign encode_out[24] = \encode_out[39] ;
  assign encode_out[27] = \encode_out[39] ;
  assign encode_out[30] = \encode_out[39] ;
  assign encode_out[33] = \encode_out[39] ;
  assign encode_out[36] = \encode_out[39] ;
  assign encode_out[39] = \encode_out[39] ;
  assign encode_out[17] = \encode_out[38] ;
  assign encode_out[20] = \encode_out[38] ;
  assign encode_out[23] = \encode_out[38] ;
  assign encode_out[26] = \encode_out[38] ;
  assign encode_out[29] = \encode_out[38] ;
  assign encode_out[32] = \encode_out[38] ;
  assign encode_out[35] = \encode_out[38] ;
  assign encode_out[38] = \encode_out[38] ;
  assign encode_out[37] = \encode_out[22] ;
  assign encode_out[34] = \encode_out[22] ;
  assign encode_out[31] = \encode_out[22] ;
  assign encode_out[28] = \encode_out[22] ;
  assign encode_out[25] = \encode_out[22] ;
  assign encode_out[22] = \encode_out[22] ;

  NOR2X1 U3 ( .A(\add_417/carry[15] ), .B(multiplicand[15]), .Y(n1) );
  CLKBUFX3 U4 ( .A(n1), .Y(n16) );
  CLKBUFX3 U5 ( .A(n1), .Y(n17) );
  CLKINVX1 U6 ( .A(n5), .Y(n7) );
  CLKINVX1 U7 ( .A(n5), .Y(n8) );
  CLKINVX1 U8 ( .A(n5), .Y(n9) );
  CLKINVX1 U9 ( .A(n5), .Y(n10) );
  CLKINVX1 U10 ( .A(n6), .Y(n11) );
  CLKINVX1 U11 ( .A(n6), .Y(n12) );
  CLKINVX1 U12 ( .A(n6), .Y(n13) );
  NOR2X1 U13 ( .A(\add_416/carry[15] ), .B(multiplicand[15]), .Y(N80) );
  CLKINVX1 U14 ( .A(n42), .Y(\encode_out[39] ) );
  CLKINVX1 U15 ( .A(n40), .Y(\encode_out[38] ) );
  OAI221XL U16 ( .A0(\add_417/A[2] ), .A1(n24), .B0(\add_417/A[3] ), .B1(n23), 
        .C0(n43), .Y(encode_out[3]) );
  CLKINVX1 U17 ( .A(n34), .Y(n24) );
  OAI221XL U18 ( .A0(\add_417/A[0] ), .A1(n24), .B0(\add_417/A[1] ), .B1(n23), 
        .C0(n37), .Y(encode_out[1]) );
  OAI221XL U19 ( .A0(\add_417/A[1] ), .A1(n24), .B0(\add_417/A[2] ), .B1(n23), 
        .C0(n39), .Y(encode_out[2]) );
  AOI22X1 U20 ( .A0(N82), .A1(n4), .B0(N42), .B1(n7), .Y(n37) );
  CLKINVX1 U21 ( .A(\add_417/A[0] ), .Y(N42) );
  OAI221XL U22 ( .A0(\add_417/A[3] ), .A1(n24), .B0(\add_417/A[4] ), .B1(n23), 
        .C0(n44), .Y(encode_out[4]) );
  OAI221XL U23 ( .A0(\add_417/A[4] ), .A1(n24), .B0(\add_417/A[5] ), .B1(n23), 
        .C0(n52), .Y(encode_out[5]) );
  OAI221XL U24 ( .A0(\add_417/A[5] ), .A1(n24), .B0(\add_417/A[6] ), .B1(n23), 
        .C0(n53), .Y(encode_out[6]) );
  OAI221XL U25 ( .A0(\add_417/A[6] ), .A1(n24), .B0(\add_417/A[7] ), .B1(n23), 
        .C0(n54), .Y(encode_out[7]) );
  AOI22X1 U26 ( .A0(N88), .A1(n4), .B0(N48), .B1(n13), .Y(n54) );
  OAI221XL U27 ( .A0(\add_417/A[7] ), .A1(n24), .B0(\add_417/A[8] ), .B1(n23), 
        .C0(n55), .Y(encode_out[8]) );
  AOI22X1 U28 ( .A0(N89), .A1(n57), .B0(N49), .B1(n13), .Y(n55) );
  OAI221XL U29 ( .A0(\add_417/A[8] ), .A1(n24), .B0(\add_417/A[9] ), .B1(n23), 
        .C0(n58), .Y(encode_out[9]) );
  AOI22X1 U30 ( .A0(N90), .A1(n3), .B0(N50), .B1(n13), .Y(n58) );
  OAI221XL U31 ( .A0(\add_417/A[9] ), .A1(n24), .B0(\add_417/A[10] ), .B1(n23), 
        .C0(n27), .Y(encode_out[10]) );
  AOI22X1 U32 ( .A0(N91), .A1(n4), .B0(N51), .B1(n13), .Y(n27) );
  OAI221XL U33 ( .A0(\add_417/A[10] ), .A1(n24), .B0(\add_417/A[11] ), .B1(n23), .C0(n28), .Y(encode_out[11]) );
  AOI22X1 U34 ( .A0(N92), .A1(n57), .B0(N52), .B1(n13), .Y(n28) );
  OAI221XL U35 ( .A0(\add_417/A[11] ), .A1(n24), .B0(\add_417/A[12] ), .B1(n23), .C0(n29), .Y(encode_out[12]) );
  AOI22X1 U36 ( .A0(N93), .A1(n3), .B0(N53), .B1(n13), .Y(n29) );
  OAI221XL U37 ( .A0(\add_417/A[12] ), .A1(n24), .B0(\add_417/A[13] ), .B1(n23), .C0(n30), .Y(encode_out[13]) );
  AOI22X1 U38 ( .A0(N94), .A1(n4), .B0(N54), .B1(n13), .Y(n30) );
  OAI221XL U39 ( .A0(\add_417/A[13] ), .A1(n24), .B0(\add_417/A[14] ), .B1(n23), .C0(n31), .Y(encode_out[14]) );
  AOI22X1 U40 ( .A0(N95), .A1(n57), .B0(N55), .B1(n13), .Y(n31) );
  OAI221XL U41 ( .A0(\add_417/A[14] ), .A1(n24), .B0(n2), .B1(n23), .C0(n32), 
        .Y(encode_out[15]) );
  AOI22X1 U42 ( .A0(N96), .A1(n3), .B0(N56), .B1(n13), .Y(n32) );
  CLKINVX1 U43 ( .A(n35), .Y(encode_out[16]) );
  CLKINVX1 U44 ( .A(n36), .Y(encode_out[19]) );
  CLKINVX1 U45 ( .A(n38), .Y(\encode_out[22] ) );
  CLKINVX1 U46 ( .A(n56), .Y(n5) );
  CLKINVX1 U47 ( .A(n33), .Y(n23) );
  AOI22X1 U48 ( .A0(N83), .A1(n57), .B0(N43), .B1(n8), .Y(n39) );
  AOI22X1 U49 ( .A0(N84), .A1(n3), .B0(N44), .B1(n9), .Y(n43) );
  AOI22X1 U50 ( .A0(N85), .A1(n4), .B0(N45), .B1(n10), .Y(n44) );
  AOI22X1 U51 ( .A0(N86), .A1(n57), .B0(N46), .B1(n11), .Y(n52) );
  CLKINVX1 U52 ( .A(n56), .Y(n6) );
  AOI22X1 U53 ( .A0(N87), .A1(n3), .B0(N47), .B1(n12), .Y(n53) );
  ADDHXL U54 ( .A(\add_417/A[1] ), .B(\add_417/A[0] ), .CO(\add_417/carry[2] ), 
        .S(N82) );
  ADDHXL U55 ( .A(\add_417/A[2] ), .B(\add_417/carry[2] ), .CO(
        \add_417/carry[3] ), .S(N83) );
  ADDHXL U56 ( .A(\add_417/A[3] ), .B(\add_417/carry[3] ), .CO(
        \add_417/carry[4] ), .S(N84) );
  ADDHXL U57 ( .A(\add_417/A[4] ), .B(\add_417/carry[4] ), .CO(
        \add_417/carry[5] ), .S(N85) );
  ADDHXL U58 ( .A(\add_417/A[1] ), .B(\add_417/A[0] ), .CO(\add_416/carry[2] ), 
        .S(N43) );
  ADDHXL U59 ( .A(\add_417/A[5] ), .B(\add_417/carry[5] ), .CO(
        \add_417/carry[6] ), .S(N86) );
  ADDHXL U60 ( .A(\add_417/A[2] ), .B(\add_416/carry[2] ), .CO(
        \add_416/carry[3] ), .S(N44) );
  ADDHXL U61 ( .A(\add_417/A[6] ), .B(\add_417/carry[6] ), .CO(
        \add_417/carry[7] ), .S(N87) );
  ADDHXL U62 ( .A(\add_417/A[3] ), .B(\add_416/carry[3] ), .CO(
        \add_416/carry[4] ), .S(N45) );
  ADDHXL U63 ( .A(\add_417/A[7] ), .B(\add_417/carry[7] ), .CO(
        \add_417/carry[8] ), .S(N88) );
  ADDHXL U64 ( .A(\add_417/A[4] ), .B(\add_416/carry[4] ), .CO(
        \add_416/carry[5] ), .S(N46) );
  ADDHXL U65 ( .A(\add_417/A[8] ), .B(\add_417/carry[8] ), .CO(
        \add_417/carry[9] ), .S(N89) );
  ADDHXL U66 ( .A(\add_417/A[5] ), .B(\add_416/carry[5] ), .CO(
        \add_416/carry[6] ), .S(N47) );
  ADDHXL U67 ( .A(\add_417/A[9] ), .B(\add_417/carry[9] ), .CO(
        \add_417/carry[10] ), .S(N90) );
  ADDHXL U68 ( .A(\add_417/A[6] ), .B(\add_416/carry[6] ), .CO(
        \add_416/carry[7] ), .S(N48) );
  ADDHXL U69 ( .A(\add_417/A[10] ), .B(\add_417/carry[10] ), .CO(
        \add_417/carry[11] ), .S(N91) );
  ADDHXL U70 ( .A(\add_417/A[7] ), .B(\add_416/carry[7] ), .CO(
        \add_416/carry[8] ), .S(N49) );
  ADDHXL U71 ( .A(\add_417/A[11] ), .B(\add_417/carry[11] ), .CO(
        \add_417/carry[12] ), .S(N92) );
  AOI221XL U72 ( .A0(N57), .A1(n13), .B0(n16), .B1(n4), .C0(n14), .Y(n35) );
  ADDHXL U73 ( .A(\add_417/A[12] ), .B(\add_417/carry[12] ), .CO(
        \add_417/carry[13] ), .S(N93) );
  ADDHXL U74 ( .A(\add_417/A[13] ), .B(\add_417/carry[13] ), .CO(
        \add_417/carry[14] ), .S(N94) );
  ADDHXL U75 ( .A(\add_417/A[14] ), .B(\add_417/carry[14] ), .CO(
        \add_417/carry[15] ), .S(N95) );
  ADDHXL U76 ( .A(\add_417/A[8] ), .B(\add_416/carry[8] ), .CO(
        \add_416/carry[9] ), .S(N50) );
  ADDHXL U77 ( .A(\add_417/A[9] ), .B(\add_416/carry[9] ), .CO(
        \add_416/carry[10] ), .S(N51) );
  ADDHXL U78 ( .A(\add_417/A[10] ), .B(\add_416/carry[10] ), .CO(
        \add_416/carry[11] ), .S(N52) );
  ADDHXL U79 ( .A(\add_417/A[11] ), .B(\add_416/carry[11] ), .CO(
        \add_416/carry[12] ), .S(N53) );
  ADDHXL U80 ( .A(\add_417/A[12] ), .B(\add_416/carry[12] ), .CO(
        \add_416/carry[13] ), .S(N54) );
  ADDHXL U81 ( .A(\add_417/A[14] ), .B(\add_416/carry[14] ), .CO(
        \add_416/carry[15] ), .S(N56) );
  ADDHXL U82 ( .A(\add_417/A[13] ), .B(\add_416/carry[13] ), .CO(
        \add_416/carry[14] ), .S(N55) );
  AOI221XL U83 ( .A0(N80), .A1(n13), .B0(n16), .B1(n57), .C0(n14), .Y(n36) );
  AOI221XL U84 ( .A0(N80), .A1(n8), .B0(n17), .B1(n3), .C0(n14), .Y(n38) );
  OA21XL U85 ( .A0(n34), .A1(n33), .B0(multiplicand[15]), .Y(n14) );
  OA21XL U86 ( .A0(n34), .A1(n33), .B0(multiplicand[15]), .Y(n15) );
  OA21XL U87 ( .A0(n34), .A1(n33), .B0(multiplicand[15]), .Y(n41) );
  AOI221XL U88 ( .A0(N80), .A1(n13), .B0(n16), .B1(n57), .C0(n41), .Y(n42) );
  AOI221XL U89 ( .A0(N80), .A1(n13), .B0(n17), .B1(n4), .C0(n15), .Y(n40) );
  NOR3X1 U90 ( .A(neg), .B(recode_bit[0]), .C(n25), .Y(n34) );
  CLKINVX1 U91 ( .A(recode_bit[1]), .Y(n25) );
  AND3X2 U92 ( .A(neg), .B(n25), .C(recode_bit[0]), .Y(n4) );
  AND3X2 U93 ( .A(neg), .B(n26), .C(recode_bit[1]), .Y(n56) );
  NOR3X1 U94 ( .A(neg), .B(recode_bit[1]), .C(n26), .Y(n33) );
  AND3X2 U95 ( .A(neg), .B(n25), .C(recode_bit[0]), .Y(n3) );
  AO22X1 U96 ( .A0(multiplicand[0]), .A1(n33), .B0(N81), .B1(n3), .Y(
        encode_out[0]) );
  CLKINVX1 U97 ( .A(\add_417/A[0] ), .Y(N81) );
  AND3X2 U98 ( .A(neg), .B(n25), .C(recode_bit[0]), .Y(n57) );
  CLKINVX1 U99 ( .A(recode_bit[0]), .Y(n26) );
  CLKINVX1 U100 ( .A(multiplicand[0]), .Y(\add_417/A[0] ) );
  CLKINVX1 U101 ( .A(multiplicand[1]), .Y(\add_417/A[1] ) );
  CLKINVX1 U102 ( .A(multiplicand[2]), .Y(\add_417/A[2] ) );
  CLKINVX1 U103 ( .A(multiplicand[3]), .Y(\add_417/A[3] ) );
  CLKINVX1 U104 ( .A(multiplicand[4]), .Y(\add_417/A[4] ) );
  CLKINVX1 U105 ( .A(multiplicand[5]), .Y(\add_417/A[5] ) );
  CLKINVX1 U106 ( .A(multiplicand[6]), .Y(\add_417/A[6] ) );
  CLKINVX1 U107 ( .A(multiplicand[7]), .Y(\add_417/A[7] ) );
  CLKINVX1 U108 ( .A(multiplicand[8]), .Y(\add_417/A[8] ) );
  CLKINVX1 U109 ( .A(multiplicand[9]), .Y(\add_417/A[9] ) );
  CLKINVX1 U110 ( .A(multiplicand[10]), .Y(\add_417/A[10] ) );
  CLKINVX1 U111 ( .A(multiplicand[11]), .Y(\add_417/A[11] ) );
  CLKINVX1 U112 ( .A(multiplicand[12]), .Y(\add_417/A[12] ) );
  CLKINVX1 U113 ( .A(multiplicand[13]), .Y(\add_417/A[13] ) );
  CLKINVX1 U114 ( .A(multiplicand[15]), .Y(n2) );
  CLKINVX1 U115 ( .A(multiplicand[14]), .Y(\add_417/A[14] ) );
  XOR2X1 U116 ( .A(\add_416/carry[15] ), .B(n2), .Y(N57) );
  XOR2X1 U117 ( .A(\add_417/carry[15] ), .B(n2), .Y(N96) );
endmodule


module booth_encode_16bit_1 ( multiplicand, neg, recode_bit, encode_out );
  input [15:0] multiplicand;
  input [1:0] recode_bit;
  output [39:0] encode_out;
  input neg;
  wire   N43, N44, N45, N46, N47, N48, N49, N50, N51, N52, N53, N54, N55, N56,
         N57, N80, N82, N83, N84, N85, N86, N87, N88, N89, N90, N91, N92, N93,
         N94, N95, N96, \add_417/carry[15] , \add_417/carry[14] ,
         \add_417/carry[13] , \add_417/carry[12] , \add_417/carry[11] ,
         \add_417/carry[10] , \add_417/carry[9] , \add_417/carry[8] ,
         \add_417/carry[7] , \add_417/carry[6] , \add_417/carry[5] ,
         \add_417/carry[4] , \add_417/carry[3] , \add_417/carry[2] ,
         \add_417/A[0] , \add_417/A[1] , \add_417/A[2] , \add_417/A[3] ,
         \add_417/A[4] , \add_417/A[5] , \add_417/A[6] , \add_417/A[7] ,
         \add_417/A[8] , \add_417/A[9] , \add_417/A[10] , \add_417/A[11] ,
         \add_417/A[12] , \add_417/A[13] , \add_417/A[14] ,
         \add_416/carry[15] , \add_416/carry[14] , \add_416/carry[13] ,
         \add_416/carry[12] , \add_416/carry[11] , \add_416/carry[10] ,
         \add_416/carry[9] , \add_416/carry[8] , \add_416/carry[7] ,
         \add_416/carry[6] , \add_416/carry[5] , \add_416/carry[4] ,
         \add_416/carry[3] , \add_416/carry[2] , n1, n2, n3, n4, n5, n6, n7,
         n8, n9, n10, n11, n12, n13, n14, n15, n16, \encode_out[37] ,
         \encode_out[35] , \encode_out[18] , n22, n23, n24, n25, n26, n27, n28,
         n29, n30, n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42,
         n43, n44, n51, n52, n53, n54, n55, n56;
  assign encode_out[22] = \encode_out[37] ;
  assign encode_out[25] = \encode_out[37] ;
  assign encode_out[28] = \encode_out[37] ;
  assign encode_out[31] = \encode_out[37] ;
  assign encode_out[34] = \encode_out[37] ;
  assign encode_out[37] = \encode_out[37] ;
  assign encode_out[17] = \encode_out[35] ;
  assign encode_out[20] = \encode_out[35] ;
  assign encode_out[23] = \encode_out[35] ;
  assign encode_out[26] = \encode_out[35] ;
  assign encode_out[29] = \encode_out[35] ;
  assign encode_out[32] = \encode_out[35] ;
  assign encode_out[38] = \encode_out[35] ;
  assign encode_out[35] = \encode_out[35] ;
  assign encode_out[27] = \encode_out[18] ;
  assign encode_out[30] = \encode_out[18] ;
  assign encode_out[33] = \encode_out[18] ;
  assign encode_out[39] = \encode_out[18] ;
  assign encode_out[36] = \encode_out[18] ;
  assign encode_out[24] = \encode_out[18] ;
  assign encode_out[21] = \encode_out[18] ;
  assign encode_out[18] = \encode_out[18] ;

  NOR2X1 U3 ( .A(\add_417/carry[15] ), .B(multiplicand[15]), .Y(n1) );
  CLKBUFX3 U4 ( .A(n1), .Y(n16) );
  CLKINVX1 U5 ( .A(n5), .Y(n7) );
  CLKINVX1 U6 ( .A(n5), .Y(n8) );
  CLKINVX1 U7 ( .A(n5), .Y(n9) );
  CLKINVX1 U8 ( .A(n6), .Y(n10) );
  CLKINVX1 U9 ( .A(n6), .Y(n11) );
  CLKINVX1 U10 ( .A(n6), .Y(n12) );
  CLKINVX1 U11 ( .A(n6), .Y(n13) );
  NOR2X1 U12 ( .A(\add_416/carry[15] ), .B(multiplicand[15]), .Y(N80) );
  OAI221XL U13 ( .A0(\add_417/A[4] ), .A1(n23), .B0(\add_417/A[5] ), .B1(n22), 
        .C0(n44), .Y(encode_out[5]) );
  AOI22X1 U14 ( .A0(N86), .A1(n55), .B0(N46), .B1(n10), .Y(n44) );
  OAI221XL U15 ( .A0(\add_417/A[2] ), .A1(n23), .B0(\add_417/A[3] ), .B1(n22), 
        .C0(n42), .Y(encode_out[3]) );
  OAI221XL U16 ( .A0(\add_417/A[3] ), .A1(n23), .B0(\add_417/A[4] ), .B1(n22), 
        .C0(n43), .Y(encode_out[4]) );
  AOI22X1 U17 ( .A0(N85), .A1(n4), .B0(N45), .B1(n9), .Y(n43) );
  OAI221XL U18 ( .A0(\add_417/A[5] ), .A1(n23), .B0(\add_417/A[6] ), .B1(n22), 
        .C0(n51), .Y(encode_out[6]) );
  AOI22X1 U19 ( .A0(N87), .A1(n3), .B0(N47), .B1(n11), .Y(n51) );
  OAI221XL U20 ( .A0(\add_417/A[6] ), .A1(n23), .B0(\add_417/A[7] ), .B1(n22), 
        .C0(n52), .Y(encode_out[7]) );
  AOI22X1 U21 ( .A0(N88), .A1(n4), .B0(N48), .B1(n12), .Y(n52) );
  OAI221XL U22 ( .A0(\add_417/A[7] ), .A1(n23), .B0(\add_417/A[8] ), .B1(n22), 
        .C0(n53), .Y(encode_out[8]) );
  AOI22X1 U23 ( .A0(N89), .A1(n55), .B0(N49), .B1(n13), .Y(n53) );
  OAI221XL U24 ( .A0(\add_417/A[8] ), .A1(n23), .B0(\add_417/A[9] ), .B1(n22), 
        .C0(n56), .Y(encode_out[9]) );
  OAI221XL U25 ( .A0(\add_417/A[9] ), .A1(n23), .B0(\add_417/A[10] ), .B1(n22), 
        .C0(n26), .Y(encode_out[10]) );
  OAI221XL U26 ( .A0(\add_417/A[10] ), .A1(n23), .B0(\add_417/A[11] ), .B1(n22), .C0(n27), .Y(encode_out[11]) );
  OAI221XL U27 ( .A0(\add_417/A[11] ), .A1(n23), .B0(\add_417/A[12] ), .B1(n22), .C0(n28), .Y(encode_out[12]) );
  OAI221XL U28 ( .A0(\add_417/A[12] ), .A1(n23), .B0(\add_417/A[13] ), .B1(n22), .C0(n29), .Y(encode_out[13]) );
  OAI221XL U29 ( .A0(\add_417/A[13] ), .A1(n23), .B0(\add_417/A[14] ), .B1(n22), .C0(n30), .Y(encode_out[14]) );
  OAI221XL U30 ( .A0(\add_417/A[14] ), .A1(n23), .B0(n2), .B1(n22), .C0(n31), 
        .Y(encode_out[15]) );
  CLKINVX1 U31 ( .A(n34), .Y(encode_out[16]) );
  CLKINVX1 U32 ( .A(n35), .Y(\encode_out[18] ) );
  AOI221XL U33 ( .A0(N80), .A1(n13), .B0(n16), .B1(n55), .C0(n41), .Y(n35) );
  CLKINVX1 U34 ( .A(n36), .Y(encode_out[19]) );
  AOI221XL U35 ( .A0(N80), .A1(n13), .B0(n16), .B1(n55), .C0(n14), .Y(n36) );
  CLKINVX1 U36 ( .A(n39), .Y(\encode_out[35] ) );
  AOI221XL U37 ( .A0(N80), .A1(n13), .B0(n16), .B1(n4), .C0(n15), .Y(n39) );
  CLKINVX1 U38 ( .A(n40), .Y(\encode_out[37] ) );
  AOI221XL U39 ( .A0(N80), .A1(n13), .B0(n16), .B1(n3), .C0(n14), .Y(n40) );
  OAI221XL U40 ( .A0(\add_417/A[1] ), .A1(n23), .B0(\add_417/A[2] ), .B1(n22), 
        .C0(n38), .Y(encode_out[2]) );
  AOI22X1 U41 ( .A0(N83), .A1(n55), .B0(N43), .B1(n7), .Y(n38) );
  CLKINVX1 U42 ( .A(n33), .Y(n23) );
  AOI22X1 U43 ( .A0(N84), .A1(n3), .B0(N44), .B1(n8), .Y(n42) );
  CLKINVX1 U44 ( .A(n54), .Y(n5) );
  CLKINVX1 U45 ( .A(n32), .Y(n22) );
  CLKINVX1 U46 ( .A(n54), .Y(n6) );
  ADDHXL U47 ( .A(\add_417/A[3] ), .B(\add_417/carry[3] ), .CO(
        \add_417/carry[4] ), .S(N84) );
  ADDHXL U48 ( .A(\add_417/A[2] ), .B(\add_417/carry[2] ), .CO(
        \add_417/carry[3] ), .S(N83) );
  ADDHXL U49 ( .A(\add_417/A[1] ), .B(\add_417/A[0] ), .CO(\add_417/carry[2] ), 
        .S(N82) );
  ADDHXL U50 ( .A(\add_417/A[4] ), .B(\add_417/carry[4] ), .CO(
        \add_417/carry[5] ), .S(N85) );
  ADDHXL U51 ( .A(\add_417/A[5] ), .B(\add_417/carry[5] ), .CO(
        \add_417/carry[6] ), .S(N86) );
  ADDHXL U52 ( .A(\add_417/A[2] ), .B(\add_416/carry[2] ), .CO(
        \add_416/carry[3] ), .S(N44) );
  ADDHXL U53 ( .A(\add_417/A[1] ), .B(\add_417/A[0] ), .CO(\add_416/carry[2] ), 
        .S(N43) );
  ADDHXL U54 ( .A(\add_417/A[6] ), .B(\add_417/carry[6] ), .CO(
        \add_417/carry[7] ), .S(N87) );
  ADDHXL U55 ( .A(\add_417/A[3] ), .B(\add_416/carry[3] ), .CO(
        \add_416/carry[4] ), .S(N45) );
  ADDHXL U56 ( .A(\add_417/A[7] ), .B(\add_417/carry[7] ), .CO(
        \add_417/carry[8] ), .S(N88) );
  ADDHXL U57 ( .A(\add_417/A[4] ), .B(\add_416/carry[4] ), .CO(
        \add_416/carry[5] ), .S(N46) );
  ADDHXL U58 ( .A(\add_417/A[8] ), .B(\add_417/carry[8] ), .CO(
        \add_417/carry[9] ), .S(N89) );
  ADDHXL U59 ( .A(\add_417/A[5] ), .B(\add_416/carry[5] ), .CO(
        \add_416/carry[6] ), .S(N47) );
  ADDHXL U60 ( .A(\add_417/A[9] ), .B(\add_417/carry[9] ), .CO(
        \add_417/carry[10] ), .S(N90) );
  AOI22X1 U61 ( .A0(N90), .A1(n3), .B0(N50), .B1(n13), .Y(n56) );
  ADDHXL U62 ( .A(\add_417/A[6] ), .B(\add_416/carry[6] ), .CO(
        \add_416/carry[7] ), .S(N48) );
  ADDHXL U63 ( .A(\add_417/A[10] ), .B(\add_417/carry[10] ), .CO(
        \add_417/carry[11] ), .S(N91) );
  AOI22X1 U64 ( .A0(N91), .A1(n4), .B0(N51), .B1(n13), .Y(n26) );
  ADDHXL U65 ( .A(\add_417/A[7] ), .B(\add_416/carry[7] ), .CO(
        \add_416/carry[8] ), .S(N49) );
  ADDHXL U66 ( .A(\add_417/A[11] ), .B(\add_417/carry[11] ), .CO(
        \add_417/carry[12] ), .S(N92) );
  AOI22X1 U67 ( .A0(N92), .A1(n55), .B0(N52), .B1(n13), .Y(n27) );
  ADDHXL U68 ( .A(\add_417/A[8] ), .B(\add_416/carry[8] ), .CO(
        \add_416/carry[9] ), .S(N50) );
  AOI221XL U69 ( .A0(N57), .A1(n13), .B0(n16), .B1(n4), .C0(n14), .Y(n34) );
  ADDHXL U70 ( .A(\add_417/A[12] ), .B(\add_417/carry[12] ), .CO(
        \add_417/carry[13] ), .S(N93) );
  ADDHXL U71 ( .A(\add_417/A[13] ), .B(\add_417/carry[13] ), .CO(
        \add_417/carry[14] ), .S(N94) );
  ADDHXL U72 ( .A(\add_417/A[14] ), .B(\add_417/carry[14] ), .CO(
        \add_417/carry[15] ), .S(N95) );
  AOI22X1 U73 ( .A0(N93), .A1(n3), .B0(N53), .B1(n13), .Y(n28) );
  ADDHXL U74 ( .A(\add_417/A[9] ), .B(\add_416/carry[9] ), .CO(
        \add_416/carry[10] ), .S(N51) );
  AOI22X1 U75 ( .A0(N94), .A1(n4), .B0(N54), .B1(n13), .Y(n29) );
  ADDHXL U76 ( .A(\add_417/A[10] ), .B(\add_416/carry[10] ), .CO(
        \add_416/carry[11] ), .S(N52) );
  AOI22X1 U77 ( .A0(N96), .A1(n3), .B0(N56), .B1(n13), .Y(n31) );
  AOI22X1 U78 ( .A0(N95), .A1(n55), .B0(N55), .B1(n13), .Y(n30) );
  ADDHXL U79 ( .A(\add_417/A[11] ), .B(\add_416/carry[11] ), .CO(
        \add_416/carry[12] ), .S(N53) );
  ADDHXL U80 ( .A(\add_417/A[12] ), .B(\add_416/carry[12] ), .CO(
        \add_416/carry[13] ), .S(N54) );
  ADDHXL U81 ( .A(\add_417/A[13] ), .B(\add_416/carry[13] ), .CO(
        \add_416/carry[14] ), .S(N55) );
  ADDHXL U82 ( .A(\add_417/A[14] ), .B(\add_416/carry[14] ), .CO(
        \add_416/carry[15] ), .S(N56) );
  OA21XL U83 ( .A0(n33), .A1(n32), .B0(multiplicand[15]), .Y(n14) );
  OA21XL U84 ( .A0(n33), .A1(n32), .B0(multiplicand[15]), .Y(n15) );
  OA21XL U85 ( .A0(n33), .A1(n32), .B0(multiplicand[15]), .Y(n41) );
  NOR3X1 U86 ( .A(neg), .B(recode_bit[0]), .C(n24), .Y(n33) );
  CLKINVX1 U87 ( .A(recode_bit[1]), .Y(n24) );
  AND3X2 U88 ( .A(neg), .B(n24), .C(recode_bit[0]), .Y(n55) );
  AND3X2 U89 ( .A(neg), .B(n24), .C(recode_bit[0]), .Y(n3) );
  AND3X2 U90 ( .A(neg), .B(n25), .C(recode_bit[1]), .Y(n54) );
  NOR3X1 U91 ( .A(neg), .B(recode_bit[1]), .C(n25), .Y(n32) );
  AND3X2 U92 ( .A(neg), .B(n24), .C(recode_bit[0]), .Y(n4) );
  CLKINVX1 U93 ( .A(multiplicand[0]), .Y(\add_417/A[0] ) );
  CLKINVX1 U94 ( .A(recode_bit[0]), .Y(n25) );
  CLKINVX1 U95 ( .A(multiplicand[1]), .Y(\add_417/A[1] ) );
  CLKINVX1 U96 ( .A(multiplicand[2]), .Y(\add_417/A[2] ) );
  CLKINVX1 U97 ( .A(multiplicand[3]), .Y(\add_417/A[3] ) );
  CLKINVX1 U98 ( .A(multiplicand[4]), .Y(\add_417/A[4] ) );
  CLKINVX1 U99 ( .A(multiplicand[5]), .Y(\add_417/A[5] ) );
  CLKINVX1 U100 ( .A(multiplicand[6]), .Y(\add_417/A[6] ) );
  CLKINVX1 U101 ( .A(multiplicand[7]), .Y(\add_417/A[7] ) );
  CLKINVX1 U102 ( .A(multiplicand[8]), .Y(\add_417/A[8] ) );
  CLKINVX1 U103 ( .A(multiplicand[9]), .Y(\add_417/A[9] ) );
  CLKINVX1 U104 ( .A(multiplicand[10]), .Y(\add_417/A[10] ) );
  CLKINVX1 U105 ( .A(multiplicand[11]), .Y(\add_417/A[11] ) );
  CLKINVX1 U106 ( .A(multiplicand[12]), .Y(\add_417/A[12] ) );
  CLKINVX1 U107 ( .A(multiplicand[13]), .Y(\add_417/A[13] ) );
  CLKINVX1 U108 ( .A(multiplicand[15]), .Y(n2) );
  CLKINVX1 U109 ( .A(multiplicand[14]), .Y(\add_417/A[14] ) );
  OAI221XL U110 ( .A0(\add_417/A[0] ), .A1(n23), .B0(\add_417/A[1] ), .B1(n22), 
        .C0(n37), .Y(encode_out[1]) );
  AOI22X1 U111 ( .A0(N82), .A1(n4), .B0(multiplicand[0]), .B1(n13), .Y(n37) );
  AO22X1 U112 ( .A0(multiplicand[0]), .A1(n32), .B0(multiplicand[0]), .B1(n3), 
        .Y(encode_out[0]) );
  XOR2X1 U113 ( .A(\add_416/carry[15] ), .B(n2), .Y(N57) );
  XOR2X1 U114 ( .A(\add_417/carry[15] ), .B(n2), .Y(N96) );
endmodule


module booth_encode_8bit_0 ( multiplicand, neg, recode_bit, encode_out );
  input [7:0] multiplicand;
  input [1:0] recode_bit;
  output [19:0] encode_out;
  input neg;
  wire   N35, N36, N37, N38, N39, N40, N41, N52, N54, N55, N56, N57, N58, N59,
         N60, N72, n25, n26, n27, n28, n29, n30, n31, n32, n33, n34, n35, n36,
         n37, n43, \add_443/carry[7] , \add_443/carry[6] , \add_443/carry[5] ,
         \add_443/carry[4] , \add_443/carry[3] , \add_443/carry[2] ,
         \add_443/A[0] , \add_443/A[1] , \add_443/A[2] , \add_443/A[3] ,
         \add_443/A[4] , \add_443/A[5] , \add_443/A[6] , \add_442/carry[7] ,
         \add_442/carry[6] , \add_442/carry[5] , \add_442/carry[4] ,
         \add_442/carry[3] , \add_442/carry[2] , n1, n2, \encode_out[14] , n5,
         n6, n7;
  assign encode_out[12] = \encode_out[14] ;
  assign encode_out[19] = \encode_out[14] ;
  assign encode_out[18] = \encode_out[14] ;
  assign encode_out[13] = \encode_out[14] ;
  assign encode_out[17] = \encode_out[14] ;
  assign encode_out[11] = \encode_out[14] ;
  assign encode_out[10] = \encode_out[14] ;
  assign encode_out[16] = \encode_out[14] ;
  assign encode_out[9] = \encode_out[14] ;
  assign encode_out[15] = \encode_out[14] ;
  assign encode_out[14] = \encode_out[14] ;

  NOR3X1 U3 ( .A(n7), .B(recode_bit[1]), .C(n5), .Y(n26) );
  CLKINVX1 U4 ( .A(multiplicand[0]), .Y(\add_443/A[0] ) );
  NOR2X1 U5 ( .A(\add_443/carry[7] ), .B(multiplicand[7]), .Y(N72) );
  NOR2X1 U6 ( .A(\add_442/carry[7] ), .B(multiplicand[7]), .Y(N52) );
  CLKINVX1 U7 ( .A(n43), .Y(\encode_out[14] ) );
  OAI221XL U8 ( .A0(\add_443/A[0] ), .A1(n29), .B0(\add_443/A[1] ), .B1(n30), 
        .C0(n37), .Y(encode_out[1]) );
  OAI221XL U9 ( .A0(\add_443/A[1] ), .A1(n29), .B0(\add_443/A[2] ), .B1(n30), 
        .C0(n36), .Y(encode_out[2]) );
  OAI221XL U10 ( .A0(\add_443/A[2] ), .A1(n29), .B0(\add_443/A[3] ), .B1(n30), 
        .C0(n35), .Y(encode_out[3]) );
  OAI221XL U11 ( .A0(\add_443/A[3] ), .A1(n29), .B0(\add_443/A[4] ), .B1(n30), 
        .C0(n34), .Y(encode_out[4]) );
  OAI221XL U12 ( .A0(\add_443/A[4] ), .A1(n29), .B0(\add_443/A[5] ), .B1(n30), 
        .C0(n33), .Y(encode_out[5]) );
  OAI221XL U13 ( .A0(\add_443/A[5] ), .A1(n29), .B0(\add_443/A[6] ), .B1(n30), 
        .C0(n32), .Y(encode_out[6]) );
  AOI22X1 U14 ( .A0(N59), .A1(n26), .B0(N39), .B1(n2), .Y(n32) );
  OAI221XL U15 ( .A0(\add_443/A[6] ), .A1(n29), .B0(n1), .B1(n30), .C0(n31), 
        .Y(encode_out[7]) );
  AOI22X1 U16 ( .A0(N60), .A1(n26), .B0(N40), .B1(n2), .Y(n31) );
  CLKINVX1 U17 ( .A(n28), .Y(encode_out[8]) );
  AOI22X1 U18 ( .A0(N54), .A1(n26), .B0(multiplicand[0]), .B1(n2), .Y(n37) );
  AOI22X1 U19 ( .A0(N55), .A1(n26), .B0(N35), .B1(n2), .Y(n36) );
  OAI2BB2XL U20 ( .B0(\add_443/A[0] ), .B1(n30), .A0N(multiplicand[0]), .A1N(
        n26), .Y(encode_out[0]) );
  AOI22X1 U21 ( .A0(N56), .A1(n26), .B0(N36), .B1(n2), .Y(n35) );
  AOI22X1 U22 ( .A0(N57), .A1(n26), .B0(N37), .B1(n2), .Y(n34) );
  AOI22X1 U23 ( .A0(N58), .A1(n26), .B0(N38), .B1(n2), .Y(n33) );
  ADDHXL U24 ( .A(\add_443/A[1] ), .B(\add_443/A[0] ), .CO(\add_443/carry[2] ), 
        .S(N54) );
  ADDHXL U25 ( .A(\add_443/A[2] ), .B(\add_443/carry[2] ), .CO(
        \add_443/carry[3] ), .S(N55) );
  ADDHXL U26 ( .A(\add_443/A[3] ), .B(\add_443/carry[3] ), .CO(
        \add_443/carry[4] ), .S(N56) );
  ADDHXL U27 ( .A(\add_443/A[4] ), .B(\add_443/carry[4] ), .CO(
        \add_443/carry[5] ), .S(N57) );
  ADDHXL U28 ( .A(\add_443/A[1] ), .B(\add_443/A[0] ), .CO(\add_442/carry[2] ), 
        .S(N35) );
  ADDHXL U29 ( .A(\add_443/A[6] ), .B(\add_443/carry[6] ), .CO(
        \add_443/carry[7] ), .S(N59) );
  ADDHXL U30 ( .A(\add_443/A[5] ), .B(\add_443/carry[5] ), .CO(
        \add_443/carry[6] ), .S(N58) );
  AOI221XL U31 ( .A0(N41), .A1(n2), .B0(N72), .B1(n26), .C0(n27), .Y(n28) );
  ADDHXL U32 ( .A(\add_443/A[2] ), .B(\add_442/carry[2] ), .CO(
        \add_442/carry[3] ), .S(N36) );
  ADDHXL U33 ( .A(\add_443/A[3] ), .B(\add_442/carry[3] ), .CO(
        \add_442/carry[4] ), .S(N37) );
  AOI21X1 U34 ( .A0(n29), .A1(n30), .B0(n1), .Y(n27) );
  ADDHXL U35 ( .A(\add_443/A[4] ), .B(\add_442/carry[4] ), .CO(
        \add_442/carry[5] ), .S(N38) );
  ADDHXL U36 ( .A(\add_443/A[6] ), .B(\add_442/carry[6] ), .CO(
        \add_442/carry[7] ), .S(N40) );
  ADDHXL U37 ( .A(\add_443/A[5] ), .B(\add_442/carry[5] ), .CO(
        \add_442/carry[6] ), .S(N39) );
  AOI221XL U38 ( .A0(N52), .A1(n2), .B0(N72), .B1(n26), .C0(n27), .Y(n43) );
  CLKBUFX3 U39 ( .A(n25), .Y(n2) );
  NOR3X1 U40 ( .A(n6), .B(recode_bit[0]), .C(n5), .Y(n25) );
  CLKINVX1 U41 ( .A(recode_bit[1]), .Y(n6) );
  NAND3X1 U42 ( .A(n5), .B(n7), .C(recode_bit[1]), .Y(n29) );
  NAND3X1 U43 ( .A(n5), .B(n6), .C(recode_bit[0]), .Y(n30) );
  CLKINVX1 U44 ( .A(neg), .Y(n5) );
  CLKINVX1 U45 ( .A(recode_bit[0]), .Y(n7) );
  CLKINVX1 U46 ( .A(multiplicand[1]), .Y(\add_443/A[1] ) );
  CLKINVX1 U47 ( .A(multiplicand[2]), .Y(\add_443/A[2] ) );
  CLKINVX1 U48 ( .A(multiplicand[3]), .Y(\add_443/A[3] ) );
  CLKINVX1 U49 ( .A(multiplicand[4]), .Y(\add_443/A[4] ) );
  CLKINVX1 U50 ( .A(multiplicand[5]), .Y(\add_443/A[5] ) );
  CLKINVX1 U51 ( .A(multiplicand[6]), .Y(\add_443/A[6] ) );
  CLKINVX1 U52 ( .A(multiplicand[7]), .Y(n1) );
  XOR2X1 U53 ( .A(\add_442/carry[7] ), .B(n1), .Y(N41) );
  XOR2X1 U54 ( .A(\add_443/carry[7] ), .B(n1), .Y(N60) );
endmodule


module booth_encode_8bit_7 ( multiplicand, neg, recode_bit, encode_out );
  input [7:0] multiplicand;
  input [1:0] recode_bit;
  output [19:0] encode_out;
  input neg;
  wire   N35, N36, N37, N38, N39, N40, N41, N52, N54, N55, N56, N57, N58, N59,
         N60, N72, \add_443/carry[7] , \add_443/carry[6] , \add_443/carry[5] ,
         \add_443/carry[4] , \add_443/carry[3] , \add_443/carry[2] ,
         \add_443/A[0] , \add_443/A[1] , \add_443/A[2] , \add_443/A[3] ,
         \add_443/A[4] , \add_443/A[5] , \add_443/A[6] , \add_442/carry[7] ,
         \add_442/carry[6] , \add_442/carry[5] , \add_442/carry[4] ,
         \add_442/carry[3] , \add_442/carry[2] , n1, n2, \encode_out[16] , n5,
         n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20,
         n21;
  assign encode_out[15] = \encode_out[16] ;
  assign encode_out[19] = \encode_out[16] ;
  assign encode_out[9] = \encode_out[16] ;
  assign encode_out[14] = \encode_out[16] ;
  assign encode_out[18] = \encode_out[16] ;
  assign encode_out[10] = \encode_out[16] ;
  assign encode_out[12] = \encode_out[16] ;
  assign encode_out[17] = \encode_out[16] ;
  assign encode_out[11] = \encode_out[16] ;
  assign encode_out[13] = \encode_out[16] ;
  assign encode_out[16] = \encode_out[16] ;

  NOR3X1 U3 ( .A(n7), .B(recode_bit[1]), .C(n5), .Y(n20) );
  CLKINVX1 U4 ( .A(multiplicand[0]), .Y(\add_443/A[0] ) );
  NOR2X1 U5 ( .A(\add_443/carry[7] ), .B(multiplicand[7]), .Y(N72) );
  NOR2X1 U6 ( .A(\add_442/carry[7] ), .B(multiplicand[7]), .Y(N52) );
  CLKINVX1 U7 ( .A(n8), .Y(\encode_out[16] ) );
  OAI221XL U8 ( .A0(\add_443/A[0] ), .A1(n17), .B0(\add_443/A[1] ), .B1(n16), 
        .C0(n9), .Y(encode_out[1]) );
  AOI22X1 U9 ( .A0(N54), .A1(n20), .B0(multiplicand[0]), .B1(n2), .Y(n9) );
  OAI221XL U10 ( .A0(\add_443/A[2] ), .A1(n17), .B0(\add_443/A[3] ), .B1(n16), 
        .C0(n11), .Y(encode_out[3]) );
  OAI221XL U11 ( .A0(\add_443/A[1] ), .A1(n17), .B0(\add_443/A[2] ), .B1(n16), 
        .C0(n10), .Y(encode_out[2]) );
  AOI22X1 U12 ( .A0(N55), .A1(n20), .B0(N35), .B1(n2), .Y(n10) );
  OAI221XL U13 ( .A0(\add_443/A[3] ), .A1(n17), .B0(\add_443/A[4] ), .B1(n16), 
        .C0(n12), .Y(encode_out[4]) );
  AOI22X1 U14 ( .A0(N57), .A1(n20), .B0(N37), .B1(n2), .Y(n12) );
  OAI221XL U15 ( .A0(\add_443/A[4] ), .A1(n17), .B0(\add_443/A[5] ), .B1(n16), 
        .C0(n13), .Y(encode_out[5]) );
  AOI22X1 U16 ( .A0(N58), .A1(n20), .B0(N38), .B1(n2), .Y(n13) );
  OAI221XL U17 ( .A0(\add_443/A[5] ), .A1(n17), .B0(\add_443/A[6] ), .B1(n16), 
        .C0(n14), .Y(encode_out[6]) );
  AOI22X1 U18 ( .A0(N59), .A1(n20), .B0(N39), .B1(n2), .Y(n14) );
  OAI221XL U19 ( .A0(\add_443/A[6] ), .A1(n17), .B0(n1), .B1(n16), .C0(n15), 
        .Y(encode_out[7]) );
  AOI22X1 U20 ( .A0(N60), .A1(n20), .B0(N40), .B1(n2), .Y(n15) );
  CLKINVX1 U21 ( .A(n18), .Y(encode_out[8]) );
  AOI22X1 U22 ( .A0(N56), .A1(n20), .B0(N36), .B1(n2), .Y(n11) );
  OAI2BB2XL U23 ( .B0(\add_443/A[0] ), .B1(n16), .A0N(multiplicand[0]), .A1N(
        n20), .Y(encode_out[0]) );
  ADDHXL U24 ( .A(\add_443/A[2] ), .B(\add_443/carry[2] ), .CO(
        \add_443/carry[3] ), .S(N55) );
  ADDHXL U25 ( .A(\add_443/A[1] ), .B(\add_443/A[0] ), .CO(\add_443/carry[2] ), 
        .S(N54) );
  ADDHXL U26 ( .A(\add_443/A[3] ), .B(\add_443/carry[3] ), .CO(
        \add_443/carry[4] ), .S(N56) );
  ADDHXL U27 ( .A(\add_443/A[4] ), .B(\add_443/carry[4] ), .CO(
        \add_443/carry[5] ), .S(N57) );
  ADDHXL U28 ( .A(\add_443/A[6] ), .B(\add_443/carry[6] ), .CO(
        \add_443/carry[7] ), .S(N59) );
  ADDHXL U29 ( .A(\add_443/A[5] ), .B(\add_443/carry[5] ), .CO(
        \add_443/carry[6] ), .S(N58) );
  ADDHXL U30 ( .A(\add_443/A[1] ), .B(\add_443/A[0] ), .CO(\add_442/carry[2] ), 
        .S(N35) );
  ADDHXL U31 ( .A(\add_443/A[2] ), .B(\add_442/carry[2] ), .CO(
        \add_442/carry[3] ), .S(N36) );
  AOI221XL U32 ( .A0(N41), .A1(n2), .B0(N72), .B1(n20), .C0(n19), .Y(n18) );
  ADDHXL U33 ( .A(\add_443/A[3] ), .B(\add_442/carry[3] ), .CO(
        \add_442/carry[4] ), .S(N37) );
  AOI21X1 U34 ( .A0(n17), .A1(n16), .B0(n1), .Y(n19) );
  ADDHXL U35 ( .A(\add_443/A[4] ), .B(\add_442/carry[4] ), .CO(
        \add_442/carry[5] ), .S(N38) );
  ADDHXL U36 ( .A(\add_443/A[5] ), .B(\add_442/carry[5] ), .CO(
        \add_442/carry[6] ), .S(N39) );
  ADDHXL U37 ( .A(\add_443/A[6] ), .B(\add_442/carry[6] ), .CO(
        \add_442/carry[7] ), .S(N40) );
  AOI221XL U38 ( .A0(N52), .A1(n2), .B0(N72), .B1(n20), .C0(n19), .Y(n8) );
  CLKBUFX3 U39 ( .A(n21), .Y(n2) );
  NOR3X1 U40 ( .A(n6), .B(recode_bit[0]), .C(n5), .Y(n21) );
  CLKINVX1 U41 ( .A(recode_bit[1]), .Y(n6) );
  NAND3X1 U42 ( .A(n5), .B(n7), .C(recode_bit[1]), .Y(n17) );
  NAND3X1 U43 ( .A(n5), .B(n6), .C(recode_bit[0]), .Y(n16) );
  CLKINVX1 U44 ( .A(neg), .Y(n5) );
  CLKINVX1 U45 ( .A(recode_bit[0]), .Y(n7) );
  CLKINVX1 U46 ( .A(multiplicand[1]), .Y(\add_443/A[1] ) );
  CLKINVX1 U47 ( .A(multiplicand[2]), .Y(\add_443/A[2] ) );
  CLKINVX1 U48 ( .A(multiplicand[3]), .Y(\add_443/A[3] ) );
  CLKINVX1 U49 ( .A(multiplicand[4]), .Y(\add_443/A[4] ) );
  CLKINVX1 U50 ( .A(multiplicand[5]), .Y(\add_443/A[5] ) );
  CLKINVX1 U51 ( .A(multiplicand[6]), .Y(\add_443/A[6] ) );
  CLKINVX1 U52 ( .A(multiplicand[7]), .Y(n1) );
  XOR2X1 U53 ( .A(\add_442/carry[7] ), .B(n1), .Y(N41) );
  XOR2X1 U54 ( .A(\add_443/carry[7] ), .B(n1), .Y(N60) );
endmodule


module booth_encode_8bit_6 ( multiplicand, neg, recode_bit, encode_out );
  input [7:0] multiplicand;
  input [1:0] recode_bit;
  output [19:0] encode_out;
  input neg;
  wire   N35, N36, N37, N38, N39, N40, N41, N52, N54, N55, N56, N57, N58, N59,
         N60, N72, \add_443/carry[7] , \add_443/carry[6] , \add_443/carry[5] ,
         \add_443/carry[4] , \add_443/carry[3] , \add_443/carry[2] ,
         \add_443/A[0] , \add_443/A[1] , \add_443/A[2] , \add_443/A[3] ,
         \add_443/A[4] , \add_443/A[5] , \add_443/A[6] , \add_442/carry[7] ,
         \add_442/carry[6] , \add_442/carry[5] , \add_442/carry[4] ,
         \add_442/carry[3] , \add_442/carry[2] , n1, n2, \encode_out[18] , n5,
         n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20,
         n21;
  assign encode_out[9] = \encode_out[18] ;
  assign encode_out[11] = \encode_out[18] ;
  assign encode_out[13] = \encode_out[18] ;
  assign encode_out[15] = \encode_out[18] ;
  assign encode_out[16] = \encode_out[18] ;
  assign encode_out[19] = \encode_out[18] ;
  assign encode_out[10] = \encode_out[18] ;
  assign encode_out[12] = \encode_out[18] ;
  assign encode_out[14] = \encode_out[18] ;
  assign encode_out[17] = \encode_out[18] ;
  assign encode_out[18] = \encode_out[18] ;

  NOR3X1 U3 ( .A(n7), .B(recode_bit[1]), .C(n5), .Y(n20) );
  CLKINVX1 U4 ( .A(multiplicand[0]), .Y(\add_443/A[0] ) );
  NOR2X1 U5 ( .A(\add_443/carry[7] ), .B(multiplicand[7]), .Y(N72) );
  NOR2X1 U6 ( .A(\add_442/carry[7] ), .B(multiplicand[7]), .Y(N52) );
  CLKINVX1 U7 ( .A(n8), .Y(\encode_out[18] ) );
  AOI22X1 U8 ( .A0(N54), .A1(n20), .B0(multiplicand[0]), .B1(n2), .Y(n9) );
  OAI221XL U9 ( .A0(\add_443/A[0] ), .A1(n17), .B0(\add_443/A[1] ), .B1(n16), 
        .C0(n9), .Y(encode_out[1]) );
  OAI221XL U10 ( .A0(\add_443/A[1] ), .A1(n17), .B0(\add_443/A[2] ), .B1(n16), 
        .C0(n10), .Y(encode_out[2]) );
  OAI221XL U11 ( .A0(\add_443/A[2] ), .A1(n17), .B0(\add_443/A[3] ), .B1(n16), 
        .C0(n11), .Y(encode_out[3]) );
  OAI221XL U12 ( .A0(\add_443/A[3] ), .A1(n17), .B0(\add_443/A[4] ), .B1(n16), 
        .C0(n12), .Y(encode_out[4]) );
  OAI221XL U13 ( .A0(\add_443/A[4] ), .A1(n17), .B0(\add_443/A[5] ), .B1(n16), 
        .C0(n13), .Y(encode_out[5]) );
  OAI221XL U14 ( .A0(\add_443/A[5] ), .A1(n17), .B0(\add_443/A[6] ), .B1(n16), 
        .C0(n14), .Y(encode_out[6]) );
  OAI221XL U15 ( .A0(\add_443/A[6] ), .A1(n17), .B0(n1), .B1(n16), .C0(n15), 
        .Y(encode_out[7]) );
  CLKINVX1 U16 ( .A(n18), .Y(encode_out[8]) );
  AOI22X1 U17 ( .A0(N55), .A1(n20), .B0(N35), .B1(n2), .Y(n10) );
  OAI2BB2XL U18 ( .B0(\add_443/A[0] ), .B1(n16), .A0N(multiplicand[0]), .A1N(
        n20), .Y(encode_out[0]) );
  AOI22X1 U19 ( .A0(N56), .A1(n20), .B0(N36), .B1(n2), .Y(n11) );
  AOI22X1 U20 ( .A0(N57), .A1(n20), .B0(N37), .B1(n2), .Y(n12) );
  AOI22X1 U21 ( .A0(N58), .A1(n20), .B0(N38), .B1(n2), .Y(n13) );
  AOI22X1 U22 ( .A0(N59), .A1(n20), .B0(N39), .B1(n2), .Y(n14) );
  ADDHXL U23 ( .A(\add_443/A[1] ), .B(\add_443/A[0] ), .CO(\add_443/carry[2] ), 
        .S(N54) );
  ADDHXL U24 ( .A(\add_443/A[2] ), .B(\add_443/carry[2] ), .CO(
        \add_443/carry[3] ), .S(N55) );
  AOI22X1 U25 ( .A0(N60), .A1(n20), .B0(N40), .B1(n2), .Y(n15) );
  ADDHXL U26 ( .A(\add_443/A[3] ), .B(\add_443/carry[3] ), .CO(
        \add_443/carry[4] ), .S(N56) );
  ADDHXL U27 ( .A(\add_443/A[4] ), .B(\add_443/carry[4] ), .CO(
        \add_443/carry[5] ), .S(N57) );
  ADDHXL U28 ( .A(\add_443/A[1] ), .B(\add_443/A[0] ), .CO(\add_442/carry[2] ), 
        .S(N35) );
  AOI221XL U29 ( .A0(N41), .A1(n2), .B0(N72), .B1(n20), .C0(n19), .Y(n18) );
  ADDHXL U30 ( .A(\add_443/A[6] ), .B(\add_443/carry[6] ), .CO(
        \add_443/carry[7] ), .S(N59) );
  ADDHXL U31 ( .A(\add_443/A[5] ), .B(\add_443/carry[5] ), .CO(
        \add_443/carry[6] ), .S(N58) );
  ADDHXL U32 ( .A(\add_443/A[2] ), .B(\add_442/carry[2] ), .CO(
        \add_442/carry[3] ), .S(N36) );
  AOI21X1 U33 ( .A0(n17), .A1(n16), .B0(n1), .Y(n19) );
  ADDHXL U34 ( .A(\add_443/A[3] ), .B(\add_442/carry[3] ), .CO(
        \add_442/carry[4] ), .S(N37) );
  ADDHXL U35 ( .A(\add_443/A[4] ), .B(\add_442/carry[4] ), .CO(
        \add_442/carry[5] ), .S(N38) );
  ADDHXL U36 ( .A(\add_443/A[6] ), .B(\add_442/carry[6] ), .CO(
        \add_442/carry[7] ), .S(N40) );
  ADDHXL U37 ( .A(\add_443/A[5] ), .B(\add_442/carry[5] ), .CO(
        \add_442/carry[6] ), .S(N39) );
  AOI221XL U38 ( .A0(N52), .A1(n2), .B0(N72), .B1(n20), .C0(n19), .Y(n8) );
  CLKINVX1 U39 ( .A(recode_bit[1]), .Y(n6) );
  CLKBUFX3 U40 ( .A(n21), .Y(n2) );
  NOR3X1 U41 ( .A(n6), .B(recode_bit[0]), .C(n5), .Y(n21) );
  NAND3X1 U42 ( .A(n5), .B(n6), .C(recode_bit[0]), .Y(n16) );
  NAND3X1 U43 ( .A(n5), .B(n7), .C(recode_bit[1]), .Y(n17) );
  CLKINVX1 U44 ( .A(neg), .Y(n5) );
  CLKINVX1 U45 ( .A(recode_bit[0]), .Y(n7) );
  CLKINVX1 U46 ( .A(multiplicand[1]), .Y(\add_443/A[1] ) );
  CLKINVX1 U47 ( .A(multiplicand[2]), .Y(\add_443/A[2] ) );
  CLKINVX1 U48 ( .A(multiplicand[3]), .Y(\add_443/A[3] ) );
  CLKINVX1 U49 ( .A(multiplicand[4]), .Y(\add_443/A[4] ) );
  CLKINVX1 U50 ( .A(multiplicand[5]), .Y(\add_443/A[5] ) );
  CLKINVX1 U51 ( .A(multiplicand[6]), .Y(\add_443/A[6] ) );
  CLKINVX1 U52 ( .A(multiplicand[7]), .Y(n1) );
  XOR2X1 U53 ( .A(\add_442/carry[7] ), .B(n1), .Y(N41) );
  XOR2X1 U54 ( .A(\add_443/carry[7] ), .B(n1), .Y(N60) );
endmodule


module booth_encode_8bit_5 ( multiplicand, neg, recode_bit, encode_out );
  input [7:0] multiplicand;
  input [1:0] recode_bit;
  output [19:0] encode_out;
  input neg;
  wire   N35, N36, N37, N38, N39, N40, N41, N52, N54, N55, N56, N57, N58, N59,
         N60, N72, \add_443/carry[7] , \add_443/carry[6] , \add_443/carry[5] ,
         \add_443/carry[4] , \add_443/carry[3] , \add_443/carry[2] ,
         \add_443/A[0] , \add_443/A[1] , \add_443/A[2] , \add_443/A[3] ,
         \add_443/A[4] , \add_443/A[5] , \add_443/A[6] , \add_442/carry[7] ,
         \add_442/carry[6] , \add_442/carry[5] , \add_442/carry[4] ,
         \add_442/carry[3] , \add_442/carry[2] , n1, n2, n3, \encode_out[17] ,
         \encode_out[11] , n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17,
         n18, n19, n20, n21, n22, n23, n24;
  assign encode_out[9] = \encode_out[17] ;
  assign encode_out[15] = \encode_out[17] ;
  assign encode_out[19] = \encode_out[17] ;
  assign encode_out[17] = \encode_out[17] ;
  assign encode_out[10] = \encode_out[11] ;
  assign encode_out[12] = \encode_out[11] ;
  assign encode_out[16] = \encode_out[11] ;
  assign encode_out[18] = \encode_out[11] ;
  assign encode_out[14] = \encode_out[11] ;
  assign encode_out[13] = \encode_out[11] ;
  assign encode_out[11] = \encode_out[11] ;

  CLKINVX1 U3 ( .A(neg), .Y(n7) );
  NOR2X1 U4 ( .A(\add_443/carry[7] ), .B(multiplicand[7]), .Y(N72) );
  NOR2X1 U5 ( .A(\add_442/carry[7] ), .B(multiplicand[7]), .Y(N52) );
  OAI221XL U6 ( .A0(\add_443/A[2] ), .A1(n20), .B0(\add_443/A[3] ), .B1(n19), 
        .C0(n14), .Y(encode_out[3]) );
  OAI221XL U7 ( .A0(\add_443/A[3] ), .A1(n20), .B0(\add_443/A[4] ), .B1(n19), 
        .C0(n15), .Y(encode_out[4]) );
  AOI22X1 U8 ( .A0(N57), .A1(n2), .B0(N37), .B1(n3), .Y(n15) );
  OAI221XL U9 ( .A0(\add_443/A[4] ), .A1(n20), .B0(\add_443/A[5] ), .B1(n19), 
        .C0(n16), .Y(encode_out[5]) );
  AOI22X1 U10 ( .A0(N58), .A1(n23), .B0(N38), .B1(n3), .Y(n16) );
  OAI221XL U11 ( .A0(\add_443/A[5] ), .A1(n20), .B0(\add_443/A[6] ), .B1(n19), 
        .C0(n17), .Y(encode_out[6]) );
  AOI22X1 U12 ( .A0(N59), .A1(n2), .B0(N39), .B1(n3), .Y(n17) );
  OAI221XL U13 ( .A0(\add_443/A[6] ), .A1(n20), .B0(n1), .B1(n19), .C0(n18), 
        .Y(encode_out[7]) );
  AOI22X1 U14 ( .A0(N60), .A1(n23), .B0(N40), .B1(n3), .Y(n18) );
  CLKINVX1 U15 ( .A(n21), .Y(encode_out[8]) );
  AOI221XL U16 ( .A0(N41), .A1(n3), .B0(N72), .B1(n2), .C0(n22), .Y(n21) );
  CLKINVX1 U17 ( .A(n10), .Y(\encode_out[11] ) );
  AOI221XL U18 ( .A0(N52), .A1(n3), .B0(N72), .B1(n2), .C0(n22), .Y(n10) );
  CLKINVX1 U19 ( .A(n11), .Y(\encode_out[17] ) );
  AOI221XL U20 ( .A0(N52), .A1(n3), .B0(N72), .B1(n23), .C0(n22), .Y(n11) );
  OAI221XL U21 ( .A0(\add_443/A[1] ), .A1(n20), .B0(\add_443/A[2] ), .B1(n19), 
        .C0(n13), .Y(encode_out[2]) );
  AOI22X1 U22 ( .A0(N55), .A1(n2), .B0(N35), .B1(n3), .Y(n13) );
  AOI22X1 U23 ( .A0(N56), .A1(n23), .B0(N36), .B1(n3), .Y(n14) );
  ADDHXL U24 ( .A(\add_443/A[3] ), .B(\add_443/carry[3] ), .CO(
        \add_443/carry[4] ), .S(N56) );
  ADDHXL U25 ( .A(\add_443/A[1] ), .B(\add_443/A[0] ), .CO(\add_443/carry[2] ), 
        .S(N54) );
  ADDHXL U26 ( .A(\add_443/A[2] ), .B(\add_443/carry[2] ), .CO(
        \add_443/carry[3] ), .S(N55) );
  ADDHXL U27 ( .A(\add_443/A[4] ), .B(\add_443/carry[4] ), .CO(
        \add_443/carry[5] ), .S(N57) );
  ADDHXL U28 ( .A(\add_443/A[6] ), .B(\add_443/carry[6] ), .CO(
        \add_443/carry[7] ), .S(N59) );
  ADDHXL U29 ( .A(\add_443/A[5] ), .B(\add_443/carry[5] ), .CO(
        \add_443/carry[6] ), .S(N58) );
  ADDHXL U30 ( .A(\add_443/A[2] ), .B(\add_442/carry[2] ), .CO(
        \add_442/carry[3] ), .S(N36) );
  ADDHXL U31 ( .A(\add_443/A[1] ), .B(\add_443/A[0] ), .CO(\add_442/carry[2] ), 
        .S(N35) );
  ADDHXL U32 ( .A(\add_443/A[3] ), .B(\add_442/carry[3] ), .CO(
        \add_442/carry[4] ), .S(N37) );
  ADDHXL U33 ( .A(\add_443/A[4] ), .B(\add_442/carry[4] ), .CO(
        \add_442/carry[5] ), .S(N38) );
  ADDHXL U34 ( .A(\add_443/A[5] ), .B(\add_442/carry[5] ), .CO(
        \add_442/carry[6] ), .S(N39) );
  ADDHXL U35 ( .A(\add_443/A[6] ), .B(\add_442/carry[6] ), .CO(
        \add_442/carry[7] ), .S(N40) );
  AOI21X1 U36 ( .A0(n20), .A1(n19), .B0(n1), .Y(n22) );
  CLKINVX1 U37 ( .A(recode_bit[1]), .Y(n8) );
  CLKBUFX3 U38 ( .A(n24), .Y(n3) );
  NOR3X1 U39 ( .A(n8), .B(recode_bit[0]), .C(n7), .Y(n24) );
  NOR3X1 U40 ( .A(n9), .B(recode_bit[1]), .C(n7), .Y(n2) );
  NAND3X1 U41 ( .A(n7), .B(n8), .C(recode_bit[0]), .Y(n19) );
  NOR3X1 U42 ( .A(n9), .B(recode_bit[1]), .C(n7), .Y(n23) );
  NAND3X1 U43 ( .A(n7), .B(n9), .C(recode_bit[1]), .Y(n20) );
  CLKINVX1 U44 ( .A(multiplicand[0]), .Y(\add_443/A[0] ) );
  CLKINVX1 U45 ( .A(multiplicand[1]), .Y(\add_443/A[1] ) );
  CLKINVX1 U46 ( .A(recode_bit[0]), .Y(n9) );
  CLKINVX1 U47 ( .A(multiplicand[2]), .Y(\add_443/A[2] ) );
  CLKINVX1 U48 ( .A(multiplicand[3]), .Y(\add_443/A[3] ) );
  CLKINVX1 U49 ( .A(multiplicand[4]), .Y(\add_443/A[4] ) );
  CLKINVX1 U50 ( .A(multiplicand[5]), .Y(\add_443/A[5] ) );
  CLKINVX1 U51 ( .A(multiplicand[6]), .Y(\add_443/A[6] ) );
  CLKINVX1 U52 ( .A(multiplicand[7]), .Y(n1) );
  OAI221XL U53 ( .A0(\add_443/A[0] ), .A1(n20), .B0(\add_443/A[1] ), .B1(n19), 
        .C0(n12), .Y(encode_out[1]) );
  AOI22X1 U54 ( .A0(N54), .A1(n23), .B0(multiplicand[0]), .B1(n3), .Y(n12) );
  OAI2BB2XL U55 ( .B0(\add_443/A[0] ), .B1(n19), .A0N(multiplicand[0]), .A1N(
        n2), .Y(encode_out[0]) );
  XOR2X1 U56 ( .A(\add_442/carry[7] ), .B(n1), .Y(N41) );
  XOR2X1 U57 ( .A(\add_443/carry[7] ), .B(n1), .Y(N60) );
endmodule


module booth_encode_8bit_4 ( multiplicand, neg, recode_bit, encode_out );
  input [7:0] multiplicand;
  input [1:0] recode_bit;
  output [19:0] encode_out;
  input neg;
  wire   N35, N36, N37, N38, N39, N40, N41, N52, N54, N55, N56, N57, N58, N59,
         N60, N72, \add_443/carry[7] , \add_443/carry[6] , \add_443/carry[5] ,
         \add_443/carry[4] , \add_443/carry[3] , \add_443/carry[2] ,
         \add_443/A[0] , \add_443/A[1] , \add_443/A[2] , \add_443/A[3] ,
         \add_443/A[4] , \add_443/A[5] , \add_443/A[6] , \add_443/A[7] ,
         \add_442/carry[7] , \add_442/carry[6] , \add_442/carry[5] ,
         \add_442/carry[4] , \add_442/carry[3] , \add_442/carry[2] , n1,
         \encode_out[16] , n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14,
         n15, n16, n17, n18, n19, n20;
  assign encode_out[12] = \encode_out[16] ;
  assign encode_out[19] = \encode_out[16] ;
  assign encode_out[18] = \encode_out[16] ;
  assign encode_out[13] = \encode_out[16] ;
  assign encode_out[15] = \encode_out[16] ;
  assign encode_out[14] = \encode_out[16] ;
  assign encode_out[11] = \encode_out[16] ;
  assign encode_out[17] = \encode_out[16] ;
  assign encode_out[9] = \encode_out[16] ;
  assign encode_out[10] = \encode_out[16] ;
  assign encode_out[16] = \encode_out[16] ;

  NOR3X1 U3 ( .A(n6), .B(recode_bit[1]), .C(n4), .Y(n19) );
  CLKINVX1 U4 ( .A(multiplicand[0]), .Y(\add_443/A[0] ) );
  CLKINVX1 U5 ( .A(n7), .Y(\encode_out[16] ) );
  OAI221XL U6 ( .A0(\add_443/A[0] ), .A1(n16), .B0(\add_443/A[1] ), .B1(n15), 
        .C0(n8), .Y(encode_out[1]) );
  OAI221XL U7 ( .A0(\add_443/A[1] ), .A1(n16), .B0(\add_443/A[2] ), .B1(n15), 
        .C0(n9), .Y(encode_out[2]) );
  OAI221XL U8 ( .A0(\add_443/A[2] ), .A1(n16), .B0(\add_443/A[3] ), .B1(n15), 
        .C0(n10), .Y(encode_out[3]) );
  OAI221XL U9 ( .A0(\add_443/A[3] ), .A1(n16), .B0(\add_443/A[4] ), .B1(n15), 
        .C0(n11), .Y(encode_out[4]) );
  OAI221XL U10 ( .A0(\add_443/A[4] ), .A1(n16), .B0(\add_443/A[5] ), .B1(n15), 
        .C0(n12), .Y(encode_out[5]) );
  OAI221XL U11 ( .A0(\add_443/A[5] ), .A1(n16), .B0(\add_443/A[6] ), .B1(n15), 
        .C0(n13), .Y(encode_out[6]) );
  AOI22X1 U12 ( .A0(N59), .A1(n19), .B0(N39), .B1(n1), .Y(n13) );
  OAI221XL U13 ( .A0(\add_443/A[6] ), .A1(n16), .B0(\add_443/A[7] ), .B1(n15), 
        .C0(n14), .Y(encode_out[7]) );
  AOI22X1 U14 ( .A0(N60), .A1(n19), .B0(N40), .B1(n1), .Y(n14) );
  CLKINVX1 U15 ( .A(n17), .Y(encode_out[8]) );
  AOI22X1 U16 ( .A0(N54), .A1(n19), .B0(multiplicand[0]), .B1(n1), .Y(n8) );
  AOI22X1 U17 ( .A0(N55), .A1(n19), .B0(N35), .B1(n1), .Y(n9) );
  OAI2BB2XL U18 ( .B0(\add_443/A[0] ), .B1(n15), .A0N(multiplicand[0]), .A1N(
        n19), .Y(encode_out[0]) );
  AOI22X1 U19 ( .A0(N56), .A1(n19), .B0(N36), .B1(n1), .Y(n10) );
  AOI22X1 U20 ( .A0(N57), .A1(n19), .B0(N37), .B1(n1), .Y(n11) );
  AOI22X1 U21 ( .A0(N58), .A1(n19), .B0(N38), .B1(n1), .Y(n12) );
  ADDHXL U22 ( .A(\add_443/A[1] ), .B(\add_443/A[0] ), .CO(\add_443/carry[2] ), 
        .S(N54) );
  ADDHXL U23 ( .A(\add_443/A[2] ), .B(\add_443/carry[2] ), .CO(
        \add_443/carry[3] ), .S(N55) );
  ADDHXL U24 ( .A(\add_443/A[3] ), .B(\add_443/carry[3] ), .CO(
        \add_443/carry[4] ), .S(N56) );
  ADDHXL U25 ( .A(\add_443/A[4] ), .B(\add_443/carry[4] ), .CO(
        \add_443/carry[5] ), .S(N57) );
  ADDHXL U26 ( .A(\add_443/A[1] ), .B(\add_443/A[0] ), .CO(\add_442/carry[2] ), 
        .S(N35) );
  ADDHXL U27 ( .A(\add_443/A[6] ), .B(\add_443/carry[6] ), .CO(
        \add_443/carry[7] ), .S(N59) );
  ADDHXL U28 ( .A(\add_443/A[5] ), .B(\add_443/carry[5] ), .CO(
        \add_443/carry[6] ), .S(N58) );
  ADDHXL U29 ( .A(\add_443/A[2] ), .B(\add_442/carry[2] ), .CO(
        \add_442/carry[3] ), .S(N36) );
  AOI221XL U30 ( .A0(N41), .A1(n1), .B0(N72), .B1(n19), .C0(n18), .Y(n17) );
  ADDHXL U31 ( .A(\add_443/A[3] ), .B(\add_442/carry[3] ), .CO(
        \add_442/carry[4] ), .S(N37) );
  AOI21X1 U32 ( .A0(n16), .A1(n15), .B0(\add_443/A[7] ), .Y(n18) );
  ADDHXL U33 ( .A(\add_443/A[4] ), .B(\add_442/carry[4] ), .CO(
        \add_442/carry[5] ), .S(N38) );
  ADDHXL U34 ( .A(\add_443/A[6] ), .B(\add_442/carry[6] ), .CO(
        \add_442/carry[7] ), .S(N40) );
  ADDHXL U35 ( .A(\add_443/A[5] ), .B(\add_442/carry[5] ), .CO(
        \add_442/carry[6] ), .S(N39) );
  NOR2X1 U36 ( .A(\add_443/carry[7] ), .B(multiplicand[7]), .Y(N72) );
  NOR2X1 U37 ( .A(\add_442/carry[7] ), .B(multiplicand[7]), .Y(N52) );
  AOI221XL U38 ( .A0(N52), .A1(n1), .B0(N72), .B1(n19), .C0(n18), .Y(n7) );
  CLKINVX1 U39 ( .A(recode_bit[1]), .Y(n5) );
  CLKBUFX3 U40 ( .A(n20), .Y(n1) );
  NOR3X1 U41 ( .A(n5), .B(recode_bit[0]), .C(n4), .Y(n20) );
  NAND3X1 U42 ( .A(n4), .B(n6), .C(recode_bit[1]), .Y(n16) );
  NAND3X1 U43 ( .A(n4), .B(n5), .C(recode_bit[0]), .Y(n15) );
  CLKINVX1 U44 ( .A(neg), .Y(n4) );
  CLKINVX1 U45 ( .A(recode_bit[0]), .Y(n6) );
  CLKINVX1 U46 ( .A(multiplicand[1]), .Y(\add_443/A[1] ) );
  CLKINVX1 U47 ( .A(multiplicand[2]), .Y(\add_443/A[2] ) );
  CLKINVX1 U48 ( .A(multiplicand[3]), .Y(\add_443/A[3] ) );
  CLKINVX1 U49 ( .A(multiplicand[4]), .Y(\add_443/A[4] ) );
  CLKINVX1 U50 ( .A(multiplicand[5]), .Y(\add_443/A[5] ) );
  CLKINVX1 U51 ( .A(multiplicand[6]), .Y(\add_443/A[6] ) );
  CLKINVX1 U52 ( .A(multiplicand[7]), .Y(\add_443/A[7] ) );
  XOR2X1 U53 ( .A(\add_442/carry[7] ), .B(\add_443/A[7] ), .Y(N41) );
  XOR2X1 U54 ( .A(\add_443/carry[7] ), .B(\add_443/A[7] ), .Y(N60) );
endmodule


module booth_encode_8bit_3 ( multiplicand, neg, recode_bit, encode_out );
  input [7:0] multiplicand;
  input [1:0] recode_bit;
  output [19:0] encode_out;
  input neg;
  wire   N35, N36, N37, N38, N39, N40, N41, N52, N54, N55, N56, N57, N58, N59,
         N60, N72, \add_443/carry[7] , \add_443/carry[6] , \add_443/carry[5] ,
         \add_443/carry[4] , \add_443/carry[3] , \add_443/carry[2] ,
         \add_443/A[0] , \add_443/A[1] , \add_443/A[2] , \add_443/A[3] ,
         \add_443/A[4] , \add_443/A[5] , \add_443/A[6] , \add_443/A[7] ,
         \add_442/carry[7] , \add_442/carry[6] , \add_442/carry[5] ,
         \add_442/carry[4] , \add_442/carry[3] , \add_442/carry[2] , n1,
         \encode_out[16] , n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14,
         n15, n16, n17, n18, n19, n20;
  assign encode_out[15] = \encode_out[16] ;
  assign encode_out[19] = \encode_out[16] ;
  assign encode_out[9] = \encode_out[16] ;
  assign encode_out[14] = \encode_out[16] ;
  assign encode_out[18] = \encode_out[16] ;
  assign encode_out[10] = \encode_out[16] ;
  assign encode_out[12] = \encode_out[16] ;
  assign encode_out[17] = \encode_out[16] ;
  assign encode_out[11] = \encode_out[16] ;
  assign encode_out[13] = \encode_out[16] ;
  assign encode_out[16] = \encode_out[16] ;

  NOR3X1 U3 ( .A(n6), .B(recode_bit[1]), .C(n4), .Y(n19) );
  CLKINVX1 U4 ( .A(multiplicand[0]), .Y(\add_443/A[0] ) );
  CLKINVX1 U5 ( .A(n7), .Y(\encode_out[16] ) );
  OAI221XL U6 ( .A0(\add_443/A[0] ), .A1(n16), .B0(\add_443/A[1] ), .B1(n15), 
        .C0(n8), .Y(encode_out[1]) );
  AOI22X1 U7 ( .A0(N54), .A1(n19), .B0(multiplicand[0]), .B1(n1), .Y(n8) );
  OAI221XL U8 ( .A0(\add_443/A[2] ), .A1(n16), .B0(\add_443/A[3] ), .B1(n15), 
        .C0(n10), .Y(encode_out[3]) );
  OAI221XL U9 ( .A0(\add_443/A[1] ), .A1(n16), .B0(\add_443/A[2] ), .B1(n15), 
        .C0(n9), .Y(encode_out[2]) );
  AOI22X1 U10 ( .A0(N55), .A1(n19), .B0(N35), .B1(n1), .Y(n9) );
  OAI221XL U11 ( .A0(\add_443/A[3] ), .A1(n16), .B0(\add_443/A[4] ), .B1(n15), 
        .C0(n11), .Y(encode_out[4]) );
  AOI22X1 U12 ( .A0(N57), .A1(n19), .B0(N37), .B1(n1), .Y(n11) );
  OAI221XL U13 ( .A0(\add_443/A[4] ), .A1(n16), .B0(\add_443/A[5] ), .B1(n15), 
        .C0(n12), .Y(encode_out[5]) );
  AOI22X1 U14 ( .A0(N58), .A1(n19), .B0(N38), .B1(n1), .Y(n12) );
  OAI221XL U15 ( .A0(\add_443/A[5] ), .A1(n16), .B0(\add_443/A[6] ), .B1(n15), 
        .C0(n13), .Y(encode_out[6]) );
  AOI22X1 U16 ( .A0(N59), .A1(n19), .B0(N39), .B1(n1), .Y(n13) );
  OAI221XL U17 ( .A0(\add_443/A[6] ), .A1(n16), .B0(\add_443/A[7] ), .B1(n15), 
        .C0(n14), .Y(encode_out[7]) );
  AOI22X1 U18 ( .A0(N60), .A1(n19), .B0(N40), .B1(n1), .Y(n14) );
  CLKINVX1 U19 ( .A(n17), .Y(encode_out[8]) );
  AOI22X1 U20 ( .A0(N56), .A1(n19), .B0(N36), .B1(n1), .Y(n10) );
  OAI2BB2XL U21 ( .B0(\add_443/A[0] ), .B1(n15), .A0N(multiplicand[0]), .A1N(
        n19), .Y(encode_out[0]) );
  ADDHXL U22 ( .A(\add_443/A[2] ), .B(\add_443/carry[2] ), .CO(
        \add_443/carry[3] ), .S(N55) );
  ADDHXL U23 ( .A(\add_443/A[1] ), .B(\add_443/A[0] ), .CO(\add_443/carry[2] ), 
        .S(N54) );
  ADDHXL U24 ( .A(\add_443/A[3] ), .B(\add_443/carry[3] ), .CO(
        \add_443/carry[4] ), .S(N56) );
  ADDHXL U25 ( .A(\add_443/A[4] ), .B(\add_443/carry[4] ), .CO(
        \add_443/carry[5] ), .S(N57) );
  ADDHXL U26 ( .A(\add_443/A[6] ), .B(\add_443/carry[6] ), .CO(
        \add_443/carry[7] ), .S(N59) );
  ADDHXL U27 ( .A(\add_443/A[5] ), .B(\add_443/carry[5] ), .CO(
        \add_443/carry[6] ), .S(N58) );
  ADDHXL U28 ( .A(\add_443/A[1] ), .B(\add_443/A[0] ), .CO(\add_442/carry[2] ), 
        .S(N35) );
  ADDHXL U29 ( .A(\add_443/A[2] ), .B(\add_442/carry[2] ), .CO(
        \add_442/carry[3] ), .S(N36) );
  AOI221XL U30 ( .A0(N41), .A1(n1), .B0(N72), .B1(n19), .C0(n18), .Y(n17) );
  ADDHXL U31 ( .A(\add_443/A[3] ), .B(\add_442/carry[3] ), .CO(
        \add_442/carry[4] ), .S(N37) );
  AOI21X1 U32 ( .A0(n16), .A1(n15), .B0(\add_443/A[7] ), .Y(n18) );
  ADDHXL U33 ( .A(\add_443/A[4] ), .B(\add_442/carry[4] ), .CO(
        \add_442/carry[5] ), .S(N38) );
  ADDHXL U34 ( .A(\add_443/A[5] ), .B(\add_442/carry[5] ), .CO(
        \add_442/carry[6] ), .S(N39) );
  ADDHXL U35 ( .A(\add_443/A[6] ), .B(\add_442/carry[6] ), .CO(
        \add_442/carry[7] ), .S(N40) );
  NOR2X1 U36 ( .A(\add_443/carry[7] ), .B(multiplicand[7]), .Y(N72) );
  NOR2X1 U37 ( .A(\add_442/carry[7] ), .B(multiplicand[7]), .Y(N52) );
  AOI221XL U38 ( .A0(N52), .A1(n1), .B0(N72), .B1(n19), .C0(n18), .Y(n7) );
  CLKINVX1 U39 ( .A(recode_bit[1]), .Y(n5) );
  CLKBUFX3 U40 ( .A(n20), .Y(n1) );
  NOR3X1 U41 ( .A(n5), .B(recode_bit[0]), .C(n4), .Y(n20) );
  NAND3X1 U42 ( .A(n4), .B(n6), .C(recode_bit[1]), .Y(n16) );
  NAND3X1 U43 ( .A(n4), .B(n5), .C(recode_bit[0]), .Y(n15) );
  CLKINVX1 U44 ( .A(neg), .Y(n4) );
  CLKINVX1 U45 ( .A(recode_bit[0]), .Y(n6) );
  CLKINVX1 U46 ( .A(multiplicand[1]), .Y(\add_443/A[1] ) );
  CLKINVX1 U47 ( .A(multiplicand[2]), .Y(\add_443/A[2] ) );
  CLKINVX1 U48 ( .A(multiplicand[3]), .Y(\add_443/A[3] ) );
  CLKINVX1 U49 ( .A(multiplicand[4]), .Y(\add_443/A[4] ) );
  CLKINVX1 U50 ( .A(multiplicand[5]), .Y(\add_443/A[5] ) );
  CLKINVX1 U51 ( .A(multiplicand[6]), .Y(\add_443/A[6] ) );
  CLKINVX1 U52 ( .A(multiplicand[7]), .Y(\add_443/A[7] ) );
  XOR2X1 U53 ( .A(\add_442/carry[7] ), .B(\add_443/A[7] ), .Y(N41) );
  XOR2X1 U54 ( .A(\add_443/carry[7] ), .B(\add_443/A[7] ), .Y(N60) );
endmodule


module booth_encode_8bit_2 ( multiplicand, neg, recode_bit, encode_out );
  input [7:0] multiplicand;
  input [1:0] recode_bit;
  output [19:0] encode_out;
  input neg;
  wire   N35, N36, N37, N38, N39, N40, N41, N52, N54, N55, N56, N57, N58, N59,
         N60, N72, \add_443/carry[7] , \add_443/carry[6] , \add_443/carry[5] ,
         \add_443/carry[4] , \add_443/carry[3] , \add_443/carry[2] ,
         \add_443/A[0] , \add_443/A[1] , \add_443/A[2] , \add_443/A[3] ,
         \add_443/A[4] , \add_443/A[5] , \add_443/A[6] , \add_443/A[7] ,
         \add_442/carry[7] , \add_442/carry[6] , \add_442/carry[5] ,
         \add_442/carry[4] , \add_442/carry[3] , \add_442/carry[2] , n1,
         \encode_out[18] , n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14,
         n15, n16, n17, n18, n19, n20;
  assign encode_out[9] = \encode_out[18] ;
  assign encode_out[11] = \encode_out[18] ;
  assign encode_out[13] = \encode_out[18] ;
  assign encode_out[15] = \encode_out[18] ;
  assign encode_out[16] = \encode_out[18] ;
  assign encode_out[19] = \encode_out[18] ;
  assign encode_out[10] = \encode_out[18] ;
  assign encode_out[12] = \encode_out[18] ;
  assign encode_out[14] = \encode_out[18] ;
  assign encode_out[17] = \encode_out[18] ;
  assign encode_out[18] = \encode_out[18] ;

  NOR3X1 U3 ( .A(n6), .B(recode_bit[1]), .C(n4), .Y(n19) );
  CLKINVX1 U4 ( .A(multiplicand[0]), .Y(\add_443/A[0] ) );
  CLKINVX1 U5 ( .A(n7), .Y(\encode_out[18] ) );
  AOI22X1 U6 ( .A0(N54), .A1(n19), .B0(multiplicand[0]), .B1(n1), .Y(n8) );
  OAI221XL U7 ( .A0(\add_443/A[0] ), .A1(n16), .B0(\add_443/A[1] ), .B1(n15), 
        .C0(n8), .Y(encode_out[1]) );
  OAI221XL U8 ( .A0(\add_443/A[1] ), .A1(n16), .B0(\add_443/A[2] ), .B1(n15), 
        .C0(n9), .Y(encode_out[2]) );
  OAI221XL U9 ( .A0(\add_443/A[2] ), .A1(n16), .B0(\add_443/A[3] ), .B1(n15), 
        .C0(n10), .Y(encode_out[3]) );
  OAI221XL U10 ( .A0(\add_443/A[3] ), .A1(n16), .B0(\add_443/A[4] ), .B1(n15), 
        .C0(n11), .Y(encode_out[4]) );
  OAI221XL U11 ( .A0(\add_443/A[4] ), .A1(n16), .B0(\add_443/A[5] ), .B1(n15), 
        .C0(n12), .Y(encode_out[5]) );
  OAI221XL U12 ( .A0(\add_443/A[5] ), .A1(n16), .B0(\add_443/A[6] ), .B1(n15), 
        .C0(n13), .Y(encode_out[6]) );
  OAI221XL U13 ( .A0(\add_443/A[6] ), .A1(n16), .B0(\add_443/A[7] ), .B1(n15), 
        .C0(n14), .Y(encode_out[7]) );
  CLKINVX1 U14 ( .A(n17), .Y(encode_out[8]) );
  AOI22X1 U15 ( .A0(N55), .A1(n19), .B0(N35), .B1(n1), .Y(n9) );
  OAI2BB2XL U16 ( .B0(\add_443/A[0] ), .B1(n15), .A0N(multiplicand[0]), .A1N(
        n19), .Y(encode_out[0]) );
  AOI22X1 U17 ( .A0(N56), .A1(n19), .B0(N36), .B1(n1), .Y(n10) );
  AOI22X1 U18 ( .A0(N57), .A1(n19), .B0(N37), .B1(n1), .Y(n11) );
  AOI22X1 U19 ( .A0(N58), .A1(n19), .B0(N38), .B1(n1), .Y(n12) );
  AOI22X1 U20 ( .A0(N59), .A1(n19), .B0(N39), .B1(n1), .Y(n13) );
  ADDHXL U21 ( .A(\add_443/A[1] ), .B(\add_443/A[0] ), .CO(\add_443/carry[2] ), 
        .S(N54) );
  ADDHXL U22 ( .A(\add_443/A[2] ), .B(\add_443/carry[2] ), .CO(
        \add_443/carry[3] ), .S(N55) );
  ADDHXL U23 ( .A(\add_443/A[3] ), .B(\add_443/carry[3] ), .CO(
        \add_443/carry[4] ), .S(N56) );
  AOI22X1 U24 ( .A0(N60), .A1(n19), .B0(N40), .B1(n1), .Y(n14) );
  ADDHXL U25 ( .A(\add_443/A[4] ), .B(\add_443/carry[4] ), .CO(
        \add_443/carry[5] ), .S(N57) );
  ADDHXL U26 ( .A(\add_443/A[1] ), .B(\add_443/A[0] ), .CO(\add_442/carry[2] ), 
        .S(N35) );
  ADDHXL U27 ( .A(\add_443/A[6] ), .B(\add_443/carry[6] ), .CO(
        \add_443/carry[7] ), .S(N59) );
  ADDHXL U28 ( .A(\add_443/A[5] ), .B(\add_443/carry[5] ), .CO(
        \add_443/carry[6] ), .S(N58) );
  ADDHXL U29 ( .A(\add_443/A[2] ), .B(\add_442/carry[2] ), .CO(
        \add_442/carry[3] ), .S(N36) );
  AOI221XL U30 ( .A0(N41), .A1(n1), .B0(N72), .B1(n19), .C0(n18), .Y(n17) );
  ADDHXL U31 ( .A(\add_443/A[3] ), .B(\add_442/carry[3] ), .CO(
        \add_442/carry[4] ), .S(N37) );
  AOI21X1 U32 ( .A0(n16), .A1(n15), .B0(\add_443/A[7] ), .Y(n18) );
  ADDHXL U33 ( .A(\add_443/A[4] ), .B(\add_442/carry[4] ), .CO(
        \add_442/carry[5] ), .S(N38) );
  ADDHXL U34 ( .A(\add_443/A[6] ), .B(\add_442/carry[6] ), .CO(
        \add_442/carry[7] ), .S(N40) );
  ADDHXL U35 ( .A(\add_443/A[5] ), .B(\add_442/carry[5] ), .CO(
        \add_442/carry[6] ), .S(N39) );
  NOR2X1 U36 ( .A(\add_443/carry[7] ), .B(multiplicand[7]), .Y(N72) );
  NOR2X1 U37 ( .A(\add_442/carry[7] ), .B(multiplicand[7]), .Y(N52) );
  AOI221XL U38 ( .A0(N52), .A1(n1), .B0(N72), .B1(n19), .C0(n18), .Y(n7) );
  CLKBUFX3 U39 ( .A(n20), .Y(n1) );
  NOR3X1 U40 ( .A(n5), .B(recode_bit[0]), .C(n4), .Y(n20) );
  CLKINVX1 U41 ( .A(recode_bit[1]), .Y(n5) );
  NAND3X1 U42 ( .A(n4), .B(n5), .C(recode_bit[0]), .Y(n15) );
  NAND3X1 U43 ( .A(n4), .B(n6), .C(recode_bit[1]), .Y(n16) );
  CLKINVX1 U44 ( .A(neg), .Y(n4) );
  CLKINVX1 U45 ( .A(recode_bit[0]), .Y(n6) );
  CLKINVX1 U46 ( .A(multiplicand[1]), .Y(\add_443/A[1] ) );
  CLKINVX1 U47 ( .A(multiplicand[2]), .Y(\add_443/A[2] ) );
  CLKINVX1 U48 ( .A(multiplicand[3]), .Y(\add_443/A[3] ) );
  CLKINVX1 U49 ( .A(multiplicand[4]), .Y(\add_443/A[4] ) );
  CLKINVX1 U50 ( .A(multiplicand[5]), .Y(\add_443/A[5] ) );
  CLKINVX1 U51 ( .A(multiplicand[6]), .Y(\add_443/A[6] ) );
  CLKINVX1 U52 ( .A(multiplicand[7]), .Y(\add_443/A[7] ) );
  XOR2X1 U53 ( .A(\add_442/carry[7] ), .B(\add_443/A[7] ), .Y(N41) );
  XOR2X1 U54 ( .A(\add_443/carry[7] ), .B(\add_443/A[7] ), .Y(N60) );
endmodule


module booth_encode_8bit_1 ( multiplicand, neg, recode_bit, encode_out );
  input [7:0] multiplicand;
  input [1:0] recode_bit;
  output [19:0] encode_out;
  input neg;
  wire   N35, N36, N37, N38, N39, N40, N41, N52, N54, N55, N56, N57, N58, N59,
         N60, N72, \add_443/carry[7] , \add_443/carry[6] , \add_443/carry[5] ,
         \add_443/carry[4] , \add_443/carry[3] , \add_443/carry[2] ,
         \add_443/A[0] , \add_443/A[1] , \add_443/A[2] , \add_443/A[3] ,
         \add_443/A[4] , \add_443/A[5] , \add_443/A[6] , \add_443/A[7] ,
         \add_442/carry[7] , \add_442/carry[6] , \add_442/carry[5] ,
         \add_442/carry[4] , \add_442/carry[3] , \add_442/carry[2] , n1,
         \encode_out[9] , n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15,
         n16, n17, n18, n19, n20;
  assign encode_out[10] = \encode_out[9] ;
  assign encode_out[11] = \encode_out[9] ;
  assign encode_out[12] = \encode_out[9] ;
  assign encode_out[13] = \encode_out[9] ;
  assign encode_out[14] = \encode_out[9] ;
  assign encode_out[15] = \encode_out[9] ;
  assign encode_out[16] = \encode_out[9] ;
  assign encode_out[17] = \encode_out[9] ;
  assign encode_out[19] = \encode_out[9] ;
  assign encode_out[18] = \encode_out[9] ;
  assign encode_out[9] = \encode_out[9] ;

  NOR3X1 U3 ( .A(n6), .B(recode_bit[1]), .C(n4), .Y(n18) );
  OAI221XL U4 ( .A0(\add_443/A[2] ), .A1(n15), .B0(\add_443/A[3] ), .B1(n14), 
        .C0(n9), .Y(encode_out[3]) );
  OAI221XL U5 ( .A0(\add_443/A[3] ), .A1(n15), .B0(\add_443/A[4] ), .B1(n14), 
        .C0(n10), .Y(encode_out[4]) );
  AOI22X1 U6 ( .A0(N57), .A1(n18), .B0(N37), .B1(n1), .Y(n10) );
  OAI221XL U7 ( .A0(\add_443/A[4] ), .A1(n15), .B0(\add_443/A[5] ), .B1(n14), 
        .C0(n11), .Y(encode_out[5]) );
  AOI22X1 U8 ( .A0(N58), .A1(n18), .B0(N38), .B1(n1), .Y(n11) );
  OAI221XL U9 ( .A0(\add_443/A[5] ), .A1(n15), .B0(\add_443/A[6] ), .B1(n14), 
        .C0(n12), .Y(encode_out[6]) );
  AOI22X1 U10 ( .A0(N59), .A1(n18), .B0(N39), .B1(n1), .Y(n12) );
  OAI221XL U11 ( .A0(\add_443/A[6] ), .A1(n15), .B0(\add_443/A[7] ), .B1(n14), 
        .C0(n13), .Y(encode_out[7]) );
  AOI22X1 U12 ( .A0(N60), .A1(n18), .B0(N40), .B1(n1), .Y(n13) );
  CLKINVX1 U13 ( .A(n16), .Y(encode_out[8]) );
  AOI221XL U14 ( .A0(N41), .A1(n1), .B0(N72), .B1(n18), .C0(n17), .Y(n16) );
  CLKINVX1 U15 ( .A(n20), .Y(\encode_out[9] ) );
  AOI221XL U16 ( .A0(N52), .A1(n1), .B0(N72), .B1(n18), .C0(n17), .Y(n20) );
  OAI221XL U17 ( .A0(\add_443/A[1] ), .A1(n15), .B0(\add_443/A[2] ), .B1(n14), 
        .C0(n8), .Y(encode_out[2]) );
  AOI22X1 U18 ( .A0(N55), .A1(n18), .B0(N35), .B1(n1), .Y(n8) );
  AOI22X1 U19 ( .A0(N56), .A1(n18), .B0(N36), .B1(n1), .Y(n9) );
  ADDHXL U20 ( .A(\add_443/A[3] ), .B(\add_443/carry[3] ), .CO(
        \add_443/carry[4] ), .S(N56) );
  ADDHXL U21 ( .A(\add_443/A[1] ), .B(\add_443/A[0] ), .CO(\add_443/carry[2] ), 
        .S(N54) );
  ADDHXL U22 ( .A(\add_443/A[2] ), .B(\add_443/carry[2] ), .CO(
        \add_443/carry[3] ), .S(N55) );
  ADDHXL U23 ( .A(\add_443/A[4] ), .B(\add_443/carry[4] ), .CO(
        \add_443/carry[5] ), .S(N57) );
  ADDHXL U24 ( .A(\add_443/A[6] ), .B(\add_443/carry[6] ), .CO(
        \add_443/carry[7] ), .S(N59) );
  ADDHXL U25 ( .A(\add_443/A[5] ), .B(\add_443/carry[5] ), .CO(
        \add_443/carry[6] ), .S(N58) );
  ADDHXL U26 ( .A(\add_443/A[2] ), .B(\add_442/carry[2] ), .CO(
        \add_442/carry[3] ), .S(N36) );
  ADDHXL U27 ( .A(\add_443/A[1] ), .B(\add_443/A[0] ), .CO(\add_442/carry[2] ), 
        .S(N35) );
  ADDHXL U28 ( .A(\add_443/A[3] ), .B(\add_442/carry[3] ), .CO(
        \add_442/carry[4] ), .S(N37) );
  ADDHXL U29 ( .A(\add_443/A[4] ), .B(\add_442/carry[4] ), .CO(
        \add_442/carry[5] ), .S(N38) );
  ADDHXL U30 ( .A(\add_443/A[5] ), .B(\add_442/carry[5] ), .CO(
        \add_442/carry[6] ), .S(N39) );
  ADDHXL U31 ( .A(\add_443/A[6] ), .B(\add_442/carry[6] ), .CO(
        \add_442/carry[7] ), .S(N40) );
  NOR2X1 U32 ( .A(\add_443/carry[7] ), .B(multiplicand[7]), .Y(N72) );
  AOI21X1 U33 ( .A0(n15), .A1(n14), .B0(\add_443/A[7] ), .Y(n17) );
  NOR2X1 U34 ( .A(\add_442/carry[7] ), .B(multiplicand[7]), .Y(N52) );
  CLKINVX1 U35 ( .A(recode_bit[1]), .Y(n5) );
  CLKBUFX3 U36 ( .A(n19), .Y(n1) );
  NOR3X1 U37 ( .A(n5), .B(recode_bit[0]), .C(n4), .Y(n19) );
  NAND3X1 U38 ( .A(n4), .B(n6), .C(recode_bit[1]), .Y(n15) );
  NAND3X1 U39 ( .A(n4), .B(n5), .C(recode_bit[0]), .Y(n14) );
  CLKINVX1 U40 ( .A(neg), .Y(n4) );
  CLKINVX1 U41 ( .A(multiplicand[0]), .Y(\add_443/A[0] ) );
  CLKINVX1 U42 ( .A(multiplicand[1]), .Y(\add_443/A[1] ) );
  CLKINVX1 U43 ( .A(recode_bit[0]), .Y(n6) );
  CLKINVX1 U44 ( .A(multiplicand[2]), .Y(\add_443/A[2] ) );
  CLKINVX1 U45 ( .A(multiplicand[3]), .Y(\add_443/A[3] ) );
  CLKINVX1 U46 ( .A(multiplicand[4]), .Y(\add_443/A[4] ) );
  CLKINVX1 U47 ( .A(multiplicand[5]), .Y(\add_443/A[5] ) );
  CLKINVX1 U48 ( .A(multiplicand[6]), .Y(\add_443/A[6] ) );
  CLKINVX1 U49 ( .A(multiplicand[7]), .Y(\add_443/A[7] ) );
  OAI221XL U50 ( .A0(\add_443/A[0] ), .A1(n15), .B0(\add_443/A[1] ), .B1(n14), 
        .C0(n7), .Y(encode_out[1]) );
  AOI22X1 U51 ( .A0(N54), .A1(n18), .B0(multiplicand[0]), .B1(n1), .Y(n7) );
  OAI2BB2XL U52 ( .B0(\add_443/A[0] ), .B1(n14), .A0N(multiplicand[0]), .A1N(
        n18), .Y(encode_out[0]) );
  XOR2X1 U53 ( .A(\add_442/carry[7] ), .B(\add_443/A[7] ), .Y(N41) );
  XOR2X1 U54 ( .A(\add_443/carry[7] ), .B(\add_443/A[7] ), .Y(N60) );
endmodule


module booth_multiplier_DW01_add_12_DW01_add_15 ( A, B, CI, SUM, CO );
  input [39:0] A;
  input [39:0] B;
  output [39:0] SUM;
  input CI;
  output CO;
  wire   n1, n2;
  wire   [39:1] carry;
  assign SUM[13] = B[13];
  assign SUM[12] = B[12];

  ADDFXL U1_38 ( .A(A[38]), .B(B[38]), .CI(carry[38]), .CO(carry[39]), .S(
        SUM[38]) );
  ADDFXL U1_37 ( .A(A[37]), .B(B[37]), .CI(carry[37]), .CO(carry[38]), .S(
        SUM[37]) );
  ADDFXL U1_35 ( .A(A[35]), .B(B[35]), .CI(carry[35]), .CO(carry[36]), .S(
        SUM[35]) );
  ADDFXL U1_34 ( .A(A[34]), .B(B[34]), .CI(carry[34]), .CO(carry[35]), .S(
        SUM[34]) );
  ADDFXL U1_33 ( .A(A[33]), .B(B[33]), .CI(carry[33]), .CO(carry[34]), .S(
        SUM[33]) );
  ADDFXL U1_32 ( .A(A[32]), .B(B[32]), .CI(carry[32]), .CO(carry[33]), .S(
        SUM[32]) );
  ADDFXL U1_31 ( .A(A[31]), .B(B[31]), .CI(carry[31]), .CO(carry[32]), .S(
        SUM[31]) );
  ADDFXL U1_30 ( .A(A[30]), .B(B[30]), .CI(carry[30]), .CO(carry[31]), .S(
        SUM[30]) );
  ADDFXL U1_29 ( .A(A[29]), .B(B[29]), .CI(carry[29]), .CO(carry[30]), .S(
        SUM[29]) );
  ADDFXL U1_28 ( .A(A[28]), .B(B[28]), .CI(carry[28]), .CO(carry[29]), .S(
        SUM[28]) );
  ADDFXL U1_27 ( .A(A[27]), .B(B[27]), .CI(carry[27]), .CO(carry[28]), .S(
        SUM[27]) );
  ADDFXL U1_26 ( .A(A[26]), .B(B[26]), .CI(carry[26]), .CO(carry[27]), .S(
        SUM[26]) );
  ADDFXL U1_25 ( .A(A[25]), .B(B[25]), .CI(carry[25]), .CO(carry[26]), .S(
        SUM[25]) );
  ADDFXL U1_24 ( .A(A[24]), .B(B[24]), .CI(carry[24]), .CO(carry[25]), .S(
        SUM[24]) );
  ADDFXL U1_23 ( .A(A[23]), .B(B[23]), .CI(carry[23]), .CO(carry[24]), .S(
        SUM[23]) );
  ADDFXL U1_22 ( .A(A[22]), .B(B[22]), .CI(carry[22]), .CO(carry[23]), .S(
        SUM[22]) );
  ADDFXL U1_21 ( .A(A[21]), .B(B[21]), .CI(carry[21]), .CO(carry[22]), .S(
        SUM[21]) );
  ADDFXL U1_20 ( .A(A[20]), .B(B[20]), .CI(carry[20]), .CO(carry[21]), .S(
        SUM[20]) );
  ADDFXL U1_19 ( .A(A[19]), .B(B[19]), .CI(carry[19]), .CO(carry[20]), .S(
        SUM[19]) );
  ADDFXL U1_18 ( .A(A[18]), .B(B[18]), .CI(carry[18]), .CO(carry[19]), .S(
        SUM[18]) );
  ADDFXL U1_36 ( .A(A[36]), .B(B[36]), .CI(carry[36]), .CO(carry[37]), .S(
        SUM[36]) );
  ADDFXL U1_17 ( .A(A[17]), .B(B[17]), .CI(carry[17]), .CO(carry[18]), .S(
        SUM[17]) );
  ADDFXL U1_16 ( .A(A[16]), .B(B[16]), .CI(carry[16]), .CO(carry[17]), .S(
        SUM[16]) );
  ADDFXL U1_15 ( .A(A[15]), .B(B[15]), .CI(carry[15]), .CO(carry[16]), .S(
        SUM[15]) );
  XOR3X1 U1_39 ( .A(A[39]), .B(B[39]), .C(carry[39]), .Y(SUM[39]) );
  CLKINVX1 U1 ( .A(B[14]), .Y(n2) );
  XNOR2X1 U2 ( .A(B[14]), .B(n1), .Y(SUM[14]) );
  NOR2X1 U3 ( .A(n1), .B(n2), .Y(carry[15]) );
  CLKINVX1 U4 ( .A(A[14]), .Y(n1) );
endmodule


module booth_multiplier_DW01_add_11_DW01_add_14 ( A, B, CI, SUM, CO );
  input [39:0] A;
  input [39:0] B;
  output [39:0] SUM;
  input CI;
  output CO;
  wire   n1, n2;
  wire   [39:1] carry;
  assign SUM[9] = B[9];
  assign SUM[8] = B[8];

  ADDFXL U1_38 ( .A(A[38]), .B(B[38]), .CI(carry[38]), .CO(carry[39]), .S(
        SUM[38]) );
  ADDFXL U1_37 ( .A(A[37]), .B(B[37]), .CI(carry[37]), .CO(carry[38]), .S(
        SUM[37]) );
  ADDFXL U1_35 ( .A(A[35]), .B(B[35]), .CI(carry[35]), .CO(carry[36]), .S(
        SUM[35]) );
  ADDFXL U1_34 ( .A(A[34]), .B(B[34]), .CI(carry[34]), .CO(carry[35]), .S(
        SUM[34]) );
  ADDFXL U1_33 ( .A(A[33]), .B(B[33]), .CI(carry[33]), .CO(carry[34]), .S(
        SUM[33]) );
  ADDFXL U1_32 ( .A(A[32]), .B(B[32]), .CI(carry[32]), .CO(carry[33]), .S(
        SUM[32]) );
  ADDFXL U1_31 ( .A(A[31]), .B(B[31]), .CI(carry[31]), .CO(carry[32]), .S(
        SUM[31]) );
  ADDFXL U1_30 ( .A(A[30]), .B(B[30]), .CI(carry[30]), .CO(carry[31]), .S(
        SUM[30]) );
  ADDFXL U1_29 ( .A(A[29]), .B(B[29]), .CI(carry[29]), .CO(carry[30]), .S(
        SUM[29]) );
  ADDFXL U1_28 ( .A(A[28]), .B(B[28]), .CI(carry[28]), .CO(carry[29]), .S(
        SUM[28]) );
  ADDFXL U1_27 ( .A(A[27]), .B(B[27]), .CI(carry[27]), .CO(carry[28]), .S(
        SUM[27]) );
  ADDFXL U1_26 ( .A(A[26]), .B(B[26]), .CI(carry[26]), .CO(carry[27]), .S(
        SUM[26]) );
  ADDFXL U1_25 ( .A(A[25]), .B(B[25]), .CI(carry[25]), .CO(carry[26]), .S(
        SUM[25]) );
  ADDFXL U1_24 ( .A(A[24]), .B(B[24]), .CI(carry[24]), .CO(carry[25]), .S(
        SUM[24]) );
  ADDFXL U1_23 ( .A(A[23]), .B(B[23]), .CI(carry[23]), .CO(carry[24]), .S(
        SUM[23]) );
  ADDFXL U1_22 ( .A(A[22]), .B(B[22]), .CI(carry[22]), .CO(carry[23]), .S(
        SUM[22]) );
  ADDFXL U1_21 ( .A(A[21]), .B(B[21]), .CI(carry[21]), .CO(carry[22]), .S(
        SUM[21]) );
  ADDFXL U1_20 ( .A(A[20]), .B(B[20]), .CI(carry[20]), .CO(carry[21]), .S(
        SUM[20]) );
  ADDFXL U1_19 ( .A(A[19]), .B(B[19]), .CI(carry[19]), .CO(carry[20]), .S(
        SUM[19]) );
  ADDFXL U1_18 ( .A(A[18]), .B(B[18]), .CI(carry[18]), .CO(carry[19]), .S(
        SUM[18]) );
  ADDFXL U1_17 ( .A(A[17]), .B(B[17]), .CI(carry[17]), .CO(carry[18]), .S(
        SUM[17]) );
  ADDFXL U1_16 ( .A(A[16]), .B(B[16]), .CI(carry[16]), .CO(carry[17]), .S(
        SUM[16]) );
  ADDFXL U1_15 ( .A(A[15]), .B(B[15]), .CI(carry[15]), .CO(carry[16]), .S(
        SUM[15]) );
  ADDFXL U1_14 ( .A(A[14]), .B(B[14]), .CI(carry[14]), .CO(carry[15]), .S(
        SUM[14]) );
  ADDFXL U1_36 ( .A(A[36]), .B(B[36]), .CI(carry[36]), .CO(carry[37]), .S(
        SUM[36]) );
  ADDFXL U1_12 ( .A(A[12]), .B(B[12]), .CI(carry[12]), .CO(carry[13]), .S(
        SUM[12]) );
  ADDFXL U1_11 ( .A(A[11]), .B(B[11]), .CI(carry[11]), .CO(carry[12]), .S(
        SUM[11]) );
  ADDFXL U1_13 ( .A(A[13]), .B(B[13]), .CI(carry[13]), .CO(carry[14]), .S(
        SUM[13]) );
  XOR3X1 U1_39 ( .A(A[39]), .B(B[39]), .C(carry[39]), .Y(SUM[39]) );
  CLKINVX1 U1 ( .A(B[10]), .Y(n2) );
  XNOR2X1 U2 ( .A(B[10]), .B(n1), .Y(SUM[10]) );
  NOR2X1 U3 ( .A(n1), .B(n2), .Y(carry[11]) );
  CLKINVX1 U4 ( .A(A[10]), .Y(n1) );
endmodule


module booth_multiplier_DW01_add_10_DW01_add_13 ( A, B, CI, SUM, CO );
  input [39:0] A;
  input [39:0] B;
  output [39:0] SUM;
  input CI;
  output CO;
  wire   n1, n2;
  wire   [39:1] carry;
  assign SUM[5] = B[5];
  assign SUM[4] = B[4];

  XOR3X1 U1_39 ( .A(A[39]), .B(B[39]), .C(carry[39]), .Y(SUM[39]) );
  ADDFXL U1_38 ( .A(A[38]), .B(B[38]), .CI(carry[38]), .CO(carry[39]), .S(
        SUM[38]) );
  ADDFXL U1_36 ( .A(A[36]), .B(B[36]), .CI(carry[36]), .CO(carry[37]), .S(
        SUM[36]) );
  ADDFXL U1_35 ( .A(A[35]), .B(B[35]), .CI(carry[35]), .CO(carry[36]), .S(
        SUM[35]) );
  ADDFXL U1_34 ( .A(A[34]), .B(B[34]), .CI(carry[34]), .CO(carry[35]), .S(
        SUM[34]) );
  ADDFXL U1_33 ( .A(A[33]), .B(B[33]), .CI(carry[33]), .CO(carry[34]), .S(
        SUM[33]) );
  ADDFXL U1_32 ( .A(A[32]), .B(B[32]), .CI(carry[32]), .CO(carry[33]), .S(
        SUM[32]) );
  ADDFXL U1_31 ( .A(A[31]), .B(B[31]), .CI(carry[31]), .CO(carry[32]), .S(
        SUM[31]) );
  ADDFXL U1_30 ( .A(A[30]), .B(B[30]), .CI(carry[30]), .CO(carry[31]), .S(
        SUM[30]) );
  ADDFXL U1_29 ( .A(A[29]), .B(B[29]), .CI(carry[29]), .CO(carry[30]), .S(
        SUM[29]) );
  ADDFXL U1_28 ( .A(A[28]), .B(B[28]), .CI(carry[28]), .CO(carry[29]), .S(
        SUM[28]) );
  ADDFXL U1_27 ( .A(A[27]), .B(B[27]), .CI(carry[27]), .CO(carry[28]), .S(
        SUM[27]) );
  ADDFXL U1_26 ( .A(A[26]), .B(B[26]), .CI(carry[26]), .CO(carry[27]), .S(
        SUM[26]) );
  ADDFXL U1_25 ( .A(A[25]), .B(B[25]), .CI(carry[25]), .CO(carry[26]), .S(
        SUM[25]) );
  ADDFXL U1_24 ( .A(A[24]), .B(B[24]), .CI(carry[24]), .CO(carry[25]), .S(
        SUM[24]) );
  ADDFXL U1_23 ( .A(A[23]), .B(B[23]), .CI(carry[23]), .CO(carry[24]), .S(
        SUM[23]) );
  ADDFXL U1_22 ( .A(A[22]), .B(B[22]), .CI(carry[22]), .CO(carry[23]), .S(
        SUM[22]) );
  ADDFXL U1_21 ( .A(A[21]), .B(B[21]), .CI(carry[21]), .CO(carry[22]), .S(
        SUM[21]) );
  ADDFXL U1_20 ( .A(A[20]), .B(B[20]), .CI(carry[20]), .CO(carry[21]), .S(
        SUM[20]) );
  ADDFXL U1_19 ( .A(A[19]), .B(B[19]), .CI(carry[19]), .CO(carry[20]), .S(
        SUM[19]) );
  ADDFXL U1_18 ( .A(A[18]), .B(B[18]), .CI(carry[18]), .CO(carry[19]), .S(
        SUM[18]) );
  ADDFXL U1_17 ( .A(A[17]), .B(B[17]), .CI(carry[17]), .CO(carry[18]), .S(
        SUM[17]) );
  ADDFXL U1_16 ( .A(A[16]), .B(B[16]), .CI(carry[16]), .CO(carry[17]), .S(
        SUM[16]) );
  ADDFXL U1_15 ( .A(A[15]), .B(B[15]), .CI(carry[15]), .CO(carry[16]), .S(
        SUM[15]) );
  ADDFXL U1_14 ( .A(A[14]), .B(B[14]), .CI(carry[14]), .CO(carry[15]), .S(
        SUM[14]) );
  ADDFXL U1_13 ( .A(A[13]), .B(B[13]), .CI(carry[13]), .CO(carry[14]), .S(
        SUM[13]) );
  ADDFXL U1_12 ( .A(A[12]), .B(B[12]), .CI(carry[12]), .CO(carry[13]), .S(
        SUM[12]) );
  ADDFXL U1_11 ( .A(A[11]), .B(B[11]), .CI(carry[11]), .CO(carry[12]), .S(
        SUM[11]) );
  ADDFXL U1_10 ( .A(A[10]), .B(B[10]), .CI(carry[10]), .CO(carry[11]), .S(
        SUM[10]) );
  ADDFXL U1_37 ( .A(A[37]), .B(B[37]), .CI(carry[37]), .CO(carry[38]), .S(
        SUM[37]) );
  ADDFXL U1_8 ( .A(A[8]), .B(B[8]), .CI(carry[8]), .CO(carry[9]), .S(SUM[8])
         );
  ADDFXL U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]), .S(SUM[7])
         );
  ADDFXL U1_9 ( .A(A[9]), .B(B[9]), .CI(carry[9]), .CO(carry[10]), .S(SUM[9])
         );
  CLKINVX1 U1 ( .A(B[6]), .Y(n2) );
  XNOR2X1 U2 ( .A(B[6]), .B(n1), .Y(SUM[6]) );
  NOR2X1 U3 ( .A(n1), .B(n2), .Y(carry[7]) );
  CLKINVX1 U4 ( .A(A[6]), .Y(n1) );
endmodule


module booth_multiplier_DW01_add_9_DW01_add_12 ( A, B, CI, SUM, CO );
  input [39:0] A;
  input [39:0] B;
  output [39:0] SUM;
  input CI;
  output CO;
  wire   \B[0] , n1, n2;
  wire   [39:1] carry;
  assign SUM[1] = B[1];
  assign \B[0]  = B[0];
  assign SUM[0] = \B[0] ;

  XOR3X1 U1_39 ( .A(A[39]), .B(B[39]), .C(carry[39]), .Y(SUM[39]) );
  ADDFXL U1_37 ( .A(A[37]), .B(B[37]), .CI(carry[37]), .CO(carry[38]), .S(
        SUM[37]) );
  ADDFXL U1_36 ( .A(A[36]), .B(B[36]), .CI(carry[36]), .CO(carry[37]), .S(
        SUM[36]) );
  ADDFXL U1_35 ( .A(A[35]), .B(B[35]), .CI(carry[35]), .CO(carry[36]), .S(
        SUM[35]) );
  ADDFXL U1_34 ( .A(A[34]), .B(B[34]), .CI(carry[34]), .CO(carry[35]), .S(
        SUM[34]) );
  ADDFXL U1_33 ( .A(A[33]), .B(B[33]), .CI(carry[33]), .CO(carry[34]), .S(
        SUM[33]) );
  ADDFXL U1_32 ( .A(A[32]), .B(B[32]), .CI(carry[32]), .CO(carry[33]), .S(
        SUM[32]) );
  ADDFXL U1_31 ( .A(A[31]), .B(B[31]), .CI(carry[31]), .CO(carry[32]), .S(
        SUM[31]) );
  ADDFXL U1_30 ( .A(A[30]), .B(B[30]), .CI(carry[30]), .CO(carry[31]), .S(
        SUM[30]) );
  ADDFXL U1_29 ( .A(A[29]), .B(B[29]), .CI(carry[29]), .CO(carry[30]), .S(
        SUM[29]) );
  ADDFXL U1_28 ( .A(A[28]), .B(B[28]), .CI(carry[28]), .CO(carry[29]), .S(
        SUM[28]) );
  ADDFXL U1_27 ( .A(A[27]), .B(B[27]), .CI(carry[27]), .CO(carry[28]), .S(
        SUM[27]) );
  ADDFXL U1_26 ( .A(A[26]), .B(B[26]), .CI(carry[26]), .CO(carry[27]), .S(
        SUM[26]) );
  ADDFXL U1_25 ( .A(A[25]), .B(B[25]), .CI(carry[25]), .CO(carry[26]), .S(
        SUM[25]) );
  ADDFXL U1_24 ( .A(A[24]), .B(B[24]), .CI(carry[24]), .CO(carry[25]), .S(
        SUM[24]) );
  ADDFXL U1_23 ( .A(A[23]), .B(B[23]), .CI(carry[23]), .CO(carry[24]), .S(
        SUM[23]) );
  ADDFXL U1_22 ( .A(A[22]), .B(B[22]), .CI(carry[22]), .CO(carry[23]), .S(
        SUM[22]) );
  ADDFXL U1_21 ( .A(A[21]), .B(B[21]), .CI(carry[21]), .CO(carry[22]), .S(
        SUM[21]) );
  ADDFXL U1_20 ( .A(A[20]), .B(B[20]), .CI(carry[20]), .CO(carry[21]), .S(
        SUM[20]) );
  ADDFXL U1_19 ( .A(A[19]), .B(B[19]), .CI(carry[19]), .CO(carry[20]), .S(
        SUM[19]) );
  ADDFXL U1_18 ( .A(A[18]), .B(B[18]), .CI(carry[18]), .CO(carry[19]), .S(
        SUM[18]) );
  ADDFXL U1_17 ( .A(A[17]), .B(B[17]), .CI(carry[17]), .CO(carry[18]), .S(
        SUM[17]) );
  ADDFXL U1_16 ( .A(A[16]), .B(B[16]), .CI(carry[16]), .CO(carry[17]), .S(
        SUM[16]) );
  ADDFXL U1_15 ( .A(A[15]), .B(B[15]), .CI(carry[15]), .CO(carry[16]), .S(
        SUM[15]) );
  ADDFXL U1_14 ( .A(A[14]), .B(B[14]), .CI(carry[14]), .CO(carry[15]), .S(
        SUM[14]) );
  ADDFXL U1_13 ( .A(A[13]), .B(B[13]), .CI(carry[13]), .CO(carry[14]), .S(
        SUM[13]) );
  ADDFXL U1_12 ( .A(A[12]), .B(B[12]), .CI(carry[12]), .CO(carry[13]), .S(
        SUM[12]) );
  ADDFXL U1_11 ( .A(A[11]), .B(B[11]), .CI(carry[11]), .CO(carry[12]), .S(
        SUM[11]) );
  ADDFXL U1_10 ( .A(A[10]), .B(B[10]), .CI(carry[10]), .CO(carry[11]), .S(
        SUM[10]) );
  ADDFXL U1_9 ( .A(A[9]), .B(B[9]), .CI(carry[9]), .CO(carry[10]), .S(SUM[9])
         );
  ADDFXL U1_8 ( .A(A[8]), .B(B[8]), .CI(carry[8]), .CO(carry[9]), .S(SUM[8])
         );
  ADDFXL U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]), .S(SUM[7])
         );
  ADDFXL U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  ADDFXL U1_38 ( .A(A[38]), .B(B[38]), .CI(carry[38]), .CO(carry[39]), .S(
        SUM[38]) );
  ADDFXL U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  ADDFXL U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
  ADDFXL U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  CLKINVX1 U1 ( .A(B[2]), .Y(n2) );
  NOR2X1 U2 ( .A(n1), .B(n2), .Y(carry[3]) );
  CLKINVX1 U3 ( .A(A[2]), .Y(n1) );
  XNOR2X1 U4 ( .A(B[2]), .B(n1), .Y(SUM[2]) );
endmodule


module booth_multiplier_DW01_add_8_DW01_add_11 ( A, B, CI, SUM, CO );
  input [39:0] A;
  input [39:0] B;
  output [39:0] SUM;
  input CI;
  output CO;
  wire   n1, n2;
  wire   [39:1] carry;
  assign SUM[11] = B[11];
  assign SUM[10] = B[10];
  assign SUM[9] = B[9];
  assign SUM[8] = B[8];

  ADDFXL U1_13 ( .A(A[13]), .B(B[13]), .CI(carry[13]), .CO(carry[14]), .S(
        SUM[13]) );
  ADDFXL U1_14 ( .A(A[14]), .B(B[14]), .CI(carry[14]), .CO(carry[15]), .S(
        SUM[14]) );
  XOR3X1 U1_39 ( .A(A[39]), .B(B[39]), .C(carry[39]), .Y(SUM[39]) );
  ADDFXL U1_38 ( .A(A[38]), .B(B[38]), .CI(carry[38]), .CO(carry[39]), .S(
        SUM[38]) );
  ADDFXL U1_36 ( .A(A[36]), .B(B[36]), .CI(carry[36]), .CO(carry[37]), .S(
        SUM[36]) );
  ADDFXL U1_35 ( .A(A[35]), .B(B[35]), .CI(carry[35]), .CO(carry[36]), .S(
        SUM[35]) );
  ADDFXL U1_34 ( .A(A[34]), .B(B[34]), .CI(carry[34]), .CO(carry[35]), .S(
        SUM[34]) );
  ADDFXL U1_33 ( .A(A[33]), .B(B[33]), .CI(carry[33]), .CO(carry[34]), .S(
        SUM[33]) );
  ADDFXL U1_32 ( .A(A[32]), .B(B[32]), .CI(carry[32]), .CO(carry[33]), .S(
        SUM[32]) );
  ADDFXL U1_31 ( .A(A[31]), .B(B[31]), .CI(carry[31]), .CO(carry[32]), .S(
        SUM[31]) );
  ADDFXL U1_30 ( .A(A[30]), .B(B[30]), .CI(carry[30]), .CO(carry[31]), .S(
        SUM[30]) );
  ADDFXL U1_29 ( .A(A[29]), .B(B[29]), .CI(carry[29]), .CO(carry[30]), .S(
        SUM[29]) );
  ADDFXL U1_28 ( .A(A[28]), .B(B[28]), .CI(carry[28]), .CO(carry[29]), .S(
        SUM[28]) );
  ADDFXL U1_27 ( .A(A[27]), .B(B[27]), .CI(carry[27]), .CO(carry[28]), .S(
        SUM[27]) );
  ADDFXL U1_26 ( .A(A[26]), .B(B[26]), .CI(carry[26]), .CO(carry[27]), .S(
        SUM[26]) );
  ADDFXL U1_25 ( .A(A[25]), .B(B[25]), .CI(carry[25]), .CO(carry[26]), .S(
        SUM[25]) );
  ADDFXL U1_24 ( .A(A[24]), .B(B[24]), .CI(carry[24]), .CO(carry[25]), .S(
        SUM[24]) );
  ADDFXL U1_23 ( .A(A[23]), .B(B[23]), .CI(carry[23]), .CO(carry[24]), .S(
        SUM[23]) );
  ADDFXL U1_22 ( .A(A[22]), .B(B[22]), .CI(carry[22]), .CO(carry[23]), .S(
        SUM[22]) );
  ADDFXL U1_21 ( .A(A[21]), .B(B[21]), .CI(carry[21]), .CO(carry[22]), .S(
        SUM[21]) );
  ADDFXL U1_20 ( .A(A[20]), .B(B[20]), .CI(carry[20]), .CO(carry[21]), .S(
        SUM[20]) );
  ADDFXL U1_19 ( .A(A[19]), .B(B[19]), .CI(carry[19]), .CO(carry[20]), .S(
        SUM[19]) );
  ADDFXL U1_18 ( .A(A[18]), .B(B[18]), .CI(carry[18]), .CO(carry[19]), .S(
        SUM[18]) );
  ADDFXL U1_17 ( .A(A[17]), .B(B[17]), .CI(carry[17]), .CO(carry[18]), .S(
        SUM[17]) );
  ADDFXL U1_16 ( .A(A[16]), .B(B[16]), .CI(carry[16]), .CO(carry[17]), .S(
        SUM[16]) );
  ADDFXL U1_15 ( .A(A[15]), .B(B[15]), .CI(carry[15]), .CO(carry[16]), .S(
        SUM[15]) );
  ADDFXL U1_37 ( .A(A[37]), .B(B[37]), .CI(carry[37]), .CO(carry[38]), .S(
        SUM[37]) );
  CLKINVX1 U1 ( .A(B[12]), .Y(n2) );
  XNOR2X1 U2 ( .A(B[12]), .B(n1), .Y(SUM[12]) );
  NOR2X1 U3 ( .A(n1), .B(n2), .Y(carry[13]) );
  CLKINVX1 U4 ( .A(A[12]), .Y(n1) );
endmodule


module booth_multiplier_DW01_add_7_DW01_add_10 ( A, B, CI, SUM, CO );
  input [39:0] A;
  input [39:0] B;
  output [39:0] SUM;
  input CI;
  output CO;
  wire   n1, n2;
  wire   [39:1] carry;
  assign SUM[7] = B[7];
  assign SUM[6] = B[6];
  assign SUM[5] = B[5];
  assign SUM[4] = B[4];

  XOR3X1 U1_39 ( .A(A[39]), .B(B[39]), .C(carry[39]), .Y(SUM[39]) );
  ADDFXL U1_12 ( .A(A[12]), .B(B[12]), .CI(carry[12]), .CO(carry[13]), .S(
        SUM[12]) );
  ADDFXL U1_10 ( .A(A[10]), .B(B[10]), .CI(carry[10]), .CO(carry[11]), .S(
        SUM[10]) );
  ADDFXL U1_9 ( .A(A[9]), .B(B[9]), .CI(carry[9]), .CO(carry[10]), .S(SUM[9])
         );
  ADDFXL U1_37 ( .A(A[37]), .B(B[37]), .CI(carry[37]), .CO(carry[38]), .S(
        SUM[37]) );
  ADDFXL U1_36 ( .A(A[36]), .B(B[36]), .CI(carry[36]), .CO(carry[37]), .S(
        SUM[36]) );
  ADDFXL U1_35 ( .A(A[35]), .B(B[35]), .CI(carry[35]), .CO(carry[36]), .S(
        SUM[35]) );
  ADDFXL U1_34 ( .A(A[34]), .B(B[34]), .CI(carry[34]), .CO(carry[35]), .S(
        SUM[34]) );
  ADDFXL U1_33 ( .A(A[33]), .B(B[33]), .CI(carry[33]), .CO(carry[34]), .S(
        SUM[33]) );
  ADDFXL U1_32 ( .A(A[32]), .B(B[32]), .CI(carry[32]), .CO(carry[33]), .S(
        SUM[32]) );
  ADDFXL U1_31 ( .A(A[31]), .B(B[31]), .CI(carry[31]), .CO(carry[32]), .S(
        SUM[31]) );
  ADDFXL U1_30 ( .A(A[30]), .B(B[30]), .CI(carry[30]), .CO(carry[31]), .S(
        SUM[30]) );
  ADDFXL U1_29 ( .A(A[29]), .B(B[29]), .CI(carry[29]), .CO(carry[30]), .S(
        SUM[29]) );
  ADDFXL U1_28 ( .A(A[28]), .B(B[28]), .CI(carry[28]), .CO(carry[29]), .S(
        SUM[28]) );
  ADDFXL U1_27 ( .A(A[27]), .B(B[27]), .CI(carry[27]), .CO(carry[28]), .S(
        SUM[27]) );
  ADDFXL U1_26 ( .A(A[26]), .B(B[26]), .CI(carry[26]), .CO(carry[27]), .S(
        SUM[26]) );
  ADDFXL U1_25 ( .A(A[25]), .B(B[25]), .CI(carry[25]), .CO(carry[26]), .S(
        SUM[25]) );
  ADDFXL U1_24 ( .A(A[24]), .B(B[24]), .CI(carry[24]), .CO(carry[25]), .S(
        SUM[24]) );
  ADDFXL U1_23 ( .A(A[23]), .B(B[23]), .CI(carry[23]), .CO(carry[24]), .S(
        SUM[23]) );
  ADDFXL U1_22 ( .A(A[22]), .B(B[22]), .CI(carry[22]), .CO(carry[23]), .S(
        SUM[22]) );
  ADDFXL U1_21 ( .A(A[21]), .B(B[21]), .CI(carry[21]), .CO(carry[22]), .S(
        SUM[21]) );
  ADDFXL U1_20 ( .A(A[20]), .B(B[20]), .CI(carry[20]), .CO(carry[21]), .S(
        SUM[20]) );
  ADDFXL U1_19 ( .A(A[19]), .B(B[19]), .CI(carry[19]), .CO(carry[20]), .S(
        SUM[19]) );
  ADDFXL U1_18 ( .A(A[18]), .B(B[18]), .CI(carry[18]), .CO(carry[19]), .S(
        SUM[18]) );
  ADDFXL U1_17 ( .A(A[17]), .B(B[17]), .CI(carry[17]), .CO(carry[18]), .S(
        SUM[17]) );
  ADDFXL U1_16 ( .A(A[16]), .B(B[16]), .CI(carry[16]), .CO(carry[17]), .S(
        SUM[16]) );
  ADDFXL U1_15 ( .A(A[15]), .B(B[15]), .CI(carry[15]), .CO(carry[16]), .S(
        SUM[15]) );
  ADDFXL U1_14 ( .A(A[14]), .B(B[14]), .CI(carry[14]), .CO(carry[15]), .S(
        SUM[14]) );
  ADDFXL U1_13 ( .A(A[13]), .B(B[13]), .CI(carry[13]), .CO(carry[14]), .S(
        SUM[13]) );
  ADDFXL U1_11 ( .A(A[11]), .B(B[11]), .CI(carry[11]), .CO(carry[12]), .S(
        SUM[11]) );
  ADDFXL U1_38 ( .A(A[38]), .B(B[38]), .CI(carry[38]), .CO(carry[39]), .S(
        SUM[38]) );
  CLKINVX1 U1 ( .A(B[8]), .Y(n2) );
  XNOR2X1 U2 ( .A(B[8]), .B(n1), .Y(SUM[8]) );
  NOR2X1 U3 ( .A(n1), .B(n2), .Y(carry[9]) );
  CLKINVX1 U4 ( .A(A[8]), .Y(n1) );
endmodule


module booth_multiplier_DW01_add_6_DW01_add_9 ( A, B, CI, SUM, CO );
  input [39:0] A;
  input [39:0] B;
  output [39:0] SUM;
  input CI;
  output CO;
  wire   n1, n2;
  wire   [39:1] carry;
  assign SUM[3] = B[3];
  assign SUM[2] = B[2];
  assign SUM[1] = B[1];
  assign SUM[0] = B[0];

  XOR3X1 U1_39 ( .A(A[39]), .B(B[39]), .C(carry[39]), .Y(SUM[39]) );
  ADDFXL U1_8 ( .A(A[8]), .B(B[8]), .CI(carry[8]), .CO(carry[9]), .S(SUM[8])
         );
  ADDFXL U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  ADDFXL U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  ADDFXL U1_38 ( .A(A[38]), .B(B[38]), .CI(carry[38]), .CO(carry[39]), .S(
        SUM[38]) );
  ADDFXL U1_37 ( .A(A[37]), .B(B[37]), .CI(carry[37]), .CO(carry[38]), .S(
        SUM[37]) );
  ADDFXL U1_36 ( .A(A[36]), .B(B[36]), .CI(carry[36]), .CO(carry[37]), .S(
        SUM[36]) );
  ADDFXL U1_35 ( .A(A[35]), .B(B[35]), .CI(carry[35]), .CO(carry[36]), .S(
        SUM[35]) );
  ADDFXL U1_34 ( .A(A[34]), .B(B[34]), .CI(carry[34]), .CO(carry[35]), .S(
        SUM[34]) );
  ADDFXL U1_33 ( .A(A[33]), .B(B[33]), .CI(carry[33]), .CO(carry[34]), .S(
        SUM[33]) );
  ADDFXL U1_32 ( .A(A[32]), .B(B[32]), .CI(carry[32]), .CO(carry[33]), .S(
        SUM[32]) );
  ADDFXL U1_31 ( .A(A[31]), .B(B[31]), .CI(carry[31]), .CO(carry[32]), .S(
        SUM[31]) );
  ADDFXL U1_30 ( .A(A[30]), .B(B[30]), .CI(carry[30]), .CO(carry[31]), .S(
        SUM[30]) );
  ADDFXL U1_29 ( .A(A[29]), .B(B[29]), .CI(carry[29]), .CO(carry[30]), .S(
        SUM[29]) );
  ADDFXL U1_28 ( .A(A[28]), .B(B[28]), .CI(carry[28]), .CO(carry[29]), .S(
        SUM[28]) );
  ADDFXL U1_27 ( .A(A[27]), .B(B[27]), .CI(carry[27]), .CO(carry[28]), .S(
        SUM[27]) );
  ADDFXL U1_26 ( .A(A[26]), .B(B[26]), .CI(carry[26]), .CO(carry[27]), .S(
        SUM[26]) );
  ADDFXL U1_25 ( .A(A[25]), .B(B[25]), .CI(carry[25]), .CO(carry[26]), .S(
        SUM[25]) );
  ADDFXL U1_24 ( .A(A[24]), .B(B[24]), .CI(carry[24]), .CO(carry[25]), .S(
        SUM[24]) );
  ADDFXL U1_23 ( .A(A[23]), .B(B[23]), .CI(carry[23]), .CO(carry[24]), .S(
        SUM[23]) );
  ADDFXL U1_22 ( .A(A[22]), .B(B[22]), .CI(carry[22]), .CO(carry[23]), .S(
        SUM[22]) );
  ADDFXL U1_21 ( .A(A[21]), .B(B[21]), .CI(carry[21]), .CO(carry[22]), .S(
        SUM[21]) );
  ADDFXL U1_20 ( .A(A[20]), .B(B[20]), .CI(carry[20]), .CO(carry[21]), .S(
        SUM[20]) );
  ADDFXL U1_19 ( .A(A[19]), .B(B[19]), .CI(carry[19]), .CO(carry[20]), .S(
        SUM[19]) );
  ADDFXL U1_18 ( .A(A[18]), .B(B[18]), .CI(carry[18]), .CO(carry[19]), .S(
        SUM[18]) );
  ADDFXL U1_17 ( .A(A[17]), .B(B[17]), .CI(carry[17]), .CO(carry[18]), .S(
        SUM[17]) );
  ADDFXL U1_16 ( .A(A[16]), .B(B[16]), .CI(carry[16]), .CO(carry[17]), .S(
        SUM[16]) );
  ADDFXL U1_15 ( .A(A[15]), .B(B[15]), .CI(carry[15]), .CO(carry[16]), .S(
        SUM[15]) );
  ADDFXL U1_14 ( .A(A[14]), .B(B[14]), .CI(carry[14]), .CO(carry[15]), .S(
        SUM[14]) );
  ADDFXL U1_13 ( .A(A[13]), .B(B[13]), .CI(carry[13]), .CO(carry[14]), .S(
        SUM[13]) );
  ADDFXL U1_12 ( .A(A[12]), .B(B[12]), .CI(carry[12]), .CO(carry[13]), .S(
        SUM[12]) );
  ADDFXL U1_11 ( .A(A[11]), .B(B[11]), .CI(carry[11]), .CO(carry[12]), .S(
        SUM[11]) );
  ADDFXL U1_10 ( .A(A[10]), .B(B[10]), .CI(carry[10]), .CO(carry[11]), .S(
        SUM[10]) );
  ADDFXL U1_9 ( .A(A[9]), .B(B[9]), .CI(carry[9]), .CO(carry[10]), .S(SUM[9])
         );
  ADDFXL U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]), .S(SUM[7])
         );
  CLKINVX1 U1 ( .A(B[4]), .Y(n2) );
  NOR2X1 U2 ( .A(n1), .B(n2), .Y(carry[5]) );
  CLKINVX1 U3 ( .A(A[4]), .Y(n1) );
  XNOR2X1 U4 ( .A(B[4]), .B(n1), .Y(SUM[4]) );
endmodule


module booth_multiplier_DW01_add_1_DW01_add_4 ( A, B, CI, SUM, CO );
  input [19:0] A;
  input [19:0] B;
  output [19:0] SUM;
  input CI;
  output CO;
  wire   \B[0] , n1, n2;
  wire   [19:1] carry;
  assign SUM[1] = B[1];
  assign \B[0]  = B[0];
  assign SUM[0] = \B[0] ;

  XOR3X1 U1_19 ( .A(A[19]), .B(B[19]), .C(carry[19]), .Y(SUM[19]) );
  ADDFXL U1_17 ( .A(A[17]), .B(B[17]), .CI(carry[17]), .CO(carry[18]), .S(
        SUM[17]) );
  ADDFXL U1_16 ( .A(A[16]), .B(B[16]), .CI(carry[16]), .CO(carry[17]), .S(
        SUM[16]) );
  ADDFXL U1_15 ( .A(A[15]), .B(B[15]), .CI(carry[15]), .CO(carry[16]), .S(
        SUM[15]) );
  ADDFXL U1_14 ( .A(A[14]), .B(B[14]), .CI(carry[14]), .CO(carry[15]), .S(
        SUM[14]) );
  ADDFXL U1_13 ( .A(A[13]), .B(B[13]), .CI(carry[13]), .CO(carry[14]), .S(
        SUM[13]) );
  ADDFXL U1_12 ( .A(A[12]), .B(B[12]), .CI(carry[12]), .CO(carry[13]), .S(
        SUM[12]) );
  ADDFXL U1_11 ( .A(A[11]), .B(B[11]), .CI(carry[11]), .CO(carry[12]), .S(
        SUM[11]) );
  ADDFXL U1_10 ( .A(A[10]), .B(B[10]), .CI(carry[10]), .CO(carry[11]), .S(
        SUM[10]) );
  ADDFXL U1_9 ( .A(A[9]), .B(B[9]), .CI(carry[9]), .CO(carry[10]), .S(SUM[9])
         );
  ADDFXL U1_8 ( .A(A[8]), .B(B[8]), .CI(carry[8]), .CO(carry[9]), .S(SUM[8])
         );
  ADDFXL U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]), .S(SUM[7])
         );
  ADDFXL U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  ADDFXL U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  ADDFXL U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  ADDFXL U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
  ADDFXL U1_18 ( .A(A[18]), .B(B[18]), .CI(carry[18]), .CO(carry[19]), .S(
        SUM[18]) );
  CLKINVX1 U1 ( .A(B[2]), .Y(n2) );
  NOR2X1 U2 ( .A(n1), .B(n2), .Y(carry[3]) );
  CLKINVX1 U3 ( .A(A[2]), .Y(n1) );
  XNOR2X1 U4 ( .A(B[2]), .B(n1), .Y(SUM[2]) );
endmodule


module booth_multiplier_DW01_add_0_DW01_add_3 ( A, B, CI, SUM, CO );
  input [19:0] A;
  input [19:0] B;
  output [19:0] SUM;
  input CI;
  output CO;
  wire   n1, n2;
  wire   [19:1] carry;
  assign SUM[3] = B[3];
  assign SUM[2] = B[2];
  assign SUM[1] = B[1];
  assign SUM[0] = B[0];

  XOR3X1 U1_19 ( .A(A[19]), .B(B[19]), .C(carry[19]), .Y(SUM[19]) );
  ADDFXL U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  ADDFXL U1_18 ( .A(A[18]), .B(B[18]), .CI(carry[18]), .CO(carry[19]), .S(
        SUM[18]) );
  ADDFXL U1_17 ( .A(A[17]), .B(B[17]), .CI(carry[17]), .CO(carry[18]), .S(
        SUM[17]) );
  ADDFXL U1_16 ( .A(A[16]), .B(B[16]), .CI(carry[16]), .CO(carry[17]), .S(
        SUM[16]) );
  ADDFXL U1_15 ( .A(A[15]), .B(B[15]), .CI(carry[15]), .CO(carry[16]), .S(
        SUM[15]) );
  ADDFXL U1_14 ( .A(A[14]), .B(B[14]), .CI(carry[14]), .CO(carry[15]), .S(
        SUM[14]) );
  ADDFXL U1_13 ( .A(A[13]), .B(B[13]), .CI(carry[13]), .CO(carry[14]), .S(
        SUM[13]) );
  ADDFXL U1_12 ( .A(A[12]), .B(B[12]), .CI(carry[12]), .CO(carry[13]), .S(
        SUM[12]) );
  ADDFXL U1_11 ( .A(A[11]), .B(B[11]), .CI(carry[11]), .CO(carry[12]), .S(
        SUM[11]) );
  ADDFXL U1_10 ( .A(A[10]), .B(B[10]), .CI(carry[10]), .CO(carry[11]), .S(
        SUM[10]) );
  ADDFXL U1_9 ( .A(A[9]), .B(B[9]), .CI(carry[9]), .CO(carry[10]), .S(SUM[9])
         );
  ADDFXL U1_8 ( .A(A[8]), .B(B[8]), .CI(carry[8]), .CO(carry[9]), .S(SUM[8])
         );
  ADDFXL U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]), .S(SUM[7])
         );
  ADDFXL U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  CLKINVX1 U1 ( .A(B[4]), .Y(n2) );
  NOR2X1 U2 ( .A(n1), .B(n2), .Y(carry[5]) );
  CLKINVX1 U3 ( .A(A[4]), .Y(n1) );
  XNOR2X1 U4 ( .A(B[4]), .B(n1), .Y(SUM[4]) );
endmodule


module booth_multiplier_DW01_add_4_DW01_add_7 ( A, B, CI, SUM, CO );
  input [19:0] A;
  input [19:0] B;
  output [19:0] SUM;
  input CI;
  output CO;
  wire   \B[0] , n1, n2;
  wire   [19:1] carry;
  assign SUM[1] = B[1];
  assign \B[0]  = B[0];
  assign SUM[0] = \B[0] ;

  XOR3X1 U1_19 ( .A(A[19]), .B(B[19]), .C(carry[19]), .Y(SUM[19]) );
  ADDFXL U1_17 ( .A(A[17]), .B(B[17]), .CI(carry[17]), .CO(carry[18]), .S(
        SUM[17]) );
  ADDFXL U1_16 ( .A(A[16]), .B(B[16]), .CI(carry[16]), .CO(carry[17]), .S(
        SUM[16]) );
  ADDFXL U1_15 ( .A(A[15]), .B(B[15]), .CI(carry[15]), .CO(carry[16]), .S(
        SUM[15]) );
  ADDFXL U1_14 ( .A(A[14]), .B(B[14]), .CI(carry[14]), .CO(carry[15]), .S(
        SUM[14]) );
  ADDFXL U1_13 ( .A(A[13]), .B(B[13]), .CI(carry[13]), .CO(carry[14]), .S(
        SUM[13]) );
  ADDFXL U1_12 ( .A(A[12]), .B(B[12]), .CI(carry[12]), .CO(carry[13]), .S(
        SUM[12]) );
  ADDFXL U1_11 ( .A(A[11]), .B(B[11]), .CI(carry[11]), .CO(carry[12]), .S(
        SUM[11]) );
  ADDFXL U1_10 ( .A(A[10]), .B(B[10]), .CI(carry[10]), .CO(carry[11]), .S(
        SUM[10]) );
  ADDFXL U1_9 ( .A(A[9]), .B(B[9]), .CI(carry[9]), .CO(carry[10]), .S(SUM[9])
         );
  ADDFXL U1_8 ( .A(A[8]), .B(B[8]), .CI(carry[8]), .CO(carry[9]), .S(SUM[8])
         );
  ADDFXL U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]), .S(SUM[7])
         );
  ADDFXL U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  ADDFXL U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  ADDFXL U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  ADDFXL U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
  ADDFXL U1_18 ( .A(A[18]), .B(B[18]), .CI(carry[18]), .CO(carry[19]), .S(
        SUM[18]) );
  CLKINVX1 U1 ( .A(B[2]), .Y(n2) );
  NOR2X1 U2 ( .A(n1), .B(n2), .Y(carry[3]) );
  CLKINVX1 U3 ( .A(A[2]), .Y(n1) );
  XNOR2X1 U4 ( .A(B[2]), .B(n1), .Y(SUM[2]) );
endmodule


module booth_multiplier_DW01_add_3_DW01_add_6 ( A, B, CI, SUM, CO );
  input [19:0] A;
  input [19:0] B;
  output [19:0] SUM;
  input CI;
  output CO;
  wire   n1, n2;
  wire   [19:1] carry;
  assign SUM[3] = B[3];
  assign SUM[2] = B[2];
  assign SUM[1] = B[1];
  assign SUM[0] = B[0];

  XOR3X1 U1_19 ( .A(A[19]), .B(B[19]), .C(carry[19]), .Y(SUM[19]) );
  ADDFXL U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  ADDFXL U1_18 ( .A(A[18]), .B(B[18]), .CI(carry[18]), .CO(carry[19]), .S(
        SUM[18]) );
  ADDFXL U1_17 ( .A(A[17]), .B(B[17]), .CI(carry[17]), .CO(carry[18]), .S(
        SUM[17]) );
  ADDFXL U1_16 ( .A(A[16]), .B(B[16]), .CI(carry[16]), .CO(carry[17]), .S(
        SUM[16]) );
  ADDFXL U1_15 ( .A(A[15]), .B(B[15]), .CI(carry[15]), .CO(carry[16]), .S(
        SUM[15]) );
  ADDFXL U1_14 ( .A(A[14]), .B(B[14]), .CI(carry[14]), .CO(carry[15]), .S(
        SUM[14]) );
  ADDFXL U1_13 ( .A(A[13]), .B(B[13]), .CI(carry[13]), .CO(carry[14]), .S(
        SUM[13]) );
  ADDFXL U1_12 ( .A(A[12]), .B(B[12]), .CI(carry[12]), .CO(carry[13]), .S(
        SUM[12]) );
  ADDFXL U1_11 ( .A(A[11]), .B(B[11]), .CI(carry[11]), .CO(carry[12]), .S(
        SUM[11]) );
  ADDFXL U1_10 ( .A(A[10]), .B(B[10]), .CI(carry[10]), .CO(carry[11]), .S(
        SUM[10]) );
  ADDFXL U1_9 ( .A(A[9]), .B(B[9]), .CI(carry[9]), .CO(carry[10]), .S(SUM[9])
         );
  ADDFXL U1_8 ( .A(A[8]), .B(B[8]), .CI(carry[8]), .CO(carry[9]), .S(SUM[8])
         );
  ADDFXL U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]), .S(SUM[7])
         );
  ADDFXL U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  CLKINVX1 U1 ( .A(B[4]), .Y(n2) );
  NOR2X1 U2 ( .A(n1), .B(n2), .Y(carry[5]) );
  CLKINVX1 U3 ( .A(A[4]), .Y(n1) );
  XNOR2X1 U4 ( .A(B[4]), .B(n1), .Y(SUM[4]) );
endmodule


module booth_multiplier ( clk, reset, stall, multiplier, multiplicand, 
        instruction, multiplier_out_1, multiplier_out_2 );
  input [15:0] multiplier;
  input [15:0] multiplicand;
  input [2:0] instruction;
  output [39:0] multiplier_out_1;
  output [39:0] multiplier_out_2;
  input clk, reset, stall;
  wire   n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30,
         n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44,
         n45, n46, n47, n48, n49, n50, n51, n52, n53, n54, n55, n56, n57, n58,
         n59, n60, n61, n62, n63, n64, n65, n66, n67, n68, n69, n70, n71, n72,
         n73, n74, n75, n76, n77, n78, n79, n80, n81, n82, n83, n84, n85, n86,
         n87, n88, n89, n90, n91, n92, n93, n94, n95, n96, n97, n98, n99, n100,
         n101, n102, n103, n104, n105, n106, n107, n108, n109, n110, n111,
         n112, n113, n114, n115, n116, n117, n118, n119, n120, n121, n122,
         n123, n124, n125, n126, n127, n128, n129, n130, n131, n132, n133,
         n134, n135, n136, n137, n138, n139, n140, n141, n142, n143, n144,
         n145, n146, n147, n148, n149, n150, n151, n152, n153, n154, n155,
         n156, n157, n158, n159, n160, n161, N99, N98, N97, N96, N95, N94, N93,
         N92, N91, N90, N89, N88, N87, N86, N85, N84, N79, N78, N77, N76, N75,
         N74, N73, N72, N71, N70, N69, N68, N67, N66, N65, N64, N63, N62, N61,
         N60, N59, N58, N57, N56, N55, N54, N53, N52, N51, N50, N49, N48, N39,
         N38, N37, N36, N35, N34, N33, N32, N31, N30, N29, N28, N27, N26, N25,
         N24, N239, N238, N237, N236, N235, N234, N233, N232, N231, N230, N23,
         N229, N228, N227, N226, N225, N224, N223, N222, N221, N220, N22, N219,
         N218, N217, N216, N215, N214, N213, N212, N211, N210, N21, N209, N208,
         N207, N206, N205, N204, N203, N202, N201, N200, N20, N199, N198, N197,
         N196, N195, N194, N193, N192, N191, N190, N19, N189, N188, N187, N186,
         N185, N184, N183, N182, N181, N180, N18, N179, N178, N177, N176, N175,
         N174, N173, N172, N171, N170, N17, N169, N168, N16, N159, N158, N157,
         N156, N155, N154, N153, N152, N151, N150, N15, N149, N148, N147, N146,
         N145, N144, N143, N142, N141, N140, N14, N139, N138, N137, N136, N135,
         N134, N133, N132, N131, N130, N13, N129, N128, N127, N126, N125, N124,
         N12, N119, N118, N117, N116, N115, N114, N113, N112, N111, N110, N109,
         N108, N107, N106, N105, N104, N103, N102, N101, N100, N319, N318,
         N317, N316, N315, N314, N313, N312, N311, N310, N309, N308, N307,
         N306, N305, N304, N303, N302, N301, N300, N299, N298, N297, N296,
         N295, N294, N293, N292, N291, N290, N289, N288, N287, N286, N285,
         N284, N279, N278, N277, N276, N275, N274, N273, N272, N271, N270,
         N269, N268, N267, N266, N265, N264, N263, N262, N261, N260, N259,
         N258, N257, N256, N255, N254, N253, N252, N251, N250, N249, N248,
         N247, N246, N245, N244, \add_265/carry[19] , \add_265/carry[18] ,
         \add_265/carry[17] , \add_265/carry[16] , \add_265/carry[15] ,
         \add_265/carry[14] , \add_265/carry[13] , \add_265/carry[12] ,
         \add_265/carry[11] , \add_265/carry[10] , \add_265/carry[9] ,
         \add_265/carry[8] , \add_265/carry[7] , \add_264/carry[19] ,
         \add_264/carry[18] , \add_264/carry[17] , \add_264/carry[16] ,
         \add_264/carry[15] , \add_264/carry[14] , \add_264/carry[13] ,
         \add_264/carry[12] , \add_264/carry[11] , \add_264/carry[10] ,
         \add_264/carry[9] , \add_264/carry[8] , \add_264/carry[7] , n1, n162,
         n163, n164, n165, n166, n167, n168, n169, n170, n171, n172, n173,
         n174, n175, n176, n177, n178, n179, n180, n181, n182, n183, n184,
         n185, n186, n187, n188, n189, n190, n191, n192, n193, n194, n195,
         n196, n197;
  wire   [39:14] encode_out16_1_shift;
  wire   [39:12] encode_out16_2_shift;
  wire   [39:10] encode_out16_3_shift;
  wire   [39:8] encode_out16_4_shift;
  wire   [39:6] encode_out16_5_shift;
  wire   [39:4] encode_out16_6_shift;
  wire   [39:2] encode_out16_7_shift;
  wire   [39:0] encode_out16_8_shift;
  wire   [19:6] encode_out8_1_shift;
  wire   [19:4] encode_out8_2_shift;
  wire   [19:2] encode_out8_3_shift;
  wire   [19:0] encode_out8_4_shift;
  wire   [19:6] encode_out8_5_shift;
  wire   [19:4] encode_out8_6_shift;
  wire   [19:2] encode_out8_7_shift;
  wire   [19:0] encode_out8_8_shift;
  wire   [39:0] multiplier_out_16;
  wire   [19:0] multiplier_out_8_1;
  wire   [19:0] multiplier_out_8_2;
  wire   [8:0] neg;
  wire   [1:0] recode_bit1;
  wire   [1:0] recode_bit2;
  wire   [1:0] recode_bit3;
  wire   [1:0] recode_bit4_16;
  wire   [1:0] recode_bit4_8;
  wire   [1:0] recode_bit5;
  wire   [1:0] recode_bit6;
  wire   [1:0] recode_bit7;
  wire   [1:0] recode_bit8;
  wire   SYNOPSYS_UNCONNECTED__0, SYNOPSYS_UNCONNECTED__1, 
        SYNOPSYS_UNCONNECTED__2, SYNOPSYS_UNCONNECTED__3, 
        SYNOPSYS_UNCONNECTED__4, SYNOPSYS_UNCONNECTED__5, 
        SYNOPSYS_UNCONNECTED__6, SYNOPSYS_UNCONNECTED__7, 
        SYNOPSYS_UNCONNECTED__8, SYNOPSYS_UNCONNECTED__9, 
        SYNOPSYS_UNCONNECTED__10, SYNOPSYS_UNCONNECTED__11, 
        SYNOPSYS_UNCONNECTED__12, SYNOPSYS_UNCONNECTED__13, 
        SYNOPSYS_UNCONNECTED__14, SYNOPSYS_UNCONNECTED__15, 
        SYNOPSYS_UNCONNECTED__16, SYNOPSYS_UNCONNECTED__17, 
        SYNOPSYS_UNCONNECTED__18, SYNOPSYS_UNCONNECTED__19, 
        SYNOPSYS_UNCONNECTED__20, SYNOPSYS_UNCONNECTED__21, 
        SYNOPSYS_UNCONNECTED__22, SYNOPSYS_UNCONNECTED__23, 
        SYNOPSYS_UNCONNECTED__24, SYNOPSYS_UNCONNECTED__25, 
        SYNOPSYS_UNCONNECTED__26, SYNOPSYS_UNCONNECTED__27, 
        SYNOPSYS_UNCONNECTED__28, SYNOPSYS_UNCONNECTED__29, 
        SYNOPSYS_UNCONNECTED__30, SYNOPSYS_UNCONNECTED__31, 
        SYNOPSYS_UNCONNECTED__32, SYNOPSYS_UNCONNECTED__33, 
        SYNOPSYS_UNCONNECTED__34, SYNOPSYS_UNCONNECTED__35, 
        SYNOPSYS_UNCONNECTED__36, SYNOPSYS_UNCONNECTED__37, 
        SYNOPSYS_UNCONNECTED__38, SYNOPSYS_UNCONNECTED__39, 
        SYNOPSYS_UNCONNECTED__40, SYNOPSYS_UNCONNECTED__41, 
        SYNOPSYS_UNCONNECTED__42, SYNOPSYS_UNCONNECTED__43, 
        SYNOPSYS_UNCONNECTED__44, SYNOPSYS_UNCONNECTED__45, 
        SYNOPSYS_UNCONNECTED__46, SYNOPSYS_UNCONNECTED__47, 
        SYNOPSYS_UNCONNECTED__48, SYNOPSYS_UNCONNECTED__49, 
        SYNOPSYS_UNCONNECTED__50, SYNOPSYS_UNCONNECTED__51, 
        SYNOPSYS_UNCONNECTED__52, SYNOPSYS_UNCONNECTED__53, 
        SYNOPSYS_UNCONNECTED__54, SYNOPSYS_UNCONNECTED__55, 
        SYNOPSYS_UNCONNECTED__56, SYNOPSYS_UNCONNECTED__57, 
        SYNOPSYS_UNCONNECTED__58, SYNOPSYS_UNCONNECTED__59, 
        SYNOPSYS_UNCONNECTED__60, SYNOPSYS_UNCONNECTED__61, 
        SYNOPSYS_UNCONNECTED__62, SYNOPSYS_UNCONNECTED__63, 
        SYNOPSYS_UNCONNECTED__64, SYNOPSYS_UNCONNECTED__65, 
        SYNOPSYS_UNCONNECTED__66, SYNOPSYS_UNCONNECTED__67, 
        SYNOPSYS_UNCONNECTED__68, SYNOPSYS_UNCONNECTED__69, 
        SYNOPSYS_UNCONNECTED__70, SYNOPSYS_UNCONNECTED__71, 
        SYNOPSYS_UNCONNECTED__72, SYNOPSYS_UNCONNECTED__73, 
        SYNOPSYS_UNCONNECTED__74, SYNOPSYS_UNCONNECTED__75, 
        SYNOPSYS_UNCONNECTED__76, SYNOPSYS_UNCONNECTED__77, 
        SYNOPSYS_UNCONNECTED__78, SYNOPSYS_UNCONNECTED__79, 
        SYNOPSYS_UNCONNECTED__80, SYNOPSYS_UNCONNECTED__81, 
        SYNOPSYS_UNCONNECTED__82, SYNOPSYS_UNCONNECTED__83, 
        SYNOPSYS_UNCONNECTED__84, SYNOPSYS_UNCONNECTED__85, 
        SYNOPSYS_UNCONNECTED__86, SYNOPSYS_UNCONNECTED__87, 
        SYNOPSYS_UNCONNECTED__88, SYNOPSYS_UNCONNECTED__89, 
        SYNOPSYS_UNCONNECTED__90, SYNOPSYS_UNCONNECTED__91, 
        SYNOPSYS_UNCONNECTED__92, SYNOPSYS_UNCONNECTED__93, 
        SYNOPSYS_UNCONNECTED__94, SYNOPSYS_UNCONNECTED__95, 
        SYNOPSYS_UNCONNECTED__96, SYNOPSYS_UNCONNECTED__97, 
        SYNOPSYS_UNCONNECTED__98, SYNOPSYS_UNCONNECTED__99, 
        SYNOPSYS_UNCONNECTED__100, SYNOPSYS_UNCONNECTED__101, 
        SYNOPSYS_UNCONNECTED__102, SYNOPSYS_UNCONNECTED__103, 
        SYNOPSYS_UNCONNECTED__104, SYNOPSYS_UNCONNECTED__105, 
        SYNOPSYS_UNCONNECTED__106, SYNOPSYS_UNCONNECTED__107, 
        SYNOPSYS_UNCONNECTED__108, SYNOPSYS_UNCONNECTED__109, 
        SYNOPSYS_UNCONNECTED__110, SYNOPSYS_UNCONNECTED__111, 
        SYNOPSYS_UNCONNECTED__112, SYNOPSYS_UNCONNECTED__113, 
        SYNOPSYS_UNCONNECTED__114, SYNOPSYS_UNCONNECTED__115;

  booth_table_0 bt1 ( .din(multiplier[15:13]), .neg(neg[0]), .recode_bit(
        recode_bit1) );
  booth_table_8 bt2 ( .din(multiplier[13:11]), .neg(neg[1]), .recode_bit(
        recode_bit2) );
  booth_table_7 bt3 ( .din(multiplier[11:9]), .neg(neg[2]), .recode_bit(
        recode_bit3) );
  booth_table_6 bt4_16 ( .din(multiplier[9:7]), .neg(neg[3]), .recode_bit(
        recode_bit4_16) );
  booth_table_5 bt4_8 ( .din({multiplier[9:8], 1'b0}), .neg(neg[4]), 
        .recode_bit(recode_bit4_8) );
  booth_table_4 bt5 ( .din(multiplier[7:5]), .neg(neg[5]), .recode_bit(
        recode_bit5) );
  booth_table_3 bt6 ( .din(multiplier[5:3]), .neg(neg[6]), .recode_bit(
        recode_bit6) );
  booth_table_2 bt7 ( .din(multiplier[3:1]), .neg(neg[7]), .recode_bit(
        recode_bit7) );
  booth_table_1 bt8 ( .din({multiplier[1:0], 1'b0}), .neg(neg[8]), 
        .recode_bit(recode_bit8) );
  booth_encode_16bit_0 be16_1 ( .multiplicand({n176, n175, n174, n173, n172, 
        n171, n170, n169, n168, n167, n166, n165, n164, n163, n162, n1}), 
        .neg(neg[0]), .recode_bit(recode_bit1), .encode_out({
        SYNOPSYS_UNCONNECTED__0, SYNOPSYS_UNCONNECTED__1, 
        SYNOPSYS_UNCONNECTED__2, SYNOPSYS_UNCONNECTED__3, 
        SYNOPSYS_UNCONNECTED__4, SYNOPSYS_UNCONNECTED__5, 
        SYNOPSYS_UNCONNECTED__6, SYNOPSYS_UNCONNECTED__7, 
        SYNOPSYS_UNCONNECTED__8, SYNOPSYS_UNCONNECTED__9, 
        SYNOPSYS_UNCONNECTED__10, SYNOPSYS_UNCONNECTED__11, 
        SYNOPSYS_UNCONNECTED__12, SYNOPSYS_UNCONNECTED__13, 
        encode_out16_1_shift}) );
  booth_encode_16bit_7 be16_2 ( .multiplicand({n176, n175, n174, n173, n172, 
        n171, n170, n169, n168, n167, n166, n165, n164, n163, n162, n1}), 
        .neg(neg[1]), .recode_bit(recode_bit2), .encode_out({
        SYNOPSYS_UNCONNECTED__14, SYNOPSYS_UNCONNECTED__15, 
        SYNOPSYS_UNCONNECTED__16, SYNOPSYS_UNCONNECTED__17, 
        SYNOPSYS_UNCONNECTED__18, SYNOPSYS_UNCONNECTED__19, 
        SYNOPSYS_UNCONNECTED__20, SYNOPSYS_UNCONNECTED__21, 
        SYNOPSYS_UNCONNECTED__22, SYNOPSYS_UNCONNECTED__23, 
        SYNOPSYS_UNCONNECTED__24, SYNOPSYS_UNCONNECTED__25, 
        encode_out16_2_shift}) );
  booth_encode_16bit_6 be16_3 ( .multiplicand({n176, n175, n174, n173, n172, 
        n171, n170, n169, n168, n167, n166, n165, n164, n163, n162, n1}), 
        .neg(neg[2]), .recode_bit(recode_bit3), .encode_out({
        SYNOPSYS_UNCONNECTED__26, SYNOPSYS_UNCONNECTED__27, 
        SYNOPSYS_UNCONNECTED__28, SYNOPSYS_UNCONNECTED__29, 
        SYNOPSYS_UNCONNECTED__30, SYNOPSYS_UNCONNECTED__31, 
        SYNOPSYS_UNCONNECTED__32, SYNOPSYS_UNCONNECTED__33, 
        SYNOPSYS_UNCONNECTED__34, SYNOPSYS_UNCONNECTED__35, 
        encode_out16_3_shift}) );
  booth_encode_16bit_5 be16_4 ( .multiplicand({n176, n175, n174, n173, n172, 
        n171, n170, n169, n168, n167, n166, n165, n164, n163, n162, n1}), 
        .neg(neg[3]), .recode_bit(recode_bit4_16), .encode_out({
        SYNOPSYS_UNCONNECTED__36, SYNOPSYS_UNCONNECTED__37, 
        SYNOPSYS_UNCONNECTED__38, SYNOPSYS_UNCONNECTED__39, 
        SYNOPSYS_UNCONNECTED__40, SYNOPSYS_UNCONNECTED__41, 
        SYNOPSYS_UNCONNECTED__42, SYNOPSYS_UNCONNECTED__43, 
        encode_out16_4_shift}) );
  booth_encode_16bit_4 be16_5 ( .multiplicand({n176, n175, n174, n173, n172, 
        n171, n170, n169, n168, n167, n166, n165, n164, n163, n162, n1}), 
        .neg(neg[5]), .recode_bit(recode_bit5), .encode_out({
        SYNOPSYS_UNCONNECTED__44, SYNOPSYS_UNCONNECTED__45, 
        SYNOPSYS_UNCONNECTED__46, SYNOPSYS_UNCONNECTED__47, 
        SYNOPSYS_UNCONNECTED__48, SYNOPSYS_UNCONNECTED__49, 
        encode_out16_5_shift}) );
  booth_encode_16bit_3 be16_6 ( .multiplicand({n176, n175, n174, n173, n172, 
        n171, n170, n169, n168, n167, n166, n165, n164, n163, n162, n1}), 
        .neg(neg[6]), .recode_bit(recode_bit6), .encode_out({
        SYNOPSYS_UNCONNECTED__50, SYNOPSYS_UNCONNECTED__51, 
        SYNOPSYS_UNCONNECTED__52, SYNOPSYS_UNCONNECTED__53, 
        encode_out16_6_shift}) );
  booth_encode_16bit_2 be16_7 ( .multiplicand({n176, n175, n174, n173, n172, 
        n171, n170, n169, n168, n167, n166, n165, n164, n163, n162, n1}), 
        .neg(neg[7]), .recode_bit(recode_bit7), .encode_out({
        SYNOPSYS_UNCONNECTED__54, SYNOPSYS_UNCONNECTED__55, 
        encode_out16_7_shift}) );
  booth_encode_16bit_1 be16_8 ( .multiplicand({n176, n175, n174, n173, n172, 
        n171, n170, n169, n168, n167, n166, n165, n164, n163, n162, n1}), 
        .neg(neg[8]), .recode_bit(recode_bit8), .encode_out(
        encode_out16_8_shift) );
  booth_encode_8bit_0 be8_1 ( .multiplicand({n176, n175, n174, n173, n172, 
        n171, n170, n169}), .neg(neg[0]), .recode_bit(recode_bit1), 
        .encode_out({SYNOPSYS_UNCONNECTED__56, SYNOPSYS_UNCONNECTED__57, 
        SYNOPSYS_UNCONNECTED__58, SYNOPSYS_UNCONNECTED__59, 
        SYNOPSYS_UNCONNECTED__60, SYNOPSYS_UNCONNECTED__61, 
        encode_out8_1_shift}) );
  booth_encode_8bit_7 be8_2 ( .multiplicand({n176, n175, n174, n173, n172, 
        n171, n170, n169}), .neg(neg[1]), .recode_bit(recode_bit2), 
        .encode_out({SYNOPSYS_UNCONNECTED__62, SYNOPSYS_UNCONNECTED__63, 
        SYNOPSYS_UNCONNECTED__64, SYNOPSYS_UNCONNECTED__65, 
        encode_out8_2_shift[19:6], N245, N244}) );
  booth_encode_8bit_6 be8_3 ( .multiplicand({n176, n175, n174, n173, n172, 
        n171, n170, n169}), .neg(neg[2]), .recode_bit(recode_bit3), 
        .encode_out({SYNOPSYS_UNCONNECTED__66, SYNOPSYS_UNCONNECTED__67, 
        encode_out8_3_shift}) );
  booth_encode_8bit_5 be8_4 ( .multiplicand({n176, n175, n174, n173, n172, 
        n171, n170, n169}), .neg(neg[4]), .recode_bit(recode_bit4_8), 
        .encode_out(encode_out8_4_shift) );
  booth_encode_8bit_4 be8_5 ( .multiplicand({n168, n167, n166, n165, n164, 
        n163, n162, n1}), .neg(neg[5]), .recode_bit(recode_bit5), .encode_out(
        {SYNOPSYS_UNCONNECTED__68, SYNOPSYS_UNCONNECTED__69, 
        SYNOPSYS_UNCONNECTED__70, SYNOPSYS_UNCONNECTED__71, 
        SYNOPSYS_UNCONNECTED__72, SYNOPSYS_UNCONNECTED__73, 
        encode_out8_5_shift}) );
  booth_encode_8bit_3 be8_6 ( .multiplicand({n168, n167, n166, n165, n164, 
        n163, n162, n1}), .neg(neg[6]), .recode_bit(recode_bit6), .encode_out(
        {SYNOPSYS_UNCONNECTED__74, SYNOPSYS_UNCONNECTED__75, 
        SYNOPSYS_UNCONNECTED__76, SYNOPSYS_UNCONNECTED__77, 
        encode_out8_6_shift[19:6], N285, N284}) );
  booth_encode_8bit_2 be8_7 ( .multiplicand({n168, n167, n166, n165, n164, 
        n163, n162, n1}), .neg(neg[7]), .recode_bit(recode_bit7), .encode_out(
        {SYNOPSYS_UNCONNECTED__78, SYNOPSYS_UNCONNECTED__79, 
        encode_out8_7_shift}) );
  booth_encode_8bit_1 be8_8 ( .multiplicand({n168, n167, n166, n165, n164, 
        n163, n162, n1}), .neg(neg[8]), .recode_bit(recode_bit8), .encode_out(
        encode_out8_8_shift) );
  booth_multiplier_DW01_add_12_DW01_add_15 add_263 ( .A({encode_out16_1_shift, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0}), .B({encode_out16_2_shift, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), .CI(1'b0), .SUM({N39, N38, 
        N37, N36, N35, N34, N33, N32, N31, N30, N29, N28, N27, N26, N25, N24, 
        N23, N22, N21, N20, N19, N18, N17, N16, N15, N14, N13, N12, 
        SYNOPSYS_UNCONNECTED__80, SYNOPSYS_UNCONNECTED__81, 
        SYNOPSYS_UNCONNECTED__82, SYNOPSYS_UNCONNECTED__83, 
        SYNOPSYS_UNCONNECTED__84, SYNOPSYS_UNCONNECTED__85, 
        SYNOPSYS_UNCONNECTED__86, SYNOPSYS_UNCONNECTED__87, 
        SYNOPSYS_UNCONNECTED__88, SYNOPSYS_UNCONNECTED__89, 
        SYNOPSYS_UNCONNECTED__90, SYNOPSYS_UNCONNECTED__91}) );
  booth_multiplier_DW01_add_11_DW01_add_14 add_263_2 ( .A({
        encode_out16_3_shift, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0}), .B({encode_out16_4_shift, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0}), .CI(1'b0), .SUM({N79, N78, N77, N76, N75, N74, N73, 
        N72, N71, N70, N69, N68, N67, N66, N65, N64, N63, N62, N61, N60, N59, 
        N58, N57, N56, N55, N54, N53, N52, N51, N50, N49, N48, 
        SYNOPSYS_UNCONNECTED__92, SYNOPSYS_UNCONNECTED__93, 
        SYNOPSYS_UNCONNECTED__94, SYNOPSYS_UNCONNECTED__95, 
        SYNOPSYS_UNCONNECTED__96, SYNOPSYS_UNCONNECTED__97, 
        SYNOPSYS_UNCONNECTED__98, SYNOPSYS_UNCONNECTED__99}) );
  booth_multiplier_DW01_add_10_DW01_add_13 add_263_4 ( .A({
        encode_out16_5_shift, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), .B({
        encode_out16_6_shift, 1'b0, 1'b0, 1'b0, 1'b0}), .CI(1'b0), .SUM({N159, 
        N158, N157, N156, N155, N154, N153, N152, N151, N150, N149, N148, N147, 
        N146, N145, N144, N143, N142, N141, N140, N139, N138, N137, N136, N135, 
        N134, N133, N132, N131, N130, N129, N128, N127, N126, N125, N124, 
        SYNOPSYS_UNCONNECTED__100, SYNOPSYS_UNCONNECTED__101, 
        SYNOPSYS_UNCONNECTED__102, SYNOPSYS_UNCONNECTED__103}) );
  booth_multiplier_DW01_add_9_DW01_add_12 add_263_6 ( .A({encode_out16_7_shift, 
        1'b0, 1'b0}), .B(encode_out16_8_shift), .CI(1'b0), .SUM({N239, N238, 
        N237, N236, N235, N234, N233, N232, N231, N230, N229, N228, N227, N226, 
        N225, N224, N223, N222, N221, N220, N219, N218, N217, N216, N215, N214, 
        N213, N212, N211, N210, N209, N208, N207, N206, N205, N204, N203, N202, 
        N201, N200}) );
  booth_multiplier_DW01_add_8_DW01_add_11 add_2_root_add_0_root_add_263_7 ( 
        .A({N39, N38, N37, N36, N35, N34, N33, N32, N31, N30, N29, N28, N27, 
        N26, N25, N24, N23, N22, N21, N20, N19, N18, N17, N16, N15, N14, N13, 
        N12, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0}), .B({N79, N78, N77, N76, N75, N74, N73, N72, N71, N70, N69, N68, 
        N67, N66, N65, N64, N63, N62, N61, N60, N59, N58, N57, N56, N55, N54, 
        N53, N52, N51, N50, N49, N48, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0}), .CI(1'b0), .SUM({N199, N198, N197, N196, N195, N194, N193, 
        N192, N191, N190, N189, N188, N187, N186, N185, N184, N183, N182, N181, 
        N180, N179, N178, N177, N176, N175, N174, N173, N172, N171, N170, N169, 
        N168, SYNOPSYS_UNCONNECTED__104, SYNOPSYS_UNCONNECTED__105, 
        SYNOPSYS_UNCONNECTED__106, SYNOPSYS_UNCONNECTED__107, 
        SYNOPSYS_UNCONNECTED__108, SYNOPSYS_UNCONNECTED__109, 
        SYNOPSYS_UNCONNECTED__110, SYNOPSYS_UNCONNECTED__111}) );
  booth_multiplier_DW01_add_7_DW01_add_10 add_1_root_add_0_root_add_263_7 ( 
        .A({N199, N198, N197, N196, N195, N194, N193, N192, N191, N190, N189, 
        N188, N187, N186, N185, N184, N183, N182, N181, N180, N179, N178, N177, 
        N176, N175, N174, N173, N172, N171, N170, N169, N168, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), .B({N159, N158, N157, N156, N155, N154, 
        N153, N152, N151, N150, N149, N148, N147, N146, N145, N144, N143, N142, 
        N141, N140, N139, N138, N137, N136, N135, N134, N133, N132, N131, N130, 
        N129, N128, N127, N126, N125, N124, 1'b0, 1'b0, 1'b0, 1'b0}), .CI(1'b0), .SUM({N119, N118, N117, N116, N115, N114, N113, N112, N111, N110, N109, N108, 
        N107, N106, N105, N104, N103, N102, N101, N100, N99, N98, N97, N96, 
        N95, N94, N93, N92, N91, N90, N89, N88, N87, N86, N85, N84, 
        SYNOPSYS_UNCONNECTED__112, SYNOPSYS_UNCONNECTED__113, 
        SYNOPSYS_UNCONNECTED__114, SYNOPSYS_UNCONNECTED__115}) );
  booth_multiplier_DW01_add_6_DW01_add_9 add_0_root_add_0_root_add_263_7 ( .A(
        {N119, N118, N117, N116, N115, N114, N113, N112, N111, N110, N109, 
        N108, N107, N106, N105, N104, N103, N102, N101, N100, N99, N98, N97, 
        N96, N95, N94, N93, N92, N91, N90, N89, N88, N87, N86, N85, N84, 1'b0, 
        1'b0, 1'b0, 1'b0}), .B({N239, N238, N237, N236, N235, N234, N233, N232, 
        N231, N230, N229, N228, N227, N226, N225, N224, N223, N222, N221, N220, 
        N219, N218, N217, N216, N215, N214, N213, N212, N211, N210, N209, N208, 
        N207, N206, N205, N204, N203, N202, N201, N200}), .CI(1'b0), .SUM(
        multiplier_out_16) );
  booth_multiplier_DW01_add_1_DW01_add_4 add_265_2 ( .A({encode_out8_7_shift, 
        1'b0, 1'b0}), .B(encode_out8_8_shift), .CI(1'b0), .SUM({N319, N318, 
        N317, N316, N315, N314, N313, N312, N311, N310, N309, N308, N307, N306, 
        N305, N304, N303, N302, N301, N300}) );
  booth_multiplier_DW01_add_0_DW01_add_3 add_265_3 ( .A({N299, N298, N297, 
        N296, N295, N294, N293, N292, N291, N290, N289, N288, N287, N286, N285, 
        N284, 1'b0, 1'b0, 1'b0, 1'b0}), .B({N319, N318, N317, N316, N315, N314, 
        N313, N312, N311, N310, N309, N308, N307, N306, N305, N304, N303, N302, 
        N301, N300}), .CI(1'b0), .SUM(multiplier_out_8_2) );
  booth_multiplier_DW01_add_4_DW01_add_7 add_264_2 ( .A({encode_out8_3_shift, 
        1'b0, 1'b0}), .B(encode_out8_4_shift), .CI(1'b0), .SUM({N279, N278, 
        N277, N276, N275, N274, N273, N272, N271, N270, N269, N268, N267, N266, 
        N265, N264, N263, N262, N261, N260}) );
  booth_multiplier_DW01_add_3_DW01_add_6 add_264_3 ( .A({N259, N258, N257, 
        N256, N255, N254, N253, N252, N251, N250, N249, N248, N247, N246, N245, 
        N244, 1'b0, 1'b0, 1'b0, 1'b0}), .B({N279, N278, N277, N276, N275, N274, 
        N273, N272, N271, N270, N269, N268, N267, N266, N265, N264, N263, N262, 
        N261, N260}), .CI(1'b0), .SUM(multiplier_out_8_1) );
  DFFRX1 \multiplier_out_2_reg[39]  ( .D(n161), .CK(clk), .RN(n196), .Q(
        multiplier_out_2[39]), .QN(n81) );
  DFFRX1 \multiplier_out_1_reg[39]  ( .D(n121), .CK(clk), .RN(n193), .Q(
        multiplier_out_1[39]), .QN(n41) );
  DFFRX1 \multiplier_out_2_reg[38]  ( .D(n160), .CK(clk), .RN(n196), .Q(
        multiplier_out_2[38]), .QN(n80) );
  DFFRX1 \multiplier_out_1_reg[38]  ( .D(n120), .CK(clk), .RN(n193), .Q(
        multiplier_out_1[38]), .QN(n40) );
  DFFRX1 \multiplier_out_2_reg[19]  ( .D(n141), .CK(clk), .RN(n194), .Q(
        multiplier_out_2[19]), .QN(n61) );
  DFFRX1 \multiplier_out_2_reg[37]  ( .D(n159), .CK(clk), .RN(n196), .Q(
        multiplier_out_2[37]), .QN(n79) );
  DFFRX1 \multiplier_out_1_reg[37]  ( .D(n119), .CK(clk), .RN(n193), .Q(
        multiplier_out_1[37]), .QN(n39) );
  DFFRX1 \multiplier_out_2_reg[18]  ( .D(n140), .CK(clk), .RN(n194), .Q(
        multiplier_out_2[18]), .QN(n60) );
  DFFRX1 \multiplier_out_2_reg[36]  ( .D(n158), .CK(clk), .RN(n196), .Q(
        multiplier_out_2[36]), .QN(n78) );
  DFFRX1 \multiplier_out_1_reg[36]  ( .D(n118), .CK(clk), .RN(n193), .Q(
        multiplier_out_1[36]), .QN(n38) );
  DFFRX1 \multiplier_out_2_reg[17]  ( .D(n139), .CK(clk), .RN(n194), .Q(
        multiplier_out_2[17]), .QN(n59) );
  DFFRX1 \multiplier_out_2_reg[35]  ( .D(n157), .CK(clk), .RN(n196), .Q(
        multiplier_out_2[35]), .QN(n77) );
  DFFRX1 \multiplier_out_1_reg[35]  ( .D(n117), .CK(clk), .RN(n192), .Q(
        multiplier_out_1[35]), .QN(n37) );
  DFFRX1 \multiplier_out_2_reg[16]  ( .D(n138), .CK(clk), .RN(n194), .Q(
        multiplier_out_2[16]), .QN(n58) );
  DFFRX1 \multiplier_out_2_reg[34]  ( .D(n156), .CK(clk), .RN(n196), .Q(
        multiplier_out_2[34]), .QN(n76) );
  DFFRX1 \multiplier_out_1_reg[34]  ( .D(n116), .CK(clk), .RN(n192), .Q(
        multiplier_out_1[34]), .QN(n36) );
  DFFRX1 \multiplier_out_2_reg[15]  ( .D(n137), .CK(clk), .RN(n194), .Q(
        multiplier_out_2[15]), .QN(n57) );
  DFFRX1 \multiplier_out_2_reg[33]  ( .D(n155), .CK(clk), .RN(n196), .Q(
        multiplier_out_2[33]), .QN(n75) );
  DFFRX1 \multiplier_out_1_reg[33]  ( .D(n115), .CK(clk), .RN(n192), .Q(
        multiplier_out_1[33]), .QN(n35) );
  DFFRX1 \multiplier_out_2_reg[14]  ( .D(n136), .CK(clk), .RN(n194), .Q(
        multiplier_out_2[14]), .QN(n56) );
  DFFRX1 \multiplier_out_2_reg[32]  ( .D(n154), .CK(clk), .RN(n196), .Q(
        multiplier_out_2[32]), .QN(n74) );
  DFFRX1 \multiplier_out_1_reg[32]  ( .D(n114), .CK(clk), .RN(n192), .Q(
        multiplier_out_1[32]), .QN(n34) );
  DFFRX1 \multiplier_out_2_reg[13]  ( .D(n135), .CK(clk), .RN(n194), .Q(
        multiplier_out_2[13]), .QN(n55) );
  DFFRX1 \multiplier_out_2_reg[31]  ( .D(n153), .CK(clk), .RN(n195), .Q(
        multiplier_out_2[31]), .QN(n73) );
  DFFRX1 \multiplier_out_1_reg[31]  ( .D(n113), .CK(clk), .RN(n192), .Q(
        multiplier_out_1[31]), .QN(n33) );
  DFFRX1 \multiplier_out_2_reg[12]  ( .D(n134), .CK(clk), .RN(n194), .Q(
        multiplier_out_2[12]), .QN(n54) );
  DFFRX1 \multiplier_out_2_reg[30]  ( .D(n152), .CK(clk), .RN(n195), .Q(
        multiplier_out_2[30]), .QN(n72) );
  DFFRX1 \multiplier_out_1_reg[30]  ( .D(n112), .CK(clk), .RN(n192), .Q(
        multiplier_out_1[30]), .QN(n32) );
  DFFRX1 \multiplier_out_2_reg[11]  ( .D(n133), .CK(clk), .RN(n194), .Q(
        multiplier_out_2[11]), .QN(n53) );
  DFFRX1 \multiplier_out_2_reg[29]  ( .D(n151), .CK(clk), .RN(n195), .Q(
        multiplier_out_2[29]), .QN(n71) );
  DFFRX1 \multiplier_out_1_reg[29]  ( .D(n111), .CK(clk), .RN(n192), .Q(
        multiplier_out_1[29]), .QN(n31) );
  DFFRX1 \multiplier_out_2_reg[10]  ( .D(n132), .CK(clk), .RN(n194), .Q(
        multiplier_out_2[10]), .QN(n52) );
  DFFRX1 \multiplier_out_2_reg[28]  ( .D(n150), .CK(clk), .RN(n195), .Q(
        multiplier_out_2[28]), .QN(n70) );
  DFFRX1 \multiplier_out_1_reg[28]  ( .D(n110), .CK(clk), .RN(n192), .Q(
        multiplier_out_1[28]), .QN(n30) );
  DFFRX1 \multiplier_out_2_reg[9]  ( .D(n131), .CK(clk), .RN(n194), .Q(
        multiplier_out_2[9]), .QN(n51) );
  DFFRX1 \multiplier_out_2_reg[27]  ( .D(n149), .CK(clk), .RN(n195), .Q(
        multiplier_out_2[27]), .QN(n69) );
  DFFRX1 \multiplier_out_1_reg[27]  ( .D(n109), .CK(clk), .RN(n192), .Q(
        multiplier_out_1[27]), .QN(n29) );
  DFFRX1 \multiplier_out_2_reg[8]  ( .D(n130), .CK(clk), .RN(n194), .Q(
        multiplier_out_2[8]), .QN(n50) );
  DFFRX1 \multiplier_out_2_reg[26]  ( .D(n148), .CK(clk), .RN(n195), .Q(
        multiplier_out_2[26]), .QN(n68) );
  DFFRX1 \multiplier_out_1_reg[26]  ( .D(n108), .CK(clk), .RN(n192), .Q(
        multiplier_out_1[26]), .QN(n28) );
  DFFRX1 \multiplier_out_2_reg[7]  ( .D(n129), .CK(clk), .RN(n193), .Q(
        multiplier_out_2[7]), .QN(n49) );
  DFFRX1 \multiplier_out_2_reg[25]  ( .D(n147), .CK(clk), .RN(n195), .Q(
        multiplier_out_2[25]), .QN(n67) );
  DFFRX1 \multiplier_out_1_reg[25]  ( .D(n107), .CK(clk), .RN(n192), .Q(
        multiplier_out_1[25]), .QN(n27) );
  DFFRX1 \multiplier_out_2_reg[6]  ( .D(n128), .CK(clk), .RN(n193), .Q(
        multiplier_out_2[6]), .QN(n48) );
  DFFRX1 \multiplier_out_2_reg[24]  ( .D(n146), .CK(clk), .RN(n195), .Q(
        multiplier_out_2[24]), .QN(n66) );
  DFFRX1 \multiplier_out_1_reg[24]  ( .D(n106), .CK(clk), .RN(n192), .Q(
        multiplier_out_1[24]), .QN(n26) );
  DFFRX1 \multiplier_out_2_reg[5]  ( .D(n127), .CK(clk), .RN(n193), .Q(
        multiplier_out_2[5]), .QN(n47) );
  DFFRX1 \multiplier_out_2_reg[23]  ( .D(n145), .CK(clk), .RN(n195), .Q(
        multiplier_out_2[23]), .QN(n65) );
  DFFRX1 \multiplier_out_1_reg[23]  ( .D(n105), .CK(clk), .RN(n191), .Q(
        multiplier_out_1[23]), .QN(n25) );
  DFFRX1 \multiplier_out_2_reg[4]  ( .D(n126), .CK(clk), .RN(n193), .Q(
        multiplier_out_2[4]), .QN(n46) );
  DFFRX1 \multiplier_out_2_reg[22]  ( .D(n144), .CK(clk), .RN(n195), .Q(
        multiplier_out_2[22]), .QN(n64) );
  DFFRX1 \multiplier_out_1_reg[22]  ( .D(n104), .CK(clk), .RN(n191), .Q(
        multiplier_out_1[22]), .QN(n24) );
  DFFRX1 \multiplier_out_2_reg[3]  ( .D(n125), .CK(clk), .RN(n193), .Q(
        multiplier_out_2[3]), .QN(n45) );
  DFFRX1 \multiplier_out_2_reg[20]  ( .D(n142), .CK(clk), .RN(n195), .Q(
        multiplier_out_2[20]), .QN(n62) );
  DFFRX1 \multiplier_out_2_reg[21]  ( .D(n143), .CK(clk), .RN(n195), .Q(
        multiplier_out_2[21]), .QN(n63) );
  DFFRX1 \multiplier_out_1_reg[21]  ( .D(n103), .CK(clk), .RN(n191), .Q(
        multiplier_out_1[21]), .QN(n23) );
  DFFRX1 \multiplier_out_2_reg[2]  ( .D(n124), .CK(clk), .RN(n193), .Q(
        multiplier_out_2[2]), .QN(n44) );
  DFFRX1 \multiplier_out_1_reg[20]  ( .D(n102), .CK(clk), .RN(n191), .Q(
        multiplier_out_1[20]), .QN(n22) );
  DFFRX1 \multiplier_out_2_reg[0]  ( .D(n122), .CK(clk), .RN(n193), .Q(
        multiplier_out_2[0]), .QN(n42) );
  DFFRX1 \multiplier_out_2_reg[1]  ( .D(n123), .CK(clk), .RN(n193), .Q(
        multiplier_out_2[1]), .QN(n43) );
  DFFRX1 \multiplier_out_1_reg[19]  ( .D(n101), .CK(clk), .RN(n191), .Q(
        multiplier_out_1[19]), .QN(n21) );
  DFFRX1 \multiplier_out_1_reg[18]  ( .D(n100), .CK(clk), .RN(n191), .Q(
        multiplier_out_1[18]), .QN(n20) );
  DFFRX1 \multiplier_out_1_reg[17]  ( .D(n99), .CK(clk), .RN(n191), .Q(
        multiplier_out_1[17]), .QN(n19) );
  DFFRX1 \multiplier_out_1_reg[16]  ( .D(n98), .CK(clk), .RN(n191), .Q(
        multiplier_out_1[16]), .QN(n18) );
  DFFRX1 \multiplier_out_1_reg[15]  ( .D(n97), .CK(clk), .RN(n191), .Q(
        multiplier_out_1[15]), .QN(n17) );
  DFFRX1 \multiplier_out_1_reg[14]  ( .D(n96), .CK(clk), .RN(n191), .Q(
        multiplier_out_1[14]), .QN(n16) );
  DFFRX1 \multiplier_out_1_reg[13]  ( .D(n95), .CK(clk), .RN(n191), .Q(
        multiplier_out_1[13]), .QN(n15) );
  DFFRX1 \multiplier_out_1_reg[12]  ( .D(n94), .CK(clk), .RN(n191), .Q(
        multiplier_out_1[12]), .QN(n14) );
  DFFRX1 \multiplier_out_1_reg[11]  ( .D(n93), .CK(clk), .RN(n190), .Q(
        multiplier_out_1[11]), .QN(n13) );
  DFFRX1 \multiplier_out_1_reg[10]  ( .D(n92), .CK(clk), .RN(n190), .Q(
        multiplier_out_1[10]), .QN(n12) );
  DFFRX1 \multiplier_out_1_reg[9]  ( .D(n91), .CK(clk), .RN(n190), .Q(
        multiplier_out_1[9]), .QN(n11) );
  DFFRX1 \multiplier_out_1_reg[8]  ( .D(n90), .CK(clk), .RN(n190), .Q(
        multiplier_out_1[8]), .QN(n10) );
  DFFRX1 \multiplier_out_1_reg[7]  ( .D(n89), .CK(clk), .RN(n190), .Q(
        multiplier_out_1[7]), .QN(n9) );
  DFFRX1 \multiplier_out_1_reg[6]  ( .D(n88), .CK(clk), .RN(n190), .Q(
        multiplier_out_1[6]), .QN(n8) );
  DFFRX1 \multiplier_out_1_reg[5]  ( .D(n87), .CK(clk), .RN(n190), .Q(
        multiplier_out_1[5]), .QN(n7) );
  DFFRX1 \multiplier_out_1_reg[4]  ( .D(n86), .CK(clk), .RN(n190), .Q(
        multiplier_out_1[4]), .QN(n6) );
  DFFRX1 \multiplier_out_1_reg[3]  ( .D(n85), .CK(clk), .RN(n190), .Q(
        multiplier_out_1[3]), .QN(n5) );
  DFFRX1 \multiplier_out_1_reg[2]  ( .D(n84), .CK(clk), .RN(n190), .Q(
        multiplier_out_1[2]), .QN(n4) );
  DFFRX1 \multiplier_out_1_reg[0]  ( .D(n82), .CK(clk), .RN(n190), .Q(
        multiplier_out_1[0]), .QN(n2) );
  DFFRX1 \multiplier_out_1_reg[1]  ( .D(n83), .CK(clk), .RN(n190), .Q(
        multiplier_out_1[1]), .QN(n3) );
  CLKBUFX3 U2 ( .A(multiplicand[0]), .Y(n1) );
  CLKBUFX3 U3 ( .A(multiplicand[1]), .Y(n162) );
  CLKBUFX3 U4 ( .A(multiplicand[2]), .Y(n163) );
  CLKBUFX3 U5 ( .A(multiplicand[3]), .Y(n164) );
  CLKBUFX3 U6 ( .A(multiplicand[4]), .Y(n165) );
  CLKBUFX3 U7 ( .A(multiplicand[5]), .Y(n166) );
  CLKBUFX3 U8 ( .A(multiplicand[6]), .Y(n167) );
  CLKBUFX3 U9 ( .A(multiplicand[7]), .Y(n168) );
  CLKBUFX3 U10 ( .A(multiplicand[8]), .Y(n169) );
  CLKBUFX3 U11 ( .A(multiplicand[9]), .Y(n170) );
  CLKBUFX3 U12 ( .A(multiplicand[10]), .Y(n171) );
  CLKBUFX3 U13 ( .A(multiplicand[11]), .Y(n172) );
  CLKBUFX3 U14 ( .A(multiplicand[12]), .Y(n173) );
  CLKBUFX3 U15 ( .A(multiplicand[13]), .Y(n174) );
  CLKBUFX3 U16 ( .A(multiplicand[14]), .Y(n175) );
  CLKBUFX3 U17 ( .A(multiplicand[15]), .Y(n176) );
  CLKINVX1 U18 ( .A(stall), .Y(n197) );
  ADDFXL U19 ( .A(encode_out8_5_shift[7]), .B(encode_out8_6_shift[7]), .CI(
        \add_265/carry[7] ), .CO(\add_265/carry[8] ), .S(N287) );
  ADDFXL U20 ( .A(encode_out8_1_shift[7]), .B(encode_out8_2_shift[7]), .CI(
        \add_264/carry[7] ), .CO(\add_264/carry[8] ), .S(N247) );
  ADDFXL U21 ( .A(encode_out8_5_shift[18]), .B(encode_out8_6_shift[18]), .CI(
        \add_265/carry[18] ), .CO(\add_265/carry[19] ), .S(N298) );
  ADDFXL U22 ( .A(encode_out8_1_shift[18]), .B(encode_out8_2_shift[18]), .CI(
        \add_264/carry[18] ), .CO(\add_264/carry[19] ), .S(N258) );
  ADDFXL U23 ( .A(encode_out8_5_shift[8]), .B(encode_out8_6_shift[8]), .CI(
        \add_265/carry[8] ), .CO(\add_265/carry[9] ), .S(N288) );
  ADDFXL U24 ( .A(encode_out8_1_shift[8]), .B(encode_out8_2_shift[8]), .CI(
        \add_264/carry[8] ), .CO(\add_264/carry[9] ), .S(N248) );
  ADDFXL U25 ( .A(encode_out8_5_shift[9]), .B(encode_out8_6_shift[9]), .CI(
        \add_265/carry[9] ), .CO(\add_265/carry[10] ), .S(N289) );
  ADDFXL U26 ( .A(encode_out8_1_shift[9]), .B(encode_out8_2_shift[9]), .CI(
        \add_264/carry[9] ), .CO(\add_264/carry[10] ), .S(N249) );
  ADDFXL U27 ( .A(encode_out8_5_shift[10]), .B(encode_out8_6_shift[10]), .CI(
        \add_265/carry[10] ), .CO(\add_265/carry[11] ), .S(N290) );
  ADDFXL U28 ( .A(encode_out8_1_shift[10]), .B(encode_out8_2_shift[10]), .CI(
        \add_264/carry[10] ), .CO(\add_264/carry[11] ), .S(N250) );
  ADDFXL U29 ( .A(encode_out8_5_shift[11]), .B(encode_out8_6_shift[11]), .CI(
        \add_265/carry[11] ), .CO(\add_265/carry[12] ), .S(N291) );
  ADDFXL U30 ( .A(encode_out8_1_shift[11]), .B(encode_out8_2_shift[11]), .CI(
        \add_264/carry[11] ), .CO(\add_264/carry[12] ), .S(N251) );
  ADDFXL U31 ( .A(encode_out8_5_shift[12]), .B(encode_out8_6_shift[12]), .CI(
        \add_265/carry[12] ), .CO(\add_265/carry[13] ), .S(N292) );
  ADDFXL U32 ( .A(encode_out8_1_shift[12]), .B(encode_out8_2_shift[12]), .CI(
        \add_264/carry[12] ), .CO(\add_264/carry[13] ), .S(N252) );
  ADDFXL U33 ( .A(encode_out8_5_shift[13]), .B(encode_out8_6_shift[13]), .CI(
        \add_265/carry[13] ), .CO(\add_265/carry[14] ), .S(N293) );
  ADDFXL U34 ( .A(encode_out8_1_shift[13]), .B(encode_out8_2_shift[13]), .CI(
        \add_264/carry[13] ), .CO(\add_264/carry[14] ), .S(N253) );
  ADDFXL U35 ( .A(encode_out8_5_shift[14]), .B(encode_out8_6_shift[14]), .CI(
        \add_265/carry[14] ), .CO(\add_265/carry[15] ), .S(N294) );
  ADDFXL U36 ( .A(encode_out8_1_shift[14]), .B(encode_out8_2_shift[14]), .CI(
        \add_264/carry[14] ), .CO(\add_264/carry[15] ), .S(N254) );
  ADDFXL U37 ( .A(encode_out8_5_shift[15]), .B(encode_out8_6_shift[15]), .CI(
        \add_265/carry[15] ), .CO(\add_265/carry[16] ), .S(N295) );
  ADDFXL U38 ( .A(encode_out8_1_shift[15]), .B(encode_out8_2_shift[15]), .CI(
        \add_264/carry[15] ), .CO(\add_264/carry[16] ), .S(N255) );
  ADDFXL U39 ( .A(encode_out8_5_shift[16]), .B(encode_out8_6_shift[16]), .CI(
        \add_265/carry[16] ), .CO(\add_265/carry[17] ), .S(N296) );
  ADDFXL U40 ( .A(encode_out8_1_shift[16]), .B(encode_out8_2_shift[16]), .CI(
        \add_264/carry[16] ), .CO(\add_264/carry[17] ), .S(N256) );
  ADDFXL U41 ( .A(encode_out8_5_shift[17]), .B(encode_out8_6_shift[17]), .CI(
        \add_265/carry[17] ), .CO(\add_265/carry[18] ), .S(N297) );
  ADDFXL U42 ( .A(encode_out8_1_shift[17]), .B(encode_out8_2_shift[17]), .CI(
        \add_264/carry[17] ), .CO(\add_264/carry[18] ), .S(N257) );
  CLKBUFX3 U43 ( .A(n186), .Y(n190) );
  CLKBUFX3 U44 ( .A(n186), .Y(n191) );
  CLKBUFX3 U45 ( .A(n186), .Y(n192) );
  CLKBUFX3 U46 ( .A(n187), .Y(n193) );
  CLKBUFX3 U47 ( .A(n187), .Y(n194) );
  CLKBUFX3 U48 ( .A(n187), .Y(n195) );
  CLKBUFX3 U49 ( .A(n197), .Y(n184) );
  CLKBUFX3 U50 ( .A(n197), .Y(n183) );
  CLKBUFX3 U51 ( .A(n197), .Y(n182) );
  CLKBUFX3 U52 ( .A(n197), .Y(n181) );
  CLKBUFX3 U53 ( .A(n197), .Y(n179) );
  CLKBUFX3 U54 ( .A(n197), .Y(n178) );
  CLKBUFX3 U55 ( .A(n197), .Y(n177) );
  CLKBUFX3 U56 ( .A(n197), .Y(n180) );
  CLKBUFX3 U57 ( .A(n197), .Y(n185) );
  CLKBUFX3 U58 ( .A(n189), .Y(n186) );
  CLKBUFX3 U59 ( .A(n189), .Y(n187) );
  CLKBUFX3 U60 ( .A(n188), .Y(n196) );
  CLKBUFX3 U61 ( .A(n189), .Y(n188) );
  OAI2BB2XL U62 ( .B0(n41), .B1(n181), .A0N(multiplier_out_16[39]), .A1N(n185), 
        .Y(n121) );
  OAI2BB2XL U63 ( .B0(n40), .B1(n180), .A0N(multiplier_out_16[38]), .A1N(n185), 
        .Y(n120) );
  OAI2BB2XL U64 ( .B0(n39), .B1(n180), .A0N(multiplier_out_16[37]), .A1N(n185), 
        .Y(n119) );
  OAI2BB2XL U65 ( .B0(n38), .B1(n180), .A0N(multiplier_out_16[36]), .A1N(n185), 
        .Y(n118) );
  OAI2BB2XL U66 ( .B0(n37), .B1(n180), .A0N(multiplier_out_16[35]), .A1N(n185), 
        .Y(n117) );
  OAI2BB2XL U67 ( .B0(n36), .B1(n180), .A0N(multiplier_out_16[34]), .A1N(n185), 
        .Y(n116) );
  OAI2BB2XL U68 ( .B0(n35), .B1(n180), .A0N(multiplier_out_16[33]), .A1N(n185), 
        .Y(n115) );
  OAI2BB2XL U69 ( .B0(n34), .B1(n180), .A0N(multiplier_out_16[32]), .A1N(n185), 
        .Y(n114) );
  OAI2BB2XL U70 ( .B0(n33), .B1(n180), .A0N(multiplier_out_16[31]), .A1N(n185), 
        .Y(n113) );
  OAI2BB2XL U71 ( .B0(n32), .B1(n181), .A0N(multiplier_out_16[30]), .A1N(n185), 
        .Y(n112) );
  OAI2BB2XL U72 ( .B0(n31), .B1(n181), .A0N(multiplier_out_16[29]), .A1N(n185), 
        .Y(n111) );
  OAI2BB2XL U73 ( .B0(n30), .B1(n181), .A0N(multiplier_out_16[28]), .A1N(n185), 
        .Y(n110) );
  OAI2BB2XL U74 ( .B0(n29), .B1(n181), .A0N(multiplier_out_16[27]), .A1N(n183), 
        .Y(n109) );
  OAI2BB2XL U75 ( .B0(n28), .B1(n181), .A0N(multiplier_out_16[26]), .A1N(n185), 
        .Y(n108) );
  OAI2BB2XL U76 ( .B0(n27), .B1(n181), .A0N(multiplier_out_16[25]), .A1N(n185), 
        .Y(n107) );
  OAI2BB2XL U77 ( .B0(n26), .B1(n181), .A0N(multiplier_out_16[24]), .A1N(n185), 
        .Y(n106) );
  OAI2BB2XL U78 ( .B0(n25), .B1(n182), .A0N(multiplier_out_16[23]), .A1N(n185), 
        .Y(n105) );
  OAI2BB2XL U79 ( .B0(n24), .B1(n182), .A0N(multiplier_out_16[22]), .A1N(n185), 
        .Y(n104) );
  OAI2BB2XL U80 ( .B0(n23), .B1(n181), .A0N(multiplier_out_16[21]), .A1N(n185), 
        .Y(n103) );
  OAI2BB2XL U81 ( .B0(n22), .B1(n182), .A0N(multiplier_out_16[20]), .A1N(n185), 
        .Y(n102) );
  OAI2BB2XL U82 ( .B0(n21), .B1(n182), .A0N(multiplier_out_16[19]), .A1N(n185), 
        .Y(n101) );
  OAI2BB2XL U83 ( .B0(n81), .B1(n180), .A0N(multiplier_out_8_1[19]), .A1N(n184), .Y(n161) );
  XOR3X1 U84 ( .A(encode_out8_1_shift[19]), .B(encode_out8_2_shift[19]), .C(
        \add_264/carry[19] ), .Y(N259) );
  OAI2BB2XL U85 ( .B0(n61), .B1(n178), .A0N(multiplier_out_8_2[19]), .A1N(n184), .Y(n141) );
  XOR3X1 U86 ( .A(encode_out8_5_shift[19]), .B(encode_out8_6_shift[19]), .C(
        \add_265/carry[19] ), .Y(N299) );
  OAI2BB2XL U87 ( .B0(n20), .B1(n182), .A0N(multiplier_out_16[18]), .A1N(n185), 
        .Y(n100) );
  OAI2BB2XL U88 ( .B0(n80), .B1(n177), .A0N(multiplier_out_8_1[18]), .A1N(n184), .Y(n160) );
  OAI2BB2XL U89 ( .B0(n60), .B1(n178), .A0N(multiplier_out_8_2[18]), .A1N(n184), .Y(n140) );
  OAI2BB2XL U90 ( .B0(n19), .B1(n182), .A0N(multiplier_out_16[17]), .A1N(n185), 
        .Y(n99) );
  OAI2BB2XL U91 ( .B0(n79), .B1(n177), .A0N(multiplier_out_8_1[17]), .A1N(n183), .Y(n159) );
  OAI2BB2XL U92 ( .B0(n59), .B1(n178), .A0N(multiplier_out_8_2[17]), .A1N(n184), .Y(n139) );
  OAI2BB2XL U93 ( .B0(n18), .B1(n182), .A0N(multiplier_out_16[16]), .A1N(n185), 
        .Y(n98) );
  OAI2BB2XL U94 ( .B0(n78), .B1(n177), .A0N(multiplier_out_8_1[16]), .A1N(n183), .Y(n158) );
  OAI2BB2XL U95 ( .B0(n58), .B1(n178), .A0N(multiplier_out_8_2[16]), .A1N(n184), .Y(n138) );
  OAI2BB2XL U96 ( .B0(n17), .B1(n183), .A0N(multiplier_out_16[15]), .A1N(n184), 
        .Y(n97) );
  OAI2BB2XL U97 ( .B0(n77), .B1(n177), .A0N(multiplier_out_8_1[15]), .A1N(n183), .Y(n157) );
  OAI2BB2XL U98 ( .B0(n57), .B1(n178), .A0N(multiplier_out_8_2[15]), .A1N(n184), .Y(n137) );
  OAI2BB2XL U99 ( .B0(n16), .B1(n183), .A0N(multiplier_out_16[14]), .A1N(n184), 
        .Y(n96) );
  OAI2BB2XL U100 ( .B0(n76), .B1(n177), .A0N(multiplier_out_8_1[14]), .A1N(
        n184), .Y(n156) );
  OAI2BB2XL U101 ( .B0(n56), .B1(n179), .A0N(multiplier_out_8_2[14]), .A1N(
        n184), .Y(n136) );
  OAI2BB2XL U102 ( .B0(n15), .B1(n183), .A0N(multiplier_out_16[13]), .A1N(n184), .Y(n95) );
  OAI2BB2XL U103 ( .B0(n75), .B1(n177), .A0N(multiplier_out_8_1[13]), .A1N(
        n184), .Y(n155) );
  OAI2BB2XL U104 ( .B0(n55), .B1(n179), .A0N(multiplier_out_8_2[13]), .A1N(
        n184), .Y(n135) );
  OAI2BB2XL U105 ( .B0(n14), .B1(n183), .A0N(multiplier_out_16[12]), .A1N(n184), .Y(n94) );
  OAI2BB2XL U106 ( .B0(n74), .B1(n177), .A0N(multiplier_out_8_1[12]), .A1N(
        n183), .Y(n154) );
  OAI2BB2XL U107 ( .B0(n54), .B1(n179), .A0N(multiplier_out_8_2[12]), .A1N(
        n184), .Y(n134) );
  OAI2BB2XL U108 ( .B0(n13), .B1(n181), .A0N(multiplier_out_16[11]), .A1N(n184), .Y(n93) );
  OAI2BB2XL U109 ( .B0(n73), .B1(n177), .A0N(multiplier_out_8_1[11]), .A1N(
        n183), .Y(n153) );
  OAI2BB2XL U110 ( .B0(n53), .B1(n179), .A0N(multiplier_out_8_2[11]), .A1N(
        n184), .Y(n133) );
  OAI2BB2XL U111 ( .B0(n12), .B1(n183), .A0N(multiplier_out_16[10]), .A1N(n184), .Y(n92) );
  OAI2BB2XL U112 ( .B0(n72), .B1(n177), .A0N(multiplier_out_8_1[10]), .A1N(
        n184), .Y(n152) );
  OAI2BB2XL U113 ( .B0(n52), .B1(n179), .A0N(multiplier_out_8_2[10]), .A1N(
        n184), .Y(n132) );
  OAI2BB2XL U114 ( .B0(n11), .B1(n183), .A0N(multiplier_out_16[9]), .A1N(n184), 
        .Y(n91) );
  OAI2BB2XL U115 ( .B0(n71), .B1(n177), .A0N(multiplier_out_8_1[9]), .A1N(n183), .Y(n151) );
  OAI2BB2XL U116 ( .B0(n51), .B1(n179), .A0N(multiplier_out_8_2[9]), .A1N(n185), .Y(n131) );
  OAI2BB2XL U117 ( .B0(n10), .B1(n183), .A0N(multiplier_out_16[8]), .A1N(n184), 
        .Y(n90) );
  OAI2BB2XL U118 ( .B0(n70), .B1(n177), .A0N(multiplier_out_8_1[8]), .A1N(n183), .Y(n150) );
  OAI2BB2XL U119 ( .B0(n50), .B1(n179), .A0N(multiplier_out_8_2[8]), .A1N(n185), .Y(n130) );
  OAI2BB2XL U120 ( .B0(n9), .B1(n183), .A0N(multiplier_out_16[7]), .A1N(n184), 
        .Y(n89) );
  OAI2BB2XL U121 ( .B0(n69), .B1(n177), .A0N(multiplier_out_8_1[7]), .A1N(n184), .Y(n149) );
  OAI2BB2XL U122 ( .B0(n49), .B1(n179), .A0N(multiplier_out_8_2[7]), .A1N(n185), .Y(n129) );
  OAI2BB2XL U123 ( .B0(n8), .B1(n182), .A0N(multiplier_out_16[6]), .A1N(n184), 
        .Y(n88) );
  OAI2BB2XL U124 ( .B0(n68), .B1(n178), .A0N(multiplier_out_8_1[6]), .A1N(n184), .Y(n148) );
  OAI2BB2XL U125 ( .B0(n48), .B1(n179), .A0N(multiplier_out_8_2[6]), .A1N(n185), .Y(n128) );
  OAI2BB2XL U126 ( .B0(n7), .B1(n182), .A0N(multiplier_out_16[5]), .A1N(n183), 
        .Y(n87) );
  OAI2BB2XL U127 ( .B0(n67), .B1(n178), .A0N(multiplier_out_8_1[5]), .A1N(n184), .Y(n147) );
  OAI2BB2XL U128 ( .B0(n47), .B1(n179), .A0N(multiplier_out_8_2[5]), .A1N(n185), .Y(n127) );
  OAI2BB2XL U129 ( .B0(n6), .B1(n181), .A0N(multiplier_out_16[4]), .A1N(n184), 
        .Y(n86) );
  OAI2BB2XL U130 ( .B0(n66), .B1(n178), .A0N(multiplier_out_8_1[4]), .A1N(n184), .Y(n146) );
  OAI2BB2XL U131 ( .B0(n46), .B1(n179), .A0N(multiplier_out_8_2[4]), .A1N(n185), .Y(n126) );
  OAI2BB2XL U132 ( .B0(n5), .B1(n182), .A0N(multiplier_out_16[3]), .A1N(n183), 
        .Y(n85) );
  OAI2BB2XL U133 ( .B0(n65), .B1(n178), .A0N(multiplier_out_8_1[3]), .A1N(n184), .Y(n145) );
  OAI2BB2XL U134 ( .B0(n45), .B1(n179), .A0N(multiplier_out_8_2[3]), .A1N(n185), .Y(n125) );
  OAI2BB2XL U135 ( .B0(n4), .B1(n182), .A0N(multiplier_out_16[2]), .A1N(n183), 
        .Y(n84) );
  OAI2BB2XL U136 ( .B0(n64), .B1(n178), .A0N(multiplier_out_8_1[2]), .A1N(n184), .Y(n144) );
  OAI2BB2XL U137 ( .B0(n44), .B1(n180), .A0N(multiplier_out_8_2[2]), .A1N(n185), .Y(n124) );
  OAI2BB2XL U138 ( .B0(n3), .B1(n182), .A0N(multiplier_out_16[1]), .A1N(n183), 
        .Y(n83) );
  OAI2BB2XL U139 ( .B0(n43), .B1(n180), .A0N(multiplier_out_8_2[1]), .A1N(n185), .Y(n123) );
  OAI2BB2XL U140 ( .B0(n63), .B1(n178), .A0N(multiplier_out_8_1[1]), .A1N(n184), .Y(n143) );
  OAI2BB2XL U141 ( .B0(n2), .B1(n181), .A0N(multiplier_out_16[0]), .A1N(n184), 
        .Y(n82) );
  OAI2BB2XL U142 ( .B0(n42), .B1(n180), .A0N(multiplier_out_8_2[0]), .A1N(n185), .Y(n122) );
  OAI2BB2XL U143 ( .B0(n62), .B1(n178), .A0N(multiplier_out_8_1[0]), .A1N(n184), .Y(n142) );
  CLKBUFX3 U144 ( .A(reset), .Y(n189) );
  AND2X1 U145 ( .A(encode_out8_5_shift[6]), .B(encode_out8_6_shift[6]), .Y(
        \add_265/carry[7] ) );
  XOR2X1 U146 ( .A(encode_out8_6_shift[6]), .B(encode_out8_5_shift[6]), .Y(
        N286) );
  AND2X1 U147 ( .A(encode_out8_1_shift[6]), .B(encode_out8_2_shift[6]), .Y(
        \add_264/carry[7] ) );
  XOR2X1 U148 ( .A(encode_out8_2_shift[6]), .B(encode_out8_1_shift[6]), .Y(
        N246) );
endmodule


module FF_16_0 ( clk, reset, stall, din, dout );
  input [15:0] din;
  output [15:0] dout;
  input clk, reset, stall;
  wire   n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30,
         n31, n32, n33, n1, n34, n35;

  DFFRX1 \dout_reg[15]  ( .D(n33), .CK(clk), .RN(n1), .Q(dout[15]), .QN(n17)
         );
  DFFRX1 \dout_reg[14]  ( .D(n32), .CK(clk), .RN(n1), .Q(dout[14]), .QN(n16)
         );
  DFFRX1 \dout_reg[12]  ( .D(n30), .CK(clk), .RN(n1), .Q(dout[12]), .QN(n14)
         );
  DFFRX1 \dout_reg[13]  ( .D(n31), .CK(clk), .RN(n1), .Q(dout[13]), .QN(n15)
         );
  DFFRX1 \dout_reg[8]  ( .D(n26), .CK(clk), .RN(n1), .Q(dout[8]), .QN(n10) );
  DFFRX1 \dout_reg[11]  ( .D(n29), .CK(clk), .RN(n1), .Q(dout[11]), .QN(n13)
         );
  DFFRX1 \dout_reg[10]  ( .D(n28), .CK(clk), .RN(n1), .Q(dout[10]), .QN(n12)
         );
  DFFRX1 \dout_reg[9]  ( .D(n27), .CK(clk), .RN(n1), .Q(dout[9]), .QN(n11) );
  DFFRX1 \dout_reg[7]  ( .D(n25), .CK(clk), .RN(n1), .Q(dout[7]), .QN(n9) );
  DFFRX1 \dout_reg[6]  ( .D(n24), .CK(clk), .RN(n1), .Q(dout[6]), .QN(n8) );
  DFFRX1 \dout_reg[4]  ( .D(n22), .CK(clk), .RN(n1), .Q(dout[4]), .QN(n6) );
  DFFRX1 \dout_reg[5]  ( .D(n23), .CK(clk), .RN(n1), .Q(dout[5]), .QN(n7) );
  DFFRX1 \dout_reg[0]  ( .D(n18), .CK(clk), .RN(n34), .Q(dout[0]), .QN(n2) );
  DFFRX1 \dout_reg[3]  ( .D(n21), .CK(clk), .RN(n34), .Q(dout[3]), .QN(n5) );
  DFFRX1 \dout_reg[2]  ( .D(n20), .CK(clk), .RN(n34), .Q(dout[2]), .QN(n4) );
  DFFRX1 \dout_reg[1]  ( .D(n19), .CK(clk), .RN(n34), .Q(dout[1]), .QN(n3) );
  CLKINVX1 U2 ( .A(stall), .Y(n35) );
  OAI2BB2XL U3 ( .B0(n2), .B1(n35), .A0N(din[0]), .A1N(n35), .Y(n18) );
  OAI2BB2XL U4 ( .B0(n3), .B1(n35), .A0N(din[1]), .A1N(n35), .Y(n19) );
  OAI2BB2XL U5 ( .B0(n4), .B1(n35), .A0N(din[2]), .A1N(n35), .Y(n20) );
  OAI2BB2XL U6 ( .B0(n5), .B1(n35), .A0N(din[3]), .A1N(n35), .Y(n21) );
  OAI2BB2XL U7 ( .B0(n6), .B1(n35), .A0N(din[4]), .A1N(n35), .Y(n22) );
  OAI2BB2XL U8 ( .B0(n7), .B1(n35), .A0N(din[5]), .A1N(n35), .Y(n23) );
  OAI2BB2XL U9 ( .B0(n8), .B1(n35), .A0N(din[6]), .A1N(n35), .Y(n24) );
  OAI2BB2XL U10 ( .B0(n9), .B1(n35), .A0N(din[7]), .A1N(n35), .Y(n25) );
  OAI2BB2XL U11 ( .B0(n10), .B1(n35), .A0N(din[8]), .A1N(n35), .Y(n26) );
  OAI2BB2XL U12 ( .B0(n11), .B1(n35), .A0N(din[9]), .A1N(n35), .Y(n27) );
  OAI2BB2XL U13 ( .B0(n12), .B1(n35), .A0N(din[10]), .A1N(n35), .Y(n28) );
  OAI2BB2XL U14 ( .B0(n13), .B1(n35), .A0N(din[11]), .A1N(n35), .Y(n29) );
  OAI2BB2XL U15 ( .B0(n14), .B1(n35), .A0N(din[12]), .A1N(n35), .Y(n30) );
  OAI2BB2XL U16 ( .B0(n15), .B1(n35), .A0N(din[13]), .A1N(n35), .Y(n31) );
  OAI2BB2XL U17 ( .B0(n16), .B1(n35), .A0N(din[14]), .A1N(n35), .Y(n32) );
  OAI2BB2XL U18 ( .B0(n17), .B1(n35), .A0N(din[15]), .A1N(n35), .Y(n33) );
  CLKBUFX3 U19 ( .A(reset), .Y(n1) );
  CLKBUFX3 U20 ( .A(reset), .Y(n34) );
endmodule


module FF_16_1 ( clk, reset, stall, din, dout );
  input [15:0] din;
  output [15:0] dout;
  input clk, reset, stall;
  wire   n1, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44, n45, n46,
         n47, n48, n49, n50, n51, n52, n53, n54, n55, n56, n57, n58, n59, n60,
         n61, n62, n63, n64, n65, n66, n67;

  DFFRX1 \dout_reg[14]  ( .D(n37), .CK(clk), .RN(n1), .Q(dout[14]), .QN(n53)
         );
  DFFRX1 \dout_reg[15]  ( .D(n36), .CK(clk), .RN(n1), .Q(dout[15]), .QN(n52)
         );
  DFFRX1 \dout_reg[13]  ( .D(n38), .CK(clk), .RN(n1), .Q(dout[13]), .QN(n54)
         );
  DFFRX1 \dout_reg[12]  ( .D(n39), .CK(clk), .RN(n1), .Q(dout[12]), .QN(n55)
         );
  DFFRX1 \dout_reg[11]  ( .D(n40), .CK(clk), .RN(n1), .Q(dout[11]), .QN(n56)
         );
  DFFRX1 \dout_reg[10]  ( .D(n41), .CK(clk), .RN(n1), .Q(dout[10]), .QN(n57)
         );
  DFFRX1 \dout_reg[9]  ( .D(n42), .CK(clk), .RN(n1), .Q(dout[9]), .QN(n58) );
  DFFRX1 \dout_reg[8]  ( .D(n43), .CK(clk), .RN(n1), .Q(dout[8]), .QN(n59) );
  DFFRX1 \dout_reg[7]  ( .D(n44), .CK(clk), .RN(n1), .Q(dout[7]), .QN(n60) );
  DFFRX1 \dout_reg[6]  ( .D(n45), .CK(clk), .RN(n1), .Q(dout[6]), .QN(n61) );
  DFFRX1 \dout_reg[5]  ( .D(n46), .CK(clk), .RN(n1), .Q(dout[5]), .QN(n62) );
  DFFRX1 \dout_reg[4]  ( .D(n47), .CK(clk), .RN(n1), .Q(dout[4]), .QN(n63) );
  DFFRX1 \dout_reg[3]  ( .D(n48), .CK(clk), .RN(n34), .Q(dout[3]), .QN(n64) );
  DFFRX1 \dout_reg[2]  ( .D(n49), .CK(clk), .RN(n34), .Q(dout[2]), .QN(n65) );
  DFFRX1 \dout_reg[1]  ( .D(n50), .CK(clk), .RN(n34), .Q(dout[1]), .QN(n66) );
  DFFRX1 \dout_reg[0]  ( .D(n51), .CK(clk), .RN(n34), .Q(dout[0]), .QN(n67) );
  CLKINVX1 U2 ( .A(stall), .Y(n35) );
  OAI2BB2XL U3 ( .B0(n67), .B1(n35), .A0N(din[0]), .A1N(n35), .Y(n51) );
  OAI2BB2XL U4 ( .B0(n66), .B1(n35), .A0N(din[1]), .A1N(n35), .Y(n50) );
  OAI2BB2XL U5 ( .B0(n65), .B1(n35), .A0N(din[2]), .A1N(n35), .Y(n49) );
  OAI2BB2XL U6 ( .B0(n64), .B1(n35), .A0N(din[3]), .A1N(n35), .Y(n48) );
  OAI2BB2XL U7 ( .B0(n63), .B1(n35), .A0N(din[4]), .A1N(n35), .Y(n47) );
  OAI2BB2XL U8 ( .B0(n62), .B1(n35), .A0N(din[5]), .A1N(n35), .Y(n46) );
  OAI2BB2XL U9 ( .B0(n61), .B1(n35), .A0N(din[6]), .A1N(n35), .Y(n45) );
  OAI2BB2XL U10 ( .B0(n60), .B1(n35), .A0N(din[7]), .A1N(n35), .Y(n44) );
  OAI2BB2XL U11 ( .B0(n59), .B1(n35), .A0N(din[8]), .A1N(n35), .Y(n43) );
  OAI2BB2XL U12 ( .B0(n58), .B1(n35), .A0N(din[9]), .A1N(n35), .Y(n42) );
  OAI2BB2XL U13 ( .B0(n57), .B1(n35), .A0N(din[10]), .A1N(n35), .Y(n41) );
  OAI2BB2XL U14 ( .B0(n56), .B1(n35), .A0N(din[11]), .A1N(n35), .Y(n40) );
  OAI2BB2XL U15 ( .B0(n55), .B1(n35), .A0N(din[12]), .A1N(n35), .Y(n39) );
  OAI2BB2XL U16 ( .B0(n54), .B1(n35), .A0N(din[13]), .A1N(n35), .Y(n38) );
  OAI2BB2XL U17 ( .B0(n53), .B1(n35), .A0N(din[14]), .A1N(n35), .Y(n37) );
  OAI2BB2XL U18 ( .B0(n52), .B1(n35), .A0N(din[15]), .A1N(n35), .Y(n36) );
  CLKBUFX3 U19 ( .A(reset), .Y(n1) );
  CLKBUFX3 U20 ( .A(reset), .Y(n34) );
endmodule


module FF_0 ( clk, reset, stall, din, dout );
  input [2:0] din;
  output [2:0] dout;
  input clk, reset, stall;
  wire   n2, n3, n4, n5, n6, n7, n1;

  DFFRX1 \dout_reg[2]  ( .D(n7), .CK(clk), .RN(reset), .Q(dout[2]), .QN(n4) );
  DFFRX1 \dout_reg[1]  ( .D(n6), .CK(clk), .RN(reset), .Q(dout[1]), .QN(n3) );
  DFFRX1 \dout_reg[0]  ( .D(n5), .CK(clk), .RN(reset), .Q(dout[0]), .QN(n2) );
  OAI2BB2XL U2 ( .B0(n2), .B1(n1), .A0N(din[0]), .A1N(n1), .Y(n5) );
  OAI2BB2XL U3 ( .B0(n3), .B1(n1), .A0N(din[1]), .A1N(n1), .Y(n6) );
  OAI2BB2XL U4 ( .B0(n4), .B1(n1), .A0N(din[2]), .A1N(n1), .Y(n7) );
  CLKINVX1 U5 ( .A(stall), .Y(n1) );
endmodule


module FF_1 ( clk, reset, stall, din, dout );
  input [2:0] din;
  output [2:0] dout;
  input clk, reset, stall;
  wire   n1, n8, n9, n10, n11, n12, n13;

  DFFRX1 \dout_reg[0]  ( .D(n10), .CK(clk), .RN(reset), .Q(dout[0]), .QN(n13)
         );
  DFFRX1 \dout_reg[1]  ( .D(n9), .CK(clk), .RN(reset), .Q(dout[1]), .QN(n12)
         );
  DFFRX1 \dout_reg[2]  ( .D(n8), .CK(clk), .RN(reset), .Q(dout[2]), .QN(n11)
         );
  OAI2BB2XL U2 ( .B0(n13), .B1(n1), .A0N(din[0]), .A1N(n1), .Y(n10) );
  OAI2BB2XL U3 ( .B0(n12), .B1(n1), .A0N(din[1]), .A1N(n1), .Y(n9) );
  OAI2BB2XL U4 ( .B0(n11), .B1(n1), .A0N(din[2]), .A1N(n1), .Y(n8) );
  CLKINVX1 U5 ( .A(stall), .Y(n1) );
endmodule


module saturation_compare_16 ( din, dout );
  input [39:0] din;
  output [31:0] dout;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9;

  OAI21XL U3 ( .A0(n8), .A1(n9), .B0(din[39]), .Y(n1) );
  CLKBUFX3 U4 ( .A(n1), .Y(n4) );
  CLKBUFX3 U5 ( .A(n1), .Y(n5) );
  AOI21X1 U6 ( .A0(n2), .A1(n3), .B0(din[39]), .Y(n6) );
  NOR4X1 U7 ( .A(din[35]), .B(din[36]), .C(din[37]), .D(din[38]), .Y(n2) );
  NOR4X1 U8 ( .A(din[31]), .B(din[32]), .C(din[33]), .D(din[34]), .Y(n3) );
  AO21X1 U9 ( .A0(din[9]), .A1(n5), .B0(n6), .Y(dout[9]) );
  AO21X1 U10 ( .A0(din[8]), .A1(n4), .B0(n6), .Y(dout[8]) );
  AO21X1 U11 ( .A0(din[7]), .A1(n4), .B0(n6), .Y(dout[7]) );
  AO21X1 U12 ( .A0(din[6]), .A1(n4), .B0(n6), .Y(dout[6]) );
  AO21X1 U13 ( .A0(din[5]), .A1(n4), .B0(n6), .Y(dout[5]) );
  AO21X1 U14 ( .A0(din[4]), .A1(n4), .B0(n6), .Y(dout[4]) );
  AO21X1 U15 ( .A0(din[3]), .A1(n4), .B0(n6), .Y(dout[3]) );
  OAI21XL U16 ( .A0(n6), .A1(n7), .B0(n4), .Y(dout[31]) );
  CLKINVX1 U17 ( .A(din[31]), .Y(n7) );
  AO21X1 U18 ( .A0(din[30]), .A1(n4), .B0(n6), .Y(dout[30]) );
  AO21X1 U19 ( .A0(din[2]), .A1(n4), .B0(n6), .Y(dout[2]) );
  AO21X1 U20 ( .A0(din[29]), .A1(n4), .B0(n6), .Y(dout[29]) );
  AO21X1 U21 ( .A0(din[28]), .A1(n4), .B0(n6), .Y(dout[28]) );
  AO21X1 U22 ( .A0(din[27]), .A1(n4), .B0(n6), .Y(dout[27]) );
  AO21X1 U23 ( .A0(din[26]), .A1(n4), .B0(n6), .Y(dout[26]) );
  AO21X1 U24 ( .A0(din[25]), .A1(n4), .B0(n6), .Y(dout[25]) );
  AO21X1 U25 ( .A0(din[24]), .A1(n4), .B0(n6), .Y(dout[24]) );
  AO21X1 U26 ( .A0(din[23]), .A1(n5), .B0(n6), .Y(dout[23]) );
  AO21X1 U27 ( .A0(din[22]), .A1(n5), .B0(n6), .Y(dout[22]) );
  AO21X1 U28 ( .A0(din[21]), .A1(n5), .B0(n6), .Y(dout[21]) );
  AO21X1 U29 ( .A0(din[20]), .A1(n5), .B0(n6), .Y(dout[20]) );
  AO21X1 U30 ( .A0(din[1]), .A1(n5), .B0(n6), .Y(dout[1]) );
  AO21X1 U31 ( .A0(din[19]), .A1(n5), .B0(n6), .Y(dout[19]) );
  AO21X1 U32 ( .A0(din[18]), .A1(n5), .B0(n6), .Y(dout[18]) );
  AO21X1 U33 ( .A0(din[17]), .A1(n5), .B0(n6), .Y(dout[17]) );
  AO21X1 U34 ( .A0(din[16]), .A1(n5), .B0(n6), .Y(dout[16]) );
  AO21X1 U35 ( .A0(din[15]), .A1(n5), .B0(n6), .Y(dout[15]) );
  AO21X1 U36 ( .A0(din[14]), .A1(n5), .B0(n6), .Y(dout[14]) );
  AO21X1 U37 ( .A0(din[13]), .A1(n5), .B0(n6), .Y(dout[13]) );
  AO21X1 U38 ( .A0(din[12]), .A1(n5), .B0(n6), .Y(dout[12]) );
  AO21X1 U39 ( .A0(din[11]), .A1(n5), .B0(n6), .Y(dout[11]) );
  AO21X1 U40 ( .A0(din[10]), .A1(n5), .B0(n6), .Y(dout[10]) );
  AO21X1 U41 ( .A0(din[0]), .A1(n4), .B0(n6), .Y(dout[0]) );
  NAND4X1 U42 ( .A(din[38]), .B(din[37]), .C(din[36]), .D(din[35]), .Y(n9) );
  NAND4X1 U43 ( .A(din[34]), .B(din[33]), .C(din[32]), .D(din[31]), .Y(n8) );
endmodule


module saturation_compare_8_0 ( din, dout );
  input [19:0] din;
  output [15:0] dout;
  wire   \din[19] , n1, n2, n3, n4;
  assign \din[19]  = din[19];
  assign dout[15] = \din[19] ;

  OR2X1 U3 ( .A(\din[19] ), .B(n1), .Y(n3) );
  NOR4X1 U4 ( .A(din[15]), .B(din[16]), .C(din[17]), .D(din[18]), .Y(n1) );
  NAND2X1 U5 ( .A(\din[19] ), .B(n4), .Y(n2) );
  OAI2BB1X1 U6 ( .A0N(din[9]), .A1N(n2), .B0(n3), .Y(dout[9]) );
  OAI2BB1X1 U7 ( .A0N(din[8]), .A1N(n2), .B0(n3), .Y(dout[8]) );
  OAI2BB1X1 U8 ( .A0N(din[7]), .A1N(n2), .B0(n3), .Y(dout[7]) );
  OAI2BB1X1 U9 ( .A0N(din[6]), .A1N(n2), .B0(n3), .Y(dout[6]) );
  OAI2BB1X1 U10 ( .A0N(din[5]), .A1N(n2), .B0(n3), .Y(dout[5]) );
  OAI2BB1X1 U11 ( .A0N(din[4]), .A1N(n2), .B0(n3), .Y(dout[4]) );
  OAI2BB1X1 U12 ( .A0N(din[3]), .A1N(n2), .B0(n3), .Y(dout[3]) );
  OAI2BB1X1 U13 ( .A0N(din[2]), .A1N(n2), .B0(n3), .Y(dout[2]) );
  OAI2BB1X1 U14 ( .A0N(din[1]), .A1N(n2), .B0(n3), .Y(dout[1]) );
  OAI2BB1X1 U15 ( .A0N(din[14]), .A1N(n2), .B0(n3), .Y(dout[14]) );
  OAI2BB1X1 U16 ( .A0N(din[13]), .A1N(n2), .B0(n3), .Y(dout[13]) );
  OAI2BB1X1 U17 ( .A0N(din[12]), .A1N(n2), .B0(n3), .Y(dout[12]) );
  OAI2BB1X1 U18 ( .A0N(din[11]), .A1N(n2), .B0(n3), .Y(dout[11]) );
  OAI2BB1X1 U19 ( .A0N(din[10]), .A1N(n2), .B0(n3), .Y(dout[10]) );
  OAI2BB1X1 U20 ( .A0N(din[0]), .A1N(n2), .B0(n3), .Y(dout[0]) );
  NAND4X1 U21 ( .A(din[18]), .B(din[17]), .C(din[16]), .D(din[15]), .Y(n4) );
endmodule


module saturation_compare_8_1 ( din, dout );
  input [19:0] din;
  output [15:0] dout;
  wire   \din[19] , n1, n2, n3, n4;
  assign \din[19]  = din[19];
  assign dout[15] = \din[19] ;

  OR2X1 U3 ( .A(\din[19] ), .B(n1), .Y(n3) );
  NOR4X1 U4 ( .A(din[15]), .B(din[16]), .C(din[17]), .D(din[18]), .Y(n1) );
  NAND2X1 U5 ( .A(\din[19] ), .B(n4), .Y(n2) );
  OAI2BB1X1 U6 ( .A0N(din[9]), .A1N(n2), .B0(n3), .Y(dout[9]) );
  OAI2BB1X1 U7 ( .A0N(din[8]), .A1N(n2), .B0(n3), .Y(dout[8]) );
  OAI2BB1X1 U8 ( .A0N(din[7]), .A1N(n2), .B0(n3), .Y(dout[7]) );
  OAI2BB1X1 U9 ( .A0N(din[6]), .A1N(n2), .B0(n3), .Y(dout[6]) );
  OAI2BB1X1 U10 ( .A0N(din[5]), .A1N(n2), .B0(n3), .Y(dout[5]) );
  OAI2BB1X1 U11 ( .A0N(din[4]), .A1N(n2), .B0(n3), .Y(dout[4]) );
  OAI2BB1X1 U12 ( .A0N(din[3]), .A1N(n2), .B0(n3), .Y(dout[3]) );
  OAI2BB1X1 U13 ( .A0N(din[2]), .A1N(n2), .B0(n3), .Y(dout[2]) );
  OAI2BB1X1 U14 ( .A0N(din[1]), .A1N(n2), .B0(n3), .Y(dout[1]) );
  OAI2BB1X1 U15 ( .A0N(din[14]), .A1N(n2), .B0(n3), .Y(dout[14]) );
  OAI2BB1X1 U16 ( .A0N(din[13]), .A1N(n2), .B0(n3), .Y(dout[13]) );
  OAI2BB1X1 U17 ( .A0N(din[12]), .A1N(n2), .B0(n3), .Y(dout[12]) );
  OAI2BB1X1 U18 ( .A0N(din[11]), .A1N(n2), .B0(n3), .Y(dout[11]) );
  OAI2BB1X1 U19 ( .A0N(din[10]), .A1N(n2), .B0(n3), .Y(dout[10]) );
  OAI2BB1X1 U20 ( .A0N(din[0]), .A1N(n2), .B0(n3), .Y(dout[0]) );
  NAND4X1 U21 ( .A(din[18]), .B(din[17]), .C(din[16]), .D(din[15]), .Y(n4) );
endmodule


module saturator ( clk, reset, stall, result, protect, instruction, saturation
 );
  input [31:0] result;
  input [7:0] protect;
  input [2:0] instruction;
  output [31:0] saturation;
  input clk, reset, stall;
  wire   n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30,
         n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44,
         n45, n46, n47, n48, n49, n50, n51, n52, n53, n54, n55, n56, n57, n58,
         n59, n60, n61, n62, n63, n64, n65, n66, n67, n68, n69, n70, n71, n72,
         n73, n74, n75, n76, n77, n78, n79, n80, n81, n82, n83, n84, n85, n86,
         n87, n88, n89, n90, n91, n92, n93, n94, n95, n96, n97, n98, n99, n1,
         n100, n101, n102, n103, n104, n105, n106, n107, n108, n109, n110,
         n111, n112;
  wire   [31:0] sat16;
  wire   [15:0] sat8_1;
  wire   [15:0] sat8_2;

  saturation_compare_16 sc16_1 ( .din({protect, result}), .dout(sat16) );
  saturation_compare_8_0 sc8_1 ( .din({protect[7:4], result[31:16]}), .dout(
        sat8_1) );
  saturation_compare_8_1 sc8_2 ( .din({protect[3:0], result[15:0]}), .dout(
        sat8_2) );
  DFFRX1 \saturation_reg[30]  ( .D(n98), .CK(clk), .RN(n111), .Q(
        saturation[30]), .QN(n37) );
  DFFRX1 \saturation_reg[29]  ( .D(n97), .CK(clk), .RN(n111), .Q(
        saturation[29]), .QN(n38) );
  DFFRX1 \saturation_reg[28]  ( .D(n96), .CK(clk), .RN(n111), .Q(
        saturation[28]), .QN(n39) );
  DFFRX1 \saturation_reg[27]  ( .D(n95), .CK(clk), .RN(n111), .Q(
        saturation[27]), .QN(n40) );
  DFFRX1 \saturation_reg[26]  ( .D(n94), .CK(clk), .RN(n111), .Q(
        saturation[26]), .QN(n41) );
  DFFRX1 \saturation_reg[25]  ( .D(n93), .CK(clk), .RN(n111), .Q(
        saturation[25]), .QN(n42) );
  DFFRX1 \saturation_reg[24]  ( .D(n92), .CK(clk), .RN(n111), .Q(
        saturation[24]), .QN(n43) );
  DFFRX1 \saturation_reg[23]  ( .D(n91), .CK(clk), .RN(n110), .Q(
        saturation[23]), .QN(n44) );
  DFFRX1 \saturation_reg[22]  ( .D(n90), .CK(clk), .RN(n110), .Q(
        saturation[22]), .QN(n45) );
  DFFRX1 \saturation_reg[21]  ( .D(n89), .CK(clk), .RN(n110), .Q(
        saturation[21]), .QN(n46) );
  DFFRX1 \saturation_reg[20]  ( .D(n88), .CK(clk), .RN(n110), .Q(
        saturation[20]), .QN(n47) );
  DFFRX1 \saturation_reg[19]  ( .D(n87), .CK(clk), .RN(n110), .Q(
        saturation[19]), .QN(n48) );
  DFFRX1 \saturation_reg[18]  ( .D(n86), .CK(clk), .RN(n110), .Q(
        saturation[18]), .QN(n49) );
  DFFRX1 \saturation_reg[17]  ( .D(n85), .CK(clk), .RN(n110), .Q(
        saturation[17]), .QN(n50) );
  DFFRX1 \saturation_reg[16]  ( .D(n84), .CK(clk), .RN(n110), .Q(
        saturation[16]), .QN(n51) );
  DFFRX1 \saturation_reg[14]  ( .D(n82), .CK(clk), .RN(n110), .Q(
        saturation[14]), .QN(n53) );
  DFFRX1 \saturation_reg[13]  ( .D(n81), .CK(clk), .RN(n110), .Q(
        saturation[13]), .QN(n54) );
  DFFRX1 \saturation_reg[12]  ( .D(n80), .CK(clk), .RN(n110), .Q(
        saturation[12]), .QN(n55) );
  DFFRX1 \saturation_reg[11]  ( .D(n79), .CK(clk), .RN(n109), .Q(
        saturation[11]), .QN(n56) );
  DFFRX1 \saturation_reg[10]  ( .D(n78), .CK(clk), .RN(n109), .Q(
        saturation[10]), .QN(n57) );
  DFFRX1 \saturation_reg[9]  ( .D(n77), .CK(clk), .RN(n109), .Q(saturation[9]), 
        .QN(n58) );
  DFFRX1 \saturation_reg[8]  ( .D(n76), .CK(clk), .RN(n109), .Q(saturation[8]), 
        .QN(n59) );
  DFFRX1 \saturation_reg[7]  ( .D(n75), .CK(clk), .RN(n109), .Q(saturation[7]), 
        .QN(n60) );
  DFFRX1 \saturation_reg[6]  ( .D(n74), .CK(clk), .RN(n109), .Q(saturation[6]), 
        .QN(n61) );
  DFFRX1 \saturation_reg[5]  ( .D(n73), .CK(clk), .RN(n109), .Q(saturation[5]), 
        .QN(n62) );
  DFFRX1 \saturation_reg[4]  ( .D(n72), .CK(clk), .RN(n109), .Q(saturation[4]), 
        .QN(n63) );
  DFFRX1 \saturation_reg[3]  ( .D(n71), .CK(clk), .RN(n109), .Q(saturation[3]), 
        .QN(n64) );
  DFFRX1 \saturation_reg[2]  ( .D(n70), .CK(clk), .RN(n109), .Q(saturation[2]), 
        .QN(n65) );
  DFFRX1 \saturation_reg[1]  ( .D(n69), .CK(clk), .RN(n109), .Q(saturation[1]), 
        .QN(n66) );
  DFFRX1 \saturation_reg[0]  ( .D(n68), .CK(clk), .RN(n109), .Q(saturation[0]), 
        .QN(n67) );
  DFFRX1 \saturation_reg[15]  ( .D(n83), .CK(clk), .RN(n110), .Q(
        saturation[15]), .QN(n52) );
  DFFRX1 \saturation_reg[31]  ( .D(n99), .CK(clk), .RN(n111), .Q(
        saturation[31]), .QN(n36) );
  CLKBUFX3 U2 ( .A(n3), .Y(n105) );
  CLKBUFX3 U3 ( .A(n3), .Y(n106) );
  CLKBUFX3 U4 ( .A(n4), .Y(n102) );
  CLKBUFX3 U5 ( .A(n3), .Y(n107) );
  CLKBUFX3 U6 ( .A(n4), .Y(n103) );
  CLKBUFX3 U7 ( .A(n4), .Y(n104) );
  CLKBUFX3 U8 ( .A(n112), .Y(n1) );
  CLKBUFX3 U9 ( .A(n112), .Y(n100) );
  CLKBUFX3 U10 ( .A(n112), .Y(n101) );
  CLKBUFX3 U11 ( .A(n108), .Y(n109) );
  CLKBUFX3 U12 ( .A(n108), .Y(n110) );
  CLKBUFX3 U13 ( .A(n108), .Y(n111) );
  OAI21XL U14 ( .A0(n67), .A1(n101), .B0(n2), .Y(n68) );
  AOI22X1 U15 ( .A0(sat16[0]), .A1(n107), .B0(sat8_2[0]), .B1(n104), .Y(n2) );
  OAI21XL U16 ( .A0(n1), .A1(n66), .B0(n5), .Y(n69) );
  AOI22X1 U17 ( .A0(sat16[1]), .A1(n107), .B0(sat8_2[1]), .B1(n104), .Y(n5) );
  OAI21XL U18 ( .A0(n1), .A1(n65), .B0(n6), .Y(n70) );
  AOI22X1 U19 ( .A0(sat16[2]), .A1(n107), .B0(sat8_2[2]), .B1(n104), .Y(n6) );
  OAI21XL U20 ( .A0(n1), .A1(n64), .B0(n7), .Y(n71) );
  AOI22X1 U21 ( .A0(sat16[3]), .A1(n107), .B0(sat8_2[3]), .B1(n104), .Y(n7) );
  OAI21XL U22 ( .A0(n1), .A1(n63), .B0(n8), .Y(n72) );
  AOI22X1 U23 ( .A0(sat16[4]), .A1(n107), .B0(sat8_2[4]), .B1(n104), .Y(n8) );
  OAI21XL U24 ( .A0(n1), .A1(n62), .B0(n9), .Y(n73) );
  AOI22X1 U25 ( .A0(sat16[5]), .A1(n107), .B0(sat8_2[5]), .B1(n104), .Y(n9) );
  OAI21XL U26 ( .A0(n1), .A1(n61), .B0(n10), .Y(n74) );
  AOI22X1 U27 ( .A0(sat16[6]), .A1(n106), .B0(sat8_2[6]), .B1(n104), .Y(n10)
         );
  OAI21XL U28 ( .A0(n1), .A1(n60), .B0(n11), .Y(n75) );
  AOI22X1 U29 ( .A0(sat16[7]), .A1(n106), .B0(sat8_2[7]), .B1(n104), .Y(n11)
         );
  OAI21XL U30 ( .A0(n100), .A1(n59), .B0(n12), .Y(n76) );
  AOI22X1 U31 ( .A0(sat16[8]), .A1(n106), .B0(sat8_2[8]), .B1(n103), .Y(n12)
         );
  OAI21XL U32 ( .A0(n1), .A1(n58), .B0(n13), .Y(n77) );
  AOI22X1 U33 ( .A0(sat16[9]), .A1(n106), .B0(sat8_2[9]), .B1(n103), .Y(n13)
         );
  OAI21XL U34 ( .A0(n1), .A1(n57), .B0(n14), .Y(n78) );
  AOI22X1 U35 ( .A0(sat16[10]), .A1(n106), .B0(sat8_2[10]), .B1(n103), .Y(n14)
         );
  OAI21XL U36 ( .A0(n1), .A1(n56), .B0(n15), .Y(n79) );
  AOI22X1 U37 ( .A0(sat16[11]), .A1(n106), .B0(sat8_2[11]), .B1(n103), .Y(n15)
         );
  OAI21XL U38 ( .A0(n1), .A1(n55), .B0(n16), .Y(n80) );
  AOI22X1 U39 ( .A0(sat16[12]), .A1(n106), .B0(sat8_2[12]), .B1(n103), .Y(n16)
         );
  OAI21XL U40 ( .A0(n1), .A1(n54), .B0(n17), .Y(n81) );
  AOI22X1 U41 ( .A0(sat16[13]), .A1(n106), .B0(sat8_2[13]), .B1(n103), .Y(n17)
         );
  OAI21XL U42 ( .A0(n100), .A1(n53), .B0(n18), .Y(n82) );
  AOI22X1 U43 ( .A0(sat16[14]), .A1(n106), .B0(sat8_2[14]), .B1(n103), .Y(n18)
         );
  OAI21XL U44 ( .A0(n100), .A1(n51), .B0(n20), .Y(n84) );
  AOI22X1 U45 ( .A0(sat16[16]), .A1(n106), .B0(sat8_1[0]), .B1(n103), .Y(n20)
         );
  OAI21XL U46 ( .A0(n100), .A1(n50), .B0(n21), .Y(n85) );
  AOI22X1 U47 ( .A0(sat16[17]), .A1(n106), .B0(sat8_1[1]), .B1(n103), .Y(n21)
         );
  OAI21XL U48 ( .A0(n100), .A1(n49), .B0(n22), .Y(n86) );
  AOI22X1 U49 ( .A0(sat16[18]), .A1(n106), .B0(sat8_1[2]), .B1(n103), .Y(n22)
         );
  OAI21XL U50 ( .A0(n100), .A1(n48), .B0(n23), .Y(n87) );
  AOI22X1 U51 ( .A0(sat16[19]), .A1(n105), .B0(sat8_1[3]), .B1(n103), .Y(n23)
         );
  OAI21XL U52 ( .A0(n100), .A1(n47), .B0(n24), .Y(n88) );
  AOI22X1 U53 ( .A0(sat16[20]), .A1(n105), .B0(sat8_1[4]), .B1(n102), .Y(n24)
         );
  OAI21XL U54 ( .A0(n100), .A1(n46), .B0(n25), .Y(n89) );
  AOI22X1 U55 ( .A0(sat16[21]), .A1(n105), .B0(sat8_1[5]), .B1(n102), .Y(n25)
         );
  OAI21XL U56 ( .A0(n100), .A1(n45), .B0(n26), .Y(n90) );
  AOI22X1 U57 ( .A0(sat16[22]), .A1(n105), .B0(sat8_1[6]), .B1(n102), .Y(n26)
         );
  OAI21XL U58 ( .A0(n100), .A1(n44), .B0(n27), .Y(n91) );
  AOI22X1 U59 ( .A0(sat16[23]), .A1(n105), .B0(sat8_1[7]), .B1(n102), .Y(n27)
         );
  OAI21XL U60 ( .A0(n100), .A1(n43), .B0(n28), .Y(n92) );
  AOI22X1 U61 ( .A0(sat16[24]), .A1(n105), .B0(sat8_1[8]), .B1(n102), .Y(n28)
         );
  OAI21XL U62 ( .A0(n101), .A1(n42), .B0(n29), .Y(n93) );
  AOI22X1 U63 ( .A0(sat16[25]), .A1(n105), .B0(sat8_1[9]), .B1(n102), .Y(n29)
         );
  OAI21XL U64 ( .A0(n101), .A1(n41), .B0(n30), .Y(n94) );
  AOI22X1 U65 ( .A0(sat16[26]), .A1(n105), .B0(sat8_1[10]), .B1(n102), .Y(n30)
         );
  OAI21XL U66 ( .A0(n101), .A1(n40), .B0(n31), .Y(n95) );
  AOI22X1 U67 ( .A0(sat16[27]), .A1(n105), .B0(sat8_1[11]), .B1(n102), .Y(n31)
         );
  OAI21XL U68 ( .A0(n101), .A1(n39), .B0(n32), .Y(n96) );
  AOI22X1 U69 ( .A0(sat16[28]), .A1(n105), .B0(sat8_1[12]), .B1(n102), .Y(n32)
         );
  OAI21XL U70 ( .A0(n101), .A1(n38), .B0(n33), .Y(n97) );
  AOI22X1 U71 ( .A0(sat16[29]), .A1(n105), .B0(sat8_1[13]), .B1(n102), .Y(n33)
         );
  OAI21XL U72 ( .A0(n101), .A1(n37), .B0(n34), .Y(n98) );
  AOI22X1 U73 ( .A0(sat16[30]), .A1(n105), .B0(sat8_1[14]), .B1(n102), .Y(n34)
         );
  OAI21XL U74 ( .A0(n100), .A1(n52), .B0(n19), .Y(n83) );
  AOI22X1 U75 ( .A0(sat16[15]), .A1(n106), .B0(sat8_2[15]), .B1(n103), .Y(n19)
         );
  OAI21XL U76 ( .A0(n101), .A1(n36), .B0(n35), .Y(n99) );
  AOI22X1 U77 ( .A0(sat16[31]), .A1(n105), .B0(sat8_1[15]), .B1(n102), .Y(n35)
         );
  NOR2X1 U78 ( .A(instruction[2]), .B(stall), .Y(n3) );
  AND2X2 U79 ( .A(instruction[2]), .B(n101), .Y(n4) );
  CLKINVX1 U80 ( .A(stall), .Y(n112) );
  CLKBUFX3 U81 ( .A(reset), .Y(n108) );
endmodule


module accumulator ( clk, reset, stall, result, protect, protect_accum, 
        result_accum );
  input [31:0] result;
  input [7:0] protect;
  output [7:0] protect_accum;
  output [31:0] result_accum;
  input clk, reset, stall;
  wire   n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30,
         n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44,
         n45, n46, n47, n48, n49, n50, n51, n52, n53, n54, n55, n56, n57, n58,
         n59, n60, n61, n62, n63, n64, n65, n66, n67, n68, n69, n70, n71, n72,
         n73, n74, n75, n76, n77, n78, n79, n80, n81, n1, n82, n83, n84, n85,
         n86, n87, n88, n89, n90, n91, n92;

  DFFRX1 \protect_accum_reg[7]  ( .D(n81), .CK(clk), .RN(n91), .Q(
        protect_accum[7]), .QN(n2) );
  DFFRX1 \protect_accum_reg[6]  ( .D(n80), .CK(clk), .RN(n91), .Q(
        protect_accum[6]), .QN(n3) );
  DFFRX1 \protect_accum_reg[5]  ( .D(n79), .CK(clk), .RN(n91), .Q(
        protect_accum[5]), .QN(n4) );
  DFFRX1 \protect_accum_reg[4]  ( .D(n78), .CK(clk), .RN(n91), .Q(
        protect_accum[4]), .QN(n5) );
  DFFRX1 \protect_accum_reg[3]  ( .D(n77), .CK(clk), .RN(n90), .Q(
        protect_accum[3]), .QN(n6) );
  DFFRX1 \protect_accum_reg[2]  ( .D(n76), .CK(clk), .RN(n90), .Q(
        protect_accum[2]), .QN(n7) );
  DFFRX1 \protect_accum_reg[1]  ( .D(n75), .CK(clk), .RN(n90), .Q(
        protect_accum[1]), .QN(n8) );
  DFFRX1 \protect_accum_reg[0]  ( .D(n74), .CK(clk), .RN(n90), .Q(
        protect_accum[0]), .QN(n9) );
  DFFRX1 \result_accum_reg[31]  ( .D(n73), .CK(clk), .RN(n90), .Q(
        result_accum[31]), .QN(n10) );
  DFFRX1 \result_accum_reg[30]  ( .D(n72), .CK(clk), .RN(n90), .Q(
        result_accum[30]), .QN(n11) );
  DFFRX1 \result_accum_reg[29]  ( .D(n71), .CK(clk), .RN(n90), .Q(
        result_accum[29]), .QN(n12) );
  DFFRX1 \result_accum_reg[28]  ( .D(n70), .CK(clk), .RN(n90), .Q(
        result_accum[28]), .QN(n13) );
  DFFRX1 \result_accum_reg[27]  ( .D(n69), .CK(clk), .RN(n90), .Q(
        result_accum[27]), .QN(n14) );
  DFFRX1 \result_accum_reg[26]  ( .D(n68), .CK(clk), .RN(n90), .Q(
        result_accum[26]), .QN(n15) );
  DFFRX1 \result_accum_reg[25]  ( .D(n67), .CK(clk), .RN(n90), .Q(
        result_accum[25]), .QN(n16) );
  DFFRX1 \result_accum_reg[24]  ( .D(n66), .CK(clk), .RN(n90), .Q(
        result_accum[24]), .QN(n17) );
  DFFRX1 \result_accum_reg[23]  ( .D(n65), .CK(clk), .RN(n89), .Q(
        result_accum[23]), .QN(n18) );
  DFFRX1 \result_accum_reg[22]  ( .D(n64), .CK(clk), .RN(n89), .Q(
        result_accum[22]), .QN(n19) );
  DFFRX1 \result_accum_reg[21]  ( .D(n63), .CK(clk), .RN(n89), .Q(
        result_accum[21]), .QN(n20) );
  DFFRX1 \result_accum_reg[20]  ( .D(n62), .CK(clk), .RN(n89), .Q(
        result_accum[20]), .QN(n21) );
  DFFRX1 \result_accum_reg[19]  ( .D(n61), .CK(clk), .RN(n89), .Q(
        result_accum[19]), .QN(n22) );
  DFFRX1 \result_accum_reg[18]  ( .D(n60), .CK(clk), .RN(n89), .Q(
        result_accum[18]), .QN(n23) );
  DFFRX1 \result_accum_reg[17]  ( .D(n59), .CK(clk), .RN(n89), .Q(
        result_accum[17]), .QN(n24) );
  DFFRX1 \result_accum_reg[16]  ( .D(n58), .CK(clk), .RN(n89), .Q(
        result_accum[16]), .QN(n25) );
  DFFRX1 \result_accum_reg[15]  ( .D(n57), .CK(clk), .RN(n89), .Q(
        result_accum[15]), .QN(n26) );
  DFFRX1 \result_accum_reg[14]  ( .D(n56), .CK(clk), .RN(n89), .Q(
        result_accum[14]), .QN(n27) );
  DFFRX1 \result_accum_reg[13]  ( .D(n55), .CK(clk), .RN(n89), .Q(
        result_accum[13]), .QN(n28) );
  DFFRX1 \result_accum_reg[12]  ( .D(n54), .CK(clk), .RN(n89), .Q(
        result_accum[12]), .QN(n29) );
  DFFRX1 \result_accum_reg[11]  ( .D(n53), .CK(clk), .RN(n88), .Q(
        result_accum[11]), .QN(n30) );
  DFFRX1 \result_accum_reg[10]  ( .D(n52), .CK(clk), .RN(n88), .Q(
        result_accum[10]), .QN(n31) );
  DFFRX1 \result_accum_reg[9]  ( .D(n51), .CK(clk), .RN(n88), .Q(
        result_accum[9]), .QN(n32) );
  DFFRX1 \result_accum_reg[8]  ( .D(n50), .CK(clk), .RN(n88), .Q(
        result_accum[8]), .QN(n33) );
  DFFRX1 \result_accum_reg[7]  ( .D(n49), .CK(clk), .RN(n88), .Q(
        result_accum[7]), .QN(n34) );
  DFFRX1 \result_accum_reg[6]  ( .D(n48), .CK(clk), .RN(n88), .Q(
        result_accum[6]), .QN(n35) );
  DFFRX1 \result_accum_reg[5]  ( .D(n47), .CK(clk), .RN(n88), .Q(
        result_accum[5]), .QN(n36) );
  DFFRX1 \result_accum_reg[4]  ( .D(n46), .CK(clk), .RN(n88), .Q(
        result_accum[4]), .QN(n37) );
  DFFRX1 \result_accum_reg[3]  ( .D(n45), .CK(clk), .RN(n88), .Q(
        result_accum[3]), .QN(n38) );
  DFFRX1 \result_accum_reg[2]  ( .D(n44), .CK(clk), .RN(n88), .Q(
        result_accum[2]), .QN(n39) );
  DFFRX1 \result_accum_reg[1]  ( .D(n43), .CK(clk), .RN(n88), .Q(
        result_accum[1]), .QN(n40) );
  DFFRX1 \result_accum_reg[0]  ( .D(n42), .CK(clk), .RN(n88), .Q(
        result_accum[0]), .QN(n41) );
  CLKINVX1 U2 ( .A(stall), .Y(n92) );
  CLKBUFX3 U3 ( .A(n92), .Y(n84) );
  CLKBUFX3 U4 ( .A(n92), .Y(n83) );
  CLKBUFX3 U5 ( .A(n92), .Y(n82) );
  CLKBUFX3 U6 ( .A(n92), .Y(n1) );
  CLKBUFX3 U7 ( .A(n86), .Y(n88) );
  CLKBUFX3 U8 ( .A(n86), .Y(n89) );
  CLKBUFX3 U9 ( .A(n86), .Y(n90) );
  CLKBUFX3 U10 ( .A(n92), .Y(n85) );
  OAI2BB2XL U11 ( .B0(n1), .B1(n2), .A0N(protect[7]), .A1N(n84), .Y(n81) );
  OAI2BB2XL U12 ( .B0(n1), .B1(n3), .A0N(protect[6]), .A1N(n85), .Y(n80) );
  OAI2BB2XL U13 ( .B0(n1), .B1(n4), .A0N(protect[5]), .A1N(n85), .Y(n79) );
  OAI2BB2XL U14 ( .B0(n1), .B1(n5), .A0N(protect[4]), .A1N(n85), .Y(n78) );
  OAI2BB2XL U15 ( .B0(n1), .B1(n6), .A0N(protect[3]), .A1N(n85), .Y(n77) );
  OAI2BB2XL U16 ( .B0(n1), .B1(n7), .A0N(protect[2]), .A1N(n85), .Y(n76) );
  OAI2BB2XL U17 ( .B0(n1), .B1(n8), .A0N(protect[1]), .A1N(n85), .Y(n75) );
  OAI2BB2XL U18 ( .B0(n1), .B1(n9), .A0N(protect[0]), .A1N(n85), .Y(n74) );
  OAI2BB2XL U19 ( .B0(n1), .B1(n10), .A0N(result[31]), .A1N(n85), .Y(n73) );
  OAI2BB2XL U20 ( .B0(n82), .B1(n11), .A0N(result[30]), .A1N(n85), .Y(n72) );
  OAI2BB2XL U21 ( .B0(n82), .B1(n12), .A0N(result[29]), .A1N(n85), .Y(n71) );
  OAI2BB2XL U22 ( .B0(n82), .B1(n13), .A0N(result[28]), .A1N(n85), .Y(n70) );
  OAI2BB2XL U23 ( .B0(n82), .B1(n14), .A0N(result[27]), .A1N(n85), .Y(n69) );
  OAI2BB2XL U24 ( .B0(n82), .B1(n15), .A0N(result[26]), .A1N(n85), .Y(n68) );
  OAI2BB2XL U25 ( .B0(n82), .B1(n16), .A0N(result[25]), .A1N(n85), .Y(n67) );
  OAI2BB2XL U26 ( .B0(n82), .B1(n17), .A0N(result[24]), .A1N(n85), .Y(n66) );
  OAI2BB2XL U27 ( .B0(n83), .B1(n18), .A0N(result[23]), .A1N(n84), .Y(n65) );
  OAI2BB2XL U28 ( .B0(n83), .B1(n19), .A0N(result[22]), .A1N(n84), .Y(n64) );
  OAI2BB2XL U29 ( .B0(n83), .B1(n20), .A0N(result[21]), .A1N(n84), .Y(n63) );
  OAI2BB2XL U30 ( .B0(n83), .B1(n21), .A0N(result[20]), .A1N(n84), .Y(n62) );
  OAI2BB2XL U31 ( .B0(n83), .B1(n22), .A0N(result[19]), .A1N(n84), .Y(n61) );
  OAI2BB2XL U32 ( .B0(n83), .B1(n23), .A0N(result[18]), .A1N(n84), .Y(n60) );
  OAI2BB2XL U33 ( .B0(n83), .B1(n24), .A0N(result[17]), .A1N(n84), .Y(n59) );
  OAI2BB2XL U34 ( .B0(n84), .B1(n26), .A0N(result[15]), .A1N(n84), .Y(n57) );
  OAI2BB2XL U35 ( .B0(n83), .B1(n25), .A0N(result[16]), .A1N(n84), .Y(n58) );
  OAI2BB2XL U36 ( .B0(n84), .B1(n27), .A0N(result[14]), .A1N(n84), .Y(n56) );
  OAI2BB2XL U37 ( .B0(n82), .B1(n28), .A0N(result[13]), .A1N(n84), .Y(n55) );
  OAI2BB2XL U38 ( .B0(n84), .B1(n29), .A0N(result[12]), .A1N(n84), .Y(n54) );
  OAI2BB2XL U39 ( .B0(n83), .B1(n30), .A0N(result[11]), .A1N(n84), .Y(n53) );
  OAI2BB2XL U40 ( .B0(n83), .B1(n31), .A0N(result[10]), .A1N(n84), .Y(n52) );
  OAI2BB2XL U41 ( .B0(n83), .B1(n32), .A0N(result[9]), .A1N(n84), .Y(n51) );
  OAI2BB2XL U42 ( .B0(n83), .B1(n33), .A0N(result[8]), .A1N(n84), .Y(n50) );
  OAI2BB2XL U43 ( .B0(n82), .B1(n34), .A0N(result[7]), .A1N(n84), .Y(n49) );
  OAI2BB2XL U44 ( .B0(n82), .B1(n35), .A0N(result[6]), .A1N(n84), .Y(n48) );
  OAI2BB2XL U45 ( .B0(n82), .B1(n36), .A0N(result[5]), .A1N(n84), .Y(n47) );
  OAI2BB2XL U46 ( .B0(n82), .B1(n37), .A0N(result[4]), .A1N(n84), .Y(n46) );
  OAI2BB2XL U47 ( .B0(n1), .B1(n38), .A0N(result[3]), .A1N(n84), .Y(n45) );
  OAI2BB2XL U48 ( .B0(n1), .B1(n39), .A0N(result[2]), .A1N(n84), .Y(n44) );
  OAI2BB2XL U49 ( .B0(n1), .B1(n40), .A0N(result[1]), .A1N(n84), .Y(n43) );
  OAI2BB2XL U50 ( .B0(n41), .B1(n84), .A0N(result[0]), .A1N(n84), .Y(n42) );
  CLKBUFX3 U51 ( .A(reset), .Y(n86) );
  CLKBUFX3 U52 ( .A(n87), .Y(n91) );
  CLKBUFX3 U53 ( .A(reset), .Y(n87) );
endmodule


module mux_DW01_add_0 ( A, B, CI, SUM, CO );
  input [19:0] A;
  input [19:0] B;
  output [19:0] SUM;
  input CI;
  output CO;
  wire   n1, n2;
  wire   [19:1] carry;

  ADDFXL U1_1 ( .A(A[1]), .B(B[1]), .CI(carry[1]), .CO(carry[2]), .S(SUM[1])
         );
  ADDFXL U1_18 ( .A(A[18]), .B(B[18]), .CI(carry[18]), .CO(carry[19]), .S(
        SUM[18]) );
  ADDFXL U1_17 ( .A(A[17]), .B(B[17]), .CI(carry[17]), .CO(carry[18]), .S(
        SUM[17]) );
  ADDFXL U1_16 ( .A(A[16]), .B(B[16]), .CI(carry[16]), .CO(carry[17]), .S(
        SUM[16]) );
  ADDFXL U1_15 ( .A(A[15]), .B(B[15]), .CI(carry[15]), .CO(carry[16]), .S(
        SUM[15]) );
  ADDFXL U1_14 ( .A(A[14]), .B(B[14]), .CI(carry[14]), .CO(carry[15]), .S(
        SUM[14]) );
  ADDFXL U1_13 ( .A(A[13]), .B(B[13]), .CI(carry[13]), .CO(carry[14]), .S(
        SUM[13]) );
  ADDFXL U1_12 ( .A(A[12]), .B(B[12]), .CI(carry[12]), .CO(carry[13]), .S(
        SUM[12]) );
  ADDFXL U1_11 ( .A(A[11]), .B(B[11]), .CI(carry[11]), .CO(carry[12]), .S(
        SUM[11]) );
  ADDFXL U1_10 ( .A(A[10]), .B(B[10]), .CI(carry[10]), .CO(carry[11]), .S(
        SUM[10]) );
  ADDFXL U1_9 ( .A(A[9]), .B(B[9]), .CI(carry[9]), .CO(carry[10]), .S(SUM[9])
         );
  ADDFXL U1_8 ( .A(A[8]), .B(B[8]), .CI(carry[8]), .CO(carry[9]), .S(SUM[8])
         );
  ADDFXL U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]), .S(SUM[7])
         );
  ADDFXL U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  ADDFXL U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  ADDFXL U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  ADDFXL U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
  ADDFXL U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2])
         );
  XOR3X1 U1_19 ( .A(A[19]), .B(B[19]), .C(carry[19]), .Y(SUM[19]) );
  NOR2X1 U1 ( .A(n1), .B(n2), .Y(carry[1]) );
  CLKINVX1 U2 ( .A(B[0]), .Y(n2) );
  CLKINVX1 U3 ( .A(A[0]), .Y(n1) );
  XNOR2X1 U4 ( .A(B[0]), .B(n1), .Y(SUM[0]) );
endmodule


module mux_DW01_add_1 ( A, B, CI, SUM, CO );
  input [19:0] A;
  input [19:0] B;
  output [19:0] SUM;
  input CI;
  output CO;
  wire   n1, n2;
  wire   [19:1] carry;

  ADDFXL U1_1 ( .A(A[1]), .B(B[1]), .CI(carry[1]), .CO(carry[2]), .S(SUM[1])
         );
  ADDFXL U1_17 ( .A(A[17]), .B(B[17]), .CI(carry[17]), .CO(carry[18]), .S(
        SUM[17]) );
  ADDFXL U1_16 ( .A(A[16]), .B(B[16]), .CI(carry[16]), .CO(carry[17]), .S(
        SUM[16]) );
  ADDFXL U1_15 ( .A(A[15]), .B(B[15]), .CI(carry[15]), .CO(carry[16]), .S(
        SUM[15]) );
  ADDFXL U1_14 ( .A(A[14]), .B(B[14]), .CI(carry[14]), .CO(carry[15]), .S(
        SUM[14]) );
  ADDFXL U1_13 ( .A(A[13]), .B(B[13]), .CI(carry[13]), .CO(carry[14]), .S(
        SUM[13]) );
  ADDFXL U1_12 ( .A(A[12]), .B(B[12]), .CI(carry[12]), .CO(carry[13]), .S(
        SUM[12]) );
  ADDFXL U1_11 ( .A(A[11]), .B(B[11]), .CI(carry[11]), .CO(carry[12]), .S(
        SUM[11]) );
  ADDFXL U1_10 ( .A(A[10]), .B(B[10]), .CI(carry[10]), .CO(carry[11]), .S(
        SUM[10]) );
  ADDFXL U1_9 ( .A(A[9]), .B(B[9]), .CI(carry[9]), .CO(carry[10]), .S(SUM[9])
         );
  ADDFXL U1_8 ( .A(A[8]), .B(B[8]), .CI(carry[8]), .CO(carry[9]), .S(SUM[8])
         );
  ADDFXL U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]), .S(SUM[7])
         );
  ADDFXL U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  ADDFXL U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  ADDFXL U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  ADDFXL U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
  ADDFXL U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2])
         );
  ADDFXL U1_18 ( .A(A[18]), .B(B[18]), .CI(carry[18]), .CO(carry[19]), .S(
        SUM[18]) );
  XOR3X1 U1_19 ( .A(A[19]), .B(B[19]), .C(carry[19]), .Y(SUM[19]) );
  NOR2X1 U1 ( .A(n1), .B(n2), .Y(carry[1]) );
  CLKINVX1 U2 ( .A(B[0]), .Y(n2) );
  CLKINVX1 U3 ( .A(A[0]), .Y(n1) );
  XNOR2X1 U4 ( .A(B[0]), .B(n1), .Y(SUM[0]) );
endmodule


module mux_DW01_add_2 ( A, B, CI, SUM, CO );
  input [39:0] A;
  input [39:0] B;
  output [39:0] SUM;
  input CI;
  output CO;
  wire   n1, n2;
  wire   [39:1] carry;

  XOR3X1 U1_39 ( .A(A[39]), .B(B[39]), .C(carry[39]), .Y(SUM[39]) );
  ADDFXL U1_1 ( .A(A[1]), .B(B[1]), .CI(carry[1]), .CO(carry[2]), .S(SUM[1])
         );
  ADDFXL U1_16 ( .A(A[16]), .B(B[16]), .CI(carry[16]), .CO(carry[17]), .S(
        SUM[16]) );
  ADDFXL U1_15 ( .A(A[15]), .B(B[15]), .CI(carry[15]), .CO(carry[16]), .S(
        SUM[15]) );
  ADDFXL U1_35 ( .A(A[35]), .B(B[35]), .CI(carry[35]), .CO(carry[36]), .S(
        SUM[35]) );
  ADDFXL U1_34 ( .A(A[34]), .B(B[34]), .CI(carry[34]), .CO(carry[35]), .S(
        SUM[34]) );
  ADDFXL U1_14 ( .A(A[14]), .B(B[14]), .CI(carry[14]), .CO(carry[15]), .S(
        SUM[14]) );
  ADDFXL U1_33 ( .A(A[33]), .B(B[33]), .CI(carry[33]), .CO(carry[34]), .S(
        SUM[33]) );
  ADDFXL U1_37 ( .A(A[37]), .B(B[37]), .CI(carry[37]), .CO(carry[38]), .S(
        SUM[37]) );
  ADDFXL U1_13 ( .A(A[13]), .B(B[13]), .CI(carry[13]), .CO(carry[14]), .S(
        SUM[13]) );
  ADDFXL U1_32 ( .A(A[32]), .B(B[32]), .CI(carry[32]), .CO(carry[33]), .S(
        SUM[32]) );
  ADDFXL U1_36 ( .A(A[36]), .B(B[36]), .CI(carry[36]), .CO(carry[37]), .S(
        SUM[36]) );
  ADDFXL U1_12 ( .A(A[12]), .B(B[12]), .CI(carry[12]), .CO(carry[13]), .S(
        SUM[12]) );
  ADDFXL U1_31 ( .A(A[31]), .B(B[31]), .CI(carry[31]), .CO(carry[32]), .S(
        SUM[31]) );
  ADDFXL U1_11 ( .A(A[11]), .B(B[11]), .CI(carry[11]), .CO(carry[12]), .S(
        SUM[11]) );
  ADDFXL U1_30 ( .A(A[30]), .B(B[30]), .CI(carry[30]), .CO(carry[31]), .S(
        SUM[30]) );
  ADDFXL U1_10 ( .A(A[10]), .B(B[10]), .CI(carry[10]), .CO(carry[11]), .S(
        SUM[10]) );
  ADDFXL U1_29 ( .A(A[29]), .B(B[29]), .CI(carry[29]), .CO(carry[30]), .S(
        SUM[29]) );
  ADDFXL U1_9 ( .A(A[9]), .B(B[9]), .CI(carry[9]), .CO(carry[10]), .S(SUM[9])
         );
  ADDFXL U1_28 ( .A(A[28]), .B(B[28]), .CI(carry[28]), .CO(carry[29]), .S(
        SUM[28]) );
  ADDFXL U1_8 ( .A(A[8]), .B(B[8]), .CI(carry[8]), .CO(carry[9]), .S(SUM[8])
         );
  ADDFXL U1_27 ( .A(A[27]), .B(B[27]), .CI(carry[27]), .CO(carry[28]), .S(
        SUM[27]) );
  ADDFXL U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]), .S(SUM[7])
         );
  ADDFXL U1_26 ( .A(A[26]), .B(B[26]), .CI(carry[26]), .CO(carry[27]), .S(
        SUM[26]) );
  ADDFXL U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  ADDFXL U1_25 ( .A(A[25]), .B(B[25]), .CI(carry[25]), .CO(carry[26]), .S(
        SUM[25]) );
  ADDFXL U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  ADDFXL U1_24 ( .A(A[24]), .B(B[24]), .CI(carry[24]), .CO(carry[25]), .S(
        SUM[24]) );
  ADDFXL U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  ADDFXL U1_23 ( .A(A[23]), .B(B[23]), .CI(carry[23]), .CO(carry[24]), .S(
        SUM[23]) );
  ADDFXL U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
  ADDFXL U1_22 ( .A(A[22]), .B(B[22]), .CI(carry[22]), .CO(carry[23]), .S(
        SUM[22]) );
  ADDFXL U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2])
         );
  ADDFXL U1_21 ( .A(A[21]), .B(B[21]), .CI(carry[21]), .CO(carry[22]), .S(
        SUM[21]) );
  ADDFXL U1_20 ( .A(A[20]), .B(B[20]), .CI(carry[20]), .CO(carry[21]), .S(
        SUM[20]) );
  ADDFXL U1_19 ( .A(A[19]), .B(B[19]), .CI(carry[19]), .CO(carry[20]), .S(
        SUM[19]) );
  ADDFXL U1_18 ( .A(A[18]), .B(B[18]), .CI(carry[18]), .CO(carry[19]), .S(
        SUM[18]) );
  ADDFXL U1_17 ( .A(A[17]), .B(B[17]), .CI(carry[17]), .CO(carry[18]), .S(
        SUM[17]) );
  ADDFXL U1_38 ( .A(A[38]), .B(B[38]), .CI(carry[38]), .CO(carry[39]), .S(
        SUM[38]) );
  NOR2X1 U1 ( .A(n1), .B(n2), .Y(carry[1]) );
  CLKINVX1 U2 ( .A(B[0]), .Y(n2) );
  CLKINVX1 U3 ( .A(A[0]), .Y(n1) );
  XNOR2X1 U4 ( .A(B[0]), .B(n1), .Y(SUM[0]) );
endmodule


module mux ( clk, reset, stall, multiplier_out_1, multiplier_out_2, 
        instruction, protect_accum, result_accum, saturation, result, protect, 
        result_next, protect_next );
  input [39:0] multiplier_out_1;
  input [39:0] multiplier_out_2;
  input [2:0] instruction;
  input [7:0] protect_accum;
  input [31:0] result_accum;
  input [31:0] saturation;
  output [31:0] result;
  output [7:0] protect;
  output [31:0] result_next;
  output [7:0] protect_next;
  input clk, reset, stall;
  wire   n9, n11, n13, n15, n17, n19, n21, n23, n24, n26, n27, n28, n29, n30,
         n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44,
         n45, n46, n47, n48, n49, n50, n51, n52, n53, n54, n55, n56, n57, n58,
         n59, n60, n61, n62, n63, n64, n65, n66, n67, n68, n69, n70, n71, n72,
         n73, n74, n75, n76, n77, n78, n79, n80, n81, n82, n83, n84, n85, n86,
         n87, n88, n89, n90, n91, n92, n93, n94, n101, n102, n109, n110, n113,
         n114, n115, n116, n117, n118, n119, n120, n121, n122, n123, n124,
         n125, n126, n127, n128, n129, n130, n131, n132, n133, n134, n135,
         n136, n137, n138, n139, n140, n141, n142, n143, n144, n145, n146,
         n147, n148, n149, n150, n151, n152, n153, n154, n155, n156, n157,
         n158, n159, n160, n161, n162, n163, n164, n165, n166, n167, n168,
         n169, n170, n171, n172, n173, n174, n175, n176, n177, n178, n179,
         n180, n181, n182, n183, n184, n4, n5, n6, n7, n8, n10, n12, n14, n16,
         n18, n20, n22, n25, n95, n96, n97, n98, n99, n100, n103, n104, n105,
         n106, n107, n108, n111, n112, n185, n186, n187, n188, n189, n190,
         n191, n192, n193, n194, n195, n196, n197, n198, n199, n200, n201;
  wire   [39:0] multi16total_accum;
  wire   [19:0] multi8total_accum_1;
  wire   [19:0] multi8total_accum_2;

  mux_DW01_add_0 add_112 ( .A(multiplier_out_2[19:0]), .B({protect_accum[3:0], 
        result_accum[15:0]}), .CI(1'b0), .SUM(multi8total_accum_2) );
  mux_DW01_add_1 add_111 ( .A(multiplier_out_2[39:20]), .B({protect_accum[7:4], 
        result_accum[31:16]}), .CI(1'b0), .SUM(multi8total_accum_1) );
  mux_DW01_add_2 add_110 ( .A(multiplier_out_1), .B({protect_accum, 
        result_accum}), .CI(1'b0), .SUM(multi16total_accum) );
  DFFRX1 \result_reg[0]  ( .D(n145), .CK(clk), .RN(n195), .Q(result[0]), .QN(
        n144) );
  DFFRX1 \result_reg[31]  ( .D(n176), .CK(clk), .RN(n197), .Q(result[31]), 
        .QN(n113) );
  DFFRX1 \result_reg[30]  ( .D(n175), .CK(clk), .RN(n197), .Q(result[30]), 
        .QN(n114) );
  DFFRX1 \result_reg[29]  ( .D(n174), .CK(clk), .RN(n197), .Q(result[29]), 
        .QN(n115) );
  DFFRX1 \result_reg[28]  ( .D(n173), .CK(clk), .RN(n197), .Q(result[28]), 
        .QN(n116) );
  DFFRX1 \result_reg[27]  ( .D(n172), .CK(clk), .RN(n197), .Q(result[27]), 
        .QN(n117) );
  DFFRX1 \result_reg[26]  ( .D(n171), .CK(clk), .RN(n197), .Q(result[26]), 
        .QN(n118) );
  DFFRX1 \result_reg[25]  ( .D(n170), .CK(clk), .RN(n197), .Q(result[25]), 
        .QN(n119) );
  DFFRX1 \result_reg[24]  ( .D(n169), .CK(clk), .RN(n197), .Q(result[24]), 
        .QN(n120) );
  DFFRX1 \result_reg[23]  ( .D(n168), .CK(clk), .RN(n196), .Q(result[23]), 
        .QN(n121) );
  DFFRX1 \result_reg[22]  ( .D(n167), .CK(clk), .RN(n196), .Q(result[22]), 
        .QN(n122) );
  DFFRX1 \result_reg[21]  ( .D(n166), .CK(clk), .RN(n196), .Q(result[21]), 
        .QN(n123) );
  DFFRX1 \result_reg[20]  ( .D(n165), .CK(clk), .RN(n196), .Q(result[20]), 
        .QN(n124) );
  DFFRX1 \result_reg[19]  ( .D(n164), .CK(clk), .RN(n196), .Q(result[19]), 
        .QN(n125) );
  DFFRX1 \result_reg[18]  ( .D(n163), .CK(clk), .RN(n196), .Q(result[18]), 
        .QN(n126) );
  DFFRX1 \result_reg[17]  ( .D(n162), .CK(clk), .RN(n196), .Q(result[17]), 
        .QN(n127) );
  DFFRX1 \result_reg[16]  ( .D(n161), .CK(clk), .RN(n196), .Q(result[16]), 
        .QN(n128) );
  DFFRX1 \result_reg[15]  ( .D(n160), .CK(clk), .RN(n196), .Q(result[15]), 
        .QN(n129) );
  DFFRX1 \result_reg[14]  ( .D(n159), .CK(clk), .RN(n196), .Q(result[14]), 
        .QN(n130) );
  DFFRX1 \result_reg[13]  ( .D(n158), .CK(clk), .RN(n196), .Q(result[13]), 
        .QN(n131) );
  DFFRX1 \result_reg[12]  ( .D(n157), .CK(clk), .RN(n196), .Q(result[12]), 
        .QN(n132) );
  DFFRX1 \result_reg[11]  ( .D(n156), .CK(clk), .RN(n195), .Q(result[11]), 
        .QN(n133) );
  DFFRX1 \result_reg[10]  ( .D(n155), .CK(clk), .RN(n195), .Q(result[10]), 
        .QN(n134) );
  DFFRX1 \result_reg[9]  ( .D(n154), .CK(clk), .RN(n195), .Q(result[9]), .QN(
        n135) );
  DFFRX1 \result_reg[8]  ( .D(n153), .CK(clk), .RN(n195), .Q(result[8]), .QN(
        n136) );
  DFFRX1 \result_reg[7]  ( .D(n152), .CK(clk), .RN(n195), .Q(result[7]), .QN(
        n137) );
  DFFRX1 \result_reg[6]  ( .D(n151), .CK(clk), .RN(n195), .Q(result[6]), .QN(
        n138) );
  DFFRX1 \result_reg[5]  ( .D(n150), .CK(clk), .RN(n195), .Q(result[5]), .QN(
        n139) );
  DFFRX1 \result_reg[4]  ( .D(n149), .CK(clk), .RN(n195), .Q(result[4]), .QN(
        n140) );
  DFFRX1 \result_reg[3]  ( .D(n148), .CK(clk), .RN(n195), .Q(result[3]), .QN(
        n141) );
  DFFRX1 \result_reg[2]  ( .D(n147), .CK(clk), .RN(n195), .Q(result[2]), .QN(
        n142) );
  DFFRX1 \result_reg[1]  ( .D(n146), .CK(clk), .RN(n195), .Q(result[1]), .QN(
        n143) );
  DFFRX1 \protect_reg[7]  ( .D(n184), .CK(clk), .RN(n198), .Q(protect[7]), 
        .QN(n14) );
  DFFRX1 \protect_reg[2]  ( .D(n179), .CK(clk), .RN(n197), .Q(protect[2]), 
        .QN(n4) );
  DFFRX1 \protect_reg[6]  ( .D(n183), .CK(clk), .RN(n198), .Q(protect[6]), 
        .QN(n6) );
  DFFRX1 \protect_reg[1]  ( .D(n178), .CK(clk), .RN(n197), .Q(protect[1]), 
        .QN(n5) );
  DFFRX1 \protect_reg[0]  ( .D(n177), .CK(clk), .RN(n197), .Q(protect[0]), 
        .QN(n8) );
  DFFRX1 \protect_reg[5]  ( .D(n182), .CK(clk), .RN(n198), .Q(protect[5]), 
        .QN(n7) );
  DFFRX1 \protect_reg[4]  ( .D(n181), .CK(clk), .RN(n198), .Q(protect[4]), 
        .QN(n10) );
  DFFRX1 \protect_reg[3]  ( .D(n180), .CK(clk), .RN(n197), .Q(protect[3]), 
        .QN(n12) );
  NOR3X1 U2 ( .A(instruction[0]), .B(instruction[2]), .C(n199), .Y(n31) );
  NOR2X1 U3 ( .A(stall), .B(n191), .Y(n94) );
  CLKINVX1 U4 ( .A(n192), .Y(n191) );
  CLKINVX1 U8 ( .A(n24), .Y(n192) );
  OAI21XL U9 ( .A0(n192), .A1(n6), .B0(n11), .Y(protect_next[6]) );
  OAI21XL U10 ( .A0(n192), .A1(n14), .B0(n9), .Y(protect_next[7]) );
  OAI21XL U11 ( .A0(n192), .A1(n7), .B0(n13), .Y(protect_next[5]) );
  OAI21XL U12 ( .A0(n192), .A1(n10), .B0(n15), .Y(protect_next[4]) );
  OAI21XL U13 ( .A0(n192), .A1(n12), .B0(n17), .Y(protect_next[3]) );
  OAI21XL U14 ( .A0(n192), .A1(n4), .B0(n19), .Y(protect_next[2]) );
  OAI21XL U15 ( .A0(n192), .A1(n5), .B0(n21), .Y(protect_next[1]) );
  OAI21XL U16 ( .A0(n192), .A1(n8), .B0(n23), .Y(protect_next[0]) );
  CLKBUFX3 U17 ( .A(n31), .Y(n188) );
  CLKBUFX3 U18 ( .A(n28), .Y(n189) );
  NOR2X1 U19 ( .A(n200), .B(n199), .Y(n24) );
  CLKBUFX3 U20 ( .A(n31), .Y(n187) );
  CLKBUFX3 U21 ( .A(n28), .Y(n190) );
  CLKBUFX3 U22 ( .A(n31), .Y(n186) );
  CLKBUFX3 U23 ( .A(n201), .Y(n112) );
  CLKBUFX3 U24 ( .A(n201), .Y(n111) );
  CLKBUFX3 U25 ( .A(n201), .Y(n108) );
  CLKBUFX3 U26 ( .A(n193), .Y(n195) );
  CLKBUFX3 U27 ( .A(n193), .Y(n196) );
  CLKBUFX3 U28 ( .A(n193), .Y(n197) );
  CLKBUFX3 U29 ( .A(n201), .Y(n185) );
  NOR2X1 U30 ( .A(n16), .B(n18), .Y(n11) );
  AO22X1 U31 ( .A0(multiplier_out_1[38]), .A1(n189), .B0(
        multi16total_accum[38]), .B1(n188), .Y(n16) );
  AO22X1 U32 ( .A0(multi8total_accum_1[18]), .A1(n29), .B0(
        multiplier_out_2[38]), .B1(n30), .Y(n18) );
  AND2X2 U33 ( .A(n109), .B(n110), .Y(n9) );
  AOI22X1 U34 ( .A0(multi8total_accum_1[19]), .A1(n104), .B0(
        multiplier_out_2[39]), .B1(n106), .Y(n110) );
  AOI22X1 U35 ( .A0(multiplier_out_1[39]), .A1(n189), .B0(
        multi16total_accum[39]), .B1(n187), .Y(n109) );
  NOR2X1 U36 ( .A(n20), .B(n22), .Y(n13) );
  AO22X1 U37 ( .A0(multiplier_out_1[37]), .A1(n189), .B0(
        multi16total_accum[37]), .B1(n188), .Y(n20) );
  AO22X1 U38 ( .A0(multi8total_accum_1[17]), .A1(n105), .B0(
        multiplier_out_2[37]), .B1(n107), .Y(n22) );
  NOR2X1 U39 ( .A(n25), .B(n95), .Y(n15) );
  AO22X1 U40 ( .A0(multiplier_out_1[36]), .A1(n189), .B0(
        multi16total_accum[36]), .B1(n188), .Y(n25) );
  AO22X1 U41 ( .A0(multi8total_accum_1[16]), .A1(n104), .B0(
        multiplier_out_2[36]), .B1(n106), .Y(n95) );
  AND2X2 U42 ( .A(n101), .B(n102), .Y(n17) );
  AOI22X1 U43 ( .A0(multi8total_accum_2[19]), .A1(n29), .B0(
        multiplier_out_2[19]), .B1(n30), .Y(n102) );
  AOI22X1 U44 ( .A0(multiplier_out_1[35]), .A1(n189), .B0(
        multi16total_accum[35]), .B1(n188), .Y(n101) );
  NOR2X1 U45 ( .A(n96), .B(n97), .Y(n19) );
  AO22X1 U46 ( .A0(multiplier_out_1[34]), .A1(n189), .B0(
        multi16total_accum[34]), .B1(n188), .Y(n96) );
  AO22X1 U47 ( .A0(multi8total_accum_2[18]), .A1(n105), .B0(
        multiplier_out_2[18]), .B1(n107), .Y(n97) );
  NOR2X1 U48 ( .A(n98), .B(n99), .Y(n21) );
  AO22X1 U49 ( .A0(multiplier_out_1[33]), .A1(n189), .B0(
        multi16total_accum[33]), .B1(n188), .Y(n98) );
  AO22X1 U50 ( .A0(multi8total_accum_2[17]), .A1(n104), .B0(
        multiplier_out_2[17]), .B1(n106), .Y(n99) );
  NOR2X1 U51 ( .A(n100), .B(n103), .Y(n23) );
  AO22X1 U52 ( .A0(multiplier_out_1[32]), .A1(n189), .B0(
        multi16total_accum[32]), .B1(n188), .Y(n100) );
  AO22X1 U53 ( .A0(multi8total_accum_2[16]), .A1(n29), .B0(
        multiplier_out_2[16]), .B1(n30), .Y(n103) );
  OAI22XL U54 ( .A0(n94), .A1(n14), .B0(stall), .B1(n9), .Y(n184) );
  NAND2X1 U55 ( .A(n92), .B(n93), .Y(result_next[31]) );
  AOI222XL U56 ( .A0(multiplier_out_1[31]), .A1(n189), .B0(
        multi8total_accum_1[15]), .B1(n105), .C0(multiplier_out_2[35]), .C1(
        n107), .Y(n93) );
  AOI22X1 U57 ( .A0(multi16total_accum[31]), .A1(n188), .B0(saturation[31]), 
        .B1(n191), .Y(n92) );
  OAI22XL U58 ( .A0(n94), .A1(n6), .B0(stall), .B1(n11), .Y(n183) );
  OAI22XL U59 ( .A0(n94), .A1(n7), .B0(stall), .B1(n13), .Y(n182) );
  OAI22XL U60 ( .A0(n94), .A1(n10), .B0(stall), .B1(n15), .Y(n181) );
  OAI22XL U61 ( .A0(n94), .A1(n12), .B0(stall), .B1(n17), .Y(n180) );
  OAI22XL U62 ( .A0(n94), .A1(n4), .B0(stall), .B1(n19), .Y(n179) );
  OAI22XL U63 ( .A0(n94), .A1(n5), .B0(stall), .B1(n21), .Y(n178) );
  OAI22XL U64 ( .A0(n94), .A1(n8), .B0(stall), .B1(n23), .Y(n177) );
  NAND2X1 U65 ( .A(n90), .B(n91), .Y(result_next[30]) );
  AOI222XL U66 ( .A0(multiplier_out_1[30]), .A1(n189), .B0(
        multi8total_accum_1[14]), .B1(n104), .C0(multiplier_out_2[34]), .C1(
        n106), .Y(n91) );
  AOI22X1 U67 ( .A0(multi16total_accum[30]), .A1(n188), .B0(saturation[30]), 
        .B1(n191), .Y(n90) );
  OAI2BB2XL U68 ( .B0(n108), .B1(n113), .A0N(n112), .A1N(result_next[31]), .Y(
        n176) );
  NAND2X1 U69 ( .A(n88), .B(n89), .Y(result_next[29]) );
  AOI222XL U70 ( .A0(multiplier_out_1[29]), .A1(n189), .B0(
        multi8total_accum_1[13]), .B1(n29), .C0(multiplier_out_2[33]), .C1(n30), .Y(n89) );
  AOI22X1 U71 ( .A0(multi16total_accum[29]), .A1(n188), .B0(saturation[29]), 
        .B1(n191), .Y(n88) );
  OAI2BB2XL U72 ( .B0(n108), .B1(n114), .A0N(n185), .A1N(result_next[30]), .Y(
        n175) );
  NAND2X1 U73 ( .A(n86), .B(n87), .Y(result_next[28]) );
  AOI222XL U74 ( .A0(multiplier_out_1[28]), .A1(n189), .B0(
        multi8total_accum_1[12]), .B1(n105), .C0(multiplier_out_2[32]), .C1(
        n107), .Y(n87) );
  AOI22X1 U75 ( .A0(multi16total_accum[28]), .A1(n188), .B0(saturation[28]), 
        .B1(n191), .Y(n86) );
  OAI2BB2XL U76 ( .B0(n108), .B1(n115), .A0N(n185), .A1N(result_next[29]), .Y(
        n174) );
  NAND2X1 U77 ( .A(n84), .B(n85), .Y(result_next[27]) );
  AOI222XL U78 ( .A0(multiplier_out_1[27]), .A1(n189), .B0(
        multi8total_accum_1[11]), .B1(n104), .C0(multiplier_out_2[31]), .C1(
        n106), .Y(n85) );
  AOI22X1 U79 ( .A0(multi16total_accum[27]), .A1(n188), .B0(saturation[27]), 
        .B1(n191), .Y(n84) );
  OAI2BB2XL U80 ( .B0(n108), .B1(n116), .A0N(n185), .A1N(result_next[28]), .Y(
        n173) );
  NAND2X1 U81 ( .A(n82), .B(n83), .Y(result_next[26]) );
  AOI222XL U82 ( .A0(multiplier_out_1[26]), .A1(n189), .B0(
        multi8total_accum_1[10]), .B1(n29), .C0(multiplier_out_2[30]), .C1(n30), .Y(n83) );
  AOI22X1 U83 ( .A0(multi16total_accum[26]), .A1(n188), .B0(saturation[26]), 
        .B1(n191), .Y(n82) );
  OAI2BB2XL U84 ( .B0(n108), .B1(n117), .A0N(n185), .A1N(result_next[27]), .Y(
        n172) );
  NAND2X1 U85 ( .A(n80), .B(n81), .Y(result_next[25]) );
  AOI222XL U86 ( .A0(multiplier_out_1[25]), .A1(n189), .B0(
        multi8total_accum_1[9]), .B1(n105), .C0(multiplier_out_2[29]), .C1(
        n107), .Y(n81) );
  AOI22X1 U87 ( .A0(multi16total_accum[25]), .A1(n187), .B0(saturation[25]), 
        .B1(n191), .Y(n80) );
  OAI2BB2XL U88 ( .B0(n108), .B1(n118), .A0N(n185), .A1N(result_next[26]), .Y(
        n171) );
  NAND2X1 U89 ( .A(n78), .B(n79), .Y(result_next[24]) );
  AOI222XL U90 ( .A0(multiplier_out_1[24]), .A1(n189), .B0(
        multi8total_accum_1[8]), .B1(n104), .C0(multiplier_out_2[28]), .C1(
        n106), .Y(n79) );
  AOI22X1 U91 ( .A0(multi16total_accum[24]), .A1(n187), .B0(saturation[24]), 
        .B1(n191), .Y(n78) );
  OAI2BB2XL U92 ( .B0(n108), .B1(n119), .A0N(n185), .A1N(result_next[25]), .Y(
        n170) );
  NAND2X1 U93 ( .A(n76), .B(n77), .Y(result_next[23]) );
  AOI222XL U94 ( .A0(multiplier_out_1[23]), .A1(n189), .B0(
        multi8total_accum_1[7]), .B1(n29), .C0(multiplier_out_2[27]), .C1(n30), 
        .Y(n77) );
  AOI22X1 U95 ( .A0(multi16total_accum[23]), .A1(n187), .B0(saturation[23]), 
        .B1(n191), .Y(n76) );
  OAI2BB2XL U96 ( .B0(n108), .B1(n120), .A0N(n185), .A1N(result_next[24]), .Y(
        n169) );
  NAND2X1 U97 ( .A(n74), .B(n75), .Y(result_next[22]) );
  AOI222XL U98 ( .A0(multiplier_out_1[22]), .A1(n189), .B0(
        multi8total_accum_1[6]), .B1(n105), .C0(multiplier_out_2[26]), .C1(
        n107), .Y(n75) );
  AOI22X1 U99 ( .A0(multi16total_accum[22]), .A1(n187), .B0(saturation[22]), 
        .B1(n191), .Y(n74) );
  OAI2BB2XL U100 ( .B0(n111), .B1(n121), .A0N(n185), .A1N(result_next[23]), 
        .Y(n168) );
  NAND2X1 U101 ( .A(n72), .B(n73), .Y(result_next[21]) );
  AOI222XL U102 ( .A0(multiplier_out_1[21]), .A1(n189), .B0(
        multi8total_accum_1[5]), .B1(n104), .C0(multiplier_out_2[25]), .C1(
        n106), .Y(n73) );
  AOI22X1 U103 ( .A0(multi16total_accum[21]), .A1(n187), .B0(saturation[21]), 
        .B1(n191), .Y(n72) );
  OAI2BB2XL U104 ( .B0(n108), .B1(n122), .A0N(n185), .A1N(result_next[22]), 
        .Y(n167) );
  NAND2X1 U105 ( .A(n70), .B(n71), .Y(result_next[20]) );
  AOI222XL U106 ( .A0(multiplier_out_1[20]), .A1(n189), .B0(
        multi8total_accum_1[4]), .B1(n29), .C0(multiplier_out_2[24]), .C1(n30), 
        .Y(n71) );
  AOI22X1 U107 ( .A0(multi16total_accum[20]), .A1(n187), .B0(saturation[20]), 
        .B1(n191), .Y(n70) );
  OAI2BB2XL U108 ( .B0(n111), .B1(n123), .A0N(n185), .A1N(result_next[21]), 
        .Y(n166) );
  NAND2X1 U109 ( .A(n60), .B(n61), .Y(result_next[15]) );
  AOI22X1 U110 ( .A0(multi16total_accum[15]), .A1(n187), .B0(saturation[15]), 
        .B1(n191), .Y(n60) );
  AOI222XL U111 ( .A0(multiplier_out_1[15]), .A1(n189), .B0(
        multi8total_accum_2[15]), .B1(n104), .C0(multiplier_out_2[15]), .C1(
        n106), .Y(n61) );
  NAND2X1 U112 ( .A(n68), .B(n69), .Y(result_next[19]) );
  AOI222XL U113 ( .A0(multiplier_out_1[19]), .A1(n189), .B0(
        multi8total_accum_1[3]), .B1(n105), .C0(multiplier_out_2[23]), .C1(
        n107), .Y(n69) );
  AOI22X1 U114 ( .A0(multi16total_accum[19]), .A1(n187), .B0(saturation[19]), 
        .B1(n191), .Y(n68) );
  OAI2BB2XL U115 ( .B0(n111), .B1(n124), .A0N(n185), .A1N(result_next[20]), 
        .Y(n165) );
  NAND2X1 U116 ( .A(n66), .B(n67), .Y(result_next[18]) );
  AOI222XL U117 ( .A0(multiplier_out_1[18]), .A1(n189), .B0(
        multi8total_accum_1[2]), .B1(n104), .C0(multiplier_out_2[22]), .C1(
        n106), .Y(n67) );
  AOI22X1 U118 ( .A0(multi16total_accum[18]), .A1(n187), .B0(saturation[18]), 
        .B1(n191), .Y(n66) );
  OAI2BB2XL U119 ( .B0(n111), .B1(n125), .A0N(n185), .A1N(result_next[19]), 
        .Y(n164) );
  NAND2X1 U120 ( .A(n64), .B(n65), .Y(result_next[17]) );
  AOI222XL U121 ( .A0(multiplier_out_1[17]), .A1(n189), .B0(
        multi8total_accum_1[1]), .B1(n29), .C0(multiplier_out_2[21]), .C1(n30), 
        .Y(n65) );
  AOI22X1 U122 ( .A0(multi16total_accum[17]), .A1(n187), .B0(saturation[17]), 
        .B1(n191), .Y(n64) );
  OAI2BB2XL U123 ( .B0(n111), .B1(n126), .A0N(n185), .A1N(result_next[18]), 
        .Y(n163) );
  NAND2X1 U124 ( .A(n62), .B(n63), .Y(result_next[16]) );
  AOI222XL U125 ( .A0(multiplier_out_1[16]), .A1(n189), .B0(
        multi8total_accum_1[0]), .B1(n105), .C0(multiplier_out_2[20]), .C1(
        n107), .Y(n63) );
  AOI22X1 U126 ( .A0(multi16total_accum[16]), .A1(n187), .B0(saturation[16]), 
        .B1(n191), .Y(n62) );
  NAND2X1 U127 ( .A(n58), .B(n59), .Y(result_next[14]) );
  AOI22X1 U128 ( .A0(multi16total_accum[14]), .A1(n187), .B0(saturation[14]), 
        .B1(n191), .Y(n58) );
  AOI222XL U129 ( .A0(multiplier_out_1[14]), .A1(n189), .B0(
        multi8total_accum_2[14]), .B1(n29), .C0(multiplier_out_2[14]), .C1(n30), .Y(n59) );
  OAI2BB2XL U130 ( .B0(n111), .B1(n127), .A0N(n185), .A1N(result_next[17]), 
        .Y(n162) );
  NAND2X1 U131 ( .A(n56), .B(n57), .Y(result_next[13]) );
  AOI22X1 U132 ( .A0(multi16total_accum[13]), .A1(n187), .B0(saturation[13]), 
        .B1(n191), .Y(n56) );
  AOI222XL U133 ( .A0(multiplier_out_1[13]), .A1(n189), .B0(
        multi8total_accum_2[13]), .B1(n105), .C0(multiplier_out_2[13]), .C1(
        n107), .Y(n57) );
  OAI2BB2XL U134 ( .B0(n112), .B1(n129), .A0N(n185), .A1N(result_next[15]), 
        .Y(n160) );
  OAI2BB2XL U135 ( .B0(n111), .B1(n128), .A0N(n185), .A1N(result_next[16]), 
        .Y(n161) );
  NAND2X1 U136 ( .A(n54), .B(n55), .Y(result_next[12]) );
  AOI22X1 U137 ( .A0(multi16total_accum[12]), .A1(n186), .B0(saturation[12]), 
        .B1(n191), .Y(n54) );
  AOI222XL U138 ( .A0(multiplier_out_1[12]), .A1(n189), .B0(
        multi8total_accum_2[12]), .B1(n104), .C0(multiplier_out_2[12]), .C1(
        n106), .Y(n55) );
  OAI2BB2XL U139 ( .B0(n112), .B1(n130), .A0N(n185), .A1N(result_next[14]), 
        .Y(n159) );
  NAND2X1 U140 ( .A(n52), .B(n53), .Y(result_next[11]) );
  AOI22X1 U141 ( .A0(multi16total_accum[11]), .A1(n186), .B0(saturation[11]), 
        .B1(n191), .Y(n52) );
  AOI222XL U142 ( .A0(multiplier_out_1[11]), .A1(n190), .B0(
        multi8total_accum_2[11]), .B1(n29), .C0(multiplier_out_2[11]), .C1(n30), .Y(n53) );
  OAI2BB2XL U143 ( .B0(n111), .B1(n131), .A0N(n185), .A1N(result_next[13]), 
        .Y(n158) );
  NAND2X1 U144 ( .A(n50), .B(n51), .Y(result_next[10]) );
  AOI22X1 U145 ( .A0(multi16total_accum[10]), .A1(n186), .B0(saturation[10]), 
        .B1(n191), .Y(n50) );
  AOI222XL U146 ( .A0(multiplier_out_1[10]), .A1(n190), .B0(
        multi8total_accum_2[10]), .B1(n105), .C0(multiplier_out_2[10]), .C1(
        n107), .Y(n51) );
  OAI2BB2XL U147 ( .B0(n112), .B1(n132), .A0N(n185), .A1N(result_next[12]), 
        .Y(n157) );
  NAND2X1 U148 ( .A(n48), .B(n49), .Y(result_next[9]) );
  AOI22X1 U149 ( .A0(multi16total_accum[9]), .A1(n186), .B0(saturation[9]), 
        .B1(n24), .Y(n48) );
  AOI222XL U150 ( .A0(multiplier_out_1[9]), .A1(n190), .B0(
        multi8total_accum_2[9]), .B1(n104), .C0(multiplier_out_2[9]), .C1(n106), .Y(n49) );
  OAI2BB2XL U151 ( .B0(n112), .B1(n133), .A0N(n112), .A1N(result_next[11]), 
        .Y(n156) );
  NAND2X1 U152 ( .A(n46), .B(n47), .Y(result_next[8]) );
  AOI22X1 U153 ( .A0(multi16total_accum[8]), .A1(n186), .B0(saturation[8]), 
        .B1(n24), .Y(n46) );
  AOI222XL U154 ( .A0(multiplier_out_1[8]), .A1(n190), .B0(
        multi8total_accum_2[8]), .B1(n29), .C0(multiplier_out_2[8]), .C1(n30), 
        .Y(n47) );
  OAI2BB2XL U155 ( .B0(n112), .B1(n134), .A0N(n112), .A1N(result_next[10]), 
        .Y(n155) );
  NAND2X1 U156 ( .A(n44), .B(n45), .Y(result_next[7]) );
  AOI22X1 U157 ( .A0(multi16total_accum[7]), .A1(n186), .B0(saturation[7]), 
        .B1(n24), .Y(n44) );
  AOI222XL U158 ( .A0(multiplier_out_1[7]), .A1(n190), .B0(
        multi8total_accum_2[7]), .B1(n105), .C0(multiplier_out_2[7]), .C1(n107), .Y(n45) );
  CLKINVX1 U159 ( .A(instruction[1]), .Y(n199) );
  OAI2BB2XL U160 ( .B0(n111), .B1(n135), .A0N(n112), .A1N(result_next[9]), .Y(
        n154) );
  NOR3X1 U161 ( .A(instruction[1]), .B(instruction[2]), .C(n200), .Y(n28) );
  CLKINVX1 U162 ( .A(instruction[0]), .Y(n200) );
  AND3X2 U163 ( .A(instruction[2]), .B(n199), .C(instruction[0]), .Y(n107) );
  AND3X2 U164 ( .A(instruction[2]), .B(instruction[1]), .C(n200), .Y(n105) );
  AND3X2 U165 ( .A(instruction[2]), .B(n199), .C(instruction[0]), .Y(n30) );
  AND3X2 U166 ( .A(instruction[2]), .B(instruction[1]), .C(n200), .Y(n29) );
  NAND2X1 U167 ( .A(n42), .B(n43), .Y(result_next[6]) );
  AOI22X1 U168 ( .A0(multi16total_accum[6]), .A1(n186), .B0(saturation[6]), 
        .B1(n24), .Y(n42) );
  AOI222XL U169 ( .A0(multiplier_out_1[6]), .A1(n190), .B0(
        multi8total_accum_2[6]), .B1(n105), .C0(multiplier_out_2[6]), .C1(n107), .Y(n43) );
  AND3X2 U170 ( .A(instruction[2]), .B(n199), .C(instruction[0]), .Y(n106) );
  AND3X2 U171 ( .A(instruction[2]), .B(instruction[1]), .C(n200), .Y(n104) );
  OAI2BB2XL U172 ( .B0(n112), .B1(n136), .A0N(n112), .A1N(result_next[8]), .Y(
        n153) );
  NAND2X1 U173 ( .A(n40), .B(n41), .Y(result_next[5]) );
  AOI22X1 U174 ( .A0(multi16total_accum[5]), .A1(n186), .B0(saturation[5]), 
        .B1(n24), .Y(n40) );
  AOI222XL U175 ( .A0(multiplier_out_1[5]), .A1(n190), .B0(
        multi8total_accum_2[5]), .B1(n29), .C0(multiplier_out_2[5]), .C1(n30), 
        .Y(n41) );
  OAI2BB2XL U176 ( .B0(n112), .B1(n137), .A0N(n112), .A1N(result_next[7]), .Y(
        n152) );
  NAND2X1 U177 ( .A(n38), .B(n39), .Y(result_next[4]) );
  AOI22X1 U178 ( .A0(multi16total_accum[4]), .A1(n186), .B0(saturation[4]), 
        .B1(n24), .Y(n38) );
  AOI222XL U179 ( .A0(multiplier_out_1[4]), .A1(n190), .B0(
        multi8total_accum_2[4]), .B1(n105), .C0(multiplier_out_2[4]), .C1(n107), .Y(n39) );
  OAI2BB2XL U180 ( .B0(n111), .B1(n138), .A0N(n112), .A1N(result_next[6]), .Y(
        n151) );
  NAND2X1 U181 ( .A(n36), .B(n37), .Y(result_next[3]) );
  AOI22X1 U182 ( .A0(multi16total_accum[3]), .A1(n186), .B0(saturation[3]), 
        .B1(n24), .Y(n36) );
  AOI222XL U183 ( .A0(multiplier_out_1[3]), .A1(n190), .B0(
        multi8total_accum_2[3]), .B1(n105), .C0(multiplier_out_2[3]), .C1(n107), .Y(n37) );
  OAI2BB2XL U184 ( .B0(n111), .B1(n139), .A0N(n112), .A1N(result_next[5]), .Y(
        n150) );
  NAND2X1 U185 ( .A(n34), .B(n35), .Y(result_next[2]) );
  AOI22X1 U186 ( .A0(multi16total_accum[2]), .A1(n186), .B0(saturation[2]), 
        .B1(n24), .Y(n34) );
  AOI222XL U187 ( .A0(multiplier_out_1[2]), .A1(n190), .B0(
        multi8total_accum_2[2]), .B1(n104), .C0(multiplier_out_2[2]), .C1(n106), .Y(n35) );
  OAI2BB2XL U188 ( .B0(n111), .B1(n140), .A0N(n112), .A1N(result_next[4]), .Y(
        n149) );
  NAND2X1 U189 ( .A(n26), .B(n27), .Y(result_next[0]) );
  AOI22X1 U190 ( .A0(multi16total_accum[0]), .A1(n186), .B0(saturation[0]), 
        .B1(n24), .Y(n26) );
  AOI222XL U191 ( .A0(multiplier_out_1[0]), .A1(n190), .B0(
        multi8total_accum_2[0]), .B1(n105), .C0(multiplier_out_2[0]), .C1(n107), .Y(n27) );
  NAND2X1 U192 ( .A(n32), .B(n33), .Y(result_next[1]) );
  AOI22X1 U193 ( .A0(multi16total_accum[1]), .A1(n186), .B0(saturation[1]), 
        .B1(n24), .Y(n32) );
  AOI222XL U194 ( .A0(multiplier_out_1[1]), .A1(n190), .B0(
        multi8total_accum_2[1]), .B1(n105), .C0(multiplier_out_2[1]), .C1(n107), .Y(n33) );
  OAI2BB2XL U195 ( .B0(n108), .B1(n141), .A0N(n112), .A1N(result_next[3]), .Y(
        n148) );
  OAI2BB2XL U196 ( .B0(n108), .B1(n142), .A0N(n112), .A1N(result_next[2]), .Y(
        n147) );
  OAI2BB2XL U197 ( .B0(n108), .B1(n143), .A0N(n112), .A1N(result_next[1]), .Y(
        n146) );
  OAI2BB2XL U198 ( .B0(n144), .B1(n112), .A0N(n112), .A1N(result_next[0]), .Y(
        n145) );
  CLKINVX1 U199 ( .A(stall), .Y(n201) );
  CLKBUFX3 U200 ( .A(reset), .Y(n193) );
  CLKBUFX3 U201 ( .A(n194), .Y(n198) );
  CLKBUFX3 U202 ( .A(reset), .Y(n194) );
endmodule


module mac ( instruction, multiplier, multiplicand, stall, clk, reset_n, 
        result, protect );
  input [2:0] instruction;
  input [15:0] multiplier;
  input [15:0] multiplicand;
  output [31:0] result;
  output [7:0] protect;
  input stall, clk, reset_n;

  wire   [15:0] multiplier_out;
  wire   [15:0] multiplicand_out;
  wire   [2:0] instruction_out;
  wire   [39:0] multiplier_out_1;
  wire   [39:0] multiplier_out_2;
  wire   [2:0] instruction_out2;
  wire   [31:0] result_next;
  wire   [7:0] protect_next;
  wire   [31:0] saturation;
  wire   [7:0] protect_accum;
  wire   [31:0] result_accum;

  booth_multiplier bm1 ( .clk(clk), .reset(reset_n), .stall(stall), 
        .multiplier(multiplier_out), .multiplicand(multiplicand_out), 
        .instruction(instruction_out), .multiplier_out_1(multiplier_out_1), 
        .multiplier_out_2(multiplier_out_2) );
  FF_16_0 multiplier_FF ( .clk(clk), .reset(reset_n), .stall(stall), .din(
        multiplier), .dout(multiplier_out) );
  FF_16_1 multiplicand_FF ( .clk(clk), .reset(reset_n), .stall(stall), .din(
        multiplicand), .dout(multiplicand_out) );
  FF_0 FF1 ( .clk(clk), .reset(reset_n), .stall(stall), .din(instruction), 
        .dout(instruction_out) );
  FF_1 FF2 ( .clk(clk), .reset(reset_n), .stall(stall), .din(instruction_out), 
        .dout(instruction_out2) );
  saturator st1 ( .clk(clk), .reset(reset_n), .stall(stall), .result(
        result_next), .protect(protect_next), .instruction(instruction_out2), 
        .saturation(saturation) );
  accumulator ac1 ( .clk(clk), .reset(reset_n), .stall(stall), .result(
        result_next), .protect(protect_next), .protect_accum(protect_accum), 
        .result_accum(result_accum) );
  mux m1 ( .clk(clk), .reset(reset_n), .stall(stall), .multiplier_out_1(
        multiplier_out_1), .multiplier_out_2(multiplier_out_2), .instruction(
        instruction_out2), .protect_accum(protect_accum), .result_accum(
        result_accum), .saturation(saturation), .result(result), .protect(
        protect), .result_next(result_next), .protect_next(protect_next) );
endmodule

