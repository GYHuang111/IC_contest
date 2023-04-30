/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : T-2022.03
// Date      : Wed Jul 20 22:39:48 2022
/////////////////////////////////////////////////////////////


module Pattern_Shift_RegisterG_0 ( clk, reset, ispattern, reset_en, 
        right_shift_en, din, s0, s1, s2, s3, s4, s5, s6, s7, check, 
        push_complete );
  input [7:0] din;
  output [7:0] s0;
  output [7:0] s1;
  output [7:0] s2;
  output [7:0] s3;
  output [7:0] s4;
  output [7:0] s5;
  output [7:0] s6;
  output [7:0] s7;
  output [7:0] check;
  input clk, reset, ispattern, reset_en, right_shift_en;
  output push_complete;
  wire   N97, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15,
         n16, n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29,
         n30, n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43,
         n44, n45, n46, n47, n48, n49, n50, n51, n52, n53, n54, n55, n56, n57,
         n58, n59, n60, n61, n62, n63, n64, n75, n76, n77, n78, n79, n80, n81,
         n82, n83, n84, n85, n86, n87, n88, n89, n90, n91, n92, n93, n94, n95,
         n96, n97, n98, n99, n100, n101, n102, n103, n104, n105, n106, n107,
         n108, n109, n110, n111, n112, n113, n114, n115, n116, n117, n118,
         n119, n120, n121, n122, n123, n124, n125, n126, n127, n128, n129,
         n130, n131, n132, n133, n134, n135, n136, n137, n138, n139, n140,
         n141, n142, n143, n144, n145, n146, n147, n148, n149, n150, n151,
         n152, n153, n154, n155, n156, n157, n158, n159, n160, n1, n65, n66,
         n67, n68, n69, n70, n71, n72, n73, n74, n161, n162, n163, n164, n165,
         n166, n167, n168, n169, n170, n171, n172;
  assign push_complete = N97;

  DFFRX1 \check_reg[4]  ( .D(n156), .CK(clk), .RN(n1), .Q(check[4]), .QN(n4)
         );
  DFFRX1 \check_reg[3]  ( .D(n157), .CK(clk), .RN(n1), .Q(check[3]), .QN(n5)
         );
  DFFRX1 \check_reg[0]  ( .D(n160), .CK(clk), .RN(n1), .Q(check[0]), .QN(n8)
         );
  DFFRX1 \check_reg[2]  ( .D(n158), .CK(clk), .RN(n1), .Q(check[2]), .QN(n6)
         );
  DFFRX1 \check_reg[7]  ( .D(n153), .CK(clk), .RN(n1), .Q(check[7]) );
  DFFRX1 \check_reg[1]  ( .D(n159), .CK(clk), .RN(n1), .Q(check[1]), .QN(n7)
         );
  DFFRX1 \check_reg[6]  ( .D(n154), .CK(clk), .RN(n1), .Q(check[6]), .QN(n2)
         );
  DFFRX1 \check_reg[5]  ( .D(n155), .CK(clk), .RN(n1), .Q(check[5]), .QN(n3)
         );
  DFFRX1 \s3_reg[0]  ( .D(n121), .CK(clk), .RN(n67), .Q(s3[0]), .QN(n40) );
  DFFRX1 \s3_reg[1]  ( .D(n122), .CK(clk), .RN(n67), .Q(s3[1]), .QN(n39) );
  DFFRX1 \s2_reg[0]  ( .D(n129), .CK(clk), .RN(n66), .Q(s2[0]), .QN(n32) );
  DFFRX1 \s3_reg[4]  ( .D(n125), .CK(clk), .RN(n66), .Q(s3[4]), .QN(n36) );
  DFFRX1 \s0_reg[4]  ( .D(n149), .CK(clk), .RN(n1), .Q(s0[4]), .QN(n12) );
  DFFRX1 \s3_reg[2]  ( .D(n123), .CK(clk), .RN(n67), .Q(s3[2]), .QN(n38) );
  DFFRX1 \s2_reg[1]  ( .D(n130), .CK(clk), .RN(n66), .Q(s2[1]), .QN(n31) );
  DFFRX1 \s1_reg[0]  ( .D(n137), .CK(clk), .RN(n65), .Q(s1[0]), .QN(n24) );
  DFFRX1 \s3_reg[5]  ( .D(n126), .CK(clk), .RN(n66), .Q(s3[5]), .QN(n35) );
  DFFRX1 \s6_reg[0]  ( .D(n97), .CK(clk), .RN(n69), .Q(s6[0]), .QN(n64) );
  DFFRX1 \s2_reg[4]  ( .D(n133), .CK(clk), .RN(n66), .Q(s2[4]), .QN(n28) );
  DFFRX1 \s3_reg[3]  ( .D(n124), .CK(clk), .RN(n67), .Q(s3[3]), .QN(n37) );
  DFFRX1 \s1_reg[1]  ( .D(n138), .CK(clk), .RN(n65), .Q(s1[1]), .QN(n23) );
  DFFRX1 \s0_reg[3]  ( .D(n148), .CK(clk), .RN(n65), .Q(s0[3]), .QN(n13) );
  DFFRX1 \s0_reg[5]  ( .D(n150), .CK(clk), .RN(n1), .Q(s0[5]), .QN(n11) );
  DFFRX1 \s6_reg[1]  ( .D(n98), .CK(clk), .RN(n69), .Q(s6[1]), .QN(n63) );
  DFFRX1 \s2_reg[2]  ( .D(n131), .CK(clk), .RN(n66), .Q(s2[2]), .QN(n30) );
  DFFRX1 \s3_reg[6]  ( .D(n127), .CK(clk), .RN(n66), .Q(s3[6]), .QN(n34) );
  DFFRX1 \s2_reg[5]  ( .D(n134), .CK(clk), .RN(n66), .Q(s2[5]), .QN(n27) );
  DFFRX1 \s1_reg[4]  ( .D(n141), .CK(clk), .RN(n65), .Q(s1[4]), .QN(n20) );
  DFFRX1 \s0_reg[6]  ( .D(n151), .CK(clk), .RN(n1), .Q(s0[6]), .QN(n10) );
  DFFRX1 \s6_reg[4]  ( .D(n101), .CK(clk), .RN(n69), .Q(s6[4]), .QN(n60) );
  DFFRX1 \s1_reg[2]  ( .D(n139), .CK(clk), .RN(n65), .Q(s1[2]), .QN(n22) );
  DFFRX1 \s2_reg[3]  ( .D(n132), .CK(clk), .RN(n66), .Q(s2[3]), .QN(n29) );
  DFFRX1 \s6_reg[2]  ( .D(n99), .CK(clk), .RN(n69), .Q(s6[2]), .QN(n62) );
  DFFRX1 \s1_reg[5]  ( .D(n142), .CK(clk), .RN(n65), .Q(s1[5]), .QN(n19) );
  DFFRX1 \s0_reg[7]  ( .D(n152), .CK(clk), .RN(n1), .Q(s0[7]), .QN(n9) );
  DFFRX1 \s6_reg[5]  ( .D(n102), .CK(clk), .RN(n69), .Q(s6[5]), .QN(n59) );
  DFFRX1 \s2_reg[6]  ( .D(n135), .CK(clk), .RN(n66), .Q(s2[6]), .QN(n26) );
  DFFRX1 \s1_reg[3]  ( .D(n140), .CK(clk), .RN(n65), .Q(s1[3]), .QN(n21) );
  DFFRX1 \s6_reg[3]  ( .D(n100), .CK(clk), .RN(n69), .Q(s6[3]), .QN(n61) );
  DFFRX1 \s1_reg[6]  ( .D(n143), .CK(clk), .RN(n65), .Q(s1[6]), .QN(n18) );
  DFFRX1 \s2_reg[7]  ( .D(n136), .CK(clk), .RN(n66), .Q(s2[7]), .QN(n25) );
  DFFRX1 \s6_reg[6]  ( .D(n103), .CK(clk), .RN(n68), .Q(s6[6]), .QN(n58) );
  DFFRX1 \s1_reg[7]  ( .D(n144), .CK(clk), .RN(n65), .Q(s1[7]), .QN(n17) );
  DFFRX1 \s0_reg[0]  ( .D(n145), .CK(clk), .RN(n65), .Q(s0[0]), .QN(n16) );
  DFFRX1 \s5_reg[7]  ( .D(n112), .CK(clk), .RN(n68), .Q(s5[7]), .QN(n49) );
  DFFRX1 \s0_reg[1]  ( .D(n146), .CK(clk), .RN(n65), .Q(s0[1]), .QN(n15) );
  DFFRX1 \s7_reg[4]  ( .D(n92), .CK(clk), .RN(n69), .Q(s7[4]) );
  DFFRX1 \s4_reg[0]  ( .D(n113), .CK(clk), .RN(n67), .Q(s4[0]), .QN(n48) );
  DFFRX1 \s0_reg[2]  ( .D(n147), .CK(clk), .RN(n65), .Q(s0[2]), .QN(n14) );
  DFFRX1 \s4_reg[1]  ( .D(n114), .CK(clk), .RN(n67), .Q(s4[1]), .QN(n47) );
  DFFRX1 \s7_reg[3]  ( .D(n93), .CK(clk), .RN(n69), .Q(s7[3]) );
  DFFRX1 \s4_reg[4]  ( .D(n117), .CK(clk), .RN(n67), .Q(s4[4]), .QN(n44) );
  DFFRX1 \s4_reg[2]  ( .D(n115), .CK(clk), .RN(n67), .Q(s4[2]), .QN(n46) );
  DFFRX1 \s4_reg[5]  ( .D(n118), .CK(clk), .RN(n67), .Q(s4[5]), .QN(n43) );
  DFFRX1 \s4_reg[3]  ( .D(n116), .CK(clk), .RN(n67), .Q(s4[3]), .QN(n45) );
  DFFRX1 \s4_reg[6]  ( .D(n119), .CK(clk), .RN(n67), .Q(s4[6]), .QN(n42) );
  DFFRX1 \s4_reg[7]  ( .D(n120), .CK(clk), .RN(n67), .Q(s4[7]), .QN(n41) );
  DFFRX1 \s5_reg[0]  ( .D(n105), .CK(clk), .RN(n68), .Q(s5[0]), .QN(n56) );
  DFFRX1 \s3_reg[7]  ( .D(n128), .CK(clk), .RN(n66), .Q(s3[7]), .QN(n33) );
  DFFRX1 \s5_reg[1]  ( .D(n106), .CK(clk), .RN(n68), .Q(s5[1]), .QN(n55) );
  DFFRX1 \s5_reg[4]  ( .D(n109), .CK(clk), .RN(n68), .Q(s5[4]), .QN(n52) );
  DFFRX1 \s5_reg[2]  ( .D(n107), .CK(clk), .RN(n68), .Q(s5[2]), .QN(n54) );
  DFFRX1 \s5_reg[5]  ( .D(n110), .CK(clk), .RN(n68), .Q(s5[5]), .QN(n51) );
  DFFRX1 \s5_reg[3]  ( .D(n108), .CK(clk), .RN(n68), .Q(s5[3]), .QN(n53) );
  DFFRX1 \s6_reg[7]  ( .D(n104), .CK(clk), .RN(n68), .Q(s6[7]), .QN(n57) );
  DFFRX1 \s5_reg[6]  ( .D(n111), .CK(clk), .RN(n68), .Q(s5[6]), .QN(n50) );
  DFFRX1 \s7_reg[0]  ( .D(n96), .CK(clk), .RN(n69), .Q(s7[0]) );
  DFFRX1 \s7_reg[1]  ( .D(n95), .CK(clk), .RN(n69), .Q(s7[1]) );
  DFFRX1 \s7_reg[5]  ( .D(n91), .CK(clk), .RN(n69), .Q(s7[5]) );
  DFFRX1 \s7_reg[2]  ( .D(n94), .CK(clk), .RN(n69), .Q(s7[2]) );
  DFFRX1 \s7_reg[6]  ( .D(n90), .CK(clk), .RN(n68), .Q(s7[6]) );
  DFFRX1 \s7_reg[7]  ( .D(n89), .CK(clk), .RN(n68), .Q(s7[7]) );
  NAND2X1 U3 ( .A(right_shift_en), .B(n70), .Y(n75) );
  XOR2X1 U4 ( .A(right_shift_en), .B(reset_en), .Y(n76) );
  CLKINVX1 U5 ( .A(reset), .Y(n171) );
  CLKINVX1 U6 ( .A(n71), .Y(n70) );
  CLKINVX1 U7 ( .A(n76), .Y(n71) );
  CLKBUFX3 U8 ( .A(n75), .Y(n162) );
  CLKBUFX3 U9 ( .A(n75), .Y(n72) );
  CLKBUFX3 U10 ( .A(n75), .Y(n73) );
  CLKBUFX3 U11 ( .A(n75), .Y(n74) );
  CLKBUFX3 U12 ( .A(n75), .Y(n161) );
  NAND4X1 U13 ( .A(din[2]), .B(n80), .C(n163), .D(n170), .Y(n79) );
  OAI33X1 U14 ( .A0(n81), .A1(n167), .A2(n169), .B0(n82), .B1(din[1]), .B2(
        n168), .Y(n80) );
  NAND3X1 U15 ( .A(din[1]), .B(n168), .C(din[3]), .Y(n81) );
  NAND3X1 U16 ( .A(n167), .B(n169), .C(n166), .Y(n82) );
  CLKINVX1 U17 ( .A(din[5]), .Y(n168) );
  CLKINVX1 U18 ( .A(din[3]), .Y(n166) );
  NAND4X1 U19 ( .A(n163), .B(n167), .C(n169), .D(n170), .Y(n85) );
  CLKINVX1 U20 ( .A(din[2]), .Y(n165) );
  CLKINVX1 U21 ( .A(din[6]), .Y(n169) );
  CLKINVX1 U22 ( .A(din[4]), .Y(n167) );
  CLKINVX1 U23 ( .A(din[7]), .Y(n170) );
  CLKINVX1 U24 ( .A(din[0]), .Y(n163) );
  CLKBUFX3 U25 ( .A(n171), .Y(n69) );
  CLKBUFX3 U26 ( .A(n171), .Y(n68) );
  CLKBUFX3 U27 ( .A(n171), .Y(n67) );
  CLKBUFX3 U28 ( .A(n171), .Y(n66) );
  CLKBUFX3 U29 ( .A(n171), .Y(n65) );
  CLKBUFX3 U30 ( .A(n171), .Y(n1) );
  NAND3BX1 U31 ( .AN(n162), .B(n79), .C(ispattern), .Y(n77) );
  AO21X1 U32 ( .A0(n71), .A1(s0[5]), .B0(n78), .Y(n150) );
  OAI32X1 U33 ( .A0(n172), .A1(n162), .A2(n79), .B0(n77), .B1(n168), .Y(n78)
         );
  NAND2X1 U34 ( .A(n87), .B(n88), .Y(N97) );
  NOR4X1 U35 ( .A(s7[7]), .B(s7[6]), .C(s7[5]), .D(s7[4]), .Y(n88) );
  NOR4X1 U36 ( .A(s7[3]), .B(s7[2]), .C(s7[1]), .D(s7[0]), .Y(n87) );
  OAI22XL U37 ( .A0(n76), .A1(n16), .B0(n77), .B1(n163), .Y(n145) );
  OAI22XL U38 ( .A0(n76), .A1(n9), .B0(n77), .B1(n170), .Y(n152) );
  OAI22XL U39 ( .A0(n76), .A1(n15), .B0(n164), .B1(n77), .Y(n146) );
  CLKINVX1 U40 ( .A(din[1]), .Y(n164) );
  OAI22XL U41 ( .A0(n76), .A1(n14), .B0(n165), .B1(n77), .Y(n147) );
  OAI22XL U42 ( .A0(n76), .A1(n13), .B0(n166), .B1(n77), .Y(n148) );
  OAI22XL U43 ( .A0(n76), .A1(n12), .B0(n167), .B1(n77), .Y(n149) );
  OAI22XL U44 ( .A0(n76), .A1(n10), .B0(n169), .B1(n77), .Y(n151) );
  OAI32X1 U45 ( .A0(n83), .A1(n162), .A2(n172), .B0(n70), .B1(n8), .Y(n160) );
  OAI33X1 U46 ( .A0(n84), .A1(n165), .A2(n85), .B0(n86), .B1(din[1]), .B2(n85), 
        .Y(n83) );
  NAND3X1 U47 ( .A(din[1]), .B(din[5]), .C(din[3]), .Y(n84) );
  NAND3X1 U48 ( .A(n166), .B(n168), .C(n165), .Y(n86) );
  OAI22XL U49 ( .A0(n76), .A1(n64), .B0(n72), .B1(n56), .Y(n97) );
  OAI22XL U50 ( .A0(n70), .A1(n63), .B0(n72), .B1(n55), .Y(n98) );
  OAI22XL U51 ( .A0(n70), .A1(n62), .B0(n72), .B1(n54), .Y(n99) );
  OAI22XL U52 ( .A0(n70), .A1(n61), .B0(n72), .B1(n53), .Y(n100) );
  OAI22XL U53 ( .A0(n70), .A1(n60), .B0(n73), .B1(n52), .Y(n101) );
  OAI22XL U54 ( .A0(n70), .A1(n59), .B0(n73), .B1(n51), .Y(n102) );
  OAI22XL U55 ( .A0(n70), .A1(n58), .B0(n73), .B1(n50), .Y(n103) );
  OAI22XL U56 ( .A0(n57), .A1(n70), .B0(n73), .B1(n49), .Y(n104) );
  OAI22XL U57 ( .A0(n70), .A1(n56), .B0(n73), .B1(n48), .Y(n105) );
  OAI22XL U58 ( .A0(n70), .A1(n55), .B0(n73), .B1(n47), .Y(n106) );
  OAI22XL U59 ( .A0(n70), .A1(n54), .B0(n74), .B1(n46), .Y(n107) );
  OAI22XL U60 ( .A0(n70), .A1(n53), .B0(n73), .B1(n45), .Y(n108) );
  OAI22XL U61 ( .A0(n70), .A1(n52), .B0(n73), .B1(n44), .Y(n109) );
  OAI22XL U62 ( .A0(n70), .A1(n51), .B0(n73), .B1(n43), .Y(n110) );
  OAI22XL U63 ( .A0(n70), .A1(n50), .B0(n73), .B1(n42), .Y(n111) );
  OAI22XL U64 ( .A0(n70), .A1(n49), .B0(n73), .B1(n41), .Y(n112) );
  OAI22XL U65 ( .A0(n70), .A1(n48), .B0(n73), .B1(n40), .Y(n113) );
  OAI22XL U66 ( .A0(n70), .A1(n47), .B0(n73), .B1(n39), .Y(n114) );
  OAI22XL U67 ( .A0(n70), .A1(n46), .B0(n73), .B1(n38), .Y(n115) );
  OAI22XL U68 ( .A0(n70), .A1(n45), .B0(n74), .B1(n37), .Y(n116) );
  OAI22XL U69 ( .A0(n76), .A1(n44), .B0(n74), .B1(n36), .Y(n117) );
  OAI22XL U70 ( .A0(n76), .A1(n43), .B0(n74), .B1(n35), .Y(n118) );
  OAI22XL U71 ( .A0(n76), .A1(n42), .B0(n74), .B1(n34), .Y(n119) );
  OAI22XL U72 ( .A0(n76), .A1(n41), .B0(n74), .B1(n33), .Y(n120) );
  OAI22XL U73 ( .A0(n76), .A1(n40), .B0(n74), .B1(n32), .Y(n121) );
  OAI22XL U74 ( .A0(n76), .A1(n39), .B0(n74), .B1(n31), .Y(n122) );
  OAI22XL U75 ( .A0(n76), .A1(n38), .B0(n74), .B1(n30), .Y(n123) );
  OAI22XL U76 ( .A0(n76), .A1(n37), .B0(n74), .B1(n29), .Y(n124) );
  OAI22XL U77 ( .A0(n76), .A1(n36), .B0(n74), .B1(n28), .Y(n125) );
  OAI22XL U78 ( .A0(n76), .A1(n35), .B0(n74), .B1(n27), .Y(n126) );
  OAI22XL U79 ( .A0(n70), .A1(n34), .B0(n74), .B1(n26), .Y(n127) );
  OAI22XL U80 ( .A0(n70), .A1(n33), .B0(n74), .B1(n25), .Y(n128) );
  OAI22XL U81 ( .A0(n70), .A1(n32), .B0(n161), .B1(n24), .Y(n129) );
  OAI22XL U82 ( .A0(n70), .A1(n31), .B0(n161), .B1(n23), .Y(n130) );
  OAI22XL U83 ( .A0(n70), .A1(n30), .B0(n161), .B1(n22), .Y(n131) );
  OAI22XL U84 ( .A0(n70), .A1(n29), .B0(n161), .B1(n21), .Y(n132) );
  OAI22XL U85 ( .A0(n70), .A1(n28), .B0(n161), .B1(n20), .Y(n133) );
  OAI22XL U86 ( .A0(n70), .A1(n27), .B0(n161), .B1(n19), .Y(n134) );
  OAI22XL U87 ( .A0(n70), .A1(n26), .B0(n161), .B1(n18), .Y(n135) );
  OAI22XL U88 ( .A0(n76), .A1(n25), .B0(n161), .B1(n17), .Y(n136) );
  OAI22XL U89 ( .A0(n76), .A1(n24), .B0(n161), .B1(n16), .Y(n137) );
  OAI22XL U90 ( .A0(n76), .A1(n23), .B0(n161), .B1(n15), .Y(n138) );
  OAI22XL U91 ( .A0(n76), .A1(n22), .B0(n161), .B1(n14), .Y(n139) );
  OAI22XL U92 ( .A0(n76), .A1(n21), .B0(n161), .B1(n13), .Y(n140) );
  OAI22XL U93 ( .A0(n76), .A1(n20), .B0(n161), .B1(n12), .Y(n141) );
  OAI22XL U94 ( .A0(n76), .A1(n19), .B0(n161), .B1(n11), .Y(n142) );
  OAI22XL U95 ( .A0(n76), .A1(n18), .B0(n162), .B1(n10), .Y(n143) );
  OAI22XL U96 ( .A0(n76), .A1(n17), .B0(n162), .B1(n9), .Y(n144) );
  OAI22XL U97 ( .A0(n76), .A1(n2), .B0(n162), .B1(n3), .Y(n154) );
  OAI22XL U98 ( .A0(n76), .A1(n3), .B0(n162), .B1(n4), .Y(n155) );
  OAI22XL U99 ( .A0(n76), .A1(n4), .B0(n162), .B1(n5), .Y(n156) );
  OAI22XL U100 ( .A0(n76), .A1(n5), .B0(n162), .B1(n6), .Y(n157) );
  OAI22XL U101 ( .A0(n76), .A1(n6), .B0(n162), .B1(n7), .Y(n158) );
  OAI22XL U102 ( .A0(n76), .A1(n7), .B0(n162), .B1(n8), .Y(n159) );
  OAI2BB2XL U103 ( .B0(n72), .B1(n64), .A0N(n71), .A1N(s7[0]), .Y(n96) );
  OAI2BB2XL U104 ( .B0(n72), .B1(n63), .A0N(n71), .A1N(s7[1]), .Y(n95) );
  OAI2BB2XL U105 ( .B0(n72), .B1(n62), .A0N(n71), .A1N(s7[2]), .Y(n94) );
  OAI2BB2XL U106 ( .B0(n72), .B1(n61), .A0N(n71), .A1N(s7[3]), .Y(n93) );
  OAI2BB2XL U107 ( .B0(n72), .B1(n60), .A0N(n71), .A1N(s7[4]), .Y(n92) );
  OAI2BB2XL U108 ( .B0(n72), .B1(n59), .A0N(n71), .A1N(s7[5]), .Y(n91) );
  OAI2BB2XL U109 ( .B0(n72), .B1(n58), .A0N(n71), .A1N(s7[6]), .Y(n90) );
  OAI2BB2XL U110 ( .B0(n72), .B1(n57), .A0N(n71), .A1N(s7[7]), .Y(n89) );
  OAI2BB2XL U111 ( .B0(n72), .B1(n2), .A0N(check[7]), .A1N(n71), .Y(n153) );
  CLKINVX1 U112 ( .A(ispattern), .Y(n172) );
endmodule


module Pattern_Shift_RegisterG_1 ( clk, reset, ispattern, reset_en, 
        right_shift_en, din, s0, s1, s2, s3, s4, s5, s6, s7, check, 
        push_complete );
  input [7:0] din;
  output [7:0] s0;
  output [7:0] s1;
  output [7:0] s2;
  output [7:0] s3;
  output [7:0] s4;
  output [7:0] s5;
  output [7:0] s6;
  output [7:0] s7;
  output [7:0] check;
  input clk, reset, ispattern, reset_en, right_shift_en;
  output push_complete;
  wire   N97, n1, n65, n66, n67, n68, n69, n70, n71, n72, n73, n74, n161, n162,
         n163, n164, n165, n166, n167, n168, n169, n170, n171, n172, n173,
         n174, n175, n176, n177, n178, n179, n180, n181, n182, n183, n184,
         n185, n186, n187, n188, n189, n190, n191, n192, n193, n194, n195,
         n196, n197, n198, n199, n200, n201, n202, n203, n204, n205, n206,
         n207, n208, n209, n210, n211, n212, n213, n214, n215, n216, n217,
         n218, n219, n220, n221, n222, n223, n224, n225, n226, n227, n228,
         n229, n230, n231, n232, n233, n234, n235, n236, n237, n238, n239,
         n240, n241, n242, n243, n244, n245, n246, n247, n248, n249, n250,
         n251, n252, n253, n254, n255, n256, n257, n258, n259, n260, n261,
         n262, n263, n264, n265, n266, n267, n268, n269, n270, n271, n272,
         n273, n274, n275, n276, n277, n278, n279, n280, n281, n282, n283,
         n284, n285, n286, n287, n288, n289, n290, n291, n292, n293, n294,
         n295, n296, n297, n298, n299, n300, n301, n302, n303, n304, n305,
         n306, n307, n308, n309, n310, n311, n312, n313, n314, n315, n316,
         n317, n318, n319, n320, n321;
  assign push_complete = N97;

  DFFRX1 \check_reg[4]  ( .D(n177), .CK(clk), .RN(n1), .Q(check[4]), .QN(n319)
         );
  DFFRX1 \check_reg[3]  ( .D(n176), .CK(clk), .RN(n1), .Q(check[3]), .QN(n318)
         );
  DFFRX1 \check_reg[0]  ( .D(n173), .CK(clk), .RN(n1), .Q(check[0]), .QN(n315)
         );
  DFFRX1 \check_reg[2]  ( .D(n175), .CK(clk), .RN(n1), .Q(check[2]), .QN(n317)
         );
  DFFRX1 \check_reg[7]  ( .D(n180), .CK(clk), .RN(n1), .Q(check[7]) );
  DFFRX1 \check_reg[1]  ( .D(n174), .CK(clk), .RN(n1), .Q(check[1]), .QN(n316)
         );
  DFFRX1 \check_reg[6]  ( .D(n179), .CK(clk), .RN(n1), .Q(check[6]), .QN(n321)
         );
  DFFRX1 \check_reg[5]  ( .D(n178), .CK(clk), .RN(n1), .Q(check[5]), .QN(n320)
         );
  DFFRX1 \s2_reg[0]  ( .D(n204), .CK(clk), .RN(n66), .Q(s2[0]), .QN(n291) );
  DFFRX1 \s0_reg[4]  ( .D(n184), .CK(clk), .RN(n1), .Q(s0[4]), .QN(n311) );
  DFFRX1 \s2_reg[1]  ( .D(n203), .CK(clk), .RN(n66), .Q(s2[1]), .QN(n292) );
  DFFRX1 \s1_reg[0]  ( .D(n196), .CK(clk), .RN(n65), .Q(s1[0]), .QN(n299) );
  DFFRX1 \s3_reg[0]  ( .D(n212), .CK(clk), .RN(n67), .Q(s3[0]), .QN(n283) );
  DFFRX1 \s2_reg[4]  ( .D(n200), .CK(clk), .RN(n66), .Q(s2[4]), .QN(n295) );
  DFFRX1 \s1_reg[1]  ( .D(n195), .CK(clk), .RN(n65), .Q(s1[1]), .QN(n300) );
  DFFRX1 \s0_reg[3]  ( .D(n185), .CK(clk), .RN(n65), .Q(s0[3]), .QN(n310) );
  DFFRX1 \s0_reg[5]  ( .D(n183), .CK(clk), .RN(n1), .Q(s0[5]), .QN(n312) );
  DFFRX1 \s2_reg[2]  ( .D(n202), .CK(clk), .RN(n66), .Q(s2[2]), .QN(n293) );
  DFFRX1 \s2_reg[5]  ( .D(n199), .CK(clk), .RN(n66), .Q(s2[5]), .QN(n296) );
  DFFRX1 \s3_reg[1]  ( .D(n211), .CK(clk), .RN(n67), .Q(s3[1]), .QN(n284) );
  DFFRX1 \s0_reg[6]  ( .D(n182), .CK(clk), .RN(n1), .Q(s0[6]), .QN(n313) );
  DFFRX1 \s1_reg[4]  ( .D(n192), .CK(clk), .RN(n65), .Q(s1[4]), .QN(n303) );
  DFFRX1 \s3_reg[4]  ( .D(n208), .CK(clk), .RN(n66), .Q(s3[4]), .QN(n287) );
  DFFRX1 \s1_reg[2]  ( .D(n194), .CK(clk), .RN(n65), .Q(s1[2]), .QN(n301) );
  DFFRX1 \s2_reg[3]  ( .D(n201), .CK(clk), .RN(n66), .Q(s2[3]), .QN(n294) );
  DFFRX1 \s1_reg[5]  ( .D(n191), .CK(clk), .RN(n65), .Q(s1[5]), .QN(n304) );
  DFFRX1 \s0_reg[7]  ( .D(n181), .CK(clk), .RN(n1), .Q(s0[7]), .QN(n314) );
  DFFRX1 \s2_reg[6]  ( .D(n198), .CK(clk), .RN(n66), .Q(s2[6]), .QN(n297) );
  DFFRX1 \s3_reg[2]  ( .D(n210), .CK(clk), .RN(n67), .Q(s3[2]), .QN(n285) );
  DFFRX1 \s3_reg[5]  ( .D(n207), .CK(clk), .RN(n66), .Q(s3[5]), .QN(n288) );
  DFFRX1 \s6_reg[0]  ( .D(n236), .CK(clk), .RN(n69), .Q(s6[0]), .QN(n259) );
  DFFRX1 \s1_reg[3]  ( .D(n193), .CK(clk), .RN(n65), .Q(s1[3]), .QN(n302) );
  DFFRX1 \s1_reg[6]  ( .D(n190), .CK(clk), .RN(n65), .Q(s1[6]), .QN(n305) );
  DFFRX1 \s3_reg[3]  ( .D(n209), .CK(clk), .RN(n67), .Q(s3[3]), .QN(n286) );
  DFFRX1 \s2_reg[7]  ( .D(n197), .CK(clk), .RN(n66), .Q(s2[7]), .QN(n298) );
  DFFRX1 \s6_reg[1]  ( .D(n235), .CK(clk), .RN(n69), .Q(s6[1]), .QN(n260) );
  DFFRX1 \s3_reg[6]  ( .D(n206), .CK(clk), .RN(n66), .Q(s3[6]), .QN(n289) );
  DFFRX1 \s6_reg[4]  ( .D(n232), .CK(clk), .RN(n69), .Q(s6[4]), .QN(n263) );
  DFFRX1 \s1_reg[7]  ( .D(n189), .CK(clk), .RN(n65), .Q(s1[7]), .QN(n306) );
  DFFRX1 \s6_reg[2]  ( .D(n234), .CK(clk), .RN(n69), .Q(s6[2]), .QN(n261) );
  DFFRX1 \s6_reg[5]  ( .D(n231), .CK(clk), .RN(n69), .Q(s6[5]), .QN(n264) );
  DFFRX1 \s0_reg[0]  ( .D(n188), .CK(clk), .RN(n65), .Q(s0[0]), .QN(n307) );
  DFFRX1 \s6_reg[3]  ( .D(n233), .CK(clk), .RN(n69), .Q(s6[3]), .QN(n262) );
  DFFRX1 \s6_reg[6]  ( .D(n230), .CK(clk), .RN(n68), .Q(s6[6]), .QN(n265) );
  DFFRX1 \s0_reg[1]  ( .D(n187), .CK(clk), .RN(n65), .Q(s0[1]), .QN(n308) );
  DFFRX1 \s0_reg[2]  ( .D(n186), .CK(clk), .RN(n65), .Q(s0[2]), .QN(n309) );
  DFFRX1 \s5_reg[7]  ( .D(n221), .CK(clk), .RN(n68), .Q(s5[7]), .QN(n274) );
  DFFRX1 \s7_reg[4]  ( .D(n241), .CK(clk), .RN(n69), .Q(s7[4]) );
  DFFRX1 \s4_reg[0]  ( .D(n220), .CK(clk), .RN(n67), .Q(s4[0]), .QN(n275) );
  DFFRX1 \s4_reg[1]  ( .D(n219), .CK(clk), .RN(n67), .Q(s4[1]), .QN(n276) );
  DFFRX1 \s7_reg[3]  ( .D(n240), .CK(clk), .RN(n69), .Q(s7[3]) );
  DFFRX1 \s4_reg[4]  ( .D(n216), .CK(clk), .RN(n67), .Q(s4[4]), .QN(n279) );
  DFFRX1 \s4_reg[2]  ( .D(n218), .CK(clk), .RN(n67), .Q(s4[2]), .QN(n277) );
  DFFRX1 \s4_reg[5]  ( .D(n215), .CK(clk), .RN(n67), .Q(s4[5]), .QN(n280) );
  DFFRX1 \s4_reg[3]  ( .D(n217), .CK(clk), .RN(n67), .Q(s4[3]), .QN(n278) );
  DFFRX1 \s4_reg[6]  ( .D(n214), .CK(clk), .RN(n67), .Q(s4[6]), .QN(n281) );
  DFFRX1 \s4_reg[7]  ( .D(n213), .CK(clk), .RN(n67), .Q(s4[7]), .QN(n282) );
  DFFRX1 \s5_reg[0]  ( .D(n228), .CK(clk), .RN(n68), .Q(s5[0]), .QN(n267) );
  DFFRX1 \s3_reg[7]  ( .D(n205), .CK(clk), .RN(n66), .Q(s3[7]), .QN(n290) );
  DFFRX1 \s5_reg[1]  ( .D(n227), .CK(clk), .RN(n68), .Q(s5[1]), .QN(n268) );
  DFFRX1 \s5_reg[4]  ( .D(n224), .CK(clk), .RN(n68), .Q(s5[4]), .QN(n271) );
  DFFRX1 \s5_reg[2]  ( .D(n226), .CK(clk), .RN(n68), .Q(s5[2]), .QN(n269) );
  DFFRX1 \s5_reg[5]  ( .D(n223), .CK(clk), .RN(n68), .Q(s5[5]), .QN(n272) );
  DFFRX1 \s5_reg[3]  ( .D(n225), .CK(clk), .RN(n68), .Q(s5[3]), .QN(n270) );
  DFFRX1 \s6_reg[7]  ( .D(n229), .CK(clk), .RN(n68), .Q(s6[7]), .QN(n266) );
  DFFRX1 \s5_reg[6]  ( .D(n222), .CK(clk), .RN(n68), .Q(s5[6]), .QN(n273) );
  DFFRX1 \s7_reg[0]  ( .D(n237), .CK(clk), .RN(n69), .Q(s7[0]) );
  DFFRX1 \s7_reg[1]  ( .D(n238), .CK(clk), .RN(n69), .Q(s7[1]) );
  DFFRX1 \s7_reg[5]  ( .D(n242), .CK(clk), .RN(n69), .Q(s7[5]) );
  DFFRX1 \s7_reg[2]  ( .D(n239), .CK(clk), .RN(n69), .Q(s7[2]) );
  DFFRX1 \s7_reg[6]  ( .D(n243), .CK(clk), .RN(n68), .Q(s7[6]) );
  DFFRX1 \s7_reg[7]  ( .D(n244), .CK(clk), .RN(n68), .Q(s7[7]) );
  NAND2X1 U3 ( .A(right_shift_en), .B(n70), .Y(n258) );
  XOR2X1 U4 ( .A(right_shift_en), .B(reset_en), .Y(n257) );
  CLKINVX1 U5 ( .A(reset), .Y(n171) );
  CLKINVX1 U6 ( .A(n71), .Y(n70) );
  CLKBUFX3 U7 ( .A(n258), .Y(n162) );
  CLKBUFX3 U8 ( .A(n258), .Y(n72) );
  CLKBUFX3 U9 ( .A(n258), .Y(n73) );
  CLKBUFX3 U10 ( .A(n258), .Y(n74) );
  CLKBUFX3 U11 ( .A(n258), .Y(n161) );
  CLKINVX1 U12 ( .A(n257), .Y(n71) );
  NAND4X1 U13 ( .A(din[2]), .B(n253), .C(n170), .D(n163), .Y(n254) );
  OAI33X1 U14 ( .A0(n252), .A1(n166), .A2(n164), .B0(n251), .B1(din[1]), .B2(
        n165), .Y(n253) );
  NAND3X1 U15 ( .A(din[1]), .B(n165), .C(din[3]), .Y(n252) );
  NAND3X1 U16 ( .A(n166), .B(n164), .C(n167), .Y(n251) );
  CLKINVX1 U17 ( .A(din[3]), .Y(n167) );
  CLKINVX1 U18 ( .A(din[5]), .Y(n165) );
  NAND4X1 U19 ( .A(n170), .B(n166), .C(n164), .D(n163), .Y(n248) );
  CLKINVX1 U20 ( .A(din[2]), .Y(n168) );
  CLKINVX1 U21 ( .A(din[6]), .Y(n164) );
  CLKINVX1 U22 ( .A(din[4]), .Y(n166) );
  CLKINVX1 U23 ( .A(din[7]), .Y(n163) );
  CLKINVX1 U24 ( .A(din[0]), .Y(n170) );
  CLKBUFX3 U25 ( .A(n171), .Y(n69) );
  CLKBUFX3 U26 ( .A(n171), .Y(n68) );
  CLKBUFX3 U27 ( .A(n171), .Y(n67) );
  CLKBUFX3 U28 ( .A(n171), .Y(n66) );
  CLKBUFX3 U29 ( .A(n171), .Y(n65) );
  CLKBUFX3 U30 ( .A(n171), .Y(n1) );
  NAND3BX1 U31 ( .AN(n162), .B(n254), .C(ispattern), .Y(n256) );
  NAND2X1 U32 ( .A(n246), .B(n245), .Y(N97) );
  NOR4X1 U33 ( .A(s7[7]), .B(s7[6]), .C(s7[5]), .D(s7[4]), .Y(n245) );
  NOR4X1 U34 ( .A(s7[3]), .B(s7[2]), .C(s7[1]), .D(s7[0]), .Y(n246) );
  AO21X1 U35 ( .A0(n71), .A1(s0[5]), .B0(n255), .Y(n183) );
  OAI32X1 U36 ( .A0(n172), .A1(n162), .A2(n254), .B0(n256), .B1(n165), .Y(n255) );
  OAI22XL U37 ( .A0(n257), .A1(n307), .B0(n256), .B1(n170), .Y(n188) );
  OAI22XL U38 ( .A0(n257), .A1(n314), .B0(n256), .B1(n163), .Y(n181) );
  OAI22XL U39 ( .A0(n257), .A1(n308), .B0(n169), .B1(n256), .Y(n187) );
  CLKINVX1 U40 ( .A(din[1]), .Y(n169) );
  OAI22XL U41 ( .A0(n257), .A1(n309), .B0(n168), .B1(n256), .Y(n186) );
  OAI22XL U42 ( .A0(n257), .A1(n310), .B0(n167), .B1(n256), .Y(n185) );
  OAI22XL U43 ( .A0(n257), .A1(n311), .B0(n166), .B1(n256), .Y(n184) );
  OAI22XL U44 ( .A0(n257), .A1(n313), .B0(n164), .B1(n256), .Y(n182) );
  OAI32X1 U45 ( .A0(n250), .A1(n162), .A2(n172), .B0(n70), .B1(n315), .Y(n173)
         );
  OAI33X1 U46 ( .A0(n249), .A1(n168), .A2(n248), .B0(n247), .B1(din[1]), .B2(
        n248), .Y(n250) );
  NAND3X1 U47 ( .A(n167), .B(n165), .C(n168), .Y(n247) );
  NAND3X1 U48 ( .A(din[1]), .B(din[5]), .C(din[3]), .Y(n249) );
  OAI22XL U49 ( .A0(n257), .A1(n259), .B0(n72), .B1(n267), .Y(n236) );
  OAI22XL U50 ( .A0(n70), .A1(n260), .B0(n72), .B1(n268), .Y(n235) );
  OAI22XL U51 ( .A0(n70), .A1(n261), .B0(n72), .B1(n269), .Y(n234) );
  OAI22XL U52 ( .A0(n70), .A1(n262), .B0(n72), .B1(n270), .Y(n233) );
  OAI22XL U53 ( .A0(n70), .A1(n263), .B0(n73), .B1(n271), .Y(n232) );
  OAI22XL U54 ( .A0(n70), .A1(n264), .B0(n73), .B1(n272), .Y(n231) );
  OAI22XL U55 ( .A0(n70), .A1(n265), .B0(n73), .B1(n273), .Y(n230) );
  OAI22XL U56 ( .A0(n266), .A1(n70), .B0(n73), .B1(n274), .Y(n229) );
  OAI22XL U57 ( .A0(n70), .A1(n267), .B0(n73), .B1(n275), .Y(n228) );
  OAI22XL U58 ( .A0(n70), .A1(n268), .B0(n73), .B1(n276), .Y(n227) );
  OAI22XL U59 ( .A0(n70), .A1(n269), .B0(n74), .B1(n277), .Y(n226) );
  OAI22XL U60 ( .A0(n70), .A1(n270), .B0(n73), .B1(n278), .Y(n225) );
  OAI22XL U61 ( .A0(n70), .A1(n271), .B0(n73), .B1(n279), .Y(n224) );
  OAI22XL U62 ( .A0(n70), .A1(n272), .B0(n73), .B1(n280), .Y(n223) );
  OAI22XL U63 ( .A0(n70), .A1(n273), .B0(n73), .B1(n281), .Y(n222) );
  OAI22XL U64 ( .A0(n70), .A1(n274), .B0(n73), .B1(n282), .Y(n221) );
  OAI22XL U65 ( .A0(n70), .A1(n275), .B0(n73), .B1(n283), .Y(n220) );
  OAI22XL U66 ( .A0(n70), .A1(n276), .B0(n73), .B1(n284), .Y(n219) );
  OAI22XL U67 ( .A0(n70), .A1(n277), .B0(n73), .B1(n285), .Y(n218) );
  OAI22XL U68 ( .A0(n70), .A1(n278), .B0(n74), .B1(n286), .Y(n217) );
  OAI22XL U69 ( .A0(n257), .A1(n279), .B0(n74), .B1(n287), .Y(n216) );
  OAI22XL U70 ( .A0(n257), .A1(n280), .B0(n74), .B1(n288), .Y(n215) );
  OAI22XL U71 ( .A0(n257), .A1(n281), .B0(n74), .B1(n289), .Y(n214) );
  OAI22XL U72 ( .A0(n257), .A1(n282), .B0(n74), .B1(n290), .Y(n213) );
  OAI22XL U73 ( .A0(n257), .A1(n283), .B0(n74), .B1(n291), .Y(n212) );
  OAI22XL U74 ( .A0(n257), .A1(n284), .B0(n74), .B1(n292), .Y(n211) );
  OAI22XL U75 ( .A0(n257), .A1(n285), .B0(n74), .B1(n293), .Y(n210) );
  OAI22XL U76 ( .A0(n257), .A1(n286), .B0(n74), .B1(n294), .Y(n209) );
  OAI22XL U77 ( .A0(n257), .A1(n287), .B0(n74), .B1(n295), .Y(n208) );
  OAI22XL U78 ( .A0(n257), .A1(n288), .B0(n74), .B1(n296), .Y(n207) );
  OAI22XL U79 ( .A0(n70), .A1(n289), .B0(n74), .B1(n297), .Y(n206) );
  OAI22XL U80 ( .A0(n70), .A1(n290), .B0(n74), .B1(n298), .Y(n205) );
  OAI22XL U81 ( .A0(n70), .A1(n291), .B0(n161), .B1(n299), .Y(n204) );
  OAI22XL U82 ( .A0(n70), .A1(n292), .B0(n161), .B1(n300), .Y(n203) );
  OAI22XL U83 ( .A0(n70), .A1(n293), .B0(n161), .B1(n301), .Y(n202) );
  OAI22XL U84 ( .A0(n70), .A1(n294), .B0(n161), .B1(n302), .Y(n201) );
  OAI22XL U85 ( .A0(n70), .A1(n295), .B0(n161), .B1(n303), .Y(n200) );
  OAI22XL U86 ( .A0(n70), .A1(n296), .B0(n161), .B1(n304), .Y(n199) );
  OAI22XL U87 ( .A0(n70), .A1(n297), .B0(n161), .B1(n305), .Y(n198) );
  OAI22XL U88 ( .A0(n257), .A1(n298), .B0(n161), .B1(n306), .Y(n197) );
  OAI22XL U89 ( .A0(n257), .A1(n299), .B0(n161), .B1(n307), .Y(n196) );
  OAI22XL U90 ( .A0(n257), .A1(n300), .B0(n161), .B1(n308), .Y(n195) );
  OAI22XL U91 ( .A0(n257), .A1(n301), .B0(n161), .B1(n309), .Y(n194) );
  OAI22XL U92 ( .A0(n257), .A1(n302), .B0(n161), .B1(n310), .Y(n193) );
  OAI22XL U93 ( .A0(n257), .A1(n303), .B0(n161), .B1(n311), .Y(n192) );
  OAI22XL U94 ( .A0(n257), .A1(n304), .B0(n161), .B1(n312), .Y(n191) );
  OAI22XL U95 ( .A0(n257), .A1(n305), .B0(n162), .B1(n313), .Y(n190) );
  OAI22XL U96 ( .A0(n257), .A1(n306), .B0(n162), .B1(n314), .Y(n189) );
  OAI22XL U97 ( .A0(n257), .A1(n321), .B0(n162), .B1(n320), .Y(n179) );
  OAI22XL U98 ( .A0(n257), .A1(n320), .B0(n162), .B1(n319), .Y(n178) );
  OAI22XL U99 ( .A0(n257), .A1(n319), .B0(n162), .B1(n318), .Y(n177) );
  OAI22XL U100 ( .A0(n257), .A1(n318), .B0(n162), .B1(n317), .Y(n176) );
  OAI22XL U101 ( .A0(n257), .A1(n317), .B0(n162), .B1(n316), .Y(n175) );
  OAI22XL U102 ( .A0(n257), .A1(n316), .B0(n162), .B1(n315), .Y(n174) );
  OAI2BB2XL U103 ( .B0(n72), .B1(n259), .A0N(n71), .A1N(s7[0]), .Y(n237) );
  OAI2BB2XL U104 ( .B0(n72), .B1(n260), .A0N(n71), .A1N(s7[1]), .Y(n238) );
  OAI2BB2XL U105 ( .B0(n72), .B1(n261), .A0N(n71), .A1N(s7[2]), .Y(n239) );
  OAI2BB2XL U106 ( .B0(n72), .B1(n262), .A0N(n71), .A1N(s7[3]), .Y(n240) );
  OAI2BB2XL U107 ( .B0(n72), .B1(n263), .A0N(n71), .A1N(s7[4]), .Y(n241) );
  OAI2BB2XL U108 ( .B0(n72), .B1(n264), .A0N(n71), .A1N(s7[5]), .Y(n242) );
  OAI2BB2XL U109 ( .B0(n72), .B1(n265), .A0N(n71), .A1N(s7[6]), .Y(n243) );
  OAI2BB2XL U110 ( .B0(n72), .B1(n266), .A0N(n71), .A1N(s7[7]), .Y(n244) );
  OAI2BB2XL U111 ( .B0(n72), .B1(n321), .A0N(check[7]), .A1N(n71), .Y(n180) );
  CLKINVX1 U112 ( .A(ispattern), .Y(n172) );
endmodule


module String_Shift_Register ( clk, reset, right_shift_en, isstring, din, s0, 
        s1, s2, s3, s4, s5, s6, s7, s8, s9, s10, s11, s12, s13, s14, s15, s16, 
        s17, s18, s19, s20, s21, s22, s23, s24, s25, s26, s27, s28, s29, s30, 
        s31, s32 );
  input [7:0] din;
  output [7:0] s0;
  output [7:0] s1;
  output [7:0] s2;
  output [7:0] s3;
  output [7:0] s4;
  output [7:0] s5;
  output [7:0] s6;
  output [7:0] s7;
  output [7:0] s8;
  output [7:0] s9;
  output [7:0] s10;
  output [7:0] s11;
  output [7:0] s12;
  output [7:0] s13;
  output [7:0] s14;
  output [7:0] s15;
  output [7:0] s16;
  output [7:0] s17;
  output [7:0] s18;
  output [7:0] s19;
  output [7:0] s20;
  output [7:0] s21;
  output [7:0] s22;
  output [7:0] s23;
  output [7:0] s24;
  output [7:0] s25;
  output [7:0] s26;
  output [7:0] s27;
  output [7:0] s28;
  output [7:0] s29;
  output [7:0] s30;
  output [7:0] s31;
  output [7:0] s32;
  input clk, reset, right_shift_en, isstring;
  wire   n258, n264, n265, n266, n269, n270, n271, n272, n273, n274, n275,
         n276, n277, n278, n279, n280, n281, n282, n283, n284, n285, n286,
         n287, n288, n289, n290, n291, n292, n293, n294, n295, n296, n297,
         n298, n299, n300, n301, n302, n303, n304, n305, n306, n307, n308,
         n309, n310, n311, n312, n313, n314, n315, n316, n317, n318, n319,
         n320, n321, n322, n323, n324, n325, n326, n327, n328, n329, n330,
         n331, n332, n333, n334, n335, n336, n337, n338, n339, n340, n341,
         n342, n343, n344, n345, n346, n347, n348, n349, n350, n351, n352,
         n353, n354, n355, n356, n357, n358, n359, n360, n361, n362, n363,
         n364, n365, n366, n367, n368, n369, n370, n371, n372, n373, n374,
         n375, n376, n377, n378, n379, n380, n381, n382, n383, n384, n385,
         n386, n387, n388, n389, n390, n391, n392, n393, n394, n395, n396,
         n397, n398, n399, n400, n401, n402, n403, n404, n405, n406, n407,
         n408, n409, n410, n411, n412, n413, n414, n415, n416, n417, n418,
         n419, n420, n421, n422, n423, n424, n425, n426, n427, n428, n429,
         n430, n431, n432, n433, n434, n435, n436, n437, n438, n439, n440,
         n441, n442, n443, n444, n445, n446, n447, n448, n449, n450, n451,
         n452, n453, n454, n455, n456, n457, n458, n459, n460, n461, n462,
         n463, n464, n465, n466, n467, n468, n469, n470, n471, n472, n473,
         n474, n475, n476, n477, n478, n479, n480, n481, n482, n483, n484,
         n485, n486, n487, n488, n489, n490, n491, n492, n493, n494, n495,
         n496, n497, n498, n499, n500, n501, n502, n503, n504, n505, n506,
         n507, n508, n509, n510, n511, n512, n513, n514, n515, n516, n517,
         n518, n519, n520, n521, n522, n523, n524, n525, n526, n527, n528,
         n529, n530, n531, n532, n533, n534, n535, n536, n537, n538, n539,
         n541, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14,
         n15, n16, n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28,
         n29, n30, n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42,
         n43, n44, n45, n46, n47, n48, n49, n50, n51, n52, n53, n54, n55, n56,
         n57, n58, n59, n60, n61, n62, n63, n64, n65, n66, n67, n68, n69, n70,
         n71, n72, n73, n74, n75, n76, n77, n78, n79, n80, n81, n82, n83, n84,
         n85, n86, n87, n88, n89, n90, n91, n92, n93, n94, n95, n96, n97, n98,
         n99, n100, n101, n102, n103, n104, n105, n106, n107, n108, n109, n110,
         n111, n112, n113, n114, n115, n116, n117, n118, n119, n120, n121,
         n122, n123, n124, n125, n126, n127, n128, n129, n130, n131, n132,
         n133, n134, n135, n136, n137, n138, n139, n140, n141, n142, n143,
         n144, n145, n146, n147, n148, n149, n150, n151, n152, n153, n154,
         n155, n156, n157, n158, n159, n160, n161, n162, n163, n164, n165,
         n166, n167, n168, n169, n170, n171, n172, n173, n174, n175, n176,
         n177, n178, n179, n180, n181, n182, n183, n184, n185, n186, n187,
         n188, n189, n190, n191, n192, n193, n194, n195, n196, n197, n198,
         n199, n200, n201, n202, n203, n204, n205, n206, n207, n208, n209,
         n210, n211, n212, n213, n214, n215, n216, n217, n218, n219, n220,
         n221, n222, n223, n224, n225, n226, n227, n228, n229, n230, n231,
         n232, n233, n234, n235, n236, n237, n238, n239, n240, n241, n242,
         n243, n244, n245, n246, n247, n248, n249, n250, n251, n252, n253,
         n254, n255, n256, n257, n259, n260, n261, n262, n263, n267, n268,
         n540, n542, n543, n544, n545, n546, n547, n548, n549, n550, n551,
         n552, n553, n554, n555, n556, n557, n558, n559, n560, n561, n562,
         n563, n564, n565, n566, n567, n568, n569, n570, n571, n572, n573,
         n574, n575, n576, n577, n578, n579, n580, n581, n582, n583, n584,
         n585, n586, n587, n588, n589, n590, n591, n592, n593, n594, n595,
         n596, n597, n598, n599, n600, n601, n602, n603, n604, n605, n606,
         n607, n608, n609, n610, n611, n612, n613, n614, n615, n616, n617,
         n618, n619, n620, n621, n622, n623, n624, n625, n626, n627, n628,
         n629, n630, n631, n632, n633, n634, n635, n636, n637, n638, n639,
         n640, n641, n642, n643, n644, n645, n646, n647, n648, n649, n650,
         n651, n652, n653, n654, n655;

  DFFRX1 \s32_reg[0]  ( .D(n277), .CK(clk), .RN(n540), .Q(s32[0]), .QN(n276)
         );
  DFFRX1 \s32_reg[1]  ( .D(n280), .CK(clk), .RN(n540), .Q(s32[1]), .QN(n275)
         );
  DFFRX1 \s32_reg[4]  ( .D(n289), .CK(clk), .RN(n542), .Q(s32[4]), .QN(n272)
         );
  DFFRX1 \s32_reg[2]  ( .D(n283), .CK(clk), .RN(n540), .Q(s32[2]), .QN(n274)
         );
  DFFRX1 \s32_reg[5]  ( .D(n292), .CK(clk), .RN(n542), .Q(s32[5]), .QN(n271)
         );
  DFFRX1 \s32_reg[3]  ( .D(n286), .CK(clk), .RN(n540), .Q(s32[3]), .QN(n273)
         );
  DFFRX1 \s32_reg[6]  ( .D(n295), .CK(clk), .RN(n542), .Q(s32[6]), .QN(n270)
         );
  DFFRX1 \s32_reg[7]  ( .D(n298), .CK(clk), .RN(n542), .Q(s32[7]), .QN(n269)
         );
  DFFRX1 \s31_reg[0]  ( .D(n278), .CK(clk), .RN(n540), .Q(s31[0]), .QN(n256)
         );
  DFFRX1 \s31_reg[1]  ( .D(n281), .CK(clk), .RN(n540), .Q(s31[1]), .QN(n249)
         );
  DFFRX1 \s31_reg[4]  ( .D(n290), .CK(clk), .RN(n542), .Q(s31[4]), .QN(n252)
         );
  DFFRX1 \s31_reg[2]  ( .D(n284), .CK(clk), .RN(n540), .Q(s31[2]), .QN(n250)
         );
  DFFRX1 \s31_reg[5]  ( .D(n293), .CK(clk), .RN(n542), .Q(s31[5]), .QN(n253)
         );
  DFFRX1 \s31_reg[3]  ( .D(n287), .CK(clk), .RN(n540), .Q(s31[3]), .QN(n251)
         );
  DFFRX1 \s31_reg[6]  ( .D(n296), .CK(clk), .RN(n542), .Q(s31[6]), .QN(n254)
         );
  DFFRX1 \s31_reg[7]  ( .D(n299), .CK(clk), .RN(n542), .Q(s31[7]), .QN(n255)
         );
  DFFRX1 \s0_reg[5]  ( .D(n538), .CK(clk), .RN(n562), .Q(s0[5]), .QN(n233) );
  DFFRX1 \s5_reg[0]  ( .D(n493), .CK(clk), .RN(n559), .Q(s5[0]), .QN(n80) );
  DFFRX1 \s6_reg[0]  ( .D(n485), .CK(clk), .RN(n558), .Q(s6[0]), .QN(n187) );
  DFFRX1 \s5_reg[1]  ( .D(n494), .CK(clk), .RN(n559), .Q(s5[1]), .QN(n81) );
  DFFRX1 \s5_reg[4]  ( .D(n497), .CK(clk), .RN(n559), .Q(s5[4]), .QN(n84) );
  DFFRX1 \s6_reg[1]  ( .D(n486), .CK(clk), .RN(n558), .Q(s6[1]), .QN(n188) );
  DFFRX1 \s6_reg[4]  ( .D(n489), .CK(clk), .RN(n558), .Q(s6[4]), .QN(n191) );
  DFFRX1 \s5_reg[2]  ( .D(n495), .CK(clk), .RN(n559), .Q(s5[2]), .QN(n82) );
  DFFRX1 \s5_reg[5]  ( .D(n498), .CK(clk), .RN(n559), .Q(s5[5]), .QN(n85) );
  DFFRX1 \s6_reg[2]  ( .D(n487), .CK(clk), .RN(n558), .Q(s6[2]), .QN(n189) );
  DFFRX1 \s6_reg[5]  ( .D(n490), .CK(clk), .RN(n558), .Q(s6[5]), .QN(n192) );
  DFFRX1 \s5_reg[3]  ( .D(n496), .CK(clk), .RN(n559), .Q(s5[3]), .QN(n83) );
  DFFRX1 \s6_reg[3]  ( .D(n488), .CK(clk), .RN(n558), .Q(s6[3]), .QN(n190) );
  DFFRX1 \s5_reg[6]  ( .D(n499), .CK(clk), .RN(n559), .Q(s5[6]), .QN(n86) );
  DFFRX1 \s6_reg[6]  ( .D(n491), .CK(clk), .RN(n558), .Q(s6[6]), .QN(n193) );
  DFFRX1 \s5_reg[7]  ( .D(n500), .CK(clk), .RN(n559), .Q(s5[7]), .QN(n87) );
  DFFRX1 \s6_reg[7]  ( .D(n492), .CK(clk), .RN(n558), .Q(s6[7]), .QN(n194) );
  DFFRX1 \s0_reg[0]  ( .D(n533), .CK(clk), .RN(n562), .Q(s0[0]), .QN(n234) );
  DFFRX1 \s4_reg[0]  ( .D(n501), .CK(clk), .RN(n559), .Q(s4[0]), .QN(n195) );
  DFFRX1 \s0_reg[1]  ( .D(n534), .CK(clk), .RN(n562), .Q(s0[1]), .QN(n235) );
  DFFRX1 \s0_reg[4]  ( .D(n537), .CK(clk), .RN(n562), .Q(s0[4]), .QN(n238) );
  DFFRX1 \s4_reg[1]  ( .D(n502), .CK(clk), .RN(n559), .Q(s4[1]), .QN(n196) );
  DFFRX1 \s3_reg[0]  ( .D(n509), .CK(clk), .RN(n560), .Q(s3[0]), .QN(n88) );
  DFFRX1 \s4_reg[4]  ( .D(n505), .CK(clk), .RN(n560), .Q(s4[4]), .QN(n199) );
  DFFRX1 \s0_reg[2]  ( .D(n535), .CK(clk), .RN(n562), .Q(s0[2]), .QN(n236) );
  DFFRX1 \s1_reg[0]  ( .D(n525), .CK(clk), .RN(n561), .Q(s1[0]), .QN(n96) );
  DFFRX1 \s4_reg[2]  ( .D(n503), .CK(clk), .RN(n559), .Q(s4[2]), .QN(n197) );
  DFFRX1 \s2_reg[0]  ( .D(n517), .CK(clk), .RN(n561), .Q(s2[0]), .QN(n203) );
  DFFRX1 \s0_reg[3]  ( .D(n536), .CK(clk), .RN(n562), .Q(s0[3]), .QN(n237) );
  DFFRX1 \s3_reg[1]  ( .D(n510), .CK(clk), .RN(n560), .Q(s3[1]), .QN(n89) );
  DFFRX1 \s4_reg[5]  ( .D(n506), .CK(clk), .RN(n560), .Q(s4[5]), .QN(n200) );
  DFFRX1 \s3_reg[4]  ( .D(n513), .CK(clk), .RN(n560), .Q(s3[4]), .QN(n92) );
  DFFRX1 \s0_reg[6]  ( .D(n539), .CK(clk), .RN(n562), .Q(s0[6]), .QN(n239) );
  DFFRX1 \s1_reg[1]  ( .D(n526), .CK(clk), .RN(n561), .Q(s1[1]), .QN(n97) );
  DFFRX1 \s4_reg[3]  ( .D(n504), .CK(clk), .RN(n559), .Q(s4[3]), .QN(n198) );
  DFFRX1 \s7_reg[0]  ( .D(n477), .CK(clk), .RN(n557), .Q(s7[0]), .QN(n72) );
  DFFRX1 \s1_reg[4]  ( .D(n529), .CK(clk), .RN(n562), .Q(s1[4]), .QN(n100) );
  DFFRX1 \s2_reg[1]  ( .D(n518), .CK(clk), .RN(n561), .Q(s2[1]), .QN(n204) );
  DFFRX1 \s3_reg[2]  ( .D(n511), .CK(clk), .RN(n560), .Q(s3[2]), .QN(n90) );
  DFFRX1 \s4_reg[6]  ( .D(n507), .CK(clk), .RN(n560), .Q(s4[6]), .QN(n201) );
  DFFRX1 \s2_reg[4]  ( .D(n521), .CK(clk), .RN(n561), .Q(s2[4]), .QN(n207) );
  DFFRX1 \s0_reg[7]  ( .D(n541), .CK(clk), .RN(n562), .Q(s0[7]), .QN(n240) );
  DFFRX1 \s3_reg[5]  ( .D(n514), .CK(clk), .RN(n560), .Q(s3[5]), .QN(n93) );
  DFFRX1 \s7_reg[1]  ( .D(n478), .CK(clk), .RN(n557), .Q(s7[1]), .QN(n73) );
  DFFRX1 \s1_reg[2]  ( .D(n527), .CK(clk), .RN(n561), .Q(s1[2]), .QN(n98) );
  DFFRX1 \s3_reg[3]  ( .D(n512), .CK(clk), .RN(n560), .Q(s3[3]), .QN(n91) );
  DFFRX1 \s1_reg[5]  ( .D(n530), .CK(clk), .RN(n562), .Q(s1[5]), .QN(n101) );
  DFFRX1 \s4_reg[7]  ( .D(n508), .CK(clk), .RN(n560), .Q(s4[7]), .QN(n202) );
  DFFRX1 \s7_reg[4]  ( .D(n481), .CK(clk), .RN(n558), .Q(s7[4]), .QN(n76) );
  DFFRX1 \s2_reg[2]  ( .D(n519), .CK(clk), .RN(n561), .Q(s2[2]), .QN(n205) );
  DFFRX1 \s2_reg[5]  ( .D(n522), .CK(clk), .RN(n561), .Q(s2[5]), .QN(n208) );
  DFFRX1 \s3_reg[6]  ( .D(n515), .CK(clk), .RN(n560), .Q(s3[6]), .QN(n94) );
  DFFRX1 \s1_reg[3]  ( .D(n528), .CK(clk), .RN(n561), .Q(s1[3]), .QN(n99) );
  DFFRX1 \s7_reg[2]  ( .D(n479), .CK(clk), .RN(n557), .Q(s7[2]), .QN(n74) );
  DFFRX1 \s2_reg[3]  ( .D(n520), .CK(clk), .RN(n561), .Q(s2[3]), .QN(n206) );
  DFFRX1 \s7_reg[5]  ( .D(n482), .CK(clk), .RN(n558), .Q(s7[5]), .QN(n77) );
  DFFRX1 \s1_reg[6]  ( .D(n531), .CK(clk), .RN(n562), .Q(s1[6]), .QN(n102) );
  DFFRX1 \s3_reg[7]  ( .D(n516), .CK(clk), .RN(n560), .Q(s3[7]), .QN(n95) );
  DFFRX1 \s2_reg[6]  ( .D(n523), .CK(clk), .RN(n561), .Q(s2[6]), .QN(n209) );
  DFFRX1 \s7_reg[3]  ( .D(n480), .CK(clk), .RN(n557), .Q(s7[3]), .QN(n75) );
  DFFRX1 \s1_reg[7]  ( .D(n532), .CK(clk), .RN(n562), .Q(s1[7]), .QN(n103) );
  DFFRX1 \s7_reg[6]  ( .D(n483), .CK(clk), .RN(n558), .Q(s7[6]), .QN(n78) );
  DFFRX1 \s2_reg[7]  ( .D(n524), .CK(clk), .RN(n561), .Q(s2[7]), .QN(n210) );
  DFFRX1 \s7_reg[7]  ( .D(n484), .CK(clk), .RN(n558), .Q(s7[7]), .QN(n79) );
  DFFRX1 \s8_reg[0]  ( .D(n469), .CK(clk), .RN(n557), .Q(s8[0]), .QN(n179) );
  DFFRX1 \s8_reg[1]  ( .D(n470), .CK(clk), .RN(n557), .Q(s8[1]), .QN(n180) );
  DFFRX1 \s8_reg[4]  ( .D(n473), .CK(clk), .RN(n557), .Q(s8[4]), .QN(n183) );
  DFFRX1 \s9_reg[0]  ( .D(n461), .CK(clk), .RN(n556), .Q(s9[0]), .QN(n64) );
  DFFRX1 \s8_reg[2]  ( .D(n471), .CK(clk), .RN(n557), .Q(s8[2]), .QN(n181) );
  DFFRX1 \s8_reg[5]  ( .D(n474), .CK(clk), .RN(n557), .Q(s8[5]), .QN(n184) );
  DFFRX1 \s10_reg[0]  ( .D(n453), .CK(clk), .RN(n555), .Q(s10[0]), .QN(n171)
         );
  DFFRX1 \s8_reg[3]  ( .D(n472), .CK(clk), .RN(n557), .Q(s8[3]), .QN(n182) );
  DFFRX1 \s9_reg[1]  ( .D(n462), .CK(clk), .RN(n556), .Q(s9[1]), .QN(n65) );
  DFFRX1 \s9_reg[4]  ( .D(n465), .CK(clk), .RN(n556), .Q(s9[4]), .QN(n68) );
  DFFRX1 \s8_reg[6]  ( .D(n475), .CK(clk), .RN(n557), .Q(s8[6]), .QN(n185) );
  DFFRX1 \s10_reg[1]  ( .D(n454), .CK(clk), .RN(n555), .Q(s10[1]), .QN(n172)
         );
  DFFRX1 \s10_reg[4]  ( .D(n457), .CK(clk), .RN(n556), .Q(s10[4]), .QN(n175)
         );
  DFFRX1 \s9_reg[2]  ( .D(n463), .CK(clk), .RN(n556), .Q(s9[2]), .QN(n66) );
  DFFRX1 \s8_reg[7]  ( .D(n476), .CK(clk), .RN(n557), .Q(s8[7]), .QN(n186) );
  DFFRX1 \s9_reg[5]  ( .D(n466), .CK(clk), .RN(n556), .Q(s9[5]), .QN(n69) );
  DFFRX1 \s10_reg[2]  ( .D(n455), .CK(clk), .RN(n555), .Q(s10[2]), .QN(n173)
         );
  DFFRX1 \s10_reg[5]  ( .D(n458), .CK(clk), .RN(n556), .Q(s10[5]), .QN(n176)
         );
  DFFRX1 \s9_reg[3]  ( .D(n464), .CK(clk), .RN(n556), .Q(s9[3]), .QN(n67) );
  DFFRX1 \s9_reg[6]  ( .D(n467), .CK(clk), .RN(n556), .Q(s9[6]), .QN(n70) );
  DFFRX1 \s10_reg[3]  ( .D(n456), .CK(clk), .RN(n555), .Q(s10[3]), .QN(n174)
         );
  DFFRX1 \s10_reg[6]  ( .D(n459), .CK(clk), .RN(n556), .Q(s10[6]), .QN(n177)
         );
  DFFRX1 \s9_reg[7]  ( .D(n468), .CK(clk), .RN(n556), .Q(s9[7]), .QN(n71) );
  DFFRX1 \s10_reg[7]  ( .D(n460), .CK(clk), .RN(n556), .Q(s10[7]), .QN(n178)
         );
  DFFRX1 \s11_reg[0]  ( .D(n445), .CK(clk), .RN(n555), .Q(s11[0]), .QN(n56) );
  DFFRX1 \s11_reg[1]  ( .D(n446), .CK(clk), .RN(n555), .Q(s11[1]), .QN(n57) );
  DFFRX1 \s11_reg[4]  ( .D(n449), .CK(clk), .RN(n555), .Q(s11[4]), .QN(n60) );
  DFFRX1 \s11_reg[2]  ( .D(n447), .CK(clk), .RN(n555), .Q(s11[2]), .QN(n58) );
  DFFRX1 \s11_reg[5]  ( .D(n450), .CK(clk), .RN(n555), .Q(s11[5]), .QN(n61) );
  DFFRX1 \s11_reg[3]  ( .D(n448), .CK(clk), .RN(n555), .Q(s11[3]), .QN(n59) );
  DFFRX1 \s11_reg[6]  ( .D(n451), .CK(clk), .RN(n555), .Q(s11[6]), .QN(n62) );
  DFFRX1 \s11_reg[7]  ( .D(n452), .CK(clk), .RN(n555), .Q(s11[7]), .QN(n63) );
  DFFRX1 \s12_reg[0]  ( .D(n437), .CK(clk), .RN(n554), .Q(s12[0]), .QN(n163)
         );
  DFFRX1 \s12_reg[1]  ( .D(n438), .CK(clk), .RN(n554), .Q(s12[1]), .QN(n164)
         );
  DFFRX1 \s12_reg[4]  ( .D(n441), .CK(clk), .RN(n554), .Q(s12[4]), .QN(n167)
         );
  DFFRX1 \s12_reg[2]  ( .D(n439), .CK(clk), .RN(n554), .Q(s12[2]), .QN(n165)
         );
  DFFRX1 \s13_reg[0]  ( .D(n429), .CK(clk), .RN(n553), .Q(s13[0]), .QN(n50) );
  DFFRX1 \s12_reg[5]  ( .D(n442), .CK(clk), .RN(n554), .Q(s12[5]), .QN(n168)
         );
  DFFRX1 \s14_reg[0]  ( .D(n421), .CK(clk), .RN(n553), .Q(s14[0]), .QN(n211)
         );
  DFFRX1 \s12_reg[3]  ( .D(n440), .CK(clk), .RN(n554), .Q(s12[3]), .QN(n166)
         );
  DFFRX1 \s13_reg[1]  ( .D(n430), .CK(clk), .RN(n553), .Q(s13[1]), .QN(n51) );
  DFFRX1 \s13_reg[4]  ( .D(n433), .CK(clk), .RN(n554), .Q(s13[4]), .QN(n54) );
  DFFRX1 \s12_reg[6]  ( .D(n443), .CK(clk), .RN(n554), .Q(s12[6]), .QN(n169)
         );
  DFFRX1 \s14_reg[1]  ( .D(n422), .CK(clk), .RN(n553), .Q(s14[1]), .QN(n212)
         );
  DFFRX1 \s14_reg[4]  ( .D(n425), .CK(clk), .RN(n553), .Q(s14[4]), .QN(n215)
         );
  DFFRX1 \s13_reg[2]  ( .D(n431), .CK(clk), .RN(n553), .Q(s13[2]), .QN(n52) );
  DFFRX1 \s12_reg[7]  ( .D(n444), .CK(clk), .RN(n554), .Q(s12[7]), .QN(n170)
         );
  DFFRX1 \s13_reg[5]  ( .D(n434), .CK(clk), .RN(n554), .Q(s13[5]), .QN(n7) );
  DFFRX1 \s15_reg[0]  ( .D(n413), .CK(clk), .RN(n552), .Q(s15[0]), .QN(n108)
         );
  DFFRX1 \s14_reg[2]  ( .D(n423), .CK(clk), .RN(n553), .Q(s14[2]), .QN(n213)
         );
  DFFRX1 \s14_reg[5]  ( .D(n426), .CK(clk), .RN(n553), .Q(s14[5]), .QN(n105)
         );
  DFFRX1 \s13_reg[3]  ( .D(n432), .CK(clk), .RN(n553), .Q(s13[3]), .QN(n53) );
  DFFRX1 \s17_reg[0]  ( .D(n397), .CK(clk), .RN(n551), .Q(s17[0]), .QN(n43) );
  DFFRX1 \s18_reg[0]  ( .D(n389), .CK(clk), .RN(n550), .Q(s18[0]), .QN(n155)
         );
  DFFRX1 \s13_reg[6]  ( .D(n435), .CK(clk), .RN(n554), .Q(s13[6]), .QN(n55) );
  DFFRX1 \s14_reg[3]  ( .D(n424), .CK(clk), .RN(n553), .Q(s14[3]), .QN(n214)
         );
  DFFRX1 \s15_reg[1]  ( .D(n414), .CK(clk), .RN(n552), .Q(s15[1]), .QN(n109)
         );
  DFFRX1 \s15_reg[4]  ( .D(n417), .CK(clk), .RN(n552), .Q(s15[4]), .QN(n112)
         );
  DFFRX1 \s14_reg[6]  ( .D(n427), .CK(clk), .RN(n553), .Q(s14[6]), .QN(n162)
         );
  DFFRX1 \s16_reg[0]  ( .D(n405), .CK(clk), .RN(n551), .Q(s16[0]), .QN(n220)
         );
  DFFRX1 \s13_reg[7]  ( .D(n436), .CK(clk), .RN(n554), .Q(s13[7]), .QN(n8) );
  DFFRX1 \s17_reg[1]  ( .D(n398), .CK(clk), .RN(n551), .Q(s17[1]), .QN(n44) );
  DFFRX1 \s18_reg[1]  ( .D(n390), .CK(clk), .RN(n550), .Q(s18[1]), .QN(n156)
         );
  DFFRX1 \s17_reg[4]  ( .D(n401), .CK(clk), .RN(n551), .Q(s17[4]), .QN(n47) );
  DFFRX1 \s18_reg[4]  ( .D(n393), .CK(clk), .RN(n550), .Q(s18[4]), .QN(n159)
         );
  DFFRX1 \s15_reg[2]  ( .D(n415), .CK(clk), .RN(n552), .Q(s15[2]), .QN(n110)
         );
  DFFRX1 \s14_reg[7]  ( .D(n428), .CK(clk), .RN(n553), .Q(s14[7]), .QN(n106)
         );
  DFFRX1 \s15_reg[5]  ( .D(n418), .CK(clk), .RN(n552), .Q(s15[5]), .QN(n217)
         );
  DFFRX1 \s16_reg[1]  ( .D(n406), .CK(clk), .RN(n551), .Q(s16[1]), .QN(n221)
         );
  DFFRX1 \s17_reg[2]  ( .D(n399), .CK(clk), .RN(n551), .Q(s17[2]), .QN(n45) );
  DFFRX1 \s18_reg[2]  ( .D(n391), .CK(clk), .RN(n550), .Q(s18[2]), .QN(n157)
         );
  DFFRX1 \s15_reg[3]  ( .D(n416), .CK(clk), .RN(n552), .Q(s15[3]), .QN(n111)
         );
  DFFRX1 \s16_reg[4]  ( .D(n409), .CK(clk), .RN(n552), .Q(s16[4]), .QN(n224)
         );
  DFFRX1 \s17_reg[5]  ( .D(n402), .CK(clk), .RN(n551), .Q(s17[5]), .QN(n161)
         );
  DFFRX1 \s18_reg[5]  ( .D(n394), .CK(clk), .RN(n550), .Q(s18[5]), .QN(n41) );
  DFFRX1 \s15_reg[6]  ( .D(n419), .CK(clk), .RN(n552), .Q(s15[6]), .QN(n104)
         );
  DFFRX1 \s17_reg[3]  ( .D(n400), .CK(clk), .RN(n551), .Q(s17[3]), .QN(n46) );
  DFFRX1 \s18_reg[3]  ( .D(n392), .CK(clk), .RN(n550), .Q(s18[3]), .QN(n158)
         );
  DFFRX1 \s19_reg[0]  ( .D(n381), .CK(clk), .RN(n549), .Q(s19[0]), .QN(n35) );
  DFFRX1 \s16_reg[2]  ( .D(n407), .CK(clk), .RN(n551), .Q(s16[2]), .QN(n222)
         );
  DFFRX1 \s16_reg[5]  ( .D(n410), .CK(clk), .RN(n552), .Q(s16[5]), .QN(n49) );
  DFFRX1 \s17_reg[6]  ( .D(n403), .CK(clk), .RN(n551), .Q(s17[6]), .QN(n48) );
  DFFRX1 \s18_reg[6]  ( .D(n395), .CK(clk), .RN(n550), .Q(s18[6]), .QN(n160)
         );
  DFFRX1 \s15_reg[7]  ( .D(n420), .CK(clk), .RN(n552), .Q(s15[7]), .QN(n218)
         );
  DFFRX1 \s16_reg[3]  ( .D(n408), .CK(clk), .RN(n551), .Q(s16[3]), .QN(n223)
         );
  DFFRX1 \s19_reg[1]  ( .D(n382), .CK(clk), .RN(n549), .Q(s19[1]), .QN(n36) );
  DFFRX1 \s17_reg[7]  ( .D(n404), .CK(clk), .RN(n551), .Q(s17[7]), .QN(n219)
         );
  DFFRX1 \s18_reg[7]  ( .D(n396), .CK(clk), .RN(n550), .Q(s18[7]), .QN(n42) );
  DFFRX1 \s19_reg[4]  ( .D(n385), .CK(clk), .RN(n550), .Q(s19[4]), .QN(n39) );
  DFFRX1 \s16_reg[6]  ( .D(n411), .CK(clk), .RN(n552), .Q(s16[6]), .QN(n216)
         );
  DFFRX1 \s19_reg[2]  ( .D(n383), .CK(clk), .RN(n549), .Q(s19[2]), .QN(n37) );
  DFFRX1 \s16_reg[7]  ( .D(n412), .CK(clk), .RN(n552), .Q(s16[7]), .QN(n107)
         );
  DFFRX1 \s19_reg[5]  ( .D(n386), .CK(clk), .RN(n550), .Q(s19[5]), .QN(n153)
         );
  DFFRX1 \s19_reg[3]  ( .D(n384), .CK(clk), .RN(n549), .Q(s19[3]), .QN(n38) );
  DFFRX1 \s19_reg[6]  ( .D(n387), .CK(clk), .RN(n550), .Q(s19[6]), .QN(n40) );
  DFFRX1 \s19_reg[7]  ( .D(n388), .CK(clk), .RN(n550), .Q(s19[7]), .QN(n154)
         );
  DFFRX1 \s20_reg[0]  ( .D(n373), .CK(clk), .RN(n549), .Q(s20[0]), .QN(n147)
         );
  DFFRX1 \s20_reg[1]  ( .D(n374), .CK(clk), .RN(n549), .Q(s20[1]), .QN(n148)
         );
  DFFRX1 \s20_reg[4]  ( .D(n377), .CK(clk), .RN(n549), .Q(s20[4]), .QN(n151)
         );
  DFFRX1 \s30_reg[0]  ( .D(n279), .CK(clk), .RN(n540), .Q(s30[0]), .QN(n121)
         );
  DFFRX1 \s20_reg[2]  ( .D(n375), .CK(clk), .RN(n549), .Q(s20[2]), .QN(n149)
         );
  DFFRX1 \s21_reg[0]  ( .D(n365), .CK(clk), .RN(n548), .Q(s21[0]), .QN(n27) );
  DFFRX1 \s29_reg[0]  ( .D(n301), .CK(clk), .RN(n543), .Q(s29[0]), .QN(n241)
         );
  DFFRX1 \s20_reg[5]  ( .D(n378), .CK(clk), .RN(n549), .Q(s20[5]), .QN(n33) );
  DFFRX1 \s22_reg[0]  ( .D(n357), .CK(clk), .RN(n547), .Q(s22[0]), .QN(n139)
         );
  DFFRX1 \s20_reg[3]  ( .D(n376), .CK(clk), .RN(n549), .Q(s20[3]), .QN(n150)
         );
  DFFRX1 \s30_reg[1]  ( .D(n282), .CK(clk), .RN(n540), .Q(s30[1]), .QN(n122)
         );
  DFFRX1 \s21_reg[1]  ( .D(n366), .CK(clk), .RN(n548), .Q(s21[1]), .QN(n28) );
  DFFRX1 \s30_reg[4]  ( .D(n291), .CK(clk), .RN(n542), .Q(s30[4]), .QN(n125)
         );
  DFFRX1 \s29_reg[1]  ( .D(n302), .CK(clk), .RN(n543), .Q(s29[1]), .QN(n242)
         );
  DFFRX1 \s21_reg[4]  ( .D(n369), .CK(clk), .RN(n548), .Q(s21[4]), .QN(n31) );
  DFFRX1 \s20_reg[6]  ( .D(n379), .CK(clk), .RN(n549), .Q(s20[6]), .QN(n152)
         );
  DFFRX1 \s29_reg[4]  ( .D(n305), .CK(clk), .RN(n543), .Q(s29[4]), .QN(n245)
         );
  DFFRX1 \s22_reg[1]  ( .D(n358), .CK(clk), .RN(n547), .Q(s22[1]), .QN(n140)
         );
  DFFRX1 \s22_reg[4]  ( .D(n361), .CK(clk), .RN(n548), .Q(s22[4]), .QN(n143)
         );
  DFFRX1 \s30_reg[2]  ( .D(n285), .CK(clk), .RN(n540), .Q(s30[2]), .QN(n123)
         );
  DFFRX1 \s21_reg[2]  ( .D(n367), .CK(clk), .RN(n548), .Q(s21[2]), .QN(n29) );
  DFFRX1 \s20_reg[7]  ( .D(n380), .CK(clk), .RN(n549), .Q(s20[7]), .QN(n34) );
  DFFRX1 \s30_reg[5]  ( .D(n294), .CK(clk), .RN(n542), .Q(s30[5]), .QN(n126)
         );
  DFFRX1 \s28_reg[0]  ( .D(n309), .CK(clk), .RN(n543), .Q(s28[0]), .QN(n113)
         );
  DFFRX1 \s29_reg[2]  ( .D(n303), .CK(clk), .RN(n543), .Q(s29[2]), .QN(n243)
         );
  DFFRX1 \s21_reg[5]  ( .D(n370), .CK(clk), .RN(n548), .Q(s21[5]), .QN(n145)
         );
  DFFRX1 \s23_reg[0]  ( .D(n349), .CK(clk), .RN(n547), .Q(s23[0]), .QN(n19) );
  DFFRX1 \s29_reg[5]  ( .D(n306), .CK(clk), .RN(n543), .Q(s29[5]), .QN(n246)
         );
  DFFRX1 \s22_reg[2]  ( .D(n359), .CK(clk), .RN(n547), .Q(s22[2]), .QN(n141)
         );
  DFFRX1 \s22_reg[5]  ( .D(n362), .CK(clk), .RN(n548), .Q(s22[5]), .QN(n25) );
  DFFRX1 \s30_reg[3]  ( .D(n288), .CK(clk), .RN(n540), .Q(s30[3]), .QN(n124)
         );
  DFFRX1 \s21_reg[3]  ( .D(n368), .CK(clk), .RN(n548), .Q(s21[3]), .QN(n30) );
  DFFRX1 \s29_reg[3]  ( .D(n304), .CK(clk), .RN(n543), .Q(s29[3]), .QN(n244)
         );
  DFFRX1 \s28_reg[1]  ( .D(n310), .CK(clk), .RN(n543), .Q(s28[1]), .QN(n114)
         );
  DFFRX1 \s30_reg[6]  ( .D(n297), .CK(clk), .RN(n542), .Q(s30[6]), .QN(n127)
         );
  DFFRX1 \s21_reg[6]  ( .D(n371), .CK(clk), .RN(n548), .Q(s21[6]), .QN(n32) );
  DFFRX1 \s22_reg[3]  ( .D(n360), .CK(clk), .RN(n547), .Q(s22[3]), .QN(n142)
         );
  DFFRX1 \s23_reg[1]  ( .D(n350), .CK(clk), .RN(n547), .Q(s23[1]), .QN(n20) );
  DFFRX1 \s28_reg[4]  ( .D(n313), .CK(clk), .RN(n544), .Q(s28[4]), .QN(n117)
         );
  DFFRX1 \s29_reg[6]  ( .D(n307), .CK(clk), .RN(n543), .Q(s29[6]), .QN(n247)
         );
  DFFRX1 \s23_reg[4]  ( .D(n353), .CK(clk), .RN(n547), .Q(s23[4]), .QN(n23) );
  DFFRX1 \s22_reg[6]  ( .D(n363), .CK(clk), .RN(n548), .Q(s22[6]), .QN(n144)
         );
  DFFRX1 \s30_reg[7]  ( .D(n300), .CK(clk), .RN(n542), .Q(s30[7]), .QN(n128)
         );
  DFFRX1 \s21_reg[7]  ( .D(n372), .CK(clk), .RN(n548), .Q(s21[7]), .QN(n146)
         );
  DFFRX1 \s28_reg[2]  ( .D(n311), .CK(clk), .RN(n543), .Q(s28[2]), .QN(n115)
         );
  DFFRX1 \s29_reg[7]  ( .D(n308), .CK(clk), .RN(n543), .Q(s29[7]), .QN(n248)
         );
  DFFRX1 \s23_reg[2]  ( .D(n351), .CK(clk), .RN(n547), .Q(s23[2]), .QN(n21) );
  DFFRX1 \s28_reg[5]  ( .D(n314), .CK(clk), .RN(n544), .Q(s28[5]), .QN(n118)
         );
  DFFRX1 \s22_reg[7]  ( .D(n364), .CK(clk), .RN(n548), .Q(s22[7]), .QN(n26) );
  DFFRX1 \s23_reg[5]  ( .D(n354), .CK(clk), .RN(n547), .Q(s23[5]), .QN(n137)
         );
  DFFRX1 \s28_reg[3]  ( .D(n312), .CK(clk), .RN(n543), .Q(s28[3]), .QN(n116)
         );
  DFFRX1 \s24_reg[0]  ( .D(n341), .CK(clk), .RN(n546), .Q(s24[0]), .QN(n131)
         );
  DFFRX1 \s23_reg[3]  ( .D(n352), .CK(clk), .RN(n547), .Q(s23[3]), .QN(n22) );
  DFFRX1 \s28_reg[6]  ( .D(n315), .CK(clk), .RN(n544), .Q(s28[6]), .QN(n119)
         );
  DFFRX1 \s23_reg[6]  ( .D(n355), .CK(clk), .RN(n547), .Q(s23[6]), .QN(n24) );
  DFFRX1 \s27_reg[0]  ( .D(n317), .CK(clk), .RN(n544), .Q(s27[0]), .QN(n225)
         );
  DFFRX1 \s24_reg[1]  ( .D(n342), .CK(clk), .RN(n546), .Q(s24[1]), .QN(n132)
         );
  DFFRX1 \s28_reg[7]  ( .D(n316), .CK(clk), .RN(n544), .Q(s28[7]), .QN(n120)
         );
  DFFRX1 \s24_reg[4]  ( .D(n345), .CK(clk), .RN(n546), .Q(s24[4]), .QN(n135)
         );
  DFFRX1 \s23_reg[7]  ( .D(n356), .CK(clk), .RN(n547), .Q(s23[7]), .QN(n138)
         );
  DFFRX1 \s27_reg[1]  ( .D(n318), .CK(clk), .RN(n544), .Q(s27[1]), .QN(n226)
         );
  DFFRX1 \s24_reg[2]  ( .D(n343), .CK(clk), .RN(n546), .Q(s24[2]), .QN(n133)
         );
  DFFRX1 \s27_reg[4]  ( .D(n321), .CK(clk), .RN(n544), .Q(s27[4]), .QN(n229)
         );
  DFFRX1 \s24_reg[5]  ( .D(n346), .CK(clk), .RN(n546), .Q(s24[5]), .QN(n17) );
  DFFRX1 \s25_reg[0]  ( .D(n333), .CK(clk), .RN(n545), .Q(s25[0]), .QN(n11) );
  DFFRX1 \s24_reg[3]  ( .D(n344), .CK(clk), .RN(n546), .Q(s24[3]), .QN(n134)
         );
  DFFRX1 \s27_reg[2]  ( .D(n319), .CK(clk), .RN(n544), .Q(s27[2]), .QN(n227)
         );
  DFFRX1 \s27_reg[5]  ( .D(n322), .CK(clk), .RN(n544), .Q(s27[5]), .QN(n230)
         );
  DFFRX1 \s24_reg[6]  ( .D(n347), .CK(clk), .RN(n546), .Q(s24[6]), .QN(n136)
         );
  DFFRX1 \s25_reg[1]  ( .D(n334), .CK(clk), .RN(n545), .Q(s25[1]), .QN(n12) );
  DFFRX1 \s27_reg[3]  ( .D(n320), .CK(clk), .RN(n544), .Q(s27[3]), .QN(n228)
         );
  DFFRX1 \s25_reg[4]  ( .D(n337), .CK(clk), .RN(n546), .Q(s25[4]), .QN(n15) );
  DFFRX1 \s24_reg[7]  ( .D(n348), .CK(clk), .RN(n546), .Q(s24[7]), .QN(n18) );
  DFFRX1 \s27_reg[6]  ( .D(n323), .CK(clk), .RN(n544), .Q(s27[6]), .QN(n231)
         );
  DFFRX1 \s26_reg[0]  ( .D(n325), .CK(clk), .RN(n545), .Q(s26[0]), .QN(n1) );
  DFFRX1 \s25_reg[2]  ( .D(n335), .CK(clk), .RN(n545), .Q(s25[2]), .QN(n13) );
  DFFRX1 \s25_reg[5]  ( .D(n338), .CK(clk), .RN(n546), .Q(s25[5]), .QN(n129)
         );
  DFFRX1 \s27_reg[7]  ( .D(n324), .CK(clk), .RN(n544), .Q(s27[7]), .QN(n232)
         );
  DFFRX1 \s25_reg[3]  ( .D(n336), .CK(clk), .RN(n545), .Q(s25[3]), .QN(n14) );
  DFFRX1 \s26_reg[1]  ( .D(n326), .CK(clk), .RN(n545), .Q(s26[1]), .QN(n2) );
  DFFRX1 \s26_reg[4]  ( .D(n329), .CK(clk), .RN(n545), .Q(s26[4]), .QN(n5) );
  DFFRX1 \s25_reg[6]  ( .D(n339), .CK(clk), .RN(n546), .Q(s25[6]), .QN(n16) );
  DFFRX1 \s26_reg[2]  ( .D(n327), .CK(clk), .RN(n545), .Q(s26[2]), .QN(n3) );
  DFFRX1 \s25_reg[7]  ( .D(n340), .CK(clk), .RN(n546), .Q(s25[7]), .QN(n130)
         );
  DFFRX1 \s26_reg[5]  ( .D(n330), .CK(clk), .RN(n545), .Q(s26[5]), .QN(n9) );
  DFFRX1 \s26_reg[3]  ( .D(n328), .CK(clk), .RN(n545), .Q(s26[3]), .QN(n4) );
  DFFRX1 \s26_reg[6]  ( .D(n331), .CK(clk), .RN(n545), .Q(s26[6]), .QN(n6) );
  DFFRX1 \s26_reg[7]  ( .D(n332), .CK(clk), .RN(n545), .Q(s26[7]), .QN(n10) );
  CLKINVX1 U2 ( .A(reset), .Y(n655) );
  CLKINVX1 U3 ( .A(n588), .Y(n564) );
  CLKINVX1 U4 ( .A(n580), .Y(n571) );
  CLKINVX1 U5 ( .A(n579), .Y(n572) );
  CLKINVX1 U6 ( .A(n578), .Y(n573) );
  CLKINVX1 U7 ( .A(n577), .Y(n574) );
  CLKINVX1 U8 ( .A(n587), .Y(n565) );
  CLKINVX1 U9 ( .A(n586), .Y(n566) );
  CLKINVX1 U10 ( .A(n585), .Y(n567) );
  CLKINVX1 U11 ( .A(n584), .Y(n568) );
  CLKINVX1 U12 ( .A(n583), .Y(n569) );
  CLKINVX1 U13 ( .A(n582), .Y(n570) );
  CLKBUFX3 U14 ( .A(n635), .Y(n588) );
  CLKBUFX3 U15 ( .A(n638), .Y(n581) );
  CLKBUFX3 U16 ( .A(n638), .Y(n580) );
  CLKBUFX3 U17 ( .A(n638), .Y(n579) );
  CLKBUFX3 U18 ( .A(n639), .Y(n578) );
  CLKBUFX3 U19 ( .A(n639), .Y(n577) );
  CLKBUFX3 U20 ( .A(n639), .Y(n576) );
  CLKBUFX3 U21 ( .A(n636), .Y(n587) );
  CLKBUFX3 U22 ( .A(n636), .Y(n586) );
  CLKBUFX3 U23 ( .A(n636), .Y(n585) );
  CLKBUFX3 U24 ( .A(n637), .Y(n584) );
  CLKBUFX3 U25 ( .A(n637), .Y(n583) );
  CLKBUFX3 U26 ( .A(n637), .Y(n582) );
  CLKBUFX3 U27 ( .A(n635), .Y(n589) );
  CLKBUFX3 U28 ( .A(n635), .Y(n590) );
  CLKBUFX3 U29 ( .A(n634), .Y(n591) );
  CLKBUFX3 U30 ( .A(n634), .Y(n592) );
  CLKBUFX3 U31 ( .A(n634), .Y(n593) );
  CLKBUFX3 U32 ( .A(n633), .Y(n594) );
  CLKBUFX3 U33 ( .A(n633), .Y(n595) );
  CLKBUFX3 U34 ( .A(n633), .Y(n596) );
  CLKBUFX3 U35 ( .A(n632), .Y(n597) );
  CLKBUFX3 U36 ( .A(n632), .Y(n598) );
  CLKBUFX3 U37 ( .A(n632), .Y(n599) );
  CLKBUFX3 U38 ( .A(n631), .Y(n600) );
  CLKBUFX3 U39 ( .A(n631), .Y(n601) );
  CLKBUFX3 U40 ( .A(n631), .Y(n602) );
  CLKBUFX3 U41 ( .A(n630), .Y(n603) );
  CLKBUFX3 U42 ( .A(n630), .Y(n604) );
  CLKBUFX3 U43 ( .A(n630), .Y(n605) );
  CLKBUFX3 U44 ( .A(n629), .Y(n606) );
  CLKBUFX3 U45 ( .A(n629), .Y(n607) );
  CLKBUFX3 U46 ( .A(n629), .Y(n608) );
  CLKBUFX3 U47 ( .A(n628), .Y(n609) );
  CLKBUFX3 U48 ( .A(n628), .Y(n610) );
  CLKBUFX3 U49 ( .A(n628), .Y(n611) );
  CLKBUFX3 U50 ( .A(n627), .Y(n612) );
  CLKBUFX3 U51 ( .A(n627), .Y(n613) );
  CLKBUFX3 U52 ( .A(n627), .Y(n614) );
  CLKBUFX3 U53 ( .A(n626), .Y(n615) );
  CLKBUFX3 U54 ( .A(n626), .Y(n616) );
  CLKBUFX3 U55 ( .A(n626), .Y(n617) );
  CLKBUFX3 U56 ( .A(n625), .Y(n618) );
  CLKBUFX3 U57 ( .A(n625), .Y(n619) );
  CLKBUFX3 U58 ( .A(n625), .Y(n620) );
  CLKBUFX3 U59 ( .A(n624), .Y(n621) );
  CLKBUFX3 U60 ( .A(n624), .Y(n622) );
  CLKBUFX3 U61 ( .A(n624), .Y(n623) );
  CLKBUFX3 U62 ( .A(n642), .Y(n635) );
  CLKBUFX3 U63 ( .A(n640), .Y(n575) );
  CLKBUFX3 U64 ( .A(n641), .Y(n640) );
  CLKBUFX3 U65 ( .A(n641), .Y(n638) );
  CLKBUFX3 U66 ( .A(n641), .Y(n639) );
  CLKBUFX3 U67 ( .A(n642), .Y(n636) );
  CLKBUFX3 U68 ( .A(n642), .Y(n637) );
  CLKBUFX3 U69 ( .A(n643), .Y(n634) );
  CLKBUFX3 U70 ( .A(n643), .Y(n633) );
  CLKBUFX3 U71 ( .A(n643), .Y(n632) );
  CLKBUFX3 U72 ( .A(n644), .Y(n631) );
  CLKBUFX3 U73 ( .A(n644), .Y(n630) );
  CLKBUFX3 U74 ( .A(n644), .Y(n629) );
  CLKBUFX3 U75 ( .A(n645), .Y(n628) );
  CLKBUFX3 U76 ( .A(n645), .Y(n627) );
  CLKBUFX3 U77 ( .A(n645), .Y(n626) );
  CLKBUFX3 U78 ( .A(n646), .Y(n625) );
  CLKBUFX3 U79 ( .A(n646), .Y(n624) );
  CLKBUFX3 U80 ( .A(n647), .Y(n642) );
  CLKBUFX3 U81 ( .A(n647), .Y(n641) );
  CLKBUFX3 U82 ( .A(n640), .Y(n643) );
  CLKBUFX3 U83 ( .A(n640), .Y(n644) );
  CLKBUFX3 U84 ( .A(n640), .Y(n645) );
  CLKBUFX3 U85 ( .A(n641), .Y(n646) );
  CLKINVX1 U86 ( .A(n563), .Y(n647) );
  NAND4X1 U87 ( .A(n651), .B(n652), .C(n653), .D(n654), .Y(n266) );
  CLKBUFX3 U88 ( .A(n257), .Y(n540) );
  CLKBUFX3 U89 ( .A(n257), .Y(n542) );
  CLKBUFX3 U90 ( .A(n257), .Y(n543) );
  CLKBUFX3 U91 ( .A(n259), .Y(n544) );
  CLKBUFX3 U92 ( .A(n259), .Y(n545) );
  CLKBUFX3 U93 ( .A(n259), .Y(n546) );
  CLKBUFX3 U94 ( .A(n260), .Y(n547) );
  CLKBUFX3 U95 ( .A(n260), .Y(n548) );
  CLKBUFX3 U96 ( .A(n260), .Y(n549) );
  CLKBUFX3 U97 ( .A(n261), .Y(n550) );
  CLKBUFX3 U98 ( .A(n261), .Y(n551) );
  CLKBUFX3 U99 ( .A(n261), .Y(n552) );
  CLKBUFX3 U100 ( .A(n262), .Y(n553) );
  CLKBUFX3 U101 ( .A(n262), .Y(n554) );
  CLKBUFX3 U102 ( .A(n262), .Y(n555) );
  CLKBUFX3 U103 ( .A(n263), .Y(n556) );
  CLKBUFX3 U104 ( .A(n263), .Y(n557) );
  CLKBUFX3 U105 ( .A(n263), .Y(n558) );
  CLKBUFX3 U106 ( .A(n267), .Y(n559) );
  CLKBUFX3 U107 ( .A(n267), .Y(n560) );
  CLKBUFX3 U108 ( .A(n267), .Y(n561) );
  OAI22XL U109 ( .A0(n564), .A1(n234), .B0(n258), .B1(n648), .Y(n533) );
  CLKINVX1 U110 ( .A(din[0]), .Y(n648) );
  OAI22XL U111 ( .A0(n564), .A1(n235), .B0(n258), .B1(n649), .Y(n534) );
  CLKINVX1 U112 ( .A(din[1]), .Y(n649) );
  OAI22XL U113 ( .A0(n564), .A1(n236), .B0(n258), .B1(n650), .Y(n535) );
  CLKINVX1 U114 ( .A(din[2]), .Y(n650) );
  OAI22XL U115 ( .A0(n564), .A1(n237), .B0(n258), .B1(n651), .Y(n536) );
  OAI22XL U116 ( .A0(n564), .A1(n238), .B0(n258), .B1(n652), .Y(n537) );
  OAI22XL U117 ( .A0(n564), .A1(n239), .B0(n258), .B1(n653), .Y(n539) );
  OAI22XL U118 ( .A0(n564), .A1(n240), .B0(n258), .B1(n654), .Y(n541) );
  CLKBUFX3 U119 ( .A(right_shift_en), .Y(n563) );
  CLKINVX1 U120 ( .A(din[7]), .Y(n654) );
  CLKINVX1 U121 ( .A(din[6]), .Y(n653) );
  CLKINVX1 U122 ( .A(din[4]), .Y(n652) );
  CLKINVX1 U123 ( .A(din[3]), .Y(n651) );
  OAI22XL U124 ( .A0(n576), .A1(n121), .B0(n572), .B1(n256), .Y(n278) );
  OAI22XL U125 ( .A0(n579), .A1(n122), .B0(n570), .B1(n249), .Y(n281) );
  OAI22XL U126 ( .A0(n582), .A1(n123), .B0(n570), .B1(n250), .Y(n284) );
  OAI22XL U127 ( .A0(n585), .A1(n124), .B0(n573), .B1(n251), .Y(n287) );
  OAI22XL U128 ( .A0(n588), .A1(n125), .B0(n574), .B1(n252), .Y(n290) );
  OAI22XL U129 ( .A0(n589), .A1(n126), .B0(n571), .B1(n253), .Y(n293) );
  OAI22XL U130 ( .A0(n589), .A1(n127), .B0(n572), .B1(n254), .Y(n296) );
  OAI22XL U131 ( .A0(n590), .A1(n128), .B0(n565), .B1(n255), .Y(n299) );
  OAI22XL U132 ( .A0(n577), .A1(n241), .B0(n570), .B1(n121), .Y(n279) );
  OAI22XL U133 ( .A0(n580), .A1(n242), .B0(n570), .B1(n122), .Y(n282) );
  OAI22XL U134 ( .A0(n583), .A1(n243), .B0(n566), .B1(n123), .Y(n285) );
  OAI22XL U135 ( .A0(n586), .A1(n244), .B0(n567), .B1(n124), .Y(n288) );
  OAI22XL U136 ( .A0(n589), .A1(n245), .B0(n568), .B1(n125), .Y(n291) );
  OAI22XL U137 ( .A0(n589), .A1(n246), .B0(n569), .B1(n126), .Y(n294) );
  OAI22XL U138 ( .A0(n589), .A1(n247), .B0(n570), .B1(n127), .Y(n297) );
  OAI22XL U139 ( .A0(n590), .A1(n248), .B0(n573), .B1(n128), .Y(n300) );
  OAI22XL U140 ( .A0(n590), .A1(n113), .B0(n574), .B1(n241), .Y(n301) );
  OAI22XL U141 ( .A0(n590), .A1(n114), .B0(n571), .B1(n242), .Y(n302) );
  OAI22XL U142 ( .A0(n590), .A1(n115), .B0(n572), .B1(n243), .Y(n303) );
  OAI22XL U143 ( .A0(n590), .A1(n116), .B0(n565), .B1(n244), .Y(n304) );
  OAI22XL U144 ( .A0(n591), .A1(n117), .B0(n571), .B1(n245), .Y(n305) );
  OAI22XL U145 ( .A0(n591), .A1(n118), .B0(n571), .B1(n246), .Y(n306) );
  OAI22XL U146 ( .A0(n591), .A1(n119), .B0(n571), .B1(n247), .Y(n307) );
  OAI22XL U147 ( .A0(n591), .A1(n120), .B0(n571), .B1(n248), .Y(n308) );
  OAI22XL U148 ( .A0(n591), .A1(n225), .B0(n571), .B1(n113), .Y(n309) );
  OAI22XL U149 ( .A0(n591), .A1(n226), .B0(n571), .B1(n114), .Y(n310) );
  OAI22XL U150 ( .A0(n591), .A1(n227), .B0(n571), .B1(n115), .Y(n311) );
  OAI22XL U151 ( .A0(n592), .A1(n228), .B0(n571), .B1(n116), .Y(n312) );
  OAI22XL U152 ( .A0(n592), .A1(n229), .B0(n571), .B1(n117), .Y(n313) );
  OAI22XL U153 ( .A0(n592), .A1(n230), .B0(n571), .B1(n118), .Y(n314) );
  OAI22XL U154 ( .A0(n592), .A1(n231), .B0(n571), .B1(n119), .Y(n315) );
  OAI22XL U155 ( .A0(n592), .A1(n232), .B0(n571), .B1(n120), .Y(n316) );
  OAI22XL U156 ( .A0(n592), .A1(n1), .B0(n571), .B1(n225), .Y(n317) );
  OAI22XL U157 ( .A0(n592), .A1(n2), .B0(n571), .B1(n226), .Y(n318) );
  OAI22XL U158 ( .A0(n593), .A1(n3), .B0(n571), .B1(n227), .Y(n319) );
  OAI22XL U159 ( .A0(n593), .A1(n4), .B0(n571), .B1(n228), .Y(n320) );
  OAI22XL U160 ( .A0(n593), .A1(n5), .B0(n571), .B1(n229), .Y(n321) );
  OAI22XL U161 ( .A0(n593), .A1(n9), .B0(n571), .B1(n230), .Y(n322) );
  OAI22XL U162 ( .A0(n593), .A1(n6), .B0(n571), .B1(n231), .Y(n323) );
  OAI22XL U163 ( .A0(n593), .A1(n10), .B0(n571), .B1(n232), .Y(n324) );
  OAI22XL U164 ( .A0(n593), .A1(n11), .B0(n572), .B1(n1), .Y(n325) );
  OAI22XL U165 ( .A0(n594), .A1(n12), .B0(n572), .B1(n2), .Y(n326) );
  OAI22XL U166 ( .A0(n594), .A1(n13), .B0(n572), .B1(n3), .Y(n327) );
  OAI22XL U167 ( .A0(n594), .A1(n14), .B0(n572), .B1(n4), .Y(n328) );
  OAI22XL U168 ( .A0(n594), .A1(n15), .B0(n572), .B1(n5), .Y(n329) );
  OAI22XL U169 ( .A0(n594), .A1(n129), .B0(n572), .B1(n9), .Y(n330) );
  OAI22XL U170 ( .A0(n594), .A1(n16), .B0(n572), .B1(n6), .Y(n331) );
  OAI22XL U171 ( .A0(n594), .A1(n130), .B0(n572), .B1(n10), .Y(n332) );
  OAI22XL U172 ( .A0(n595), .A1(n131), .B0(n572), .B1(n11), .Y(n333) );
  OAI22XL U173 ( .A0(n595), .A1(n132), .B0(n572), .B1(n12), .Y(n334) );
  OAI22XL U174 ( .A0(n595), .A1(n133), .B0(n572), .B1(n13), .Y(n335) );
  OAI22XL U175 ( .A0(n595), .A1(n134), .B0(n572), .B1(n14), .Y(n336) );
  OAI22XL U176 ( .A0(n595), .A1(n135), .B0(n572), .B1(n15), .Y(n337) );
  OAI22XL U177 ( .A0(n595), .A1(n17), .B0(n572), .B1(n129), .Y(n338) );
  OAI22XL U178 ( .A0(n595), .A1(n136), .B0(n572), .B1(n16), .Y(n339) );
  OAI22XL U179 ( .A0(n596), .A1(n18), .B0(n572), .B1(n130), .Y(n340) );
  OAI22XL U180 ( .A0(n596), .A1(n19), .B0(n572), .B1(n131), .Y(n341) );
  OAI22XL U181 ( .A0(n596), .A1(n20), .B0(n572), .B1(n132), .Y(n342) );
  OAI22XL U182 ( .A0(n596), .A1(n21), .B0(n572), .B1(n133), .Y(n343) );
  OAI22XL U183 ( .A0(n596), .A1(n22), .B0(n573), .B1(n134), .Y(n344) );
  OAI22XL U184 ( .A0(n596), .A1(n23), .B0(n573), .B1(n135), .Y(n345) );
  OAI22XL U185 ( .A0(n596), .A1(n137), .B0(n573), .B1(n17), .Y(n346) );
  OAI22XL U186 ( .A0(n597), .A1(n24), .B0(n573), .B1(n136), .Y(n347) );
  OAI22XL U187 ( .A0(n597), .A1(n138), .B0(n573), .B1(n18), .Y(n348) );
  OAI22XL U188 ( .A0(n597), .A1(n139), .B0(n573), .B1(n19), .Y(n349) );
  OAI22XL U189 ( .A0(n597), .A1(n140), .B0(n573), .B1(n20), .Y(n350) );
  OAI22XL U190 ( .A0(n597), .A1(n141), .B0(n573), .B1(n21), .Y(n351) );
  OAI22XL U191 ( .A0(n597), .A1(n142), .B0(n573), .B1(n22), .Y(n352) );
  OAI22XL U192 ( .A0(n597), .A1(n143), .B0(n573), .B1(n23), .Y(n353) );
  OAI22XL U193 ( .A0(n598), .A1(n25), .B0(n573), .B1(n137), .Y(n354) );
  OAI22XL U194 ( .A0(n598), .A1(n144), .B0(n573), .B1(n24), .Y(n355) );
  OAI22XL U195 ( .A0(n598), .A1(n26), .B0(n573), .B1(n138), .Y(n356) );
  OAI22XL U196 ( .A0(n598), .A1(n27), .B0(n573), .B1(n139), .Y(n357) );
  OAI22XL U197 ( .A0(n598), .A1(n28), .B0(n573), .B1(n140), .Y(n358) );
  OAI22XL U198 ( .A0(n598), .A1(n29), .B0(n573), .B1(n141), .Y(n359) );
  OAI22XL U199 ( .A0(n598), .A1(n30), .B0(n573), .B1(n142), .Y(n360) );
  OAI22XL U200 ( .A0(n599), .A1(n31), .B0(n573), .B1(n143), .Y(n361) );
  OAI22XL U201 ( .A0(n599), .A1(n145), .B0(n573), .B1(n25), .Y(n362) );
  OAI22XL U202 ( .A0(n599), .A1(n32), .B0(n573), .B1(n144), .Y(n363) );
  OAI22XL U203 ( .A0(n599), .A1(n146), .B0(n574), .B1(n26), .Y(n364) );
  OAI22XL U204 ( .A0(n599), .A1(n147), .B0(n574), .B1(n27), .Y(n365) );
  OAI22XL U205 ( .A0(n599), .A1(n148), .B0(n574), .B1(n28), .Y(n366) );
  OAI22XL U206 ( .A0(n599), .A1(n149), .B0(n574), .B1(n29), .Y(n367) );
  OAI22XL U207 ( .A0(n600), .A1(n150), .B0(n574), .B1(n30), .Y(n368) );
  OAI22XL U208 ( .A0(n600), .A1(n151), .B0(n574), .B1(n31), .Y(n369) );
  OAI22XL U209 ( .A0(n600), .A1(n33), .B0(n574), .B1(n145), .Y(n370) );
  OAI22XL U210 ( .A0(n600), .A1(n152), .B0(n574), .B1(n32), .Y(n371) );
  OAI22XL U211 ( .A0(n600), .A1(n34), .B0(n574), .B1(n146), .Y(n372) );
  OAI22XL U212 ( .A0(n600), .A1(n35), .B0(n574), .B1(n147), .Y(n373) );
  OAI22XL U213 ( .A0(n600), .A1(n36), .B0(n574), .B1(n148), .Y(n374) );
  OAI22XL U214 ( .A0(n601), .A1(n37), .B0(n574), .B1(n149), .Y(n375) );
  OAI22XL U215 ( .A0(n601), .A1(n38), .B0(n574), .B1(n150), .Y(n376) );
  OAI22XL U216 ( .A0(n601), .A1(n39), .B0(n574), .B1(n151), .Y(n377) );
  OAI22XL U217 ( .A0(n601), .A1(n153), .B0(n574), .B1(n33), .Y(n378) );
  OAI22XL U218 ( .A0(n601), .A1(n40), .B0(n574), .B1(n152), .Y(n379) );
  OAI22XL U219 ( .A0(n601), .A1(n154), .B0(n574), .B1(n34), .Y(n380) );
  OAI22XL U220 ( .A0(n601), .A1(n155), .B0(n574), .B1(n35), .Y(n381) );
  OAI22XL U221 ( .A0(n602), .A1(n156), .B0(n574), .B1(n36), .Y(n382) );
  OAI22XL U222 ( .A0(n602), .A1(n157), .B0(n574), .B1(n37), .Y(n383) );
  OAI22XL U223 ( .A0(n602), .A1(n158), .B0(n571), .B1(n38), .Y(n384) );
  OAI22XL U224 ( .A0(n602), .A1(n159), .B0(n572), .B1(n39), .Y(n385) );
  OAI22XL U225 ( .A0(n602), .A1(n41), .B0(n573), .B1(n153), .Y(n386) );
  OAI22XL U226 ( .A0(n602), .A1(n160), .B0(n574), .B1(n40), .Y(n387) );
  OAI22XL U227 ( .A0(n602), .A1(n42), .B0(n565), .B1(n154), .Y(n388) );
  OAI22XL U228 ( .A0(n603), .A1(n43), .B0(n566), .B1(n155), .Y(n389) );
  OAI22XL U229 ( .A0(n603), .A1(n44), .B0(n567), .B1(n156), .Y(n390) );
  OAI22XL U230 ( .A0(n603), .A1(n45), .B0(n568), .B1(n157), .Y(n391) );
  OAI22XL U231 ( .A0(n603), .A1(n46), .B0(n569), .B1(n158), .Y(n392) );
  OAI22XL U232 ( .A0(n603), .A1(n47), .B0(n570), .B1(n159), .Y(n393) );
  OAI22XL U233 ( .A0(n603), .A1(n161), .B0(n571), .B1(n41), .Y(n394) );
  OAI22XL U234 ( .A0(n603), .A1(n48), .B0(n572), .B1(n160), .Y(n395) );
  OAI22XL U235 ( .A0(n604), .A1(n219), .B0(n573), .B1(n42), .Y(n396) );
  OAI22XL U236 ( .A0(n604), .A1(n220), .B0(n574), .B1(n43), .Y(n397) );
  OAI22XL U237 ( .A0(n604), .A1(n221), .B0(n565), .B1(n44), .Y(n398) );
  OAI22XL U238 ( .A0(n604), .A1(n222), .B0(n566), .B1(n45), .Y(n399) );
  OAI22XL U239 ( .A0(n604), .A1(n223), .B0(n567), .B1(n46), .Y(n400) );
  OAI22XL U240 ( .A0(n604), .A1(n224), .B0(n568), .B1(n47), .Y(n401) );
  OAI22XL U241 ( .A0(n604), .A1(n49), .B0(n569), .B1(n161), .Y(n402) );
  OAI22XL U242 ( .A0(n605), .A1(n216), .B0(n570), .B1(n48), .Y(n403) );
  OAI22XL U243 ( .A0(n606), .A1(n217), .B0(n567), .B1(n49), .Y(n410) );
  OAI22XL U244 ( .A0(n607), .A1(n162), .B0(n565), .B1(n104), .Y(n419) );
  OAI22XL U245 ( .A0(n607), .A1(n50), .B0(n565), .B1(n211), .Y(n421) );
  OAI22XL U246 ( .A0(n607), .A1(n51), .B0(n565), .B1(n212), .Y(n422) );
  OAI22XL U247 ( .A0(n607), .A1(n52), .B0(n565), .B1(n213), .Y(n423) );
  OAI22XL U248 ( .A0(n608), .A1(n53), .B0(n565), .B1(n214), .Y(n424) );
  OAI22XL U249 ( .A0(n608), .A1(n54), .B0(n565), .B1(n215), .Y(n425) );
  OAI22XL U250 ( .A0(n608), .A1(n7), .B0(n565), .B1(n105), .Y(n426) );
  OAI22XL U251 ( .A0(n608), .A1(n55), .B0(n565), .B1(n162), .Y(n427) );
  OAI22XL U252 ( .A0(n608), .A1(n8), .B0(n565), .B1(n106), .Y(n428) );
  OAI22XL U253 ( .A0(n608), .A1(n163), .B0(n565), .B1(n50), .Y(n429) );
  OAI22XL U254 ( .A0(n608), .A1(n164), .B0(n565), .B1(n51), .Y(n430) );
  OAI22XL U255 ( .A0(n609), .A1(n165), .B0(n565), .B1(n52), .Y(n431) );
  OAI22XL U256 ( .A0(n609), .A1(n166), .B0(n565), .B1(n53), .Y(n432) );
  OAI22XL U257 ( .A0(n609), .A1(n167), .B0(n565), .B1(n54), .Y(n433) );
  OAI22XL U258 ( .A0(n609), .A1(n168), .B0(n565), .B1(n7), .Y(n434) );
  OAI22XL U259 ( .A0(n609), .A1(n169), .B0(n565), .B1(n55), .Y(n435) );
  OAI22XL U260 ( .A0(n609), .A1(n170), .B0(n565), .B1(n8), .Y(n436) );
  OAI22XL U261 ( .A0(n609), .A1(n56), .B0(n565), .B1(n163), .Y(n437) );
  OAI22XL U262 ( .A0(n610), .A1(n57), .B0(n565), .B1(n164), .Y(n438) );
  OAI22XL U263 ( .A0(n610), .A1(n58), .B0(n566), .B1(n165), .Y(n439) );
  OAI22XL U264 ( .A0(n610), .A1(n59), .B0(n565), .B1(n166), .Y(n440) );
  OAI22XL U265 ( .A0(n610), .A1(n60), .B0(n566), .B1(n167), .Y(n441) );
  OAI22XL U266 ( .A0(n610), .A1(n61), .B0(n566), .B1(n168), .Y(n442) );
  OAI22XL U267 ( .A0(n610), .A1(n62), .B0(n566), .B1(n169), .Y(n443) );
  OAI22XL U268 ( .A0(n610), .A1(n63), .B0(n566), .B1(n170), .Y(n444) );
  OAI22XL U269 ( .A0(n611), .A1(n171), .B0(n566), .B1(n56), .Y(n445) );
  OAI22XL U270 ( .A0(n611), .A1(n172), .B0(n566), .B1(n57), .Y(n446) );
  OAI22XL U271 ( .A0(n611), .A1(n173), .B0(n566), .B1(n58), .Y(n447) );
  OAI22XL U272 ( .A0(n611), .A1(n174), .B0(n566), .B1(n59), .Y(n448) );
  OAI22XL U273 ( .A0(n611), .A1(n175), .B0(n566), .B1(n60), .Y(n449) );
  OAI22XL U274 ( .A0(n611), .A1(n176), .B0(n566), .B1(n61), .Y(n450) );
  OAI22XL U275 ( .A0(n611), .A1(n177), .B0(n566), .B1(n62), .Y(n451) );
  OAI22XL U276 ( .A0(n612), .A1(n178), .B0(n566), .B1(n63), .Y(n452) );
  OAI22XL U277 ( .A0(n612), .A1(n64), .B0(n566), .B1(n171), .Y(n453) );
  OAI22XL U278 ( .A0(n612), .A1(n65), .B0(n566), .B1(n172), .Y(n454) );
  OAI22XL U279 ( .A0(n612), .A1(n66), .B0(n566), .B1(n173), .Y(n455) );
  OAI22XL U280 ( .A0(n612), .A1(n67), .B0(n566), .B1(n174), .Y(n456) );
  OAI22XL U281 ( .A0(n612), .A1(n68), .B0(n566), .B1(n175), .Y(n457) );
  OAI22XL U282 ( .A0(n612), .A1(n69), .B0(n566), .B1(n176), .Y(n458) );
  OAI22XL U283 ( .A0(n613), .A1(n70), .B0(n567), .B1(n177), .Y(n459) );
  OAI22XL U284 ( .A0(n613), .A1(n71), .B0(n566), .B1(n178), .Y(n460) );
  OAI22XL U285 ( .A0(n613), .A1(n179), .B0(n567), .B1(n64), .Y(n461) );
  OAI22XL U286 ( .A0(n613), .A1(n180), .B0(n567), .B1(n65), .Y(n462) );
  OAI22XL U287 ( .A0(n613), .A1(n181), .B0(n567), .B1(n66), .Y(n463) );
  OAI22XL U288 ( .A0(n613), .A1(n182), .B0(n567), .B1(n67), .Y(n464) );
  OAI22XL U289 ( .A0(n613), .A1(n183), .B0(n567), .B1(n68), .Y(n465) );
  OAI22XL U290 ( .A0(n614), .A1(n184), .B0(n567), .B1(n69), .Y(n466) );
  OAI22XL U291 ( .A0(n614), .A1(n185), .B0(n567), .B1(n70), .Y(n467) );
  OAI22XL U292 ( .A0(n614), .A1(n186), .B0(n567), .B1(n71), .Y(n468) );
  OAI22XL U293 ( .A0(n614), .A1(n72), .B0(n567), .B1(n179), .Y(n469) );
  OAI22XL U294 ( .A0(n614), .A1(n73), .B0(n567), .B1(n180), .Y(n470) );
  OAI22XL U295 ( .A0(n614), .A1(n74), .B0(n567), .B1(n181), .Y(n471) );
  OAI22XL U296 ( .A0(n614), .A1(n75), .B0(n567), .B1(n182), .Y(n472) );
  OAI22XL U297 ( .A0(n615), .A1(n76), .B0(n567), .B1(n183), .Y(n473) );
  OAI22XL U298 ( .A0(n615), .A1(n77), .B0(n567), .B1(n184), .Y(n474) );
  OAI22XL U299 ( .A0(n615), .A1(n78), .B0(n567), .B1(n185), .Y(n475) );
  OAI22XL U300 ( .A0(n615), .A1(n79), .B0(n570), .B1(n186), .Y(n476) );
  OAI22XL U301 ( .A0(n615), .A1(n187), .B0(n567), .B1(n72), .Y(n477) );
  OAI22XL U302 ( .A0(n615), .A1(n188), .B0(n567), .B1(n73), .Y(n478) );
  OAI22XL U303 ( .A0(n615), .A1(n189), .B0(n567), .B1(n74), .Y(n479) );
  OAI22XL U304 ( .A0(n616), .A1(n190), .B0(n568), .B1(n75), .Y(n480) );
  OAI22XL U305 ( .A0(n616), .A1(n191), .B0(n568), .B1(n76), .Y(n481) );
  OAI22XL U306 ( .A0(n616), .A1(n192), .B0(n568), .B1(n77), .Y(n482) );
  OAI22XL U307 ( .A0(n616), .A1(n193), .B0(n568), .B1(n78), .Y(n483) );
  OAI22XL U308 ( .A0(n616), .A1(n194), .B0(n568), .B1(n79), .Y(n484) );
  OAI22XL U309 ( .A0(n616), .A1(n80), .B0(n568), .B1(n187), .Y(n485) );
  OAI22XL U310 ( .A0(n616), .A1(n81), .B0(n568), .B1(n188), .Y(n486) );
  OAI22XL U311 ( .A0(n617), .A1(n82), .B0(n568), .B1(n189), .Y(n487) );
  OAI22XL U312 ( .A0(n617), .A1(n83), .B0(n568), .B1(n190), .Y(n488) );
  OAI22XL U313 ( .A0(n617), .A1(n84), .B0(n568), .B1(n191), .Y(n489) );
  OAI22XL U314 ( .A0(n617), .A1(n85), .B0(n568), .B1(n192), .Y(n490) );
  OAI22XL U315 ( .A0(n617), .A1(n86), .B0(n568), .B1(n193), .Y(n491) );
  OAI22XL U316 ( .A0(n617), .A1(n87), .B0(n568), .B1(n194), .Y(n492) );
  OAI22XL U317 ( .A0(n617), .A1(n195), .B0(n568), .B1(n80), .Y(n493) );
  OAI22XL U318 ( .A0(n618), .A1(n196), .B0(n568), .B1(n81), .Y(n494) );
  OAI22XL U319 ( .A0(n618), .A1(n197), .B0(n568), .B1(n82), .Y(n495) );
  OAI22XL U320 ( .A0(n618), .A1(n198), .B0(n568), .B1(n83), .Y(n496) );
  OAI22XL U321 ( .A0(n618), .A1(n199), .B0(n568), .B1(n84), .Y(n497) );
  OAI22XL U322 ( .A0(n618), .A1(n200), .B0(n568), .B1(n85), .Y(n498) );
  OAI22XL U323 ( .A0(n618), .A1(n201), .B0(n568), .B1(n86), .Y(n499) );
  OAI22XL U324 ( .A0(n618), .A1(n202), .B0(n569), .B1(n87), .Y(n500) );
  OAI22XL U325 ( .A0(n619), .A1(n88), .B0(n569), .B1(n195), .Y(n501) );
  OAI22XL U326 ( .A0(n619), .A1(n89), .B0(n569), .B1(n196), .Y(n502) );
  OAI22XL U327 ( .A0(n619), .A1(n90), .B0(n569), .B1(n197), .Y(n503) );
  OAI22XL U328 ( .A0(n619), .A1(n91), .B0(n569), .B1(n198), .Y(n504) );
  OAI22XL U329 ( .A0(n619), .A1(n92), .B0(n569), .B1(n199), .Y(n505) );
  OAI22XL U330 ( .A0(n619), .A1(n93), .B0(n569), .B1(n200), .Y(n506) );
  OAI22XL U331 ( .A0(n619), .A1(n94), .B0(n569), .B1(n201), .Y(n507) );
  OAI22XL U332 ( .A0(n620), .A1(n95), .B0(n569), .B1(n202), .Y(n508) );
  OAI22XL U333 ( .A0(n620), .A1(n203), .B0(n569), .B1(n88), .Y(n509) );
  OAI22XL U334 ( .A0(n620), .A1(n204), .B0(n569), .B1(n89), .Y(n510) );
  OAI22XL U335 ( .A0(n620), .A1(n205), .B0(n569), .B1(n90), .Y(n511) );
  OAI22XL U336 ( .A0(n620), .A1(n206), .B0(n569), .B1(n91), .Y(n512) );
  OAI22XL U337 ( .A0(n620), .A1(n207), .B0(n569), .B1(n92), .Y(n513) );
  OAI22XL U338 ( .A0(n620), .A1(n208), .B0(n569), .B1(n93), .Y(n514) );
  OAI22XL U339 ( .A0(n621), .A1(n209), .B0(n569), .B1(n94), .Y(n515) );
  OAI22XL U340 ( .A0(n621), .A1(n210), .B0(n569), .B1(n95), .Y(n516) );
  OAI22XL U341 ( .A0(n621), .A1(n96), .B0(n569), .B1(n203), .Y(n517) );
  OAI22XL U342 ( .A0(n621), .A1(n97), .B0(n569), .B1(n204), .Y(n518) );
  OAI22XL U343 ( .A0(n621), .A1(n98), .B0(n569), .B1(n205), .Y(n519) );
  OAI22XL U344 ( .A0(n621), .A1(n99), .B0(n570), .B1(n206), .Y(n520) );
  OAI22XL U345 ( .A0(n621), .A1(n100), .B0(n570), .B1(n207), .Y(n521) );
  OAI22XL U346 ( .A0(n622), .A1(n101), .B0(n570), .B1(n208), .Y(n522) );
  OAI22XL U347 ( .A0(n622), .A1(n102), .B0(n570), .B1(n209), .Y(n523) );
  OAI22XL U348 ( .A0(n622), .A1(n103), .B0(n570), .B1(n210), .Y(n524) );
  OAI22XL U349 ( .A0(n622), .A1(n234), .B0(n570), .B1(n96), .Y(n525) );
  OAI22XL U350 ( .A0(n622), .A1(n235), .B0(n570), .B1(n97), .Y(n526) );
  OAI22XL U351 ( .A0(n622), .A1(n236), .B0(n570), .B1(n98), .Y(n527) );
  OAI22XL U352 ( .A0(n622), .A1(n237), .B0(n570), .B1(n99), .Y(n528) );
  OAI22XL U353 ( .A0(n623), .A1(n238), .B0(n570), .B1(n100), .Y(n529) );
  OAI22XL U354 ( .A0(n623), .A1(n233), .B0(n570), .B1(n101), .Y(n530) );
  OAI22XL U355 ( .A0(n623), .A1(n239), .B0(n570), .B1(n102), .Y(n531) );
  OAI22XL U356 ( .A0(n623), .A1(n240), .B0(n570), .B1(n103), .Y(n532) );
  OAI22XL U357 ( .A0(n606), .A1(n104), .B0(n564), .B1(n216), .Y(n411) );
  OAI22XL U358 ( .A0(n606), .A1(n218), .B0(n564), .B1(n107), .Y(n412) );
  OAI22XL U359 ( .A0(n606), .A1(n211), .B0(n564), .B1(n108), .Y(n413) );
  OAI22XL U360 ( .A0(n606), .A1(n212), .B0(n564), .B1(n109), .Y(n414) );
  OAI22XL U361 ( .A0(n606), .A1(n213), .B0(n564), .B1(n110), .Y(n415) );
  OAI22XL U362 ( .A0(n606), .A1(n214), .B0(n564), .B1(n111), .Y(n416) );
  OAI22XL U363 ( .A0(n607), .A1(n215), .B0(n564), .B1(n112), .Y(n417) );
  OAI22XL U364 ( .A0(n607), .A1(n105), .B0(n564), .B1(n217), .Y(n418) );
  OAI22XL U365 ( .A0(n607), .A1(n106), .B0(n564), .B1(n218), .Y(n420) );
  OAI22XL U366 ( .A0(n605), .A1(n107), .B0(n565), .B1(n219), .Y(n404) );
  OAI22XL U367 ( .A0(n605), .A1(n108), .B0(n566), .B1(n220), .Y(n405) );
  OAI22XL U368 ( .A0(n605), .A1(n109), .B0(n567), .B1(n221), .Y(n406) );
  OAI22XL U369 ( .A0(n605), .A1(n110), .B0(n568), .B1(n222), .Y(n407) );
  OAI22XL U370 ( .A0(n605), .A1(n111), .B0(n569), .B1(n223), .Y(n408) );
  OAI22XL U371 ( .A0(n605), .A1(n112), .B0(n570), .B1(n224), .Y(n409) );
  CLKBUFX3 U372 ( .A(n268), .Y(n562) );
  CLKBUFX3 U373 ( .A(n655), .Y(n268) );
  CLKBUFX3 U374 ( .A(n655), .Y(n257) );
  CLKBUFX3 U375 ( .A(n655), .Y(n259) );
  CLKBUFX3 U376 ( .A(n655), .Y(n260) );
  CLKBUFX3 U377 ( .A(n655), .Y(n261) );
  CLKBUFX3 U378 ( .A(n655), .Y(n262) );
  CLKBUFX3 U379 ( .A(n655), .Y(n263) );
  CLKBUFX3 U380 ( .A(n655), .Y(n267) );
  NAND2X1 U381 ( .A(isstring), .B(n564), .Y(n258) );
  OAI21XL U382 ( .A0(n564), .A1(n233), .B0(n264), .Y(n538) );
  OAI211X1 U383 ( .A0(n265), .A1(isstring), .B0(n573), .C0(din[5]), .Y(n264)
         );
  NOR4X1 U384 ( .A(n266), .B(din[0]), .C(din[2]), .D(din[1]), .Y(n265) );
  OAI22XL U385 ( .A0(n578), .A1(n249), .B0(n570), .B1(n275), .Y(n280) );
  OAI22XL U386 ( .A0(n581), .A1(n250), .B0(n570), .B1(n274), .Y(n283) );
  OAI22XL U387 ( .A0(n584), .A1(n251), .B0(n566), .B1(n273), .Y(n286) );
  OAI22XL U388 ( .A0(n587), .A1(n252), .B0(n567), .B1(n272), .Y(n289) );
  OAI22XL U389 ( .A0(n589), .A1(n253), .B0(n568), .B1(n271), .Y(n292) );
  OAI22XL U390 ( .A0(n589), .A1(n254), .B0(n569), .B1(n270), .Y(n295) );
  OAI22XL U391 ( .A0(n590), .A1(n255), .B0(n570), .B1(n269), .Y(n298) );
  OAI22XL U392 ( .A0(n575), .A1(n256), .B0(n564), .B1(n276), .Y(n277) );
endmodule


module is_star ( clk, reset, rst, chardata, star_detected );
  input [7:0] chardata;
  input clk, reset, rst;
  output star_detected;
  wire   n2, n3, n4, n5, n1;

  DFFRX1 star_detected_reg ( .D(n5), .CK(clk), .RN(n1), .Q(star_detected) );
  OAI2BB2XL U3 ( .B0(rst), .B1(n2), .A0N(star_detected), .A1N(n2), .Y(n5) );
  AOI2BB1X1 U4 ( .A0N(n3), .A1N(n4), .B0(rst), .Y(n2) );
  OR4X1 U5 ( .A(chardata[4]), .B(chardata[2]), .C(chardata[7]), .D(chardata[6]), .Y(n3) );
  NAND4BX1 U6 ( .AN(chardata[0]), .B(chardata[1]), .C(chardata[5]), .D(
        chardata[3]), .Y(n4) );
  CLKINVX1 U7 ( .A(reset), .Y(n1) );
endmodule


module is_openning ( clk, reset, rst, chardata, opening_detected );
  input [7:0] chardata;
  input clk, reset, rst;
  output opening_detected;
  wire   n2, n3, n4, n5, n6, n1;

  DFFRX1 opening_detected_reg ( .D(n6), .CK(clk), .RN(n1), .Q(opening_detected) );
  OAI2BB2XL U3 ( .B0(rst), .B1(n2), .A0N(opening_detected), .A1N(n2), .Y(n6)
         );
  AOI2BB1X1 U4 ( .A0N(n3), .A1N(n4), .B0(rst), .Y(n2) );
  NAND3BX1 U5 ( .AN(chardata[0]), .B(chardata[1]), .C(n5), .Y(n3) );
  NAND4X1 U6 ( .A(chardata[6]), .B(chardata[4]), .C(chardata[3]), .D(
        chardata[2]), .Y(n4) );
  NOR2X1 U7 ( .A(chardata[7]), .B(chardata[5]), .Y(n5) );
  CLKINVX1 U8 ( .A(reset), .Y(n1) );
endmodule


module counter ( clk, reset, counter_reset, full );
  input clk, reset, counter_reset;
  output full;
  wire   N4, N5, N6, N7, n2, \add_581/carry[5] , \add_581/carry[4] ,
         \add_581/carry[3] , \add_581/carry[2] , n1, n3;
  wire   [5:0] c_out;
  wire   [5:0] c_out_next;

  DFFRX1 \c_out_reg[4]  ( .D(c_out_next[4]), .CK(clk), .RN(n3), .Q(c_out[4])
         );
  DFFRX1 \c_out_reg[5]  ( .D(c_out_next[5]), .CK(clk), .RN(n3), .Q(c_out[5])
         );
  DFFRX1 \c_out_reg[3]  ( .D(c_out_next[3]), .CK(clk), .RN(n3), .Q(c_out[3])
         );
  DFFRX1 \c_out_reg[2]  ( .D(c_out_next[2]), .CK(clk), .RN(n3), .Q(c_out[2])
         );
  DFFRX1 \c_out_reg[1]  ( .D(c_out_next[1]), .CK(clk), .RN(n3), .Q(c_out[1])
         );
  DFFRX1 \c_out_reg[0]  ( .D(c_out_next[0]), .CK(clk), .RN(n3), .Q(c_out[0])
         );
  NOR2BX1 U3 ( .AN(N7), .B(counter_reset), .Y(c_out_next[4]) );
  NOR2BX1 U4 ( .AN(N6), .B(counter_reset), .Y(c_out_next[3]) );
  NOR2BX1 U5 ( .AN(N5), .B(counter_reset), .Y(c_out_next[2]) );
  NOR2BX1 U6 ( .AN(N4), .B(counter_reset), .Y(c_out_next[1]) );
  ADDHXL U7 ( .A(c_out[1]), .B(c_out[0]), .CO(\add_581/carry[2] ), .S(N4) );
  ADDHXL U8 ( .A(c_out[3]), .B(\add_581/carry[3] ), .CO(\add_581/carry[4] ), 
        .S(N6) );
  ADDHXL U9 ( .A(c_out[2]), .B(\add_581/carry[2] ), .CO(\add_581/carry[3] ), 
        .S(N5) );
  NOR2X1 U10 ( .A(n1), .B(counter_reset), .Y(c_out_next[5]) );
  XNOR2X1 U11 ( .A(\add_581/carry[5] ), .B(c_out[5]), .Y(n1) );
  ADDHXL U12 ( .A(c_out[4]), .B(\add_581/carry[4] ), .CO(\add_581/carry[5] ), 
        .S(N7) );
  NOR4X1 U13 ( .A(n2), .B(c_out[2]), .C(c_out[4]), .D(c_out[3]), .Y(full) );
  NAND3BX1 U14 ( .AN(c_out[1]), .B(c_out[0]), .C(c_out[5]), .Y(n2) );
  NOR2X1 U15 ( .A(c_out[0]), .B(counter_reset), .Y(c_out_next[0]) );
  CLKINVX1 U16 ( .A(reset), .Y(n3) );
endmodule


module FSM ( clk, reset, isstring, ispattern, push_complete_ok1, 
        push_complete_ok2, string_full, string_shift_en, 
        Pattern_right_shift_en1, Pattern_right_shift_en2, pattern_reset_en, 
        counter_reset, valid, fill_space );
  input clk, reset, isstring, ispattern, push_complete_ok1, push_complete_ok2,
         string_full;
  output string_shift_en, Pattern_right_shift_en1, Pattern_right_shift_en2,
         pattern_reset_en, counter_reset, valid, fill_space;
  wire   N9, N63, n3, n4, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17,
         n18, n19, n20, n21, pattern_reset_en, n1, n5, n6;
  wire   [2:0] state;
  wire   [2:0] state_next;
  assign string_shift_en = N9;
  assign fill_space = N63;
  assign counter_reset = pattern_reset_en;

  DFFRX1 \state_reg[2]  ( .D(state_next[2]), .CK(clk), .RN(n5), .Q(state[2]), 
        .QN(n3) );
  DFFRX1 \state_reg[1]  ( .D(state_next[1]), .CK(clk), .RN(n5), .Q(state[1]), 
        .QN(n4) );
  DFFRX1 \state_reg[0]  ( .D(state_next[0]), .CK(clk), .RN(n5), .Q(state[0])
         );
  NOR2X1 U3 ( .A(n4), .B(n14), .Y(N63) );
  CLKINVX1 U4 ( .A(n7), .Y(Pattern_right_shift_en2) );
  CLKINVX1 U5 ( .A(push_complete_ok2), .Y(n1) );
  NAND2X1 U6 ( .A(n6), .B(n15), .Y(N9) );
  NOR2X1 U7 ( .A(n3), .B(state[0]), .Y(n10) );
  NOR3X1 U8 ( .A(n4), .B(state[0]), .C(n10), .Y(Pattern_right_shift_en1) );
  NAND3X1 U9 ( .A(state[0]), .B(n3), .C(state[1]), .Y(n7) );
  AND2X2 U10 ( .A(n10), .B(n4), .Y(pattern_reset_en) );
  NAND2X1 U11 ( .A(push_complete_ok1), .B(state[1]), .Y(n20) );
  OAI211X1 U12 ( .A0(string_full), .A1(n15), .B0(n16), .C0(n17), .Y(
        state_next[0]) );
  OAI21XL U13 ( .A0(ispattern), .A1(n1), .B0(Pattern_right_shift_en2), .Y(n16)
         );
  NOR3X1 U14 ( .A(n18), .B(pattern_reset_en), .C(n9), .Y(n17) );
  NOR4X1 U15 ( .A(n20), .B(ispattern), .C(state[2]), .D(state[0]), .Y(n18) );
  OAI31XL U16 ( .A0(n1), .A1(ispattern), .A2(n7), .B0(n8), .Y(state_next[2])
         );
  NOR2X1 U17 ( .A(n9), .B(n10), .Y(n8) );
  NAND2X1 U18 ( .A(n21), .B(state[0]), .Y(n15) );
  XNOR2X1 U19 ( .A(state[2]), .B(state[1]), .Y(n21) );
  NAND2X1 U20 ( .A(state[0]), .B(state[2]), .Y(n14) );
  AOI211X1 U21 ( .A0(n19), .A1(state[0]), .B0(isstring), .C0(state[1]), .Y(n9)
         );
  OR2X1 U22 ( .A(ispattern), .B(n3), .Y(n19) );
  NAND4BX1 U23 ( .AN(n11), .B(n12), .C(n13), .D(n7), .Y(state_next[1]) );
  NAND4BX1 U24 ( .AN(n14), .B(ispattern), .C(n6), .D(n4), .Y(n13) );
  NAND2BX1 U25 ( .AN(n15), .B(string_full), .Y(n12) );
  AOI211X1 U26 ( .A0(n4), .A1(isstring), .B0(state[0]), .C0(state[2]), .Y(n11)
         );
  NOR2X1 U27 ( .A(state[1]), .B(n14), .Y(valid) );
  CLKINVX1 U28 ( .A(isstring), .Y(n6) );
  CLKINVX1 U29 ( .A(reset), .Y(n5) );
endmodule


module Pattern_String_Comparator_Cell_0 ( s7, s6, s5, s4, s3, s2, s1, s0, p7, 
        p6, p5, p4, p3, p2, p1, p0, check, match );
  input [7:0] s7;
  input [7:0] s6;
  input [7:0] s5;
  input [7:0] s4;
  input [7:0] s3;
  input [7:0] s2;
  input [7:0] s1;
  input [7:0] s0;
  input [7:0] p7;
  input [7:0] p6;
  input [7:0] p5;
  input [7:0] p4;
  input [7:0] p3;
  input [7:0] p2;
  input [7:0] p1;
  input [7:0] p0;
  input [7:0] check;
  output match;
  wire   n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44, n45, n46,
         n47, n48, n49, n50, n51, n52, n53, n54, n55, n56, n57, n58, n59, n60,
         n61, n62, n63, n64, n65, n66, n67, n68, n69, n70, n71, n72, n73, n74,
         n75, n76, n77, n78, n79, n80, n81, n82, n83, n84, n85, n86, n87, n88,
         n89, n90, n91, n92, n93, n94, n95, n96, n97, n98, n99, n100, n101,
         n102, n103, n104, n105, n106, n107, n108, n109, n110, n111, n112,
         n113, n114, n115, n116, n117, n118, n119, n120, n121, n122;

  NOR2X1 U2 ( .A(n33), .B(n34), .Y(match) );
  NAND4X1 U3 ( .A(n79), .B(n80), .C(n81), .D(n82), .Y(n33) );
  NAND4X1 U4 ( .A(n35), .B(n36), .C(n37), .D(n38), .Y(n34) );
  XNOR2X1 U5 ( .A(s7[7]), .B(p7[7]), .Y(n64) );
  OAI21XL U6 ( .A0(n59), .A1(n60), .B0(check[7]), .Y(n36) );
  NAND4X1 U7 ( .A(n65), .B(n66), .C(n67), .D(n68), .Y(n59) );
  NAND4X1 U8 ( .A(n61), .B(n62), .C(n63), .D(n64), .Y(n60) );
  XNOR2X1 U9 ( .A(s7[3]), .B(p7[3]), .Y(n68) );
  XNOR2X1 U10 ( .A(s7[6]), .B(p7[6]), .Y(n63) );
  XNOR2X1 U11 ( .A(s5[6]), .B(p5[6]), .Y(n43) );
  OAI21XL U12 ( .A0(n39), .A1(n40), .B0(check[5]), .Y(n38) );
  NAND4X1 U13 ( .A(n45), .B(n46), .C(n47), .D(n48), .Y(n39) );
  NAND4X1 U14 ( .A(n41), .B(n42), .C(n43), .D(n44), .Y(n40) );
  XNOR2X1 U15 ( .A(s5[0]), .B(p5[0]), .Y(n45) );
  XNOR2X1 U16 ( .A(s6[7]), .B(p6[7]), .Y(n54) );
  OAI21XL U17 ( .A0(n49), .A1(n50), .B0(check[6]), .Y(n37) );
  NAND4X1 U18 ( .A(n55), .B(n56), .C(n57), .D(n58), .Y(n49) );
  NAND4X1 U19 ( .A(n51), .B(n52), .C(n53), .D(n54), .Y(n50) );
  XNOR2X1 U20 ( .A(s6[0]), .B(p6[0]), .Y(n55) );
  XNOR2X1 U21 ( .A(s7[2]), .B(p7[2]), .Y(n67) );
  XNOR2X1 U22 ( .A(s5[3]), .B(p5[3]), .Y(n48) );
  XNOR2X1 U23 ( .A(s5[5]), .B(p5[5]), .Y(n42) );
  XNOR2X1 U24 ( .A(s5[2]), .B(p5[2]), .Y(n47) );
  XNOR2X1 U25 ( .A(s7[1]), .B(p7[1]), .Y(n66) );
  XNOR2X1 U26 ( .A(s5[4]), .B(p5[4]), .Y(n41) );
  XNOR2X1 U27 ( .A(s7[0]), .B(p7[0]), .Y(n65) );
  XNOR2X1 U28 ( .A(s3[7]), .B(p3[7]), .Y(n108) );
  OAI21XL U29 ( .A0(n103), .A1(n104), .B0(check[3]), .Y(n80) );
  NAND4X1 U30 ( .A(n109), .B(n110), .C(n111), .D(n112), .Y(n103) );
  NAND4X1 U31 ( .A(n105), .B(n106), .C(n107), .D(n108), .Y(n104) );
  XNOR2X1 U32 ( .A(s3[0]), .B(p3[0]), .Y(n109) );
  XNOR2X1 U33 ( .A(s5[1]), .B(p5[1]), .Y(n46) );
  XNOR2X1 U34 ( .A(s4[7]), .B(p4[7]), .Y(n118) );
  OAI21XL U35 ( .A0(n113), .A1(n114), .B0(check[4]), .Y(n79) );
  NAND4X1 U36 ( .A(n119), .B(n120), .C(n121), .D(n122), .Y(n113) );
  NAND4X1 U37 ( .A(n115), .B(n116), .C(n117), .D(n118), .Y(n114) );
  XNOR2X1 U38 ( .A(s4[0]), .B(p4[0]), .Y(n119) );
  XNOR2X1 U39 ( .A(s4[6]), .B(p4[6]), .Y(n117) );
  XNOR2X1 U40 ( .A(s4[3]), .B(p4[3]), .Y(n122) );
  XNOR2X1 U41 ( .A(s4[5]), .B(p4[5]), .Y(n116) );
  XNOR2X1 U42 ( .A(s4[2]), .B(p4[2]), .Y(n121) );
  XNOR2X1 U43 ( .A(s7[5]), .B(p7[5]), .Y(n62) );
  XNOR2X1 U44 ( .A(s4[4]), .B(p4[4]), .Y(n115) );
  XNOR2X1 U45 ( .A(s4[1]), .B(p4[1]), .Y(n120) );
  XNOR2X1 U46 ( .A(s0[2]), .B(p0[2]), .Y(n77) );
  OAI21XL U47 ( .A0(n69), .A1(n70), .B0(check[0]), .Y(n35) );
  NAND4X1 U48 ( .A(n71), .B(n72), .C(n73), .D(n74), .Y(n70) );
  NAND4X1 U49 ( .A(n75), .B(n76), .C(n77), .D(n78), .Y(n69) );
  XNOR2X1 U50 ( .A(s0[4]), .B(p0[4]), .Y(n71) );
  XNOR2X1 U51 ( .A(s0[1]), .B(p0[1]), .Y(n76) );
  XNOR2X1 U52 ( .A(s5[7]), .B(p5[7]), .Y(n44) );
  XNOR2X1 U53 ( .A(s0[0]), .B(p0[0]), .Y(n75) );
  XNOR2X1 U54 ( .A(s1[7]), .B(p1[7]), .Y(n88) );
  OAI21XL U55 ( .A0(n83), .A1(n84), .B0(check[1]), .Y(n82) );
  NAND4X1 U56 ( .A(n89), .B(n90), .C(n91), .D(n92), .Y(n83) );
  NAND4X1 U57 ( .A(n85), .B(n86), .C(n87), .D(n88), .Y(n84) );
  XNOR2X1 U58 ( .A(s1[0]), .B(p1[0]), .Y(n89) );
  XNOR2X1 U59 ( .A(s7[4]), .B(p7[4]), .Y(n61) );
  XNOR2X1 U60 ( .A(s6[6]), .B(p6[6]), .Y(n53) );
  XNOR2X1 U61 ( .A(s2[7]), .B(p2[7]), .Y(n98) );
  XNOR2X1 U62 ( .A(s1[6]), .B(p1[6]), .Y(n87) );
  OAI21XL U63 ( .A0(n93), .A1(n94), .B0(check[2]), .Y(n81) );
  NAND4X1 U64 ( .A(n99), .B(n100), .C(n101), .D(n102), .Y(n93) );
  NAND4X1 U65 ( .A(n95), .B(n96), .C(n97), .D(n98), .Y(n94) );
  XNOR2X1 U66 ( .A(s2[0]), .B(p2[0]), .Y(n99) );
  XNOR2X1 U67 ( .A(s6[3]), .B(p6[3]), .Y(n58) );
  XNOR2X1 U68 ( .A(s1[3]), .B(p1[3]), .Y(n92) );
  XNOR2X1 U69 ( .A(s2[6]), .B(p2[6]), .Y(n97) );
  XNOR2X1 U70 ( .A(s6[5]), .B(p6[5]), .Y(n52) );
  XNOR2X1 U71 ( .A(s0[7]), .B(p0[7]), .Y(n74) );
  XNOR2X1 U72 ( .A(s1[5]), .B(p1[5]), .Y(n86) );
  XNOR2X1 U73 ( .A(s6[2]), .B(p6[2]), .Y(n57) );
  XNOR2X1 U74 ( .A(s2[3]), .B(p2[3]), .Y(n102) );
  XNOR2X1 U75 ( .A(s1[2]), .B(p1[2]), .Y(n91) );
  XNOR2X1 U76 ( .A(s6[4]), .B(p6[4]), .Y(n51) );
  XNOR2X1 U77 ( .A(s1[4]), .B(p1[4]), .Y(n85) );
  XNOR2X1 U78 ( .A(s2[5]), .B(p2[5]), .Y(n96) );
  XNOR2X1 U79 ( .A(s0[6]), .B(p0[6]), .Y(n73) );
  XNOR2X1 U80 ( .A(s3[6]), .B(p3[6]), .Y(n107) );
  XNOR2X1 U81 ( .A(s2[2]), .B(p2[2]), .Y(n101) );
  XNOR2X1 U82 ( .A(s6[1]), .B(p6[1]), .Y(n56) );
  XNOR2X1 U83 ( .A(s0[5]), .B(p0[5]), .Y(n72) );
  XNOR2X1 U84 ( .A(s1[1]), .B(p1[1]), .Y(n90) );
  XNOR2X1 U85 ( .A(s0[3]), .B(p0[3]), .Y(n78) );
  XNOR2X1 U86 ( .A(s3[3]), .B(p3[3]), .Y(n112) );
  XNOR2X1 U87 ( .A(s2[4]), .B(p2[4]), .Y(n95) );
  XNOR2X1 U88 ( .A(s3[5]), .B(p3[5]), .Y(n106) );
  XNOR2X1 U89 ( .A(s2[1]), .B(p2[1]), .Y(n100) );
  XNOR2X1 U90 ( .A(s3[2]), .B(p3[2]), .Y(n111) );
  XNOR2X1 U91 ( .A(s3[4]), .B(p3[4]), .Y(n105) );
  XNOR2X1 U92 ( .A(s3[1]), .B(p3[1]), .Y(n110) );
endmodule


module Pattern_String_Comparator_Cell_65 ( s7, s6, s5, s4, s3, s2, s1, s0, p7, 
        p6, p5, p4, p3, p2, p1, p0, check, match );
  input [7:0] s7;
  input [7:0] s6;
  input [7:0] s5;
  input [7:0] s4;
  input [7:0] s3;
  input [7:0] s2;
  input [7:0] s1;
  input [7:0] s0;
  input [7:0] p7;
  input [7:0] p6;
  input [7:0] p5;
  input [7:0] p4;
  input [7:0] p3;
  input [7:0] p2;
  input [7:0] p1;
  input [7:0] p0;
  input [7:0] check;
  output match;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30,
         n31, n32, n91, n92, n93, n94, n95, n96, n97, n98, n99, n100, n101,
         n102, n103, n104, n105, n106, n107, n108, n109, n110, n111, n112,
         n113, n114, n115, n116, n117, n118, n119, n120, n121, n122, n123,
         n124, n125, n126, n127, n128, n129, n130, n131, n132, n133, n134,
         n135, n136, n137, n138, n139, n140, n141, n142, n143, n144, n145,
         n146, n147, n148;

  NOR2X1 U2 ( .A(n148), .B(n147), .Y(match) );
  NAND4X1 U3 ( .A(n102), .B(n101), .C(n100), .D(n99), .Y(n148) );
  NAND4X1 U4 ( .A(n146), .B(n145), .C(n144), .D(n143), .Y(n147) );
  OAI21XL U5 ( .A0(n30), .A1(n29), .B0(check[2]), .Y(n100) );
  XNOR2X1 U6 ( .A(s7[7]), .B(p7[7]), .Y(n117) );
  OAI21XL U7 ( .A0(n122), .A1(n121), .B0(check[7]), .Y(n145) );
  NAND4X1 U8 ( .A(n116), .B(n115), .C(n114), .D(n113), .Y(n122) );
  NAND4X1 U9 ( .A(n120), .B(n119), .C(n118), .D(n117), .Y(n121) );
  XNOR2X1 U10 ( .A(s7[3]), .B(p7[3]), .Y(n113) );
  XNOR2X1 U11 ( .A(s7[6]), .B(p7[6]), .Y(n118) );
  XNOR2X1 U12 ( .A(s7[2]), .B(p7[2]), .Y(n114) );
  XNOR2X1 U13 ( .A(s7[5]), .B(p7[5]), .Y(n119) );
  XNOR2X1 U14 ( .A(s7[1]), .B(p7[1]), .Y(n115) );
  XNOR2X1 U15 ( .A(s7[0]), .B(p7[0]), .Y(n116) );
  XNOR2X1 U16 ( .A(s5[6]), .B(p5[6]), .Y(n138) );
  OAI21XL U17 ( .A0(n142), .A1(n141), .B0(check[5]), .Y(n143) );
  NAND4X1 U18 ( .A(n136), .B(n135), .C(n134), .D(n133), .Y(n142) );
  NAND4X1 U19 ( .A(n140), .B(n139), .C(n138), .D(n137), .Y(n141) );
  XNOR2X1 U20 ( .A(s5[0]), .B(p5[0]), .Y(n136) );
  XNOR2X1 U21 ( .A(s6[7]), .B(p6[7]), .Y(n127) );
  OAI21XL U22 ( .A0(n132), .A1(n131), .B0(check[6]), .Y(n144) );
  NAND4X1 U23 ( .A(n126), .B(n125), .C(n124), .D(n123), .Y(n132) );
  NAND4X1 U24 ( .A(n130), .B(n129), .C(n128), .D(n127), .Y(n131) );
  XNOR2X1 U25 ( .A(s6[0]), .B(p6[0]), .Y(n126) );
  XNOR2X1 U26 ( .A(s5[3]), .B(p5[3]), .Y(n133) );
  XNOR2X1 U27 ( .A(s5[5]), .B(p5[5]), .Y(n139) );
  XNOR2X1 U28 ( .A(s5[2]), .B(p5[2]), .Y(n134) );
  XNOR2X1 U29 ( .A(s5[4]), .B(p5[4]), .Y(n140) );
  XNOR2X1 U30 ( .A(s5[1]), .B(p5[1]), .Y(n135) );
  XNOR2X1 U31 ( .A(s3[7]), .B(p3[7]), .Y(n15) );
  OAI21XL U32 ( .A0(n20), .A1(n19), .B0(check[3]), .Y(n101) );
  NAND4X1 U33 ( .A(n14), .B(n13), .C(n12), .D(n11), .Y(n20) );
  NAND4X1 U34 ( .A(n18), .B(n17), .C(n16), .D(n15), .Y(n19) );
  XNOR2X1 U35 ( .A(s3[0]), .B(p3[0]), .Y(n14) );
  XNOR2X1 U36 ( .A(s4[7]), .B(p4[7]), .Y(n5) );
  OAI21XL U37 ( .A0(n10), .A1(n9), .B0(check[4]), .Y(n102) );
  NAND4X1 U38 ( .A(n4), .B(n3), .C(n2), .D(n1), .Y(n10) );
  NAND4X1 U39 ( .A(n8), .B(n7), .C(n6), .D(n5), .Y(n9) );
  XNOR2X1 U40 ( .A(s4[0]), .B(p4[0]), .Y(n4) );
  XNOR2X1 U41 ( .A(s4[6]), .B(p4[6]), .Y(n6) );
  XNOR2X1 U42 ( .A(s4[3]), .B(p4[3]), .Y(n1) );
  XNOR2X1 U43 ( .A(s4[5]), .B(p4[5]), .Y(n7) );
  XNOR2X1 U44 ( .A(s4[2]), .B(p4[2]), .Y(n2) );
  XNOR2X1 U45 ( .A(s4[4]), .B(p4[4]), .Y(n8) );
  XNOR2X1 U46 ( .A(s4[1]), .B(p4[1]), .Y(n3) );
  XNOR2X1 U47 ( .A(s0[2]), .B(p0[2]), .Y(n104) );
  OAI21XL U48 ( .A0(n112), .A1(n111), .B0(check[0]), .Y(n146) );
  NAND4X1 U49 ( .A(n110), .B(n109), .C(n108), .D(n107), .Y(n111) );
  NAND4X1 U50 ( .A(n106), .B(n105), .C(n104), .D(n103), .Y(n112) );
  XNOR2X1 U51 ( .A(s0[4]), .B(p0[4]), .Y(n110) );
  XNOR2X1 U52 ( .A(s7[4]), .B(p7[4]), .Y(n120) );
  XNOR2X1 U53 ( .A(s0[1]), .B(p0[1]), .Y(n105) );
  XNOR2X1 U54 ( .A(s5[7]), .B(p5[7]), .Y(n137) );
  XNOR2X1 U55 ( .A(s0[0]), .B(p0[0]), .Y(n106) );
  XNOR2X1 U56 ( .A(s1[7]), .B(p1[7]), .Y(n93) );
  OAI21XL U57 ( .A0(n98), .A1(n97), .B0(check[1]), .Y(n99) );
  NAND4X1 U58 ( .A(n92), .B(n91), .C(n32), .D(n31), .Y(n98) );
  NAND4X1 U59 ( .A(n96), .B(n95), .C(n94), .D(n93), .Y(n97) );
  XNOR2X1 U60 ( .A(s1[0]), .B(p1[0]), .Y(n92) );
  XNOR2X1 U61 ( .A(s6[6]), .B(p6[6]), .Y(n128) );
  XNOR2X1 U62 ( .A(s2[7]), .B(p2[7]), .Y(n25) );
  XNOR2X1 U63 ( .A(s1[6]), .B(p1[6]), .Y(n94) );
  NAND4X1 U64 ( .A(n28), .B(n27), .C(n26), .D(n25), .Y(n29) );
  XNOR2X1 U65 ( .A(s2[4]), .B(p2[4]), .Y(n28) );
  XNOR2X1 U66 ( .A(s2[5]), .B(p2[5]), .Y(n27) );
  XNOR2X1 U67 ( .A(s2[6]), .B(p2[6]), .Y(n26) );
  XNOR2X1 U68 ( .A(s6[3]), .B(p6[3]), .Y(n123) );
  XNOR2X1 U69 ( .A(s1[3]), .B(p1[3]), .Y(n31) );
  XNOR2X1 U70 ( .A(s6[5]), .B(p6[5]), .Y(n129) );
  XNOR2X1 U71 ( .A(s0[7]), .B(p0[7]), .Y(n107) );
  XNOR2X1 U72 ( .A(s1[5]), .B(p1[5]), .Y(n95) );
  XNOR2X1 U73 ( .A(s6[2]), .B(p6[2]), .Y(n124) );
  XNOR2X1 U74 ( .A(s2[3]), .B(p2[3]), .Y(n21) );
  XNOR2X1 U75 ( .A(s1[2]), .B(p1[2]), .Y(n32) );
  NAND4X1 U76 ( .A(n24), .B(n23), .C(n22), .D(n21), .Y(n30) );
  XNOR2X1 U77 ( .A(s2[0]), .B(p2[0]), .Y(n24) );
  XNOR2X1 U78 ( .A(s2[1]), .B(p2[1]), .Y(n23) );
  XNOR2X1 U79 ( .A(s2[2]), .B(p2[2]), .Y(n22) );
  XNOR2X1 U80 ( .A(s6[4]), .B(p6[4]), .Y(n130) );
  XNOR2X1 U81 ( .A(s0[6]), .B(p0[6]), .Y(n108) );
  XNOR2X1 U82 ( .A(s1[4]), .B(p1[4]), .Y(n96) );
  XNOR2X1 U83 ( .A(s3[6]), .B(p3[6]), .Y(n16) );
  XNOR2X1 U84 ( .A(s6[1]), .B(p6[1]), .Y(n125) );
  XNOR2X1 U85 ( .A(s0[5]), .B(p0[5]), .Y(n109) );
  XNOR2X1 U86 ( .A(s0[3]), .B(p0[3]), .Y(n103) );
  XNOR2X1 U87 ( .A(s1[1]), .B(p1[1]), .Y(n91) );
  XNOR2X1 U88 ( .A(s3[3]), .B(p3[3]), .Y(n11) );
  XNOR2X1 U89 ( .A(s3[5]), .B(p3[5]), .Y(n17) );
  XNOR2X1 U90 ( .A(s3[2]), .B(p3[2]), .Y(n12) );
  XNOR2X1 U91 ( .A(s3[4]), .B(p3[4]), .Y(n18) );
  XNOR2X1 U92 ( .A(s3[1]), .B(p3[1]), .Y(n13) );
endmodule


module Pattern_String_Comparator_Cell_64 ( s7, s6, s5, s4, s3, s2, s1, s0, p7, 
        p6, p5, p4, p3, p2, p1, p0, check, match );
  input [7:0] s7;
  input [7:0] s6;
  input [7:0] s5;
  input [7:0] s4;
  input [7:0] s3;
  input [7:0] s2;
  input [7:0] s1;
  input [7:0] s0;
  input [7:0] p7;
  input [7:0] p6;
  input [7:0] p5;
  input [7:0] p4;
  input [7:0] p3;
  input [7:0] p2;
  input [7:0] p1;
  input [7:0] p0;
  input [7:0] check;
  output match;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30,
         n31, n32, n91, n92, n93, n94, n95, n96, n97, n98, n99, n100, n101,
         n102, n103, n104, n105, n106, n107, n108, n109, n110, n111, n112,
         n113, n114, n115, n116, n117, n118, n119, n120, n121, n122, n123,
         n124, n125, n126, n127, n128, n129, n130, n131, n132, n133, n134,
         n135, n136, n137, n138, n139, n140, n141, n142, n143, n144, n145,
         n146, n147, n148;

  NOR2X1 U2 ( .A(n148), .B(n147), .Y(match) );
  NAND4X1 U3 ( .A(n102), .B(n101), .C(n100), .D(n99), .Y(n148) );
  NAND4X1 U4 ( .A(n146), .B(n145), .C(n144), .D(n143), .Y(n147) );
  OAI21XL U5 ( .A0(n30), .A1(n29), .B0(check[2]), .Y(n100) );
  XNOR2X1 U6 ( .A(s7[7]), .B(p7[7]), .Y(n117) );
  OAI21XL U7 ( .A0(n122), .A1(n121), .B0(check[7]), .Y(n145) );
  NAND4X1 U8 ( .A(n116), .B(n115), .C(n114), .D(n113), .Y(n122) );
  NAND4X1 U9 ( .A(n120), .B(n119), .C(n118), .D(n117), .Y(n121) );
  XNOR2X1 U10 ( .A(s7[3]), .B(p7[3]), .Y(n113) );
  XNOR2X1 U11 ( .A(s7[6]), .B(p7[6]), .Y(n118) );
  XNOR2X1 U12 ( .A(s7[2]), .B(p7[2]), .Y(n114) );
  XNOR2X1 U13 ( .A(s7[5]), .B(p7[5]), .Y(n119) );
  XNOR2X1 U14 ( .A(s7[1]), .B(p7[1]), .Y(n115) );
  XNOR2X1 U15 ( .A(s7[0]), .B(p7[0]), .Y(n116) );
  XNOR2X1 U16 ( .A(s5[6]), .B(p5[6]), .Y(n138) );
  OAI21XL U17 ( .A0(n142), .A1(n141), .B0(check[5]), .Y(n143) );
  NAND4X1 U18 ( .A(n136), .B(n135), .C(n134), .D(n133), .Y(n142) );
  NAND4X1 U19 ( .A(n140), .B(n139), .C(n138), .D(n137), .Y(n141) );
  XNOR2X1 U20 ( .A(s5[0]), .B(p5[0]), .Y(n136) );
  XNOR2X1 U21 ( .A(s6[7]), .B(p6[7]), .Y(n127) );
  OAI21XL U22 ( .A0(n132), .A1(n131), .B0(check[6]), .Y(n144) );
  NAND4X1 U23 ( .A(n126), .B(n125), .C(n124), .D(n123), .Y(n132) );
  NAND4X1 U24 ( .A(n130), .B(n129), .C(n128), .D(n127), .Y(n131) );
  XNOR2X1 U25 ( .A(s6[0]), .B(p6[0]), .Y(n126) );
  XNOR2X1 U26 ( .A(s5[3]), .B(p5[3]), .Y(n133) );
  XNOR2X1 U27 ( .A(s5[5]), .B(p5[5]), .Y(n139) );
  XNOR2X1 U28 ( .A(s5[2]), .B(p5[2]), .Y(n134) );
  XNOR2X1 U29 ( .A(s5[4]), .B(p5[4]), .Y(n140) );
  XNOR2X1 U30 ( .A(s5[1]), .B(p5[1]), .Y(n135) );
  XNOR2X1 U31 ( .A(s3[7]), .B(p3[7]), .Y(n15) );
  OAI21XL U32 ( .A0(n20), .A1(n19), .B0(check[3]), .Y(n101) );
  NAND4X1 U33 ( .A(n14), .B(n13), .C(n12), .D(n11), .Y(n20) );
  NAND4X1 U34 ( .A(n18), .B(n17), .C(n16), .D(n15), .Y(n19) );
  XNOR2X1 U35 ( .A(s3[0]), .B(p3[0]), .Y(n14) );
  XNOR2X1 U36 ( .A(s4[7]), .B(p4[7]), .Y(n5) );
  OAI21XL U37 ( .A0(n10), .A1(n9), .B0(check[4]), .Y(n102) );
  NAND4X1 U38 ( .A(n4), .B(n3), .C(n2), .D(n1), .Y(n10) );
  NAND4X1 U39 ( .A(n8), .B(n7), .C(n6), .D(n5), .Y(n9) );
  XNOR2X1 U40 ( .A(s4[0]), .B(p4[0]), .Y(n4) );
  XNOR2X1 U41 ( .A(s4[6]), .B(p4[6]), .Y(n6) );
  XNOR2X1 U42 ( .A(s4[3]), .B(p4[3]), .Y(n1) );
  XNOR2X1 U43 ( .A(s4[5]), .B(p4[5]), .Y(n7) );
  XNOR2X1 U44 ( .A(s4[2]), .B(p4[2]), .Y(n2) );
  XNOR2X1 U45 ( .A(s4[4]), .B(p4[4]), .Y(n8) );
  XNOR2X1 U46 ( .A(s4[1]), .B(p4[1]), .Y(n3) );
  XNOR2X1 U47 ( .A(s0[2]), .B(p0[2]), .Y(n104) );
  OAI21XL U48 ( .A0(n112), .A1(n111), .B0(check[0]), .Y(n146) );
  NAND4X1 U49 ( .A(n110), .B(n109), .C(n108), .D(n107), .Y(n111) );
  NAND4X1 U50 ( .A(n106), .B(n105), .C(n104), .D(n103), .Y(n112) );
  XNOR2X1 U51 ( .A(s0[4]), .B(p0[4]), .Y(n110) );
  XNOR2X1 U52 ( .A(s7[4]), .B(p7[4]), .Y(n120) );
  XNOR2X1 U53 ( .A(s0[1]), .B(p0[1]), .Y(n105) );
  XNOR2X1 U54 ( .A(s5[7]), .B(p5[7]), .Y(n137) );
  XNOR2X1 U55 ( .A(s0[0]), .B(p0[0]), .Y(n106) );
  XNOR2X1 U56 ( .A(s1[7]), .B(p1[7]), .Y(n93) );
  OAI21XL U57 ( .A0(n98), .A1(n97), .B0(check[1]), .Y(n99) );
  NAND4X1 U58 ( .A(n92), .B(n91), .C(n32), .D(n31), .Y(n98) );
  NAND4X1 U59 ( .A(n96), .B(n95), .C(n94), .D(n93), .Y(n97) );
  XNOR2X1 U60 ( .A(s1[0]), .B(p1[0]), .Y(n92) );
  XNOR2X1 U61 ( .A(s6[6]), .B(p6[6]), .Y(n128) );
  XNOR2X1 U62 ( .A(s2[7]), .B(p2[7]), .Y(n25) );
  XNOR2X1 U63 ( .A(s1[6]), .B(p1[6]), .Y(n94) );
  NAND4X1 U64 ( .A(n28), .B(n27), .C(n26), .D(n25), .Y(n29) );
  XNOR2X1 U65 ( .A(s2[4]), .B(p2[4]), .Y(n28) );
  XNOR2X1 U66 ( .A(s2[5]), .B(p2[5]), .Y(n27) );
  XNOR2X1 U67 ( .A(s2[6]), .B(p2[6]), .Y(n26) );
  XNOR2X1 U68 ( .A(s6[3]), .B(p6[3]), .Y(n123) );
  XNOR2X1 U69 ( .A(s1[3]), .B(p1[3]), .Y(n31) );
  XNOR2X1 U70 ( .A(s6[5]), .B(p6[5]), .Y(n129) );
  XNOR2X1 U71 ( .A(s0[7]), .B(p0[7]), .Y(n107) );
  XNOR2X1 U72 ( .A(s1[5]), .B(p1[5]), .Y(n95) );
  XNOR2X1 U73 ( .A(s6[2]), .B(p6[2]), .Y(n124) );
  XNOR2X1 U74 ( .A(s2[3]), .B(p2[3]), .Y(n21) );
  XNOR2X1 U75 ( .A(s1[2]), .B(p1[2]), .Y(n32) );
  NAND4X1 U76 ( .A(n24), .B(n23), .C(n22), .D(n21), .Y(n30) );
  XNOR2X1 U77 ( .A(s2[0]), .B(p2[0]), .Y(n24) );
  XNOR2X1 U78 ( .A(s2[1]), .B(p2[1]), .Y(n23) );
  XNOR2X1 U79 ( .A(s2[2]), .B(p2[2]), .Y(n22) );
  XNOR2X1 U80 ( .A(s6[4]), .B(p6[4]), .Y(n130) );
  XNOR2X1 U81 ( .A(s0[6]), .B(p0[6]), .Y(n108) );
  XNOR2X1 U82 ( .A(s1[4]), .B(p1[4]), .Y(n96) );
  XNOR2X1 U83 ( .A(s3[6]), .B(p3[6]), .Y(n16) );
  XNOR2X1 U84 ( .A(s6[1]), .B(p6[1]), .Y(n125) );
  XNOR2X1 U85 ( .A(s0[5]), .B(p0[5]), .Y(n109) );
  XNOR2X1 U86 ( .A(s0[3]), .B(p0[3]), .Y(n103) );
  XNOR2X1 U87 ( .A(s1[1]), .B(p1[1]), .Y(n91) );
  XNOR2X1 U88 ( .A(s3[3]), .B(p3[3]), .Y(n11) );
  XNOR2X1 U89 ( .A(s3[5]), .B(p3[5]), .Y(n17) );
  XNOR2X1 U90 ( .A(s3[2]), .B(p3[2]), .Y(n12) );
  XNOR2X1 U91 ( .A(s3[4]), .B(p3[4]), .Y(n18) );
  XNOR2X1 U92 ( .A(s3[1]), .B(p3[1]), .Y(n13) );
endmodule


module Pattern_String_Comparator_Cell_63 ( s7, s6, s5, s4, s3, s2, s1, s0, p7, 
        p6, p5, p4, p3, p2, p1, p0, check, match );
  input [7:0] s7;
  input [7:0] s6;
  input [7:0] s5;
  input [7:0] s4;
  input [7:0] s3;
  input [7:0] s2;
  input [7:0] s1;
  input [7:0] s0;
  input [7:0] p7;
  input [7:0] p6;
  input [7:0] p5;
  input [7:0] p4;
  input [7:0] p3;
  input [7:0] p2;
  input [7:0] p1;
  input [7:0] p0;
  input [7:0] check;
  output match;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30,
         n31, n32, n91, n92, n93, n94, n95, n96, n97, n98, n99, n100, n101,
         n102, n103, n104, n105, n106, n107, n108, n109, n110, n111, n112,
         n113, n114, n115, n116, n117, n118, n119, n120, n121, n122, n123,
         n124, n125, n126, n127, n128, n129, n130, n131, n132, n133, n134,
         n135, n136, n137, n138, n139, n140, n141, n142, n143, n144, n145,
         n146, n147, n148;

  NOR2X1 U2 ( .A(n148), .B(n147), .Y(match) );
  NAND4X1 U3 ( .A(n102), .B(n101), .C(n100), .D(n99), .Y(n148) );
  NAND4X1 U4 ( .A(n146), .B(n145), .C(n144), .D(n143), .Y(n147) );
  XNOR2X1 U5 ( .A(s7[7]), .B(p7[7]), .Y(n117) );
  OAI21XL U6 ( .A0(n122), .A1(n121), .B0(check[7]), .Y(n145) );
  NAND4X1 U7 ( .A(n116), .B(n115), .C(n114), .D(n113), .Y(n122) );
  NAND4X1 U8 ( .A(n120), .B(n119), .C(n118), .D(n117), .Y(n121) );
  XNOR2X1 U9 ( .A(s7[3]), .B(p7[3]), .Y(n113) );
  XNOR2X1 U10 ( .A(s7[6]), .B(p7[6]), .Y(n118) );
  XNOR2X1 U11 ( .A(s7[2]), .B(p7[2]), .Y(n114) );
  XNOR2X1 U12 ( .A(s7[5]), .B(p7[5]), .Y(n119) );
  XNOR2X1 U13 ( .A(s7[1]), .B(p7[1]), .Y(n115) );
  XNOR2X1 U14 ( .A(s7[0]), .B(p7[0]), .Y(n116) );
  XNOR2X1 U15 ( .A(s5[6]), .B(p5[6]), .Y(n138) );
  OAI21XL U16 ( .A0(n142), .A1(n141), .B0(check[5]), .Y(n143) );
  NAND4X1 U17 ( .A(n136), .B(n135), .C(n134), .D(n133), .Y(n142) );
  NAND4X1 U18 ( .A(n140), .B(n139), .C(n138), .D(n137), .Y(n141) );
  XNOR2X1 U19 ( .A(s5[0]), .B(p5[0]), .Y(n136) );
  XNOR2X1 U20 ( .A(s6[7]), .B(p6[7]), .Y(n127) );
  OAI21XL U21 ( .A0(n132), .A1(n131), .B0(check[6]), .Y(n144) );
  NAND4X1 U22 ( .A(n126), .B(n125), .C(n124), .D(n123), .Y(n132) );
  NAND4X1 U23 ( .A(n130), .B(n129), .C(n128), .D(n127), .Y(n131) );
  XNOR2X1 U24 ( .A(s6[0]), .B(p6[0]), .Y(n126) );
  XNOR2X1 U25 ( .A(s5[3]), .B(p5[3]), .Y(n133) );
  XNOR2X1 U26 ( .A(s5[5]), .B(p5[5]), .Y(n139) );
  XNOR2X1 U27 ( .A(s5[2]), .B(p5[2]), .Y(n134) );
  XNOR2X1 U28 ( .A(s5[4]), .B(p5[4]), .Y(n140) );
  XNOR2X1 U29 ( .A(s3[7]), .B(p3[7]), .Y(n15) );
  OAI21XL U30 ( .A0(n20), .A1(n19), .B0(check[3]), .Y(n101) );
  NAND4X1 U31 ( .A(n14), .B(n13), .C(n12), .D(n11), .Y(n20) );
  NAND4X1 U32 ( .A(n18), .B(n17), .C(n16), .D(n15), .Y(n19) );
  XNOR2X1 U33 ( .A(s3[0]), .B(p3[0]), .Y(n14) );
  XNOR2X1 U34 ( .A(s5[1]), .B(p5[1]), .Y(n135) );
  XNOR2X1 U35 ( .A(s4[7]), .B(p4[7]), .Y(n5) );
  OAI21XL U36 ( .A0(n10), .A1(n9), .B0(check[4]), .Y(n102) );
  NAND4X1 U37 ( .A(n4), .B(n3), .C(n2), .D(n1), .Y(n10) );
  NAND4X1 U38 ( .A(n8), .B(n7), .C(n6), .D(n5), .Y(n9) );
  XNOR2X1 U39 ( .A(s4[0]), .B(p4[0]), .Y(n4) );
  XNOR2X1 U40 ( .A(s4[6]), .B(p4[6]), .Y(n6) );
  XNOR2X1 U41 ( .A(s4[3]), .B(p4[3]), .Y(n1) );
  XNOR2X1 U42 ( .A(s4[5]), .B(p4[5]), .Y(n7) );
  XNOR2X1 U43 ( .A(s4[2]), .B(p4[2]), .Y(n2) );
  XNOR2X1 U44 ( .A(s4[4]), .B(p4[4]), .Y(n8) );
  XNOR2X1 U45 ( .A(s4[1]), .B(p4[1]), .Y(n3) );
  XNOR2X1 U46 ( .A(s0[2]), .B(p0[2]), .Y(n104) );
  OAI21XL U47 ( .A0(n112), .A1(n111), .B0(check[0]), .Y(n146) );
  NAND4X1 U48 ( .A(n110), .B(n109), .C(n108), .D(n107), .Y(n111) );
  NAND4X1 U49 ( .A(n106), .B(n105), .C(n104), .D(n103), .Y(n112) );
  XNOR2X1 U50 ( .A(s0[4]), .B(p0[4]), .Y(n110) );
  XNOR2X1 U51 ( .A(s7[4]), .B(p7[4]), .Y(n120) );
  XNOR2X1 U52 ( .A(s0[1]), .B(p0[1]), .Y(n105) );
  XNOR2X1 U53 ( .A(s5[7]), .B(p5[7]), .Y(n137) );
  XNOR2X1 U54 ( .A(s0[0]), .B(p0[0]), .Y(n106) );
  XNOR2X1 U55 ( .A(s1[7]), .B(p1[7]), .Y(n93) );
  OAI21XL U56 ( .A0(n98), .A1(n97), .B0(check[1]), .Y(n99) );
  NAND4X1 U57 ( .A(n92), .B(n91), .C(n32), .D(n31), .Y(n98) );
  NAND4X1 U58 ( .A(n96), .B(n95), .C(n94), .D(n93), .Y(n97) );
  XNOR2X1 U59 ( .A(s1[0]), .B(p1[0]), .Y(n92) );
  XNOR2X1 U60 ( .A(s6[6]), .B(p6[6]), .Y(n128) );
  XNOR2X1 U61 ( .A(s2[7]), .B(p2[7]), .Y(n25) );
  XNOR2X1 U62 ( .A(s1[6]), .B(p1[6]), .Y(n94) );
  OAI21XL U63 ( .A0(n30), .A1(n29), .B0(check[2]), .Y(n100) );
  NAND4X1 U64 ( .A(n24), .B(n23), .C(n22), .D(n21), .Y(n30) );
  NAND4X1 U65 ( .A(n28), .B(n27), .C(n26), .D(n25), .Y(n29) );
  XNOR2X1 U66 ( .A(s2[0]), .B(p2[0]), .Y(n24) );
  XNOR2X1 U67 ( .A(s6[3]), .B(p6[3]), .Y(n123) );
  XNOR2X1 U68 ( .A(s1[3]), .B(p1[3]), .Y(n31) );
  XNOR2X1 U69 ( .A(s2[6]), .B(p2[6]), .Y(n26) );
  XNOR2X1 U70 ( .A(s6[5]), .B(p6[5]), .Y(n129) );
  XNOR2X1 U71 ( .A(s0[7]), .B(p0[7]), .Y(n107) );
  XNOR2X1 U72 ( .A(s1[5]), .B(p1[5]), .Y(n95) );
  XNOR2X1 U73 ( .A(s6[2]), .B(p6[2]), .Y(n124) );
  XNOR2X1 U74 ( .A(s2[3]), .B(p2[3]), .Y(n21) );
  XNOR2X1 U75 ( .A(s1[2]), .B(p1[2]), .Y(n32) );
  XNOR2X1 U76 ( .A(s6[4]), .B(p6[4]), .Y(n130) );
  XNOR2X1 U77 ( .A(s1[4]), .B(p1[4]), .Y(n96) );
  XNOR2X1 U78 ( .A(s2[5]), .B(p2[5]), .Y(n27) );
  XNOR2X1 U79 ( .A(s0[6]), .B(p0[6]), .Y(n108) );
  XNOR2X1 U80 ( .A(s3[6]), .B(p3[6]), .Y(n16) );
  XNOR2X1 U81 ( .A(s2[2]), .B(p2[2]), .Y(n22) );
  XNOR2X1 U82 ( .A(s6[1]), .B(p6[1]), .Y(n125) );
  XNOR2X1 U83 ( .A(s0[5]), .B(p0[5]), .Y(n109) );
  XNOR2X1 U84 ( .A(s1[1]), .B(p1[1]), .Y(n91) );
  XNOR2X1 U85 ( .A(s0[3]), .B(p0[3]), .Y(n103) );
  XNOR2X1 U86 ( .A(s3[3]), .B(p3[3]), .Y(n11) );
  XNOR2X1 U87 ( .A(s2[4]), .B(p2[4]), .Y(n28) );
  XNOR2X1 U88 ( .A(s3[5]), .B(p3[5]), .Y(n17) );
  XNOR2X1 U89 ( .A(s2[1]), .B(p2[1]), .Y(n23) );
  XNOR2X1 U90 ( .A(s3[2]), .B(p3[2]), .Y(n12) );
  XNOR2X1 U91 ( .A(s3[4]), .B(p3[4]), .Y(n18) );
  XNOR2X1 U92 ( .A(s3[1]), .B(p3[1]), .Y(n13) );
endmodule


module Pattern_String_Comparator_Cell_62 ( s7, s6, s5, s4, s3, s2, s1, s0, p7, 
        p6, p5, p4, p3, p2, p1, p0, check, match );
  input [7:0] s7;
  input [7:0] s6;
  input [7:0] s5;
  input [7:0] s4;
  input [7:0] s3;
  input [7:0] s2;
  input [7:0] s1;
  input [7:0] s0;
  input [7:0] p7;
  input [7:0] p6;
  input [7:0] p5;
  input [7:0] p4;
  input [7:0] p3;
  input [7:0] p2;
  input [7:0] p1;
  input [7:0] p0;
  input [7:0] check;
  output match;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30,
         n31, n32, n91, n92, n93, n94, n95, n96, n97, n98, n99, n100, n101,
         n102, n103, n104, n105, n106, n107, n108, n109, n110, n111, n112,
         n113, n114, n115, n116, n117, n118, n119, n120, n121, n122, n123,
         n124, n125, n126, n127, n128, n129, n130, n131, n132, n133, n134,
         n135, n136, n137, n138, n139, n140, n141, n142, n143, n144, n145,
         n146, n147, n148;

  NOR2X1 U2 ( .A(n148), .B(n147), .Y(match) );
  NAND4X1 U3 ( .A(n102), .B(n101), .C(n100), .D(n99), .Y(n148) );
  NAND4X1 U4 ( .A(n146), .B(n145), .C(n144), .D(n143), .Y(n147) );
  XNOR2X1 U5 ( .A(s7[7]), .B(p7[7]), .Y(n117) );
  OAI21XL U6 ( .A0(n122), .A1(n121), .B0(check[7]), .Y(n145) );
  NAND4X1 U7 ( .A(n116), .B(n115), .C(n114), .D(n113), .Y(n122) );
  NAND4X1 U8 ( .A(n120), .B(n119), .C(n118), .D(n117), .Y(n121) );
  XNOR2X1 U9 ( .A(s7[3]), .B(p7[3]), .Y(n113) );
  XNOR2X1 U10 ( .A(s7[6]), .B(p7[6]), .Y(n118) );
  XNOR2X1 U11 ( .A(s7[2]), .B(p7[2]), .Y(n114) );
  XNOR2X1 U12 ( .A(s7[5]), .B(p7[5]), .Y(n119) );
  XNOR2X1 U13 ( .A(s7[1]), .B(p7[1]), .Y(n115) );
  XNOR2X1 U14 ( .A(s7[0]), .B(p7[0]), .Y(n116) );
  XNOR2X1 U15 ( .A(s5[6]), .B(p5[6]), .Y(n138) );
  OAI21XL U16 ( .A0(n142), .A1(n141), .B0(check[5]), .Y(n143) );
  NAND4X1 U17 ( .A(n136), .B(n135), .C(n134), .D(n133), .Y(n142) );
  NAND4X1 U18 ( .A(n140), .B(n139), .C(n138), .D(n137), .Y(n141) );
  XNOR2X1 U19 ( .A(s5[0]), .B(p5[0]), .Y(n136) );
  XNOR2X1 U20 ( .A(s6[7]), .B(p6[7]), .Y(n127) );
  OAI21XL U21 ( .A0(n132), .A1(n131), .B0(check[6]), .Y(n144) );
  NAND4X1 U22 ( .A(n126), .B(n125), .C(n124), .D(n123), .Y(n132) );
  NAND4X1 U23 ( .A(n130), .B(n129), .C(n128), .D(n127), .Y(n131) );
  XNOR2X1 U24 ( .A(s6[0]), .B(p6[0]), .Y(n126) );
  XNOR2X1 U25 ( .A(s5[3]), .B(p5[3]), .Y(n133) );
  XNOR2X1 U26 ( .A(s5[5]), .B(p5[5]), .Y(n139) );
  XNOR2X1 U27 ( .A(s5[2]), .B(p5[2]), .Y(n134) );
  XNOR2X1 U28 ( .A(s5[4]), .B(p5[4]), .Y(n140) );
  XNOR2X1 U29 ( .A(s3[7]), .B(p3[7]), .Y(n15) );
  XNOR2X1 U30 ( .A(s5[1]), .B(p5[1]), .Y(n135) );
  OAI21XL U31 ( .A0(n20), .A1(n19), .B0(check[3]), .Y(n101) );
  NAND4X1 U32 ( .A(n14), .B(n13), .C(n12), .D(n11), .Y(n20) );
  NAND4X1 U33 ( .A(n18), .B(n17), .C(n16), .D(n15), .Y(n19) );
  XNOR2X1 U34 ( .A(s3[0]), .B(p3[0]), .Y(n14) );
  XNOR2X1 U35 ( .A(s4[7]), .B(p4[7]), .Y(n5) );
  OAI21XL U36 ( .A0(n10), .A1(n9), .B0(check[4]), .Y(n102) );
  NAND4X1 U37 ( .A(n4), .B(n3), .C(n2), .D(n1), .Y(n10) );
  NAND4X1 U38 ( .A(n8), .B(n7), .C(n6), .D(n5), .Y(n9) );
  XNOR2X1 U39 ( .A(s4[0]), .B(p4[0]), .Y(n4) );
  XNOR2X1 U40 ( .A(s4[6]), .B(p4[6]), .Y(n6) );
  XNOR2X1 U41 ( .A(s4[3]), .B(p4[3]), .Y(n1) );
  XNOR2X1 U42 ( .A(s4[5]), .B(p4[5]), .Y(n7) );
  XNOR2X1 U43 ( .A(s4[2]), .B(p4[2]), .Y(n2) );
  XNOR2X1 U44 ( .A(s4[4]), .B(p4[4]), .Y(n8) );
  XNOR2X1 U45 ( .A(s4[1]), .B(p4[1]), .Y(n3) );
  XNOR2X1 U46 ( .A(s0[2]), .B(p0[2]), .Y(n104) );
  OAI21XL U47 ( .A0(n112), .A1(n111), .B0(check[0]), .Y(n146) );
  NAND4X1 U48 ( .A(n110), .B(n109), .C(n108), .D(n107), .Y(n111) );
  NAND4X1 U49 ( .A(n106), .B(n105), .C(n104), .D(n103), .Y(n112) );
  XNOR2X1 U50 ( .A(s0[4]), .B(p0[4]), .Y(n110) );
  XNOR2X1 U51 ( .A(s7[4]), .B(p7[4]), .Y(n120) );
  XNOR2X1 U52 ( .A(s0[1]), .B(p0[1]), .Y(n105) );
  XNOR2X1 U53 ( .A(s5[7]), .B(p5[7]), .Y(n137) );
  XNOR2X1 U54 ( .A(s0[0]), .B(p0[0]), .Y(n106) );
  XNOR2X1 U55 ( .A(s1[7]), .B(p1[7]), .Y(n93) );
  OAI21XL U56 ( .A0(n98), .A1(n97), .B0(check[1]), .Y(n99) );
  NAND4X1 U57 ( .A(n92), .B(n91), .C(n32), .D(n31), .Y(n98) );
  NAND4X1 U58 ( .A(n96), .B(n95), .C(n94), .D(n93), .Y(n97) );
  XNOR2X1 U59 ( .A(s1[0]), .B(p1[0]), .Y(n92) );
  XNOR2X1 U60 ( .A(s6[6]), .B(p6[6]), .Y(n128) );
  XNOR2X1 U61 ( .A(s2[7]), .B(p2[7]), .Y(n25) );
  OAI21XL U62 ( .A0(n30), .A1(n29), .B0(check[2]), .Y(n100) );
  NAND4X1 U63 ( .A(n24), .B(n23), .C(n22), .D(n21), .Y(n30) );
  NAND4X1 U64 ( .A(n28), .B(n27), .C(n26), .D(n25), .Y(n29) );
  XNOR2X1 U65 ( .A(s2[0]), .B(p2[0]), .Y(n24) );
  XNOR2X1 U66 ( .A(s1[6]), .B(p1[6]), .Y(n94) );
  XNOR2X1 U67 ( .A(s6[3]), .B(p6[3]), .Y(n123) );
  XNOR2X1 U68 ( .A(s1[3]), .B(p1[3]), .Y(n31) );
  XNOR2X1 U69 ( .A(s2[6]), .B(p2[6]), .Y(n26) );
  XNOR2X1 U70 ( .A(s6[5]), .B(p6[5]), .Y(n129) );
  XNOR2X1 U71 ( .A(s0[7]), .B(p0[7]), .Y(n107) );
  XNOR2X1 U72 ( .A(s1[5]), .B(p1[5]), .Y(n95) );
  XNOR2X1 U73 ( .A(s6[2]), .B(p6[2]), .Y(n124) );
  XNOR2X1 U74 ( .A(s2[3]), .B(p2[3]), .Y(n21) );
  XNOR2X1 U75 ( .A(s1[2]), .B(p1[2]), .Y(n32) );
  XNOR2X1 U76 ( .A(s6[4]), .B(p6[4]), .Y(n130) );
  XNOR2X1 U77 ( .A(s1[4]), .B(p1[4]), .Y(n96) );
  XNOR2X1 U78 ( .A(s2[5]), .B(p2[5]), .Y(n27) );
  XNOR2X1 U79 ( .A(s0[6]), .B(p0[6]), .Y(n108) );
  XNOR2X1 U80 ( .A(s3[6]), .B(p3[6]), .Y(n16) );
  XNOR2X1 U81 ( .A(s2[2]), .B(p2[2]), .Y(n22) );
  XNOR2X1 U82 ( .A(s6[1]), .B(p6[1]), .Y(n125) );
  XNOR2X1 U83 ( .A(s0[5]), .B(p0[5]), .Y(n109) );
  XNOR2X1 U84 ( .A(s1[1]), .B(p1[1]), .Y(n91) );
  XNOR2X1 U85 ( .A(s0[3]), .B(p0[3]), .Y(n103) );
  XNOR2X1 U86 ( .A(s3[3]), .B(p3[3]), .Y(n11) );
  XNOR2X1 U87 ( .A(s2[4]), .B(p2[4]), .Y(n28) );
  XNOR2X1 U88 ( .A(s3[5]), .B(p3[5]), .Y(n17) );
  XNOR2X1 U89 ( .A(s2[1]), .B(p2[1]), .Y(n23) );
  XNOR2X1 U90 ( .A(s3[2]), .B(p3[2]), .Y(n12) );
  XNOR2X1 U91 ( .A(s3[4]), .B(p3[4]), .Y(n18) );
  XNOR2X1 U92 ( .A(s3[1]), .B(p3[1]), .Y(n13) );
endmodule


module Pattern_String_Comparator_Cell_61 ( s7, s6, s5, s4, s3, s2, s1, s0, p7, 
        p6, p5, p4, p3, p2, p1, p0, check, match );
  input [7:0] s7;
  input [7:0] s6;
  input [7:0] s5;
  input [7:0] s4;
  input [7:0] s3;
  input [7:0] s2;
  input [7:0] s1;
  input [7:0] s0;
  input [7:0] p7;
  input [7:0] p6;
  input [7:0] p5;
  input [7:0] p4;
  input [7:0] p3;
  input [7:0] p2;
  input [7:0] p1;
  input [7:0] p0;
  input [7:0] check;
  output match;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30,
         n31, n32, n91, n92, n93, n94, n95, n96, n97, n98, n99, n100, n101,
         n102, n103, n104, n105, n106, n107, n108, n109, n110, n111, n112,
         n113, n114, n115, n116, n117, n118, n119, n120, n121, n122, n123,
         n124, n125, n126, n127, n128, n129, n130, n131, n132, n133, n134,
         n135, n136, n137, n138, n139, n140, n141, n142, n143, n144, n145,
         n146, n147, n148;

  NOR2X1 U2 ( .A(n148), .B(n147), .Y(match) );
  NAND4X1 U3 ( .A(n102), .B(n101), .C(n100), .D(n99), .Y(n148) );
  NAND4X1 U4 ( .A(n146), .B(n145), .C(n144), .D(n143), .Y(n147) );
  XNOR2X1 U5 ( .A(s7[7]), .B(p7[7]), .Y(n117) );
  OAI21XL U6 ( .A0(n122), .A1(n121), .B0(check[7]), .Y(n145) );
  NAND4X1 U7 ( .A(n116), .B(n115), .C(n114), .D(n113), .Y(n122) );
  NAND4X1 U8 ( .A(n120), .B(n119), .C(n118), .D(n117), .Y(n121) );
  XNOR2X1 U9 ( .A(s7[3]), .B(p7[3]), .Y(n113) );
  XNOR2X1 U10 ( .A(s7[6]), .B(p7[6]), .Y(n118) );
  XNOR2X1 U11 ( .A(s7[2]), .B(p7[2]), .Y(n114) );
  XNOR2X1 U12 ( .A(s7[5]), .B(p7[5]), .Y(n119) );
  XNOR2X1 U13 ( .A(s7[1]), .B(p7[1]), .Y(n115) );
  XNOR2X1 U14 ( .A(s7[0]), .B(p7[0]), .Y(n116) );
  XNOR2X1 U15 ( .A(s5[6]), .B(p5[6]), .Y(n138) );
  OAI21XL U16 ( .A0(n142), .A1(n141), .B0(check[5]), .Y(n143) );
  NAND4X1 U17 ( .A(n136), .B(n135), .C(n134), .D(n133), .Y(n142) );
  NAND4X1 U18 ( .A(n140), .B(n139), .C(n138), .D(n137), .Y(n141) );
  XNOR2X1 U19 ( .A(s5[0]), .B(p5[0]), .Y(n136) );
  XNOR2X1 U20 ( .A(s6[7]), .B(p6[7]), .Y(n127) );
  OAI21XL U21 ( .A0(n132), .A1(n131), .B0(check[6]), .Y(n144) );
  NAND4X1 U22 ( .A(n126), .B(n125), .C(n124), .D(n123), .Y(n132) );
  NAND4X1 U23 ( .A(n130), .B(n129), .C(n128), .D(n127), .Y(n131) );
  XNOR2X1 U24 ( .A(s6[0]), .B(p6[0]), .Y(n126) );
  XNOR2X1 U25 ( .A(s5[3]), .B(p5[3]), .Y(n133) );
  XNOR2X1 U26 ( .A(s5[5]), .B(p5[5]), .Y(n139) );
  XNOR2X1 U27 ( .A(s5[2]), .B(p5[2]), .Y(n134) );
  XNOR2X1 U28 ( .A(s5[4]), .B(p5[4]), .Y(n140) );
  XNOR2X1 U29 ( .A(s3[7]), .B(p3[7]), .Y(n15) );
  XNOR2X1 U30 ( .A(s5[1]), .B(p5[1]), .Y(n135) );
  OAI21XL U31 ( .A0(n20), .A1(n19), .B0(check[3]), .Y(n101) );
  NAND4X1 U32 ( .A(n14), .B(n13), .C(n12), .D(n11), .Y(n20) );
  NAND4X1 U33 ( .A(n18), .B(n17), .C(n16), .D(n15), .Y(n19) );
  XNOR2X1 U34 ( .A(s3[0]), .B(p3[0]), .Y(n14) );
  XNOR2X1 U35 ( .A(s4[7]), .B(p4[7]), .Y(n5) );
  OAI21XL U36 ( .A0(n10), .A1(n9), .B0(check[4]), .Y(n102) );
  NAND4X1 U37 ( .A(n4), .B(n3), .C(n2), .D(n1), .Y(n10) );
  NAND4X1 U38 ( .A(n8), .B(n7), .C(n6), .D(n5), .Y(n9) );
  XNOR2X1 U39 ( .A(s4[0]), .B(p4[0]), .Y(n4) );
  XNOR2X1 U40 ( .A(s4[6]), .B(p4[6]), .Y(n6) );
  XNOR2X1 U41 ( .A(s4[3]), .B(p4[3]), .Y(n1) );
  XNOR2X1 U42 ( .A(s4[5]), .B(p4[5]), .Y(n7) );
  XNOR2X1 U43 ( .A(s4[2]), .B(p4[2]), .Y(n2) );
  XNOR2X1 U44 ( .A(s4[4]), .B(p4[4]), .Y(n8) );
  XNOR2X1 U45 ( .A(s4[1]), .B(p4[1]), .Y(n3) );
  XNOR2X1 U46 ( .A(s0[2]), .B(p0[2]), .Y(n104) );
  OAI21XL U47 ( .A0(n112), .A1(n111), .B0(check[0]), .Y(n146) );
  NAND4X1 U48 ( .A(n110), .B(n109), .C(n108), .D(n107), .Y(n111) );
  NAND4X1 U49 ( .A(n106), .B(n105), .C(n104), .D(n103), .Y(n112) );
  XNOR2X1 U50 ( .A(s0[4]), .B(p0[4]), .Y(n110) );
  XNOR2X1 U51 ( .A(s7[4]), .B(p7[4]), .Y(n120) );
  XNOR2X1 U52 ( .A(s0[1]), .B(p0[1]), .Y(n105) );
  XNOR2X1 U53 ( .A(s5[7]), .B(p5[7]), .Y(n137) );
  XNOR2X1 U54 ( .A(s0[0]), .B(p0[0]), .Y(n106) );
  XNOR2X1 U55 ( .A(s1[7]), .B(p1[7]), .Y(n93) );
  OAI21XL U56 ( .A0(n98), .A1(n97), .B0(check[1]), .Y(n99) );
  NAND4X1 U57 ( .A(n92), .B(n91), .C(n32), .D(n31), .Y(n98) );
  NAND4X1 U58 ( .A(n96), .B(n95), .C(n94), .D(n93), .Y(n97) );
  XNOR2X1 U59 ( .A(s1[0]), .B(p1[0]), .Y(n92) );
  XNOR2X1 U60 ( .A(s6[6]), .B(p6[6]), .Y(n128) );
  XNOR2X1 U61 ( .A(s2[7]), .B(p2[7]), .Y(n25) );
  OAI21XL U62 ( .A0(n30), .A1(n29), .B0(check[2]), .Y(n100) );
  NAND4X1 U63 ( .A(n24), .B(n23), .C(n22), .D(n21), .Y(n30) );
  NAND4X1 U64 ( .A(n28), .B(n27), .C(n26), .D(n25), .Y(n29) );
  XNOR2X1 U65 ( .A(s2[0]), .B(p2[0]), .Y(n24) );
  XNOR2X1 U66 ( .A(s1[6]), .B(p1[6]), .Y(n94) );
  XNOR2X1 U67 ( .A(s6[3]), .B(p6[3]), .Y(n123) );
  XNOR2X1 U68 ( .A(s1[3]), .B(p1[3]), .Y(n31) );
  XNOR2X1 U69 ( .A(s2[6]), .B(p2[6]), .Y(n26) );
  XNOR2X1 U70 ( .A(s6[5]), .B(p6[5]), .Y(n129) );
  XNOR2X1 U71 ( .A(s0[7]), .B(p0[7]), .Y(n107) );
  XNOR2X1 U72 ( .A(s1[5]), .B(p1[5]), .Y(n95) );
  XNOR2X1 U73 ( .A(s6[2]), .B(p6[2]), .Y(n124) );
  XNOR2X1 U74 ( .A(s2[3]), .B(p2[3]), .Y(n21) );
  XNOR2X1 U75 ( .A(s1[2]), .B(p1[2]), .Y(n32) );
  XNOR2X1 U76 ( .A(s6[4]), .B(p6[4]), .Y(n130) );
  XNOR2X1 U77 ( .A(s1[4]), .B(p1[4]), .Y(n96) );
  XNOR2X1 U78 ( .A(s2[5]), .B(p2[5]), .Y(n27) );
  XNOR2X1 U79 ( .A(s0[6]), .B(p0[6]), .Y(n108) );
  XNOR2X1 U80 ( .A(s3[6]), .B(p3[6]), .Y(n16) );
  XNOR2X1 U81 ( .A(s2[2]), .B(p2[2]), .Y(n22) );
  XNOR2X1 U82 ( .A(s6[1]), .B(p6[1]), .Y(n125) );
  XNOR2X1 U83 ( .A(s0[5]), .B(p0[5]), .Y(n109) );
  XNOR2X1 U84 ( .A(s1[1]), .B(p1[1]), .Y(n91) );
  XNOR2X1 U85 ( .A(s0[3]), .B(p0[3]), .Y(n103) );
  XNOR2X1 U86 ( .A(s3[3]), .B(p3[3]), .Y(n11) );
  XNOR2X1 U87 ( .A(s2[4]), .B(p2[4]), .Y(n28) );
  XNOR2X1 U88 ( .A(s3[5]), .B(p3[5]), .Y(n17) );
  XNOR2X1 U89 ( .A(s2[1]), .B(p2[1]), .Y(n23) );
  XNOR2X1 U90 ( .A(s3[2]), .B(p3[2]), .Y(n12) );
  XNOR2X1 U91 ( .A(s3[4]), .B(p3[4]), .Y(n18) );
  XNOR2X1 U92 ( .A(s3[1]), .B(p3[1]), .Y(n13) );
endmodule


module Pattern_String_Comparator_Cell_60 ( s7, s6, s5, s4, s3, s2, s1, s0, p7, 
        p6, p5, p4, p3, p2, p1, p0, check, match );
  input [7:0] s7;
  input [7:0] s6;
  input [7:0] s5;
  input [7:0] s4;
  input [7:0] s3;
  input [7:0] s2;
  input [7:0] s1;
  input [7:0] s0;
  input [7:0] p7;
  input [7:0] p6;
  input [7:0] p5;
  input [7:0] p4;
  input [7:0] p3;
  input [7:0] p2;
  input [7:0] p1;
  input [7:0] p0;
  input [7:0] check;
  output match;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30,
         n31, n32, n91, n92, n93, n94, n95, n96, n97, n98, n99, n100, n101,
         n102, n103, n104, n105, n106, n107, n108, n109, n110, n111, n112,
         n113, n114, n115, n116, n117, n118, n119, n120, n121, n122, n123,
         n124, n125, n126, n127, n128, n129, n130, n131, n132, n133, n134,
         n135, n136, n137, n138, n139, n140, n141, n142, n143, n144, n145,
         n146, n147, n148;

  NOR2X1 U2 ( .A(n148), .B(n147), .Y(match) );
  NAND4X1 U3 ( .A(n102), .B(n101), .C(n100), .D(n99), .Y(n148) );
  NAND4X1 U4 ( .A(n146), .B(n145), .C(n144), .D(n143), .Y(n147) );
  XNOR2X1 U5 ( .A(s7[7]), .B(p7[7]), .Y(n117) );
  OAI21XL U6 ( .A0(n122), .A1(n121), .B0(check[7]), .Y(n145) );
  NAND4X1 U7 ( .A(n116), .B(n115), .C(n114), .D(n113), .Y(n122) );
  NAND4X1 U8 ( .A(n120), .B(n119), .C(n118), .D(n117), .Y(n121) );
  XNOR2X1 U9 ( .A(s7[3]), .B(p7[3]), .Y(n113) );
  XNOR2X1 U10 ( .A(s7[6]), .B(p7[6]), .Y(n118) );
  XNOR2X1 U11 ( .A(s7[2]), .B(p7[2]), .Y(n114) );
  XNOR2X1 U12 ( .A(s7[5]), .B(p7[5]), .Y(n119) );
  XNOR2X1 U13 ( .A(s7[1]), .B(p7[1]), .Y(n115) );
  XNOR2X1 U14 ( .A(s7[0]), .B(p7[0]), .Y(n116) );
  XNOR2X1 U15 ( .A(s5[6]), .B(p5[6]), .Y(n138) );
  OAI21XL U16 ( .A0(n142), .A1(n141), .B0(check[5]), .Y(n143) );
  NAND4X1 U17 ( .A(n136), .B(n135), .C(n134), .D(n133), .Y(n142) );
  NAND4X1 U18 ( .A(n140), .B(n139), .C(n138), .D(n137), .Y(n141) );
  XNOR2X1 U19 ( .A(s5[0]), .B(p5[0]), .Y(n136) );
  XNOR2X1 U20 ( .A(s6[7]), .B(p6[7]), .Y(n127) );
  OAI21XL U21 ( .A0(n132), .A1(n131), .B0(check[6]), .Y(n144) );
  NAND4X1 U22 ( .A(n126), .B(n125), .C(n124), .D(n123), .Y(n132) );
  NAND4X1 U23 ( .A(n130), .B(n129), .C(n128), .D(n127), .Y(n131) );
  XNOR2X1 U24 ( .A(s6[0]), .B(p6[0]), .Y(n126) );
  XNOR2X1 U25 ( .A(s5[3]), .B(p5[3]), .Y(n133) );
  XNOR2X1 U26 ( .A(s5[5]), .B(p5[5]), .Y(n139) );
  XNOR2X1 U27 ( .A(s5[2]), .B(p5[2]), .Y(n134) );
  XNOR2X1 U28 ( .A(s5[4]), .B(p5[4]), .Y(n140) );
  XNOR2X1 U29 ( .A(s3[7]), .B(p3[7]), .Y(n15) );
  OAI21XL U30 ( .A0(n20), .A1(n19), .B0(check[3]), .Y(n101) );
  NAND4X1 U31 ( .A(n14), .B(n13), .C(n12), .D(n11), .Y(n20) );
  NAND4X1 U32 ( .A(n18), .B(n17), .C(n16), .D(n15), .Y(n19) );
  XNOR2X1 U33 ( .A(s3[0]), .B(p3[0]), .Y(n14) );
  XNOR2X1 U34 ( .A(s5[1]), .B(p5[1]), .Y(n135) );
  XNOR2X1 U35 ( .A(s4[7]), .B(p4[7]), .Y(n5) );
  OAI21XL U36 ( .A0(n10), .A1(n9), .B0(check[4]), .Y(n102) );
  NAND4X1 U37 ( .A(n4), .B(n3), .C(n2), .D(n1), .Y(n10) );
  NAND4X1 U38 ( .A(n8), .B(n7), .C(n6), .D(n5), .Y(n9) );
  XNOR2X1 U39 ( .A(s4[0]), .B(p4[0]), .Y(n4) );
  XNOR2X1 U40 ( .A(s4[6]), .B(p4[6]), .Y(n6) );
  XNOR2X1 U41 ( .A(s4[3]), .B(p4[3]), .Y(n1) );
  XNOR2X1 U42 ( .A(s4[5]), .B(p4[5]), .Y(n7) );
  XNOR2X1 U43 ( .A(s4[2]), .B(p4[2]), .Y(n2) );
  XNOR2X1 U44 ( .A(s4[4]), .B(p4[4]), .Y(n8) );
  XNOR2X1 U45 ( .A(s4[1]), .B(p4[1]), .Y(n3) );
  XNOR2X1 U46 ( .A(s0[2]), .B(p0[2]), .Y(n104) );
  OAI21XL U47 ( .A0(n112), .A1(n111), .B0(check[0]), .Y(n146) );
  NAND4X1 U48 ( .A(n110), .B(n109), .C(n108), .D(n107), .Y(n111) );
  NAND4X1 U49 ( .A(n106), .B(n105), .C(n104), .D(n103), .Y(n112) );
  XNOR2X1 U50 ( .A(s0[4]), .B(p0[4]), .Y(n110) );
  XNOR2X1 U51 ( .A(s7[4]), .B(p7[4]), .Y(n120) );
  XNOR2X1 U52 ( .A(s0[1]), .B(p0[1]), .Y(n105) );
  XNOR2X1 U53 ( .A(s5[7]), .B(p5[7]), .Y(n137) );
  XNOR2X1 U54 ( .A(s0[0]), .B(p0[0]), .Y(n106) );
  XNOR2X1 U55 ( .A(s1[7]), .B(p1[7]), .Y(n93) );
  OAI21XL U56 ( .A0(n98), .A1(n97), .B0(check[1]), .Y(n99) );
  NAND4X1 U57 ( .A(n92), .B(n91), .C(n32), .D(n31), .Y(n98) );
  NAND4X1 U58 ( .A(n96), .B(n95), .C(n94), .D(n93), .Y(n97) );
  XNOR2X1 U59 ( .A(s1[0]), .B(p1[0]), .Y(n92) );
  XNOR2X1 U60 ( .A(s6[6]), .B(p6[6]), .Y(n128) );
  XNOR2X1 U61 ( .A(s2[7]), .B(p2[7]), .Y(n25) );
  XNOR2X1 U62 ( .A(s1[6]), .B(p1[6]), .Y(n94) );
  OAI21XL U63 ( .A0(n30), .A1(n29), .B0(check[2]), .Y(n100) );
  NAND4X1 U64 ( .A(n24), .B(n23), .C(n22), .D(n21), .Y(n30) );
  NAND4X1 U65 ( .A(n28), .B(n27), .C(n26), .D(n25), .Y(n29) );
  XNOR2X1 U66 ( .A(s2[0]), .B(p2[0]), .Y(n24) );
  XNOR2X1 U67 ( .A(s6[3]), .B(p6[3]), .Y(n123) );
  XNOR2X1 U68 ( .A(s1[3]), .B(p1[3]), .Y(n31) );
  XNOR2X1 U69 ( .A(s2[6]), .B(p2[6]), .Y(n26) );
  XNOR2X1 U70 ( .A(s6[5]), .B(p6[5]), .Y(n129) );
  XNOR2X1 U71 ( .A(s0[7]), .B(p0[7]), .Y(n107) );
  XNOR2X1 U72 ( .A(s1[5]), .B(p1[5]), .Y(n95) );
  XNOR2X1 U73 ( .A(s6[2]), .B(p6[2]), .Y(n124) );
  XNOR2X1 U74 ( .A(s2[3]), .B(p2[3]), .Y(n21) );
  XNOR2X1 U75 ( .A(s1[2]), .B(p1[2]), .Y(n32) );
  XNOR2X1 U76 ( .A(s6[4]), .B(p6[4]), .Y(n130) );
  XNOR2X1 U77 ( .A(s1[4]), .B(p1[4]), .Y(n96) );
  XNOR2X1 U78 ( .A(s2[5]), .B(p2[5]), .Y(n27) );
  XNOR2X1 U79 ( .A(s0[6]), .B(p0[6]), .Y(n108) );
  XNOR2X1 U80 ( .A(s3[6]), .B(p3[6]), .Y(n16) );
  XNOR2X1 U81 ( .A(s2[2]), .B(p2[2]), .Y(n22) );
  XNOR2X1 U82 ( .A(s6[1]), .B(p6[1]), .Y(n125) );
  XNOR2X1 U83 ( .A(s0[5]), .B(p0[5]), .Y(n109) );
  XNOR2X1 U84 ( .A(s1[1]), .B(p1[1]), .Y(n91) );
  XNOR2X1 U85 ( .A(s0[3]), .B(p0[3]), .Y(n103) );
  XNOR2X1 U86 ( .A(s3[3]), .B(p3[3]), .Y(n11) );
  XNOR2X1 U87 ( .A(s2[4]), .B(p2[4]), .Y(n28) );
  XNOR2X1 U88 ( .A(s3[5]), .B(p3[5]), .Y(n17) );
  XNOR2X1 U89 ( .A(s2[1]), .B(p2[1]), .Y(n23) );
  XNOR2X1 U90 ( .A(s3[2]), .B(p3[2]), .Y(n12) );
  XNOR2X1 U91 ( .A(s3[4]), .B(p3[4]), .Y(n18) );
  XNOR2X1 U92 ( .A(s3[1]), .B(p3[1]), .Y(n13) );
endmodule


module Pattern_String_Comparator_Cell_59 ( s7, s6, s5, s4, s3, s2, s1, s0, p7, 
        p6, p5, p4, p3, p2, p1, p0, check, match );
  input [7:0] s7;
  input [7:0] s6;
  input [7:0] s5;
  input [7:0] s4;
  input [7:0] s3;
  input [7:0] s2;
  input [7:0] s1;
  input [7:0] s0;
  input [7:0] p7;
  input [7:0] p6;
  input [7:0] p5;
  input [7:0] p4;
  input [7:0] p3;
  input [7:0] p2;
  input [7:0] p1;
  input [7:0] p0;
  input [7:0] check;
  output match;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30,
         n31, n32, n91, n92, n93, n94, n95, n96, n97, n98, n99, n100, n101,
         n102, n103, n104, n105, n106, n107, n108, n109, n110, n111, n112,
         n113, n114, n115, n116, n117, n118, n119, n120, n121, n122, n123,
         n124, n125, n126, n127, n128, n129, n130, n131, n132, n133, n134,
         n135, n136, n137, n138, n139, n140, n141, n142, n143, n144, n145,
         n146, n147, n148;

  NOR2X1 U2 ( .A(n148), .B(n147), .Y(match) );
  NAND4X1 U3 ( .A(n102), .B(n101), .C(n100), .D(n99), .Y(n148) );
  NAND4X1 U4 ( .A(n146), .B(n145), .C(n144), .D(n143), .Y(n147) );
  XNOR2X1 U5 ( .A(s7[7]), .B(p7[7]), .Y(n117) );
  OAI21XL U6 ( .A0(n122), .A1(n121), .B0(check[7]), .Y(n145) );
  NAND4X1 U7 ( .A(n116), .B(n115), .C(n114), .D(n113), .Y(n122) );
  NAND4X1 U8 ( .A(n120), .B(n119), .C(n118), .D(n117), .Y(n121) );
  XNOR2X1 U9 ( .A(s7[3]), .B(p7[3]), .Y(n113) );
  XNOR2X1 U10 ( .A(s7[6]), .B(p7[6]), .Y(n118) );
  XNOR2X1 U11 ( .A(s7[2]), .B(p7[2]), .Y(n114) );
  XNOR2X1 U12 ( .A(s7[5]), .B(p7[5]), .Y(n119) );
  XNOR2X1 U13 ( .A(s7[1]), .B(p7[1]), .Y(n115) );
  XNOR2X1 U14 ( .A(s7[0]), .B(p7[0]), .Y(n116) );
  XNOR2X1 U15 ( .A(s5[6]), .B(p5[6]), .Y(n138) );
  OAI21XL U16 ( .A0(n142), .A1(n141), .B0(check[5]), .Y(n143) );
  NAND4X1 U17 ( .A(n136), .B(n135), .C(n134), .D(n133), .Y(n142) );
  NAND4X1 U18 ( .A(n140), .B(n139), .C(n138), .D(n137), .Y(n141) );
  XNOR2X1 U19 ( .A(s5[0]), .B(p5[0]), .Y(n136) );
  XNOR2X1 U20 ( .A(s6[7]), .B(p6[7]), .Y(n127) );
  OAI21XL U21 ( .A0(n132), .A1(n131), .B0(check[6]), .Y(n144) );
  NAND4X1 U22 ( .A(n126), .B(n125), .C(n124), .D(n123), .Y(n132) );
  NAND4X1 U23 ( .A(n130), .B(n129), .C(n128), .D(n127), .Y(n131) );
  XNOR2X1 U24 ( .A(s6[0]), .B(p6[0]), .Y(n126) );
  XNOR2X1 U25 ( .A(s5[3]), .B(p5[3]), .Y(n133) );
  XNOR2X1 U26 ( .A(s5[5]), .B(p5[5]), .Y(n139) );
  XNOR2X1 U27 ( .A(s5[2]), .B(p5[2]), .Y(n134) );
  XNOR2X1 U28 ( .A(s5[4]), .B(p5[4]), .Y(n140) );
  XNOR2X1 U29 ( .A(s3[7]), .B(p3[7]), .Y(n15) );
  OAI21XL U30 ( .A0(n20), .A1(n19), .B0(check[3]), .Y(n101) );
  NAND4X1 U31 ( .A(n14), .B(n13), .C(n12), .D(n11), .Y(n20) );
  NAND4X1 U32 ( .A(n18), .B(n17), .C(n16), .D(n15), .Y(n19) );
  XNOR2X1 U33 ( .A(s3[0]), .B(p3[0]), .Y(n14) );
  XNOR2X1 U34 ( .A(s5[1]), .B(p5[1]), .Y(n135) );
  XNOR2X1 U35 ( .A(s4[7]), .B(p4[7]), .Y(n5) );
  OAI21XL U36 ( .A0(n10), .A1(n9), .B0(check[4]), .Y(n102) );
  NAND4X1 U37 ( .A(n4), .B(n3), .C(n2), .D(n1), .Y(n10) );
  NAND4X1 U38 ( .A(n8), .B(n7), .C(n6), .D(n5), .Y(n9) );
  XNOR2X1 U39 ( .A(s4[0]), .B(p4[0]), .Y(n4) );
  XNOR2X1 U40 ( .A(s4[6]), .B(p4[6]), .Y(n6) );
  XNOR2X1 U41 ( .A(s4[3]), .B(p4[3]), .Y(n1) );
  XNOR2X1 U42 ( .A(s4[5]), .B(p4[5]), .Y(n7) );
  XNOR2X1 U43 ( .A(s4[2]), .B(p4[2]), .Y(n2) );
  XNOR2X1 U44 ( .A(s4[4]), .B(p4[4]), .Y(n8) );
  XNOR2X1 U45 ( .A(s4[1]), .B(p4[1]), .Y(n3) );
  XNOR2X1 U46 ( .A(s0[2]), .B(p0[2]), .Y(n104) );
  OAI21XL U47 ( .A0(n112), .A1(n111), .B0(check[0]), .Y(n146) );
  NAND4X1 U48 ( .A(n110), .B(n109), .C(n108), .D(n107), .Y(n111) );
  NAND4X1 U49 ( .A(n106), .B(n105), .C(n104), .D(n103), .Y(n112) );
  XNOR2X1 U50 ( .A(s0[4]), .B(p0[4]), .Y(n110) );
  XNOR2X1 U51 ( .A(s7[4]), .B(p7[4]), .Y(n120) );
  XNOR2X1 U52 ( .A(s0[1]), .B(p0[1]), .Y(n105) );
  XNOR2X1 U53 ( .A(s5[7]), .B(p5[7]), .Y(n137) );
  XNOR2X1 U54 ( .A(s0[0]), .B(p0[0]), .Y(n106) );
  XNOR2X1 U55 ( .A(s1[7]), .B(p1[7]), .Y(n93) );
  OAI21XL U56 ( .A0(n98), .A1(n97), .B0(check[1]), .Y(n99) );
  NAND4X1 U57 ( .A(n92), .B(n91), .C(n32), .D(n31), .Y(n98) );
  NAND4X1 U58 ( .A(n96), .B(n95), .C(n94), .D(n93), .Y(n97) );
  XNOR2X1 U59 ( .A(s1[0]), .B(p1[0]), .Y(n92) );
  XNOR2X1 U60 ( .A(s6[6]), .B(p6[6]), .Y(n128) );
  XNOR2X1 U61 ( .A(s2[7]), .B(p2[7]), .Y(n25) );
  XNOR2X1 U62 ( .A(s1[6]), .B(p1[6]), .Y(n94) );
  OAI21XL U63 ( .A0(n30), .A1(n29), .B0(check[2]), .Y(n100) );
  NAND4X1 U64 ( .A(n24), .B(n23), .C(n22), .D(n21), .Y(n30) );
  NAND4X1 U65 ( .A(n28), .B(n27), .C(n26), .D(n25), .Y(n29) );
  XNOR2X1 U66 ( .A(s2[0]), .B(p2[0]), .Y(n24) );
  XNOR2X1 U67 ( .A(s6[3]), .B(p6[3]), .Y(n123) );
  XNOR2X1 U68 ( .A(s1[3]), .B(p1[3]), .Y(n31) );
  XNOR2X1 U69 ( .A(s2[6]), .B(p2[6]), .Y(n26) );
  XNOR2X1 U70 ( .A(s6[5]), .B(p6[5]), .Y(n129) );
  XNOR2X1 U71 ( .A(s0[7]), .B(p0[7]), .Y(n107) );
  XNOR2X1 U72 ( .A(s1[5]), .B(p1[5]), .Y(n95) );
  XNOR2X1 U73 ( .A(s6[2]), .B(p6[2]), .Y(n124) );
  XNOR2X1 U74 ( .A(s2[3]), .B(p2[3]), .Y(n21) );
  XNOR2X1 U75 ( .A(s1[2]), .B(p1[2]), .Y(n32) );
  XNOR2X1 U76 ( .A(s6[4]), .B(p6[4]), .Y(n130) );
  XNOR2X1 U77 ( .A(s1[4]), .B(p1[4]), .Y(n96) );
  XNOR2X1 U78 ( .A(s2[5]), .B(p2[5]), .Y(n27) );
  XNOR2X1 U79 ( .A(s0[6]), .B(p0[6]), .Y(n108) );
  XNOR2X1 U80 ( .A(s3[6]), .B(p3[6]), .Y(n16) );
  XNOR2X1 U81 ( .A(s2[2]), .B(p2[2]), .Y(n22) );
  XNOR2X1 U82 ( .A(s6[1]), .B(p6[1]), .Y(n125) );
  XNOR2X1 U83 ( .A(s0[5]), .B(p0[5]), .Y(n109) );
  XNOR2X1 U84 ( .A(s1[1]), .B(p1[1]), .Y(n91) );
  XNOR2X1 U85 ( .A(s0[3]), .B(p0[3]), .Y(n103) );
  XNOR2X1 U86 ( .A(s3[3]), .B(p3[3]), .Y(n11) );
  XNOR2X1 U87 ( .A(s2[4]), .B(p2[4]), .Y(n28) );
  XNOR2X1 U88 ( .A(s3[5]), .B(p3[5]), .Y(n17) );
  XNOR2X1 U89 ( .A(s2[1]), .B(p2[1]), .Y(n23) );
  XNOR2X1 U90 ( .A(s3[2]), .B(p3[2]), .Y(n12) );
  XNOR2X1 U91 ( .A(s3[4]), .B(p3[4]), .Y(n18) );
  XNOR2X1 U92 ( .A(s3[1]), .B(p3[1]), .Y(n13) );
endmodule


module Pattern_String_Comparator_Cell_58 ( s7, s6, s5, s4, s3, s2, s1, s0, p7, 
        p6, p5, p4, p3, p2, p1, p0, check, match );
  input [7:0] s7;
  input [7:0] s6;
  input [7:0] s5;
  input [7:0] s4;
  input [7:0] s3;
  input [7:0] s2;
  input [7:0] s1;
  input [7:0] s0;
  input [7:0] p7;
  input [7:0] p6;
  input [7:0] p5;
  input [7:0] p4;
  input [7:0] p3;
  input [7:0] p2;
  input [7:0] p1;
  input [7:0] p0;
  input [7:0] check;
  output match;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30,
         n31, n32, n91, n92, n93, n94, n95, n96, n97, n98, n99, n100, n101,
         n102, n103, n104, n105, n106, n107, n108, n109, n110, n111, n112,
         n113, n114, n115, n116, n117, n118, n119, n120, n121, n122, n123,
         n124, n125, n126, n127, n128, n129, n130, n131, n132, n133, n134,
         n135, n136, n137, n138, n139, n140, n141, n142, n143, n144, n145,
         n146, n147, n148;

  NOR2X1 U2 ( .A(n148), .B(n147), .Y(match) );
  NAND4X1 U3 ( .A(n102), .B(n101), .C(n100), .D(n99), .Y(n148) );
  NAND4X1 U4 ( .A(n146), .B(n145), .C(n144), .D(n143), .Y(n147) );
  XNOR2X1 U5 ( .A(s7[7]), .B(p7[7]), .Y(n117) );
  OAI21XL U6 ( .A0(n122), .A1(n121), .B0(check[7]), .Y(n145) );
  NAND4X1 U7 ( .A(n116), .B(n115), .C(n114), .D(n113), .Y(n122) );
  NAND4X1 U8 ( .A(n120), .B(n119), .C(n118), .D(n117), .Y(n121) );
  XNOR2X1 U9 ( .A(s7[3]), .B(p7[3]), .Y(n113) );
  XNOR2X1 U10 ( .A(s7[6]), .B(p7[6]), .Y(n118) );
  XNOR2X1 U11 ( .A(s7[2]), .B(p7[2]), .Y(n114) );
  XNOR2X1 U12 ( .A(s7[5]), .B(p7[5]), .Y(n119) );
  XNOR2X1 U13 ( .A(s7[1]), .B(p7[1]), .Y(n115) );
  XNOR2X1 U14 ( .A(s7[0]), .B(p7[0]), .Y(n116) );
  XNOR2X1 U15 ( .A(s5[6]), .B(p5[6]), .Y(n138) );
  OAI21XL U16 ( .A0(n142), .A1(n141), .B0(check[5]), .Y(n143) );
  NAND4X1 U17 ( .A(n136), .B(n135), .C(n134), .D(n133), .Y(n142) );
  NAND4X1 U18 ( .A(n140), .B(n139), .C(n138), .D(n137), .Y(n141) );
  XNOR2X1 U19 ( .A(s5[0]), .B(p5[0]), .Y(n136) );
  XNOR2X1 U20 ( .A(s6[7]), .B(p6[7]), .Y(n127) );
  OAI21XL U21 ( .A0(n132), .A1(n131), .B0(check[6]), .Y(n144) );
  NAND4X1 U22 ( .A(n126), .B(n125), .C(n124), .D(n123), .Y(n132) );
  NAND4X1 U23 ( .A(n130), .B(n129), .C(n128), .D(n127), .Y(n131) );
  XNOR2X1 U24 ( .A(s6[0]), .B(p6[0]), .Y(n126) );
  XNOR2X1 U25 ( .A(s5[3]), .B(p5[3]), .Y(n133) );
  XNOR2X1 U26 ( .A(s5[5]), .B(p5[5]), .Y(n139) );
  XNOR2X1 U27 ( .A(s5[2]), .B(p5[2]), .Y(n134) );
  XNOR2X1 U28 ( .A(s5[4]), .B(p5[4]), .Y(n140) );
  XNOR2X1 U29 ( .A(s3[7]), .B(p3[7]), .Y(n15) );
  OAI21XL U30 ( .A0(n20), .A1(n19), .B0(check[3]), .Y(n101) );
  NAND4X1 U31 ( .A(n14), .B(n13), .C(n12), .D(n11), .Y(n20) );
  NAND4X1 U32 ( .A(n18), .B(n17), .C(n16), .D(n15), .Y(n19) );
  XNOR2X1 U33 ( .A(s3[0]), .B(p3[0]), .Y(n14) );
  XNOR2X1 U34 ( .A(s5[1]), .B(p5[1]), .Y(n135) );
  XNOR2X1 U35 ( .A(s4[7]), .B(p4[7]), .Y(n5) );
  OAI21XL U36 ( .A0(n10), .A1(n9), .B0(check[4]), .Y(n102) );
  NAND4X1 U37 ( .A(n4), .B(n3), .C(n2), .D(n1), .Y(n10) );
  NAND4X1 U38 ( .A(n8), .B(n7), .C(n6), .D(n5), .Y(n9) );
  XNOR2X1 U39 ( .A(s4[0]), .B(p4[0]), .Y(n4) );
  XNOR2X1 U40 ( .A(s4[6]), .B(p4[6]), .Y(n6) );
  XNOR2X1 U41 ( .A(s4[3]), .B(p4[3]), .Y(n1) );
  XNOR2X1 U42 ( .A(s4[5]), .B(p4[5]), .Y(n7) );
  XNOR2X1 U43 ( .A(s4[2]), .B(p4[2]), .Y(n2) );
  XNOR2X1 U44 ( .A(s4[4]), .B(p4[4]), .Y(n8) );
  XNOR2X1 U45 ( .A(s4[1]), .B(p4[1]), .Y(n3) );
  XNOR2X1 U46 ( .A(s0[2]), .B(p0[2]), .Y(n104) );
  OAI21XL U47 ( .A0(n112), .A1(n111), .B0(check[0]), .Y(n146) );
  NAND4X1 U48 ( .A(n110), .B(n109), .C(n108), .D(n107), .Y(n111) );
  NAND4X1 U49 ( .A(n106), .B(n105), .C(n104), .D(n103), .Y(n112) );
  XNOR2X1 U50 ( .A(s0[4]), .B(p0[4]), .Y(n110) );
  XNOR2X1 U51 ( .A(s7[4]), .B(p7[4]), .Y(n120) );
  XNOR2X1 U52 ( .A(s0[1]), .B(p0[1]), .Y(n105) );
  XNOR2X1 U53 ( .A(s5[7]), .B(p5[7]), .Y(n137) );
  XNOR2X1 U54 ( .A(s0[0]), .B(p0[0]), .Y(n106) );
  XNOR2X1 U55 ( .A(s1[7]), .B(p1[7]), .Y(n93) );
  OAI21XL U56 ( .A0(n98), .A1(n97), .B0(check[1]), .Y(n99) );
  NAND4X1 U57 ( .A(n92), .B(n91), .C(n32), .D(n31), .Y(n98) );
  NAND4X1 U58 ( .A(n96), .B(n95), .C(n94), .D(n93), .Y(n97) );
  XNOR2X1 U59 ( .A(s1[0]), .B(p1[0]), .Y(n92) );
  XNOR2X1 U60 ( .A(s6[6]), .B(p6[6]), .Y(n128) );
  XNOR2X1 U61 ( .A(s2[7]), .B(p2[7]), .Y(n25) );
  XNOR2X1 U62 ( .A(s1[6]), .B(p1[6]), .Y(n94) );
  OAI21XL U63 ( .A0(n30), .A1(n29), .B0(check[2]), .Y(n100) );
  NAND4X1 U64 ( .A(n24), .B(n23), .C(n22), .D(n21), .Y(n30) );
  NAND4X1 U65 ( .A(n28), .B(n27), .C(n26), .D(n25), .Y(n29) );
  XNOR2X1 U66 ( .A(s2[0]), .B(p2[0]), .Y(n24) );
  XNOR2X1 U67 ( .A(s6[3]), .B(p6[3]), .Y(n123) );
  XNOR2X1 U68 ( .A(s1[3]), .B(p1[3]), .Y(n31) );
  XNOR2X1 U69 ( .A(s2[6]), .B(p2[6]), .Y(n26) );
  XNOR2X1 U70 ( .A(s6[5]), .B(p6[5]), .Y(n129) );
  XNOR2X1 U71 ( .A(s0[7]), .B(p0[7]), .Y(n107) );
  XNOR2X1 U72 ( .A(s1[5]), .B(p1[5]), .Y(n95) );
  XNOR2X1 U73 ( .A(s6[2]), .B(p6[2]), .Y(n124) );
  XNOR2X1 U74 ( .A(s2[3]), .B(p2[3]), .Y(n21) );
  XNOR2X1 U75 ( .A(s1[2]), .B(p1[2]), .Y(n32) );
  XNOR2X1 U76 ( .A(s6[4]), .B(p6[4]), .Y(n130) );
  XNOR2X1 U77 ( .A(s1[4]), .B(p1[4]), .Y(n96) );
  XNOR2X1 U78 ( .A(s2[5]), .B(p2[5]), .Y(n27) );
  XNOR2X1 U79 ( .A(s0[6]), .B(p0[6]), .Y(n108) );
  XNOR2X1 U80 ( .A(s3[6]), .B(p3[6]), .Y(n16) );
  XNOR2X1 U81 ( .A(s2[2]), .B(p2[2]), .Y(n22) );
  XNOR2X1 U82 ( .A(s6[1]), .B(p6[1]), .Y(n125) );
  XNOR2X1 U83 ( .A(s0[5]), .B(p0[5]), .Y(n109) );
  XNOR2X1 U84 ( .A(s1[1]), .B(p1[1]), .Y(n91) );
  XNOR2X1 U85 ( .A(s0[3]), .B(p0[3]), .Y(n103) );
  XNOR2X1 U86 ( .A(s3[3]), .B(p3[3]), .Y(n11) );
  XNOR2X1 U87 ( .A(s2[4]), .B(p2[4]), .Y(n28) );
  XNOR2X1 U88 ( .A(s3[5]), .B(p3[5]), .Y(n17) );
  XNOR2X1 U89 ( .A(s2[1]), .B(p2[1]), .Y(n23) );
  XNOR2X1 U90 ( .A(s3[2]), .B(p3[2]), .Y(n12) );
  XNOR2X1 U91 ( .A(s3[4]), .B(p3[4]), .Y(n18) );
  XNOR2X1 U92 ( .A(s3[1]), .B(p3[1]), .Y(n13) );
endmodule


module Pattern_String_Comparator_Cell_57 ( s7, s6, s5, s4, s3, s2, s1, s0, p7, 
        p6, p5, p4, p3, p2, p1, p0, check, match );
  input [7:0] s7;
  input [7:0] s6;
  input [7:0] s5;
  input [7:0] s4;
  input [7:0] s3;
  input [7:0] s2;
  input [7:0] s1;
  input [7:0] s0;
  input [7:0] p7;
  input [7:0] p6;
  input [7:0] p5;
  input [7:0] p4;
  input [7:0] p3;
  input [7:0] p2;
  input [7:0] p1;
  input [7:0] p0;
  input [7:0] check;
  output match;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30,
         n31, n32, n91, n92, n93, n94, n95, n96, n97, n98, n99, n100, n101,
         n102, n103, n104, n105, n106, n107, n108, n109, n110, n111, n112,
         n113, n114, n115, n116, n117, n118, n119, n120, n121, n122, n123,
         n124, n125, n126, n127, n128, n129, n130, n131, n132, n133, n134,
         n135, n136, n137, n138, n139, n140, n141, n142, n143, n144, n145,
         n146, n147, n148;

  NOR2X1 U2 ( .A(n148), .B(n147), .Y(match) );
  NAND4X1 U3 ( .A(n102), .B(n101), .C(n100), .D(n99), .Y(n148) );
  NAND4X1 U4 ( .A(n146), .B(n145), .C(n144), .D(n143), .Y(n147) );
  OAI21XL U5 ( .A0(n30), .A1(n29), .B0(check[2]), .Y(n100) );
  XNOR2X1 U6 ( .A(s7[7]), .B(p7[7]), .Y(n117) );
  OAI21XL U7 ( .A0(n122), .A1(n121), .B0(check[7]), .Y(n145) );
  NAND4X1 U8 ( .A(n116), .B(n115), .C(n114), .D(n113), .Y(n122) );
  NAND4X1 U9 ( .A(n120), .B(n119), .C(n118), .D(n117), .Y(n121) );
  XNOR2X1 U10 ( .A(s7[3]), .B(p7[3]), .Y(n113) );
  XNOR2X1 U11 ( .A(s7[6]), .B(p7[6]), .Y(n118) );
  XNOR2X1 U12 ( .A(s7[2]), .B(p7[2]), .Y(n114) );
  XNOR2X1 U13 ( .A(s7[5]), .B(p7[5]), .Y(n119) );
  XNOR2X1 U14 ( .A(s7[1]), .B(p7[1]), .Y(n115) );
  XNOR2X1 U15 ( .A(s7[0]), .B(p7[0]), .Y(n116) );
  XNOR2X1 U16 ( .A(s5[6]), .B(p5[6]), .Y(n138) );
  OAI21XL U17 ( .A0(n142), .A1(n141), .B0(check[5]), .Y(n143) );
  NAND4X1 U18 ( .A(n136), .B(n135), .C(n134), .D(n133), .Y(n142) );
  NAND4X1 U19 ( .A(n140), .B(n139), .C(n138), .D(n137), .Y(n141) );
  XNOR2X1 U20 ( .A(s5[0]), .B(p5[0]), .Y(n136) );
  XNOR2X1 U21 ( .A(s6[7]), .B(p6[7]), .Y(n127) );
  OAI21XL U22 ( .A0(n132), .A1(n131), .B0(check[6]), .Y(n144) );
  NAND4X1 U23 ( .A(n126), .B(n125), .C(n124), .D(n123), .Y(n132) );
  NAND4X1 U24 ( .A(n130), .B(n129), .C(n128), .D(n127), .Y(n131) );
  XNOR2X1 U25 ( .A(s6[0]), .B(p6[0]), .Y(n126) );
  XNOR2X1 U26 ( .A(s5[3]), .B(p5[3]), .Y(n133) );
  XNOR2X1 U27 ( .A(s5[5]), .B(p5[5]), .Y(n139) );
  XNOR2X1 U28 ( .A(s5[2]), .B(p5[2]), .Y(n134) );
  XNOR2X1 U29 ( .A(s5[4]), .B(p5[4]), .Y(n140) );
  XNOR2X1 U30 ( .A(s5[1]), .B(p5[1]), .Y(n135) );
  XNOR2X1 U31 ( .A(s3[7]), .B(p3[7]), .Y(n15) );
  OAI21XL U32 ( .A0(n20), .A1(n19), .B0(check[3]), .Y(n101) );
  NAND4X1 U33 ( .A(n14), .B(n13), .C(n12), .D(n11), .Y(n20) );
  NAND4X1 U34 ( .A(n18), .B(n17), .C(n16), .D(n15), .Y(n19) );
  XNOR2X1 U35 ( .A(s3[0]), .B(p3[0]), .Y(n14) );
  XNOR2X1 U36 ( .A(s4[7]), .B(p4[7]), .Y(n5) );
  OAI21XL U37 ( .A0(n10), .A1(n9), .B0(check[4]), .Y(n102) );
  NAND4X1 U38 ( .A(n4), .B(n3), .C(n2), .D(n1), .Y(n10) );
  NAND4X1 U39 ( .A(n8), .B(n7), .C(n6), .D(n5), .Y(n9) );
  XNOR2X1 U40 ( .A(s4[0]), .B(p4[0]), .Y(n4) );
  XNOR2X1 U41 ( .A(s4[6]), .B(p4[6]), .Y(n6) );
  XNOR2X1 U42 ( .A(s4[3]), .B(p4[3]), .Y(n1) );
  XNOR2X1 U43 ( .A(s4[5]), .B(p4[5]), .Y(n7) );
  XNOR2X1 U44 ( .A(s4[2]), .B(p4[2]), .Y(n2) );
  XNOR2X1 U45 ( .A(s4[4]), .B(p4[4]), .Y(n8) );
  XNOR2X1 U46 ( .A(s4[1]), .B(p4[1]), .Y(n3) );
  XNOR2X1 U47 ( .A(s0[2]), .B(p0[2]), .Y(n104) );
  OAI21XL U48 ( .A0(n112), .A1(n111), .B0(check[0]), .Y(n146) );
  NAND4X1 U49 ( .A(n110), .B(n109), .C(n108), .D(n107), .Y(n111) );
  NAND4X1 U50 ( .A(n106), .B(n105), .C(n104), .D(n103), .Y(n112) );
  XNOR2X1 U51 ( .A(s0[4]), .B(p0[4]), .Y(n110) );
  XNOR2X1 U52 ( .A(s7[4]), .B(p7[4]), .Y(n120) );
  XNOR2X1 U53 ( .A(s0[1]), .B(p0[1]), .Y(n105) );
  XNOR2X1 U54 ( .A(s5[7]), .B(p5[7]), .Y(n137) );
  XNOR2X1 U55 ( .A(s0[0]), .B(p0[0]), .Y(n106) );
  XNOR2X1 U56 ( .A(s1[7]), .B(p1[7]), .Y(n93) );
  OAI21XL U57 ( .A0(n98), .A1(n97), .B0(check[1]), .Y(n99) );
  NAND4X1 U58 ( .A(n92), .B(n91), .C(n32), .D(n31), .Y(n98) );
  NAND4X1 U59 ( .A(n96), .B(n95), .C(n94), .D(n93), .Y(n97) );
  XNOR2X1 U60 ( .A(s1[0]), .B(p1[0]), .Y(n92) );
  XNOR2X1 U61 ( .A(s6[6]), .B(p6[6]), .Y(n128) );
  XNOR2X1 U62 ( .A(s2[7]), .B(p2[7]), .Y(n25) );
  XNOR2X1 U63 ( .A(s1[6]), .B(p1[6]), .Y(n94) );
  NAND4X1 U64 ( .A(n28), .B(n27), .C(n26), .D(n25), .Y(n29) );
  XNOR2X1 U65 ( .A(s2[4]), .B(p2[4]), .Y(n28) );
  XNOR2X1 U66 ( .A(s2[5]), .B(p2[5]), .Y(n27) );
  XNOR2X1 U67 ( .A(s2[6]), .B(p2[6]), .Y(n26) );
  XNOR2X1 U68 ( .A(s6[3]), .B(p6[3]), .Y(n123) );
  XNOR2X1 U69 ( .A(s1[3]), .B(p1[3]), .Y(n31) );
  XNOR2X1 U70 ( .A(s6[5]), .B(p6[5]), .Y(n129) );
  XNOR2X1 U71 ( .A(s0[7]), .B(p0[7]), .Y(n107) );
  XNOR2X1 U72 ( .A(s1[5]), .B(p1[5]), .Y(n95) );
  XNOR2X1 U73 ( .A(s6[2]), .B(p6[2]), .Y(n124) );
  XNOR2X1 U74 ( .A(s2[3]), .B(p2[3]), .Y(n21) );
  XNOR2X1 U75 ( .A(s1[2]), .B(p1[2]), .Y(n32) );
  NAND4X1 U76 ( .A(n24), .B(n23), .C(n22), .D(n21), .Y(n30) );
  XNOR2X1 U77 ( .A(s2[0]), .B(p2[0]), .Y(n24) );
  XNOR2X1 U78 ( .A(s2[1]), .B(p2[1]), .Y(n23) );
  XNOR2X1 U79 ( .A(s2[2]), .B(p2[2]), .Y(n22) );
  XNOR2X1 U80 ( .A(s6[4]), .B(p6[4]), .Y(n130) );
  XNOR2X1 U81 ( .A(s0[6]), .B(p0[6]), .Y(n108) );
  XNOR2X1 U82 ( .A(s1[4]), .B(p1[4]), .Y(n96) );
  XNOR2X1 U83 ( .A(s3[6]), .B(p3[6]), .Y(n16) );
  XNOR2X1 U84 ( .A(s6[1]), .B(p6[1]), .Y(n125) );
  XNOR2X1 U85 ( .A(s0[5]), .B(p0[5]), .Y(n109) );
  XNOR2X1 U86 ( .A(s0[3]), .B(p0[3]), .Y(n103) );
  XNOR2X1 U87 ( .A(s1[1]), .B(p1[1]), .Y(n91) );
  XNOR2X1 U88 ( .A(s3[3]), .B(p3[3]), .Y(n11) );
  XNOR2X1 U89 ( .A(s3[5]), .B(p3[5]), .Y(n17) );
  XNOR2X1 U90 ( .A(s3[2]), .B(p3[2]), .Y(n12) );
  XNOR2X1 U91 ( .A(s3[4]), .B(p3[4]), .Y(n18) );
  XNOR2X1 U92 ( .A(s3[1]), .B(p3[1]), .Y(n13) );
endmodule


module Pattern_String_Comparator_Cell_56 ( s7, s6, s5, s4, s3, s2, s1, s0, p7, 
        p6, p5, p4, p3, p2, p1, p0, check, match );
  input [7:0] s7;
  input [7:0] s6;
  input [7:0] s5;
  input [7:0] s4;
  input [7:0] s3;
  input [7:0] s2;
  input [7:0] s1;
  input [7:0] s0;
  input [7:0] p7;
  input [7:0] p6;
  input [7:0] p5;
  input [7:0] p4;
  input [7:0] p3;
  input [7:0] p2;
  input [7:0] p1;
  input [7:0] p0;
  input [7:0] check;
  output match;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30,
         n31, n32, n91, n92, n93, n94, n95, n96, n97, n98, n99, n100, n101,
         n102, n103, n104, n105, n106, n107, n108, n109, n110, n111, n112,
         n113, n114, n115, n116, n117, n118, n119, n120, n121, n122, n123,
         n124, n125, n126, n127, n128, n129, n130, n131, n132, n133, n134,
         n135, n136, n137, n138, n139, n140, n141, n142, n143, n144, n145,
         n146, n147, n148;

  NOR2X1 U2 ( .A(n148), .B(n147), .Y(match) );
  NAND4X1 U3 ( .A(n102), .B(n101), .C(n100), .D(n99), .Y(n148) );
  NAND4X1 U4 ( .A(n146), .B(n145), .C(n144), .D(n143), .Y(n147) );
  OAI21XL U5 ( .A0(n30), .A1(n29), .B0(check[2]), .Y(n100) );
  XNOR2X1 U6 ( .A(s7[7]), .B(p7[7]), .Y(n117) );
  OAI21XL U7 ( .A0(n122), .A1(n121), .B0(check[7]), .Y(n145) );
  NAND4X1 U8 ( .A(n116), .B(n115), .C(n114), .D(n113), .Y(n122) );
  NAND4X1 U9 ( .A(n120), .B(n119), .C(n118), .D(n117), .Y(n121) );
  XNOR2X1 U10 ( .A(s7[3]), .B(p7[3]), .Y(n113) );
  XNOR2X1 U11 ( .A(s7[6]), .B(p7[6]), .Y(n118) );
  XNOR2X1 U12 ( .A(s7[2]), .B(p7[2]), .Y(n114) );
  XNOR2X1 U13 ( .A(s7[5]), .B(p7[5]), .Y(n119) );
  XNOR2X1 U14 ( .A(s7[1]), .B(p7[1]), .Y(n115) );
  XNOR2X1 U15 ( .A(s7[0]), .B(p7[0]), .Y(n116) );
  XNOR2X1 U16 ( .A(s5[6]), .B(p5[6]), .Y(n138) );
  OAI21XL U17 ( .A0(n142), .A1(n141), .B0(check[5]), .Y(n143) );
  NAND4X1 U18 ( .A(n136), .B(n135), .C(n134), .D(n133), .Y(n142) );
  NAND4X1 U19 ( .A(n140), .B(n139), .C(n138), .D(n137), .Y(n141) );
  XNOR2X1 U20 ( .A(s5[0]), .B(p5[0]), .Y(n136) );
  XNOR2X1 U21 ( .A(s6[7]), .B(p6[7]), .Y(n127) );
  OAI21XL U22 ( .A0(n132), .A1(n131), .B0(check[6]), .Y(n144) );
  NAND4X1 U23 ( .A(n126), .B(n125), .C(n124), .D(n123), .Y(n132) );
  NAND4X1 U24 ( .A(n130), .B(n129), .C(n128), .D(n127), .Y(n131) );
  XNOR2X1 U25 ( .A(s6[0]), .B(p6[0]), .Y(n126) );
  XNOR2X1 U26 ( .A(s5[3]), .B(p5[3]), .Y(n133) );
  XNOR2X1 U27 ( .A(s5[5]), .B(p5[5]), .Y(n139) );
  XNOR2X1 U28 ( .A(s5[2]), .B(p5[2]), .Y(n134) );
  XNOR2X1 U29 ( .A(s5[4]), .B(p5[4]), .Y(n140) );
  XNOR2X1 U30 ( .A(s5[1]), .B(p5[1]), .Y(n135) );
  XNOR2X1 U31 ( .A(s3[7]), .B(p3[7]), .Y(n15) );
  OAI21XL U32 ( .A0(n20), .A1(n19), .B0(check[3]), .Y(n101) );
  NAND4X1 U33 ( .A(n14), .B(n13), .C(n12), .D(n11), .Y(n20) );
  NAND4X1 U34 ( .A(n18), .B(n17), .C(n16), .D(n15), .Y(n19) );
  XNOR2X1 U35 ( .A(s3[0]), .B(p3[0]), .Y(n14) );
  XNOR2X1 U36 ( .A(s4[7]), .B(p4[7]), .Y(n5) );
  OAI21XL U37 ( .A0(n10), .A1(n9), .B0(check[4]), .Y(n102) );
  NAND4X1 U38 ( .A(n4), .B(n3), .C(n2), .D(n1), .Y(n10) );
  NAND4X1 U39 ( .A(n8), .B(n7), .C(n6), .D(n5), .Y(n9) );
  XNOR2X1 U40 ( .A(s4[0]), .B(p4[0]), .Y(n4) );
  XNOR2X1 U41 ( .A(s4[6]), .B(p4[6]), .Y(n6) );
  XNOR2X1 U42 ( .A(s4[3]), .B(p4[3]), .Y(n1) );
  XNOR2X1 U43 ( .A(s4[5]), .B(p4[5]), .Y(n7) );
  XNOR2X1 U44 ( .A(s4[2]), .B(p4[2]), .Y(n2) );
  XNOR2X1 U45 ( .A(s4[4]), .B(p4[4]), .Y(n8) );
  XNOR2X1 U46 ( .A(s4[1]), .B(p4[1]), .Y(n3) );
  XNOR2X1 U47 ( .A(s0[2]), .B(p0[2]), .Y(n104) );
  OAI21XL U48 ( .A0(n112), .A1(n111), .B0(check[0]), .Y(n146) );
  NAND4X1 U49 ( .A(n110), .B(n109), .C(n108), .D(n107), .Y(n111) );
  NAND4X1 U50 ( .A(n106), .B(n105), .C(n104), .D(n103), .Y(n112) );
  XNOR2X1 U51 ( .A(s0[4]), .B(p0[4]), .Y(n110) );
  XNOR2X1 U52 ( .A(s7[4]), .B(p7[4]), .Y(n120) );
  XNOR2X1 U53 ( .A(s0[1]), .B(p0[1]), .Y(n105) );
  XNOR2X1 U54 ( .A(s5[7]), .B(p5[7]), .Y(n137) );
  XNOR2X1 U55 ( .A(s0[0]), .B(p0[0]), .Y(n106) );
  XNOR2X1 U56 ( .A(s1[7]), .B(p1[7]), .Y(n93) );
  OAI21XL U57 ( .A0(n98), .A1(n97), .B0(check[1]), .Y(n99) );
  NAND4X1 U58 ( .A(n92), .B(n91), .C(n32), .D(n31), .Y(n98) );
  NAND4X1 U59 ( .A(n96), .B(n95), .C(n94), .D(n93), .Y(n97) );
  XNOR2X1 U60 ( .A(s1[0]), .B(p1[0]), .Y(n92) );
  XNOR2X1 U61 ( .A(s6[6]), .B(p6[6]), .Y(n128) );
  XNOR2X1 U62 ( .A(s2[7]), .B(p2[7]), .Y(n25) );
  XNOR2X1 U63 ( .A(s1[6]), .B(p1[6]), .Y(n94) );
  NAND4X1 U64 ( .A(n28), .B(n27), .C(n26), .D(n25), .Y(n29) );
  XNOR2X1 U65 ( .A(s2[4]), .B(p2[4]), .Y(n28) );
  XNOR2X1 U66 ( .A(s2[5]), .B(p2[5]), .Y(n27) );
  XNOR2X1 U67 ( .A(s2[6]), .B(p2[6]), .Y(n26) );
  XNOR2X1 U68 ( .A(s6[3]), .B(p6[3]), .Y(n123) );
  XNOR2X1 U69 ( .A(s1[3]), .B(p1[3]), .Y(n31) );
  XNOR2X1 U70 ( .A(s6[5]), .B(p6[5]), .Y(n129) );
  XNOR2X1 U71 ( .A(s0[7]), .B(p0[7]), .Y(n107) );
  XNOR2X1 U72 ( .A(s1[5]), .B(p1[5]), .Y(n95) );
  XNOR2X1 U73 ( .A(s6[2]), .B(p6[2]), .Y(n124) );
  XNOR2X1 U74 ( .A(s2[3]), .B(p2[3]), .Y(n21) );
  XNOR2X1 U75 ( .A(s1[2]), .B(p1[2]), .Y(n32) );
  NAND4X1 U76 ( .A(n24), .B(n23), .C(n22), .D(n21), .Y(n30) );
  XNOR2X1 U77 ( .A(s2[0]), .B(p2[0]), .Y(n24) );
  XNOR2X1 U78 ( .A(s2[1]), .B(p2[1]), .Y(n23) );
  XNOR2X1 U79 ( .A(s2[2]), .B(p2[2]), .Y(n22) );
  XNOR2X1 U80 ( .A(s6[4]), .B(p6[4]), .Y(n130) );
  XNOR2X1 U81 ( .A(s0[6]), .B(p0[6]), .Y(n108) );
  XNOR2X1 U82 ( .A(s1[4]), .B(p1[4]), .Y(n96) );
  XNOR2X1 U83 ( .A(s3[6]), .B(p3[6]), .Y(n16) );
  XNOR2X1 U84 ( .A(s6[1]), .B(p6[1]), .Y(n125) );
  XNOR2X1 U85 ( .A(s0[5]), .B(p0[5]), .Y(n109) );
  XNOR2X1 U86 ( .A(s0[3]), .B(p0[3]), .Y(n103) );
  XNOR2X1 U87 ( .A(s1[1]), .B(p1[1]), .Y(n91) );
  XNOR2X1 U88 ( .A(s3[3]), .B(p3[3]), .Y(n11) );
  XNOR2X1 U89 ( .A(s3[5]), .B(p3[5]), .Y(n17) );
  XNOR2X1 U90 ( .A(s3[2]), .B(p3[2]), .Y(n12) );
  XNOR2X1 U91 ( .A(s3[4]), .B(p3[4]), .Y(n18) );
  XNOR2X1 U92 ( .A(s3[1]), .B(p3[1]), .Y(n13) );
endmodule


module Pattern_String_Comparator_Cell_55 ( s7, s6, s5, s4, s3, s2, s1, s0, p7, 
        p6, p5, p4, p3, p2, p1, p0, check, match );
  input [7:0] s7;
  input [7:0] s6;
  input [7:0] s5;
  input [7:0] s4;
  input [7:0] s3;
  input [7:0] s2;
  input [7:0] s1;
  input [7:0] s0;
  input [7:0] p7;
  input [7:0] p6;
  input [7:0] p5;
  input [7:0] p4;
  input [7:0] p3;
  input [7:0] p2;
  input [7:0] p1;
  input [7:0] p0;
  input [7:0] check;
  output match;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30,
         n31, n32, n91, n92, n93, n94, n95, n96, n97, n98, n99, n100, n101,
         n102, n103, n104, n105, n106, n107, n108, n109, n110, n111, n112,
         n113, n114, n115, n116, n117, n118, n119, n120, n121, n122, n123,
         n124, n125, n126, n127, n128, n129, n130, n131, n132, n133, n134,
         n135, n136, n137, n138, n139, n140, n141, n142, n143, n144, n145,
         n146, n147, n148;

  NOR2X1 U2 ( .A(n148), .B(n147), .Y(match) );
  NAND4X1 U3 ( .A(n102), .B(n101), .C(n100), .D(n99), .Y(n148) );
  NAND4X1 U4 ( .A(n146), .B(n145), .C(n144), .D(n143), .Y(n147) );
  OAI21XL U5 ( .A0(n30), .A1(n29), .B0(check[2]), .Y(n100) );
  XNOR2X1 U6 ( .A(s7[7]), .B(p7[7]), .Y(n117) );
  OAI21XL U7 ( .A0(n122), .A1(n121), .B0(check[7]), .Y(n145) );
  NAND4X1 U8 ( .A(n116), .B(n115), .C(n114), .D(n113), .Y(n122) );
  NAND4X1 U9 ( .A(n120), .B(n119), .C(n118), .D(n117), .Y(n121) );
  XNOR2X1 U10 ( .A(s7[3]), .B(p7[3]), .Y(n113) );
  XNOR2X1 U11 ( .A(s7[6]), .B(p7[6]), .Y(n118) );
  XNOR2X1 U12 ( .A(s7[2]), .B(p7[2]), .Y(n114) );
  XNOR2X1 U13 ( .A(s7[5]), .B(p7[5]), .Y(n119) );
  XNOR2X1 U14 ( .A(s7[1]), .B(p7[1]), .Y(n115) );
  XNOR2X1 U15 ( .A(s7[0]), .B(p7[0]), .Y(n116) );
  XNOR2X1 U16 ( .A(s5[6]), .B(p5[6]), .Y(n138) );
  OAI21XL U17 ( .A0(n142), .A1(n141), .B0(check[5]), .Y(n143) );
  NAND4X1 U18 ( .A(n136), .B(n135), .C(n134), .D(n133), .Y(n142) );
  NAND4X1 U19 ( .A(n140), .B(n139), .C(n138), .D(n137), .Y(n141) );
  XNOR2X1 U20 ( .A(s5[0]), .B(p5[0]), .Y(n136) );
  XNOR2X1 U21 ( .A(s6[7]), .B(p6[7]), .Y(n127) );
  OAI21XL U22 ( .A0(n132), .A1(n131), .B0(check[6]), .Y(n144) );
  NAND4X1 U23 ( .A(n126), .B(n125), .C(n124), .D(n123), .Y(n132) );
  NAND4X1 U24 ( .A(n130), .B(n129), .C(n128), .D(n127), .Y(n131) );
  XNOR2X1 U25 ( .A(s6[0]), .B(p6[0]), .Y(n126) );
  XNOR2X1 U26 ( .A(s5[3]), .B(p5[3]), .Y(n133) );
  XNOR2X1 U27 ( .A(s5[5]), .B(p5[5]), .Y(n139) );
  XNOR2X1 U28 ( .A(s5[2]), .B(p5[2]), .Y(n134) );
  XNOR2X1 U29 ( .A(s5[4]), .B(p5[4]), .Y(n140) );
  XNOR2X1 U30 ( .A(s5[1]), .B(p5[1]), .Y(n135) );
  XNOR2X1 U31 ( .A(s3[7]), .B(p3[7]), .Y(n15) );
  OAI21XL U32 ( .A0(n20), .A1(n19), .B0(check[3]), .Y(n101) );
  NAND4X1 U33 ( .A(n14), .B(n13), .C(n12), .D(n11), .Y(n20) );
  NAND4X1 U34 ( .A(n18), .B(n17), .C(n16), .D(n15), .Y(n19) );
  XNOR2X1 U35 ( .A(s3[0]), .B(p3[0]), .Y(n14) );
  XNOR2X1 U36 ( .A(s4[7]), .B(p4[7]), .Y(n5) );
  OAI21XL U37 ( .A0(n10), .A1(n9), .B0(check[4]), .Y(n102) );
  NAND4X1 U38 ( .A(n4), .B(n3), .C(n2), .D(n1), .Y(n10) );
  NAND4X1 U39 ( .A(n8), .B(n7), .C(n6), .D(n5), .Y(n9) );
  XNOR2X1 U40 ( .A(s4[0]), .B(p4[0]), .Y(n4) );
  XNOR2X1 U41 ( .A(s4[6]), .B(p4[6]), .Y(n6) );
  XNOR2X1 U42 ( .A(s4[3]), .B(p4[3]), .Y(n1) );
  XNOR2X1 U43 ( .A(s4[5]), .B(p4[5]), .Y(n7) );
  XNOR2X1 U44 ( .A(s4[2]), .B(p4[2]), .Y(n2) );
  XNOR2X1 U45 ( .A(s4[4]), .B(p4[4]), .Y(n8) );
  XNOR2X1 U46 ( .A(s4[1]), .B(p4[1]), .Y(n3) );
  XNOR2X1 U47 ( .A(s0[2]), .B(p0[2]), .Y(n104) );
  OAI21XL U48 ( .A0(n112), .A1(n111), .B0(check[0]), .Y(n146) );
  NAND4X1 U49 ( .A(n110), .B(n109), .C(n108), .D(n107), .Y(n111) );
  NAND4X1 U50 ( .A(n106), .B(n105), .C(n104), .D(n103), .Y(n112) );
  XNOR2X1 U51 ( .A(s0[4]), .B(p0[4]), .Y(n110) );
  XNOR2X1 U52 ( .A(s7[4]), .B(p7[4]), .Y(n120) );
  XNOR2X1 U53 ( .A(s0[1]), .B(p0[1]), .Y(n105) );
  XNOR2X1 U54 ( .A(s5[7]), .B(p5[7]), .Y(n137) );
  XNOR2X1 U55 ( .A(s0[0]), .B(p0[0]), .Y(n106) );
  XNOR2X1 U56 ( .A(s1[7]), .B(p1[7]), .Y(n93) );
  OAI21XL U57 ( .A0(n98), .A1(n97), .B0(check[1]), .Y(n99) );
  NAND4X1 U58 ( .A(n92), .B(n91), .C(n32), .D(n31), .Y(n98) );
  NAND4X1 U59 ( .A(n96), .B(n95), .C(n94), .D(n93), .Y(n97) );
  XNOR2X1 U60 ( .A(s1[0]), .B(p1[0]), .Y(n92) );
  XNOR2X1 U61 ( .A(s6[6]), .B(p6[6]), .Y(n128) );
  XNOR2X1 U62 ( .A(s2[7]), .B(p2[7]), .Y(n25) );
  NAND4X1 U63 ( .A(n28), .B(n27), .C(n26), .D(n25), .Y(n29) );
  XNOR2X1 U64 ( .A(s2[4]), .B(p2[4]), .Y(n28) );
  XNOR2X1 U65 ( .A(s2[5]), .B(p2[5]), .Y(n27) );
  XNOR2X1 U66 ( .A(s2[6]), .B(p2[6]), .Y(n26) );
  XNOR2X1 U67 ( .A(s1[6]), .B(p1[6]), .Y(n94) );
  XNOR2X1 U68 ( .A(s6[3]), .B(p6[3]), .Y(n123) );
  XNOR2X1 U69 ( .A(s1[3]), .B(p1[3]), .Y(n31) );
  XNOR2X1 U70 ( .A(s6[5]), .B(p6[5]), .Y(n129) );
  XNOR2X1 U71 ( .A(s0[7]), .B(p0[7]), .Y(n107) );
  XNOR2X1 U72 ( .A(s1[5]), .B(p1[5]), .Y(n95) );
  XNOR2X1 U73 ( .A(s6[2]), .B(p6[2]), .Y(n124) );
  XNOR2X1 U74 ( .A(s2[3]), .B(p2[3]), .Y(n21) );
  XNOR2X1 U75 ( .A(s1[2]), .B(p1[2]), .Y(n32) );
  NAND4X1 U76 ( .A(n24), .B(n23), .C(n22), .D(n21), .Y(n30) );
  XNOR2X1 U77 ( .A(s2[0]), .B(p2[0]), .Y(n24) );
  XNOR2X1 U78 ( .A(s2[1]), .B(p2[1]), .Y(n23) );
  XNOR2X1 U79 ( .A(s2[2]), .B(p2[2]), .Y(n22) );
  XNOR2X1 U80 ( .A(s6[4]), .B(p6[4]), .Y(n130) );
  XNOR2X1 U81 ( .A(s0[6]), .B(p0[6]), .Y(n108) );
  XNOR2X1 U82 ( .A(s1[4]), .B(p1[4]), .Y(n96) );
  XNOR2X1 U83 ( .A(s3[6]), .B(p3[6]), .Y(n16) );
  XNOR2X1 U84 ( .A(s6[1]), .B(p6[1]), .Y(n125) );
  XNOR2X1 U85 ( .A(s0[5]), .B(p0[5]), .Y(n109) );
  XNOR2X1 U86 ( .A(s0[3]), .B(p0[3]), .Y(n103) );
  XNOR2X1 U87 ( .A(s1[1]), .B(p1[1]), .Y(n91) );
  XNOR2X1 U88 ( .A(s3[3]), .B(p3[3]), .Y(n11) );
  XNOR2X1 U89 ( .A(s3[5]), .B(p3[5]), .Y(n17) );
  XNOR2X1 U90 ( .A(s3[2]), .B(p3[2]), .Y(n12) );
  XNOR2X1 U91 ( .A(s3[4]), .B(p3[4]), .Y(n18) );
  XNOR2X1 U92 ( .A(s3[1]), .B(p3[1]), .Y(n13) );
endmodule


module Pattern_String_Comparator_Cell_54 ( s7, s6, s5, s4, s3, s2, s1, s0, p7, 
        p6, p5, p4, p3, p2, p1, p0, check, match );
  input [7:0] s7;
  input [7:0] s6;
  input [7:0] s5;
  input [7:0] s4;
  input [7:0] s3;
  input [7:0] s2;
  input [7:0] s1;
  input [7:0] s0;
  input [7:0] p7;
  input [7:0] p6;
  input [7:0] p5;
  input [7:0] p4;
  input [7:0] p3;
  input [7:0] p2;
  input [7:0] p1;
  input [7:0] p0;
  input [7:0] check;
  output match;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30,
         n31, n32, n91, n92, n93, n94, n95, n96, n97, n98, n99, n100, n101,
         n102, n103, n104, n105, n106, n107, n108, n109, n110, n111, n112,
         n113, n114, n115, n116, n117, n118, n119, n120, n121, n122, n123,
         n124, n125, n126, n127, n128, n129, n130, n131, n132, n133, n134,
         n135, n136, n137, n138, n139, n140, n141, n142, n143, n144, n145,
         n146, n147, n148;

  NOR2X1 U2 ( .A(n148), .B(n147), .Y(match) );
  NAND4X1 U3 ( .A(n102), .B(n101), .C(n100), .D(n99), .Y(n148) );
  NAND4X1 U4 ( .A(n146), .B(n145), .C(n144), .D(n143), .Y(n147) );
  XNOR2X1 U5 ( .A(s7[7]), .B(p7[7]), .Y(n117) );
  OAI21XL U6 ( .A0(n122), .A1(n121), .B0(check[7]), .Y(n145) );
  NAND4X1 U7 ( .A(n116), .B(n115), .C(n114), .D(n113), .Y(n122) );
  NAND4X1 U8 ( .A(n120), .B(n119), .C(n118), .D(n117), .Y(n121) );
  XNOR2X1 U9 ( .A(s7[3]), .B(p7[3]), .Y(n113) );
  XNOR2X1 U10 ( .A(s7[6]), .B(p7[6]), .Y(n118) );
  XNOR2X1 U11 ( .A(s7[2]), .B(p7[2]), .Y(n114) );
  XNOR2X1 U12 ( .A(s7[5]), .B(p7[5]), .Y(n119) );
  XNOR2X1 U13 ( .A(s7[1]), .B(p7[1]), .Y(n115) );
  XNOR2X1 U14 ( .A(s7[0]), .B(p7[0]), .Y(n116) );
  XNOR2X1 U15 ( .A(s5[6]), .B(p5[6]), .Y(n138) );
  OAI21XL U16 ( .A0(n142), .A1(n141), .B0(check[5]), .Y(n143) );
  NAND4X1 U17 ( .A(n136), .B(n135), .C(n134), .D(n133), .Y(n142) );
  NAND4X1 U18 ( .A(n140), .B(n139), .C(n138), .D(n137), .Y(n141) );
  XNOR2X1 U19 ( .A(s5[0]), .B(p5[0]), .Y(n136) );
  XNOR2X1 U20 ( .A(s6[7]), .B(p6[7]), .Y(n127) );
  OAI21XL U21 ( .A0(n132), .A1(n131), .B0(check[6]), .Y(n144) );
  NAND4X1 U22 ( .A(n126), .B(n125), .C(n124), .D(n123), .Y(n132) );
  NAND4X1 U23 ( .A(n130), .B(n129), .C(n128), .D(n127), .Y(n131) );
  XNOR2X1 U24 ( .A(s6[0]), .B(p6[0]), .Y(n126) );
  XNOR2X1 U25 ( .A(s5[3]), .B(p5[3]), .Y(n133) );
  XNOR2X1 U26 ( .A(s5[5]), .B(p5[5]), .Y(n139) );
  XNOR2X1 U27 ( .A(s5[2]), .B(p5[2]), .Y(n134) );
  XNOR2X1 U28 ( .A(s5[4]), .B(p5[4]), .Y(n140) );
  XNOR2X1 U29 ( .A(s3[7]), .B(p3[7]), .Y(n15) );
  OAI21XL U30 ( .A0(n20), .A1(n19), .B0(check[3]), .Y(n101) );
  NAND4X1 U31 ( .A(n14), .B(n13), .C(n12), .D(n11), .Y(n20) );
  NAND4X1 U32 ( .A(n18), .B(n17), .C(n16), .D(n15), .Y(n19) );
  XNOR2X1 U33 ( .A(s3[0]), .B(p3[0]), .Y(n14) );
  XNOR2X1 U34 ( .A(s5[1]), .B(p5[1]), .Y(n135) );
  XNOR2X1 U35 ( .A(s4[7]), .B(p4[7]), .Y(n5) );
  OAI21XL U36 ( .A0(n10), .A1(n9), .B0(check[4]), .Y(n102) );
  NAND4X1 U37 ( .A(n4), .B(n3), .C(n2), .D(n1), .Y(n10) );
  NAND4X1 U38 ( .A(n8), .B(n7), .C(n6), .D(n5), .Y(n9) );
  XNOR2X1 U39 ( .A(s4[0]), .B(p4[0]), .Y(n4) );
  XNOR2X1 U40 ( .A(s4[6]), .B(p4[6]), .Y(n6) );
  XNOR2X1 U41 ( .A(s4[3]), .B(p4[3]), .Y(n1) );
  XNOR2X1 U42 ( .A(s4[5]), .B(p4[5]), .Y(n7) );
  XNOR2X1 U43 ( .A(s4[2]), .B(p4[2]), .Y(n2) );
  XNOR2X1 U44 ( .A(s4[4]), .B(p4[4]), .Y(n8) );
  XNOR2X1 U45 ( .A(s4[1]), .B(p4[1]), .Y(n3) );
  XNOR2X1 U46 ( .A(s0[2]), .B(p0[2]), .Y(n104) );
  OAI21XL U47 ( .A0(n112), .A1(n111), .B0(check[0]), .Y(n146) );
  NAND4X1 U48 ( .A(n110), .B(n109), .C(n108), .D(n107), .Y(n111) );
  NAND4X1 U49 ( .A(n106), .B(n105), .C(n104), .D(n103), .Y(n112) );
  XNOR2X1 U50 ( .A(s0[4]), .B(p0[4]), .Y(n110) );
  XNOR2X1 U51 ( .A(s7[4]), .B(p7[4]), .Y(n120) );
  XNOR2X1 U52 ( .A(s0[1]), .B(p0[1]), .Y(n105) );
  XNOR2X1 U53 ( .A(s5[7]), .B(p5[7]), .Y(n137) );
  XNOR2X1 U54 ( .A(s0[0]), .B(p0[0]), .Y(n106) );
  XNOR2X1 U55 ( .A(s1[7]), .B(p1[7]), .Y(n93) );
  OAI21XL U56 ( .A0(n98), .A1(n97), .B0(check[1]), .Y(n99) );
  NAND4X1 U57 ( .A(n92), .B(n91), .C(n32), .D(n31), .Y(n98) );
  NAND4X1 U58 ( .A(n96), .B(n95), .C(n94), .D(n93), .Y(n97) );
  XNOR2X1 U59 ( .A(s1[0]), .B(p1[0]), .Y(n92) );
  XNOR2X1 U60 ( .A(s6[6]), .B(p6[6]), .Y(n128) );
  XNOR2X1 U61 ( .A(s2[7]), .B(p2[7]), .Y(n25) );
  OAI21XL U62 ( .A0(n30), .A1(n29), .B0(check[2]), .Y(n100) );
  NAND4X1 U63 ( .A(n24), .B(n23), .C(n22), .D(n21), .Y(n30) );
  NAND4X1 U64 ( .A(n28), .B(n27), .C(n26), .D(n25), .Y(n29) );
  XNOR2X1 U65 ( .A(s2[0]), .B(p2[0]), .Y(n24) );
  XNOR2X1 U66 ( .A(s1[6]), .B(p1[6]), .Y(n94) );
  XNOR2X1 U67 ( .A(s6[3]), .B(p6[3]), .Y(n123) );
  XNOR2X1 U68 ( .A(s1[3]), .B(p1[3]), .Y(n31) );
  XNOR2X1 U69 ( .A(s2[6]), .B(p2[6]), .Y(n26) );
  XNOR2X1 U70 ( .A(s6[5]), .B(p6[5]), .Y(n129) );
  XNOR2X1 U71 ( .A(s0[7]), .B(p0[7]), .Y(n107) );
  XNOR2X1 U72 ( .A(s1[5]), .B(p1[5]), .Y(n95) );
  XNOR2X1 U73 ( .A(s6[2]), .B(p6[2]), .Y(n124) );
  XNOR2X1 U74 ( .A(s2[3]), .B(p2[3]), .Y(n21) );
  XNOR2X1 U75 ( .A(s1[2]), .B(p1[2]), .Y(n32) );
  XNOR2X1 U76 ( .A(s6[4]), .B(p6[4]), .Y(n130) );
  XNOR2X1 U77 ( .A(s1[4]), .B(p1[4]), .Y(n96) );
  XNOR2X1 U78 ( .A(s2[5]), .B(p2[5]), .Y(n27) );
  XNOR2X1 U79 ( .A(s0[6]), .B(p0[6]), .Y(n108) );
  XNOR2X1 U80 ( .A(s3[6]), .B(p3[6]), .Y(n16) );
  XNOR2X1 U81 ( .A(s2[2]), .B(p2[2]), .Y(n22) );
  XNOR2X1 U82 ( .A(s6[1]), .B(p6[1]), .Y(n125) );
  XNOR2X1 U83 ( .A(s0[5]), .B(p0[5]), .Y(n109) );
  XNOR2X1 U84 ( .A(s1[1]), .B(p1[1]), .Y(n91) );
  XNOR2X1 U85 ( .A(s0[3]), .B(p0[3]), .Y(n103) );
  XNOR2X1 U86 ( .A(s3[3]), .B(p3[3]), .Y(n11) );
  XNOR2X1 U87 ( .A(s2[4]), .B(p2[4]), .Y(n28) );
  XNOR2X1 U88 ( .A(s3[5]), .B(p3[5]), .Y(n17) );
  XNOR2X1 U89 ( .A(s2[1]), .B(p2[1]), .Y(n23) );
  XNOR2X1 U90 ( .A(s3[2]), .B(p3[2]), .Y(n12) );
  XNOR2X1 U91 ( .A(s3[4]), .B(p3[4]), .Y(n18) );
  XNOR2X1 U92 ( .A(s3[1]), .B(p3[1]), .Y(n13) );
endmodule


module Pattern_String_Comparator_Cell_53 ( s7, s6, s5, s4, s3, s2, s1, s0, p7, 
        p6, p5, p4, p3, p2, p1, p0, check, match );
  input [7:0] s7;
  input [7:0] s6;
  input [7:0] s5;
  input [7:0] s4;
  input [7:0] s3;
  input [7:0] s2;
  input [7:0] s1;
  input [7:0] s0;
  input [7:0] p7;
  input [7:0] p6;
  input [7:0] p5;
  input [7:0] p4;
  input [7:0] p3;
  input [7:0] p2;
  input [7:0] p1;
  input [7:0] p0;
  input [7:0] check;
  output match;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30,
         n31, n32, n91, n92, n93, n94, n95, n96, n97, n98, n99, n100, n101,
         n102, n103, n104, n105, n106, n107, n108, n109, n110, n111, n112,
         n113, n114, n115, n116, n117, n118, n119, n120, n121, n122, n123,
         n124, n125, n126, n127, n128, n129, n130, n131, n132, n133, n134,
         n135, n136, n137, n138, n139, n140, n141, n142, n143, n144, n145,
         n146, n147, n148;

  NOR2X1 U2 ( .A(n148), .B(n147), .Y(match) );
  NAND4X1 U3 ( .A(n102), .B(n101), .C(n100), .D(n99), .Y(n148) );
  NAND4X1 U4 ( .A(n146), .B(n145), .C(n144), .D(n143), .Y(n147) );
  XNOR2X1 U5 ( .A(s7[7]), .B(p7[7]), .Y(n117) );
  OAI21XL U6 ( .A0(n122), .A1(n121), .B0(check[7]), .Y(n145) );
  NAND4X1 U7 ( .A(n116), .B(n115), .C(n114), .D(n113), .Y(n122) );
  NAND4X1 U8 ( .A(n120), .B(n119), .C(n118), .D(n117), .Y(n121) );
  XNOR2X1 U9 ( .A(s7[3]), .B(p7[3]), .Y(n113) );
  XNOR2X1 U10 ( .A(s7[6]), .B(p7[6]), .Y(n118) );
  XNOR2X1 U11 ( .A(s7[2]), .B(p7[2]), .Y(n114) );
  XNOR2X1 U12 ( .A(s7[5]), .B(p7[5]), .Y(n119) );
  XNOR2X1 U13 ( .A(s7[1]), .B(p7[1]), .Y(n115) );
  XNOR2X1 U14 ( .A(s7[0]), .B(p7[0]), .Y(n116) );
  XNOR2X1 U15 ( .A(s5[6]), .B(p5[6]), .Y(n138) );
  OAI21XL U16 ( .A0(n142), .A1(n141), .B0(check[5]), .Y(n143) );
  NAND4X1 U17 ( .A(n136), .B(n135), .C(n134), .D(n133), .Y(n142) );
  NAND4X1 U18 ( .A(n140), .B(n139), .C(n138), .D(n137), .Y(n141) );
  XNOR2X1 U19 ( .A(s5[0]), .B(p5[0]), .Y(n136) );
  XNOR2X1 U20 ( .A(s6[7]), .B(p6[7]), .Y(n127) );
  OAI21XL U21 ( .A0(n132), .A1(n131), .B0(check[6]), .Y(n144) );
  NAND4X1 U22 ( .A(n126), .B(n125), .C(n124), .D(n123), .Y(n132) );
  NAND4X1 U23 ( .A(n130), .B(n129), .C(n128), .D(n127), .Y(n131) );
  XNOR2X1 U24 ( .A(s6[0]), .B(p6[0]), .Y(n126) );
  XNOR2X1 U25 ( .A(s5[3]), .B(p5[3]), .Y(n133) );
  XNOR2X1 U26 ( .A(s5[5]), .B(p5[5]), .Y(n139) );
  XNOR2X1 U27 ( .A(s5[2]), .B(p5[2]), .Y(n134) );
  XNOR2X1 U28 ( .A(s5[4]), .B(p5[4]), .Y(n140) );
  XNOR2X1 U29 ( .A(s3[7]), .B(p3[7]), .Y(n15) );
  XNOR2X1 U30 ( .A(s5[1]), .B(p5[1]), .Y(n135) );
  OAI21XL U31 ( .A0(n20), .A1(n19), .B0(check[3]), .Y(n101) );
  NAND4X1 U32 ( .A(n14), .B(n13), .C(n12), .D(n11), .Y(n20) );
  NAND4X1 U33 ( .A(n18), .B(n17), .C(n16), .D(n15), .Y(n19) );
  XNOR2X1 U34 ( .A(s3[0]), .B(p3[0]), .Y(n14) );
  XNOR2X1 U35 ( .A(s4[7]), .B(p4[7]), .Y(n5) );
  OAI21XL U36 ( .A0(n10), .A1(n9), .B0(check[4]), .Y(n102) );
  NAND4X1 U37 ( .A(n4), .B(n3), .C(n2), .D(n1), .Y(n10) );
  NAND4X1 U38 ( .A(n8), .B(n7), .C(n6), .D(n5), .Y(n9) );
  XNOR2X1 U39 ( .A(s4[0]), .B(p4[0]), .Y(n4) );
  XNOR2X1 U40 ( .A(s4[6]), .B(p4[6]), .Y(n6) );
  XNOR2X1 U41 ( .A(s4[3]), .B(p4[3]), .Y(n1) );
  XNOR2X1 U42 ( .A(s4[5]), .B(p4[5]), .Y(n7) );
  XNOR2X1 U43 ( .A(s4[2]), .B(p4[2]), .Y(n2) );
  XNOR2X1 U44 ( .A(s4[4]), .B(p4[4]), .Y(n8) );
  XNOR2X1 U45 ( .A(s4[1]), .B(p4[1]), .Y(n3) );
  XNOR2X1 U46 ( .A(s0[2]), .B(p0[2]), .Y(n104) );
  OAI21XL U47 ( .A0(n112), .A1(n111), .B0(check[0]), .Y(n146) );
  NAND4X1 U48 ( .A(n110), .B(n109), .C(n108), .D(n107), .Y(n111) );
  NAND4X1 U49 ( .A(n106), .B(n105), .C(n104), .D(n103), .Y(n112) );
  XNOR2X1 U50 ( .A(s0[4]), .B(p0[4]), .Y(n110) );
  XNOR2X1 U51 ( .A(s7[4]), .B(p7[4]), .Y(n120) );
  XNOR2X1 U52 ( .A(s0[1]), .B(p0[1]), .Y(n105) );
  XNOR2X1 U53 ( .A(s5[7]), .B(p5[7]), .Y(n137) );
  XNOR2X1 U54 ( .A(s0[0]), .B(p0[0]), .Y(n106) );
  XNOR2X1 U55 ( .A(s1[7]), .B(p1[7]), .Y(n93) );
  OAI21XL U56 ( .A0(n98), .A1(n97), .B0(check[1]), .Y(n99) );
  NAND4X1 U57 ( .A(n92), .B(n91), .C(n32), .D(n31), .Y(n98) );
  NAND4X1 U58 ( .A(n96), .B(n95), .C(n94), .D(n93), .Y(n97) );
  XNOR2X1 U59 ( .A(s1[0]), .B(p1[0]), .Y(n92) );
  XNOR2X1 U60 ( .A(s6[6]), .B(p6[6]), .Y(n128) );
  XNOR2X1 U61 ( .A(s2[7]), .B(p2[7]), .Y(n25) );
  OAI21XL U62 ( .A0(n30), .A1(n29), .B0(check[2]), .Y(n100) );
  NAND4X1 U63 ( .A(n24), .B(n23), .C(n22), .D(n21), .Y(n30) );
  NAND4X1 U64 ( .A(n28), .B(n27), .C(n26), .D(n25), .Y(n29) );
  XNOR2X1 U65 ( .A(s2[0]), .B(p2[0]), .Y(n24) );
  XNOR2X1 U66 ( .A(s1[6]), .B(p1[6]), .Y(n94) );
  XNOR2X1 U67 ( .A(s6[3]), .B(p6[3]), .Y(n123) );
  XNOR2X1 U68 ( .A(s1[3]), .B(p1[3]), .Y(n31) );
  XNOR2X1 U69 ( .A(s2[6]), .B(p2[6]), .Y(n26) );
  XNOR2X1 U70 ( .A(s6[5]), .B(p6[5]), .Y(n129) );
  XNOR2X1 U71 ( .A(s0[7]), .B(p0[7]), .Y(n107) );
  XNOR2X1 U72 ( .A(s1[5]), .B(p1[5]), .Y(n95) );
  XNOR2X1 U73 ( .A(s6[2]), .B(p6[2]), .Y(n124) );
  XNOR2X1 U74 ( .A(s2[3]), .B(p2[3]), .Y(n21) );
  XNOR2X1 U75 ( .A(s1[2]), .B(p1[2]), .Y(n32) );
  XNOR2X1 U76 ( .A(s6[4]), .B(p6[4]), .Y(n130) );
  XNOR2X1 U77 ( .A(s1[4]), .B(p1[4]), .Y(n96) );
  XNOR2X1 U78 ( .A(s2[5]), .B(p2[5]), .Y(n27) );
  XNOR2X1 U79 ( .A(s0[6]), .B(p0[6]), .Y(n108) );
  XNOR2X1 U80 ( .A(s3[6]), .B(p3[6]), .Y(n16) );
  XNOR2X1 U81 ( .A(s2[2]), .B(p2[2]), .Y(n22) );
  XNOR2X1 U82 ( .A(s6[1]), .B(p6[1]), .Y(n125) );
  XNOR2X1 U83 ( .A(s0[5]), .B(p0[5]), .Y(n109) );
  XNOR2X1 U84 ( .A(s1[1]), .B(p1[1]), .Y(n91) );
  XNOR2X1 U85 ( .A(s0[3]), .B(p0[3]), .Y(n103) );
  XNOR2X1 U86 ( .A(s3[3]), .B(p3[3]), .Y(n11) );
  XNOR2X1 U87 ( .A(s2[4]), .B(p2[4]), .Y(n28) );
  XNOR2X1 U88 ( .A(s3[5]), .B(p3[5]), .Y(n17) );
  XNOR2X1 U89 ( .A(s2[1]), .B(p2[1]), .Y(n23) );
  XNOR2X1 U90 ( .A(s3[2]), .B(p3[2]), .Y(n12) );
  XNOR2X1 U91 ( .A(s3[4]), .B(p3[4]), .Y(n18) );
  XNOR2X1 U92 ( .A(s3[1]), .B(p3[1]), .Y(n13) );
endmodule


module Pattern_String_Comparator_Cell_52 ( s7, s6, s5, s4, s3, s2, s1, s0, p7, 
        p6, p5, p4, p3, p2, p1, p0, check, match );
  input [7:0] s7;
  input [7:0] s6;
  input [7:0] s5;
  input [7:0] s4;
  input [7:0] s3;
  input [7:0] s2;
  input [7:0] s1;
  input [7:0] s0;
  input [7:0] p7;
  input [7:0] p6;
  input [7:0] p5;
  input [7:0] p4;
  input [7:0] p3;
  input [7:0] p2;
  input [7:0] p1;
  input [7:0] p0;
  input [7:0] check;
  output match;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30,
         n31, n32, n91, n92, n93, n94, n95, n96, n97, n98, n99, n100, n101,
         n102, n103, n104, n105, n106, n107, n108, n109, n110, n111, n112,
         n113, n114, n115, n116, n117, n118, n119, n120, n121, n122, n123,
         n124, n125, n126, n127, n128, n129, n130, n131, n132, n133, n134,
         n135, n136, n137, n138, n139, n140, n141, n142, n143, n144, n145,
         n146, n147, n148;

  NOR2X1 U2 ( .A(n148), .B(n147), .Y(match) );
  NAND4X1 U3 ( .A(n102), .B(n101), .C(n100), .D(n99), .Y(n148) );
  NAND4X1 U4 ( .A(n146), .B(n145), .C(n144), .D(n143), .Y(n147) );
  XNOR2X1 U5 ( .A(s7[7]), .B(p7[7]), .Y(n117) );
  OAI21XL U6 ( .A0(n122), .A1(n121), .B0(check[7]), .Y(n145) );
  NAND4X1 U7 ( .A(n116), .B(n115), .C(n114), .D(n113), .Y(n122) );
  NAND4X1 U8 ( .A(n120), .B(n119), .C(n118), .D(n117), .Y(n121) );
  XNOR2X1 U9 ( .A(s7[3]), .B(p7[3]), .Y(n113) );
  XNOR2X1 U10 ( .A(s7[6]), .B(p7[6]), .Y(n118) );
  XNOR2X1 U11 ( .A(s7[2]), .B(p7[2]), .Y(n114) );
  XNOR2X1 U12 ( .A(s7[5]), .B(p7[5]), .Y(n119) );
  XNOR2X1 U13 ( .A(s7[1]), .B(p7[1]), .Y(n115) );
  XNOR2X1 U14 ( .A(s7[0]), .B(p7[0]), .Y(n116) );
  XNOR2X1 U15 ( .A(s5[6]), .B(p5[6]), .Y(n138) );
  OAI21XL U16 ( .A0(n142), .A1(n141), .B0(check[5]), .Y(n143) );
  NAND4X1 U17 ( .A(n136), .B(n135), .C(n134), .D(n133), .Y(n142) );
  NAND4X1 U18 ( .A(n140), .B(n139), .C(n138), .D(n137), .Y(n141) );
  XNOR2X1 U19 ( .A(s5[0]), .B(p5[0]), .Y(n136) );
  XNOR2X1 U20 ( .A(s6[7]), .B(p6[7]), .Y(n127) );
  OAI21XL U21 ( .A0(n132), .A1(n131), .B0(check[6]), .Y(n144) );
  NAND4X1 U22 ( .A(n126), .B(n125), .C(n124), .D(n123), .Y(n132) );
  NAND4X1 U23 ( .A(n130), .B(n129), .C(n128), .D(n127), .Y(n131) );
  XNOR2X1 U24 ( .A(s6[0]), .B(p6[0]), .Y(n126) );
  XNOR2X1 U25 ( .A(s5[3]), .B(p5[3]), .Y(n133) );
  XNOR2X1 U26 ( .A(s5[5]), .B(p5[5]), .Y(n139) );
  XNOR2X1 U27 ( .A(s5[2]), .B(p5[2]), .Y(n134) );
  XNOR2X1 U28 ( .A(s5[4]), .B(p5[4]), .Y(n140) );
  XNOR2X1 U29 ( .A(s3[7]), .B(p3[7]), .Y(n15) );
  OAI21XL U30 ( .A0(n20), .A1(n19), .B0(check[3]), .Y(n101) );
  NAND4X1 U31 ( .A(n14), .B(n13), .C(n12), .D(n11), .Y(n20) );
  NAND4X1 U32 ( .A(n18), .B(n17), .C(n16), .D(n15), .Y(n19) );
  XNOR2X1 U33 ( .A(s3[0]), .B(p3[0]), .Y(n14) );
  XNOR2X1 U34 ( .A(s5[1]), .B(p5[1]), .Y(n135) );
  XNOR2X1 U35 ( .A(s4[7]), .B(p4[7]), .Y(n5) );
  OAI21XL U36 ( .A0(n10), .A1(n9), .B0(check[4]), .Y(n102) );
  NAND4X1 U37 ( .A(n4), .B(n3), .C(n2), .D(n1), .Y(n10) );
  NAND4X1 U38 ( .A(n8), .B(n7), .C(n6), .D(n5), .Y(n9) );
  XNOR2X1 U39 ( .A(s4[0]), .B(p4[0]), .Y(n4) );
  XNOR2X1 U40 ( .A(s4[6]), .B(p4[6]), .Y(n6) );
  XNOR2X1 U41 ( .A(s4[3]), .B(p4[3]), .Y(n1) );
  XNOR2X1 U42 ( .A(s4[5]), .B(p4[5]), .Y(n7) );
  XNOR2X1 U43 ( .A(s4[2]), .B(p4[2]), .Y(n2) );
  XNOR2X1 U44 ( .A(s4[4]), .B(p4[4]), .Y(n8) );
  XNOR2X1 U45 ( .A(s4[1]), .B(p4[1]), .Y(n3) );
  XNOR2X1 U46 ( .A(s0[2]), .B(p0[2]), .Y(n104) );
  OAI21XL U47 ( .A0(n112), .A1(n111), .B0(check[0]), .Y(n146) );
  NAND4X1 U48 ( .A(n110), .B(n109), .C(n108), .D(n107), .Y(n111) );
  NAND4X1 U49 ( .A(n106), .B(n105), .C(n104), .D(n103), .Y(n112) );
  XNOR2X1 U50 ( .A(s0[4]), .B(p0[4]), .Y(n110) );
  XNOR2X1 U51 ( .A(s7[4]), .B(p7[4]), .Y(n120) );
  XNOR2X1 U52 ( .A(s0[1]), .B(p0[1]), .Y(n105) );
  XNOR2X1 U53 ( .A(s5[7]), .B(p5[7]), .Y(n137) );
  XNOR2X1 U54 ( .A(s0[0]), .B(p0[0]), .Y(n106) );
  XNOR2X1 U55 ( .A(s1[7]), .B(p1[7]), .Y(n93) );
  OAI21XL U56 ( .A0(n98), .A1(n97), .B0(check[1]), .Y(n99) );
  NAND4X1 U57 ( .A(n92), .B(n91), .C(n32), .D(n31), .Y(n98) );
  NAND4X1 U58 ( .A(n96), .B(n95), .C(n94), .D(n93), .Y(n97) );
  XNOR2X1 U59 ( .A(s1[0]), .B(p1[0]), .Y(n92) );
  XNOR2X1 U60 ( .A(s6[6]), .B(p6[6]), .Y(n128) );
  XNOR2X1 U61 ( .A(s2[7]), .B(p2[7]), .Y(n25) );
  OAI21XL U62 ( .A0(n30), .A1(n29), .B0(check[2]), .Y(n100) );
  NAND4X1 U63 ( .A(n24), .B(n23), .C(n22), .D(n21), .Y(n30) );
  NAND4X1 U64 ( .A(n28), .B(n27), .C(n26), .D(n25), .Y(n29) );
  XNOR2X1 U65 ( .A(s2[0]), .B(p2[0]), .Y(n24) );
  XNOR2X1 U66 ( .A(s1[6]), .B(p1[6]), .Y(n94) );
  XNOR2X1 U67 ( .A(s6[3]), .B(p6[3]), .Y(n123) );
  XNOR2X1 U68 ( .A(s1[3]), .B(p1[3]), .Y(n31) );
  XNOR2X1 U69 ( .A(s2[6]), .B(p2[6]), .Y(n26) );
  XNOR2X1 U70 ( .A(s6[5]), .B(p6[5]), .Y(n129) );
  XNOR2X1 U71 ( .A(s0[7]), .B(p0[7]), .Y(n107) );
  XNOR2X1 U72 ( .A(s1[5]), .B(p1[5]), .Y(n95) );
  XNOR2X1 U73 ( .A(s6[2]), .B(p6[2]), .Y(n124) );
  XNOR2X1 U74 ( .A(s2[3]), .B(p2[3]), .Y(n21) );
  XNOR2X1 U75 ( .A(s1[2]), .B(p1[2]), .Y(n32) );
  XNOR2X1 U76 ( .A(s6[4]), .B(p6[4]), .Y(n130) );
  XNOR2X1 U77 ( .A(s1[4]), .B(p1[4]), .Y(n96) );
  XNOR2X1 U78 ( .A(s2[5]), .B(p2[5]), .Y(n27) );
  XNOR2X1 U79 ( .A(s0[6]), .B(p0[6]), .Y(n108) );
  XNOR2X1 U80 ( .A(s3[6]), .B(p3[6]), .Y(n16) );
  XNOR2X1 U81 ( .A(s2[2]), .B(p2[2]), .Y(n22) );
  XNOR2X1 U82 ( .A(s6[1]), .B(p6[1]), .Y(n125) );
  XNOR2X1 U83 ( .A(s0[5]), .B(p0[5]), .Y(n109) );
  XNOR2X1 U84 ( .A(s1[1]), .B(p1[1]), .Y(n91) );
  XNOR2X1 U85 ( .A(s0[3]), .B(p0[3]), .Y(n103) );
  XNOR2X1 U86 ( .A(s3[3]), .B(p3[3]), .Y(n11) );
  XNOR2X1 U87 ( .A(s2[4]), .B(p2[4]), .Y(n28) );
  XNOR2X1 U88 ( .A(s3[5]), .B(p3[5]), .Y(n17) );
  XNOR2X1 U89 ( .A(s2[1]), .B(p2[1]), .Y(n23) );
  XNOR2X1 U90 ( .A(s3[2]), .B(p3[2]), .Y(n12) );
  XNOR2X1 U91 ( .A(s3[4]), .B(p3[4]), .Y(n18) );
  XNOR2X1 U92 ( .A(s3[1]), .B(p3[1]), .Y(n13) );
endmodule


module Pattern_String_Comparator_Cell_51 ( s7, s6, s5, s4, s3, s2, s1, s0, p7, 
        p6, p5, p4, p3, p2, p1, p0, check, match );
  input [7:0] s7;
  input [7:0] s6;
  input [7:0] s5;
  input [7:0] s4;
  input [7:0] s3;
  input [7:0] s2;
  input [7:0] s1;
  input [7:0] s0;
  input [7:0] p7;
  input [7:0] p6;
  input [7:0] p5;
  input [7:0] p4;
  input [7:0] p3;
  input [7:0] p2;
  input [7:0] p1;
  input [7:0] p0;
  input [7:0] check;
  output match;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30,
         n31, n32, n91, n92, n93, n94, n95, n96, n97, n98, n99, n100, n101,
         n102, n103, n104, n105, n106, n107, n108, n109, n110, n111, n112,
         n113, n114, n115, n116, n117, n118, n119, n120, n121, n122, n123,
         n124, n125, n126, n127, n128, n129, n130, n131, n132, n133, n134,
         n135, n136, n137, n138, n139, n140, n141, n142, n143, n144, n145,
         n146, n147, n148;

  NOR2X1 U2 ( .A(n148), .B(n147), .Y(match) );
  NAND4X1 U3 ( .A(n102), .B(n101), .C(n100), .D(n99), .Y(n148) );
  NAND4X1 U4 ( .A(n146), .B(n145), .C(n144), .D(n143), .Y(n147) );
  XNOR2X1 U5 ( .A(s7[7]), .B(p7[7]), .Y(n117) );
  OAI21XL U6 ( .A0(n122), .A1(n121), .B0(check[7]), .Y(n145) );
  NAND4X1 U7 ( .A(n116), .B(n115), .C(n114), .D(n113), .Y(n122) );
  NAND4X1 U8 ( .A(n120), .B(n119), .C(n118), .D(n117), .Y(n121) );
  XNOR2X1 U9 ( .A(s7[3]), .B(p7[3]), .Y(n113) );
  XNOR2X1 U10 ( .A(s7[6]), .B(p7[6]), .Y(n118) );
  XNOR2X1 U11 ( .A(s7[2]), .B(p7[2]), .Y(n114) );
  XNOR2X1 U12 ( .A(s7[5]), .B(p7[5]), .Y(n119) );
  XNOR2X1 U13 ( .A(s7[1]), .B(p7[1]), .Y(n115) );
  XNOR2X1 U14 ( .A(s7[0]), .B(p7[0]), .Y(n116) );
  XNOR2X1 U15 ( .A(s5[6]), .B(p5[6]), .Y(n138) );
  OAI21XL U16 ( .A0(n142), .A1(n141), .B0(check[5]), .Y(n143) );
  NAND4X1 U17 ( .A(n136), .B(n135), .C(n134), .D(n133), .Y(n142) );
  NAND4X1 U18 ( .A(n140), .B(n139), .C(n138), .D(n137), .Y(n141) );
  XNOR2X1 U19 ( .A(s5[0]), .B(p5[0]), .Y(n136) );
  XNOR2X1 U20 ( .A(s6[7]), .B(p6[7]), .Y(n127) );
  OAI21XL U21 ( .A0(n132), .A1(n131), .B0(check[6]), .Y(n144) );
  NAND4X1 U22 ( .A(n126), .B(n125), .C(n124), .D(n123), .Y(n132) );
  NAND4X1 U23 ( .A(n130), .B(n129), .C(n128), .D(n127), .Y(n131) );
  XNOR2X1 U24 ( .A(s6[0]), .B(p6[0]), .Y(n126) );
  XNOR2X1 U25 ( .A(s5[3]), .B(p5[3]), .Y(n133) );
  XNOR2X1 U26 ( .A(s5[5]), .B(p5[5]), .Y(n139) );
  XNOR2X1 U27 ( .A(s5[2]), .B(p5[2]), .Y(n134) );
  XNOR2X1 U28 ( .A(s5[4]), .B(p5[4]), .Y(n140) );
  XNOR2X1 U29 ( .A(s3[7]), .B(p3[7]), .Y(n15) );
  XNOR2X1 U30 ( .A(s5[1]), .B(p5[1]), .Y(n135) );
  OAI21XL U31 ( .A0(n20), .A1(n19), .B0(check[3]), .Y(n101) );
  NAND4X1 U32 ( .A(n14), .B(n13), .C(n12), .D(n11), .Y(n20) );
  NAND4X1 U33 ( .A(n18), .B(n17), .C(n16), .D(n15), .Y(n19) );
  XNOR2X1 U34 ( .A(s3[0]), .B(p3[0]), .Y(n14) );
  XNOR2X1 U35 ( .A(s4[7]), .B(p4[7]), .Y(n5) );
  OAI21XL U36 ( .A0(n10), .A1(n9), .B0(check[4]), .Y(n102) );
  NAND4X1 U37 ( .A(n4), .B(n3), .C(n2), .D(n1), .Y(n10) );
  NAND4X1 U38 ( .A(n8), .B(n7), .C(n6), .D(n5), .Y(n9) );
  XNOR2X1 U39 ( .A(s4[0]), .B(p4[0]), .Y(n4) );
  XNOR2X1 U40 ( .A(s4[6]), .B(p4[6]), .Y(n6) );
  XNOR2X1 U41 ( .A(s4[3]), .B(p4[3]), .Y(n1) );
  XNOR2X1 U42 ( .A(s4[5]), .B(p4[5]), .Y(n7) );
  XNOR2X1 U43 ( .A(s4[2]), .B(p4[2]), .Y(n2) );
  XNOR2X1 U44 ( .A(s4[4]), .B(p4[4]), .Y(n8) );
  XNOR2X1 U45 ( .A(s4[1]), .B(p4[1]), .Y(n3) );
  XNOR2X1 U46 ( .A(s0[2]), .B(p0[2]), .Y(n104) );
  OAI21XL U47 ( .A0(n112), .A1(n111), .B0(check[0]), .Y(n146) );
  NAND4X1 U48 ( .A(n110), .B(n109), .C(n108), .D(n107), .Y(n111) );
  NAND4X1 U49 ( .A(n106), .B(n105), .C(n104), .D(n103), .Y(n112) );
  XNOR2X1 U50 ( .A(s0[4]), .B(p0[4]), .Y(n110) );
  XNOR2X1 U51 ( .A(s7[4]), .B(p7[4]), .Y(n120) );
  XNOR2X1 U52 ( .A(s0[1]), .B(p0[1]), .Y(n105) );
  XNOR2X1 U53 ( .A(s5[7]), .B(p5[7]), .Y(n137) );
  XNOR2X1 U54 ( .A(s0[0]), .B(p0[0]), .Y(n106) );
  XNOR2X1 U55 ( .A(s1[7]), .B(p1[7]), .Y(n93) );
  OAI21XL U56 ( .A0(n98), .A1(n97), .B0(check[1]), .Y(n99) );
  NAND4X1 U57 ( .A(n92), .B(n91), .C(n32), .D(n31), .Y(n98) );
  NAND4X1 U58 ( .A(n96), .B(n95), .C(n94), .D(n93), .Y(n97) );
  XNOR2X1 U59 ( .A(s1[0]), .B(p1[0]), .Y(n92) );
  XNOR2X1 U60 ( .A(s6[6]), .B(p6[6]), .Y(n128) );
  XNOR2X1 U61 ( .A(s2[7]), .B(p2[7]), .Y(n25) );
  OAI21XL U62 ( .A0(n30), .A1(n29), .B0(check[2]), .Y(n100) );
  NAND4X1 U63 ( .A(n24), .B(n23), .C(n22), .D(n21), .Y(n30) );
  NAND4X1 U64 ( .A(n28), .B(n27), .C(n26), .D(n25), .Y(n29) );
  XNOR2X1 U65 ( .A(s2[0]), .B(p2[0]), .Y(n24) );
  XNOR2X1 U66 ( .A(s1[6]), .B(p1[6]), .Y(n94) );
  XNOR2X1 U67 ( .A(s6[3]), .B(p6[3]), .Y(n123) );
  XNOR2X1 U68 ( .A(s1[3]), .B(p1[3]), .Y(n31) );
  XNOR2X1 U69 ( .A(s2[6]), .B(p2[6]), .Y(n26) );
  XNOR2X1 U70 ( .A(s6[5]), .B(p6[5]), .Y(n129) );
  XNOR2X1 U71 ( .A(s0[7]), .B(p0[7]), .Y(n107) );
  XNOR2X1 U72 ( .A(s1[5]), .B(p1[5]), .Y(n95) );
  XNOR2X1 U73 ( .A(s6[2]), .B(p6[2]), .Y(n124) );
  XNOR2X1 U74 ( .A(s2[3]), .B(p2[3]), .Y(n21) );
  XNOR2X1 U75 ( .A(s1[2]), .B(p1[2]), .Y(n32) );
  XNOR2X1 U76 ( .A(s6[4]), .B(p6[4]), .Y(n130) );
  XNOR2X1 U77 ( .A(s1[4]), .B(p1[4]), .Y(n96) );
  XNOR2X1 U78 ( .A(s2[5]), .B(p2[5]), .Y(n27) );
  XNOR2X1 U79 ( .A(s0[6]), .B(p0[6]), .Y(n108) );
  XNOR2X1 U80 ( .A(s3[6]), .B(p3[6]), .Y(n16) );
  XNOR2X1 U81 ( .A(s2[2]), .B(p2[2]), .Y(n22) );
  XNOR2X1 U82 ( .A(s6[1]), .B(p6[1]), .Y(n125) );
  XNOR2X1 U83 ( .A(s0[5]), .B(p0[5]), .Y(n109) );
  XNOR2X1 U84 ( .A(s1[1]), .B(p1[1]), .Y(n91) );
  XNOR2X1 U85 ( .A(s0[3]), .B(p0[3]), .Y(n103) );
  XNOR2X1 U86 ( .A(s3[3]), .B(p3[3]), .Y(n11) );
  XNOR2X1 U87 ( .A(s2[4]), .B(p2[4]), .Y(n28) );
  XNOR2X1 U88 ( .A(s3[5]), .B(p3[5]), .Y(n17) );
  XNOR2X1 U89 ( .A(s2[1]), .B(p2[1]), .Y(n23) );
  XNOR2X1 U90 ( .A(s3[2]), .B(p3[2]), .Y(n12) );
  XNOR2X1 U91 ( .A(s3[4]), .B(p3[4]), .Y(n18) );
  XNOR2X1 U92 ( .A(s3[1]), .B(p3[1]), .Y(n13) );
endmodule


module Pattern_String_Comparator_Cell_50 ( s7, s6, s5, s4, s3, s2, s1, s0, p7, 
        p6, p5, p4, p3, p2, p1, p0, check, match );
  input [7:0] s7;
  input [7:0] s6;
  input [7:0] s5;
  input [7:0] s4;
  input [7:0] s3;
  input [7:0] s2;
  input [7:0] s1;
  input [7:0] s0;
  input [7:0] p7;
  input [7:0] p6;
  input [7:0] p5;
  input [7:0] p4;
  input [7:0] p3;
  input [7:0] p2;
  input [7:0] p1;
  input [7:0] p0;
  input [7:0] check;
  output match;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30,
         n31, n32, n91, n92, n93, n94, n95, n96, n97, n98, n99, n100, n101,
         n102, n103, n104, n105, n106, n107, n108, n109, n110, n111, n112,
         n113, n114, n115, n116, n117, n118, n119, n120, n121, n122, n123,
         n124, n125, n126, n127, n128, n129, n130, n131, n132, n133, n134,
         n135, n136, n137, n138, n139, n140, n141, n142, n143, n144, n145,
         n146, n147, n148;

  NOR2X1 U2 ( .A(n148), .B(n147), .Y(match) );
  NAND4X1 U3 ( .A(n102), .B(n101), .C(n100), .D(n99), .Y(n148) );
  NAND4X1 U4 ( .A(n146), .B(n145), .C(n144), .D(n143), .Y(n147) );
  OAI21XL U5 ( .A0(n30), .A1(n29), .B0(check[2]), .Y(n100) );
  XNOR2X1 U6 ( .A(s7[7]), .B(p7[7]), .Y(n117) );
  OAI21XL U7 ( .A0(n122), .A1(n121), .B0(check[7]), .Y(n145) );
  NAND4X1 U8 ( .A(n116), .B(n115), .C(n114), .D(n113), .Y(n122) );
  NAND4X1 U9 ( .A(n120), .B(n119), .C(n118), .D(n117), .Y(n121) );
  XNOR2X1 U10 ( .A(s7[3]), .B(p7[3]), .Y(n113) );
  XNOR2X1 U11 ( .A(s7[6]), .B(p7[6]), .Y(n118) );
  XNOR2X1 U12 ( .A(s7[2]), .B(p7[2]), .Y(n114) );
  XNOR2X1 U13 ( .A(s7[5]), .B(p7[5]), .Y(n119) );
  XNOR2X1 U14 ( .A(s7[1]), .B(p7[1]), .Y(n115) );
  XNOR2X1 U15 ( .A(s7[0]), .B(p7[0]), .Y(n116) );
  XNOR2X1 U16 ( .A(s5[6]), .B(p5[6]), .Y(n138) );
  OAI21XL U17 ( .A0(n142), .A1(n141), .B0(check[5]), .Y(n143) );
  NAND4X1 U18 ( .A(n136), .B(n135), .C(n134), .D(n133), .Y(n142) );
  NAND4X1 U19 ( .A(n140), .B(n139), .C(n138), .D(n137), .Y(n141) );
  XNOR2X1 U20 ( .A(s5[0]), .B(p5[0]), .Y(n136) );
  XNOR2X1 U21 ( .A(s6[7]), .B(p6[7]), .Y(n127) );
  OAI21XL U22 ( .A0(n132), .A1(n131), .B0(check[6]), .Y(n144) );
  NAND4X1 U23 ( .A(n126), .B(n125), .C(n124), .D(n123), .Y(n132) );
  NAND4X1 U24 ( .A(n130), .B(n129), .C(n128), .D(n127), .Y(n131) );
  XNOR2X1 U25 ( .A(s6[0]), .B(p6[0]), .Y(n126) );
  XNOR2X1 U26 ( .A(s5[3]), .B(p5[3]), .Y(n133) );
  XNOR2X1 U27 ( .A(s5[5]), .B(p5[5]), .Y(n139) );
  XNOR2X1 U28 ( .A(s5[2]), .B(p5[2]), .Y(n134) );
  XNOR2X1 U29 ( .A(s5[4]), .B(p5[4]), .Y(n140) );
  XNOR2X1 U30 ( .A(s5[1]), .B(p5[1]), .Y(n135) );
  XNOR2X1 U31 ( .A(s3[7]), .B(p3[7]), .Y(n15) );
  OAI21XL U32 ( .A0(n20), .A1(n19), .B0(check[3]), .Y(n101) );
  NAND4X1 U33 ( .A(n14), .B(n13), .C(n12), .D(n11), .Y(n20) );
  NAND4X1 U34 ( .A(n18), .B(n17), .C(n16), .D(n15), .Y(n19) );
  XNOR2X1 U35 ( .A(s3[0]), .B(p3[0]), .Y(n14) );
  XNOR2X1 U36 ( .A(s4[7]), .B(p4[7]), .Y(n5) );
  OAI21XL U37 ( .A0(n10), .A1(n9), .B0(check[4]), .Y(n102) );
  NAND4X1 U38 ( .A(n4), .B(n3), .C(n2), .D(n1), .Y(n10) );
  NAND4X1 U39 ( .A(n8), .B(n7), .C(n6), .D(n5), .Y(n9) );
  XNOR2X1 U40 ( .A(s4[0]), .B(p4[0]), .Y(n4) );
  XNOR2X1 U41 ( .A(s4[6]), .B(p4[6]), .Y(n6) );
  XNOR2X1 U42 ( .A(s4[3]), .B(p4[3]), .Y(n1) );
  XNOR2X1 U43 ( .A(s4[5]), .B(p4[5]), .Y(n7) );
  XNOR2X1 U44 ( .A(s4[2]), .B(p4[2]), .Y(n2) );
  XNOR2X1 U45 ( .A(s4[4]), .B(p4[4]), .Y(n8) );
  XNOR2X1 U46 ( .A(s4[1]), .B(p4[1]), .Y(n3) );
  XNOR2X1 U47 ( .A(s0[2]), .B(p0[2]), .Y(n104) );
  OAI21XL U48 ( .A0(n112), .A1(n111), .B0(check[0]), .Y(n146) );
  NAND4X1 U49 ( .A(n110), .B(n109), .C(n108), .D(n107), .Y(n111) );
  NAND4X1 U50 ( .A(n106), .B(n105), .C(n104), .D(n103), .Y(n112) );
  XNOR2X1 U51 ( .A(s0[4]), .B(p0[4]), .Y(n110) );
  XNOR2X1 U52 ( .A(s7[4]), .B(p7[4]), .Y(n120) );
  XNOR2X1 U53 ( .A(s0[1]), .B(p0[1]), .Y(n105) );
  XNOR2X1 U54 ( .A(s5[7]), .B(p5[7]), .Y(n137) );
  XNOR2X1 U55 ( .A(s0[0]), .B(p0[0]), .Y(n106) );
  XNOR2X1 U56 ( .A(s1[7]), .B(p1[7]), .Y(n93) );
  OAI21XL U57 ( .A0(n98), .A1(n97), .B0(check[1]), .Y(n99) );
  NAND4X1 U58 ( .A(n92), .B(n91), .C(n32), .D(n31), .Y(n98) );
  NAND4X1 U59 ( .A(n96), .B(n95), .C(n94), .D(n93), .Y(n97) );
  XNOR2X1 U60 ( .A(s1[0]), .B(p1[0]), .Y(n92) );
  XNOR2X1 U61 ( .A(s6[6]), .B(p6[6]), .Y(n128) );
  XNOR2X1 U62 ( .A(s2[7]), .B(p2[7]), .Y(n25) );
  XNOR2X1 U63 ( .A(s1[6]), .B(p1[6]), .Y(n94) );
  NAND4X1 U64 ( .A(n28), .B(n27), .C(n26), .D(n25), .Y(n29) );
  XNOR2X1 U65 ( .A(s2[4]), .B(p2[4]), .Y(n28) );
  XNOR2X1 U66 ( .A(s2[5]), .B(p2[5]), .Y(n27) );
  XNOR2X1 U67 ( .A(s2[6]), .B(p2[6]), .Y(n26) );
  XNOR2X1 U68 ( .A(s6[3]), .B(p6[3]), .Y(n123) );
  XNOR2X1 U69 ( .A(s1[3]), .B(p1[3]), .Y(n31) );
  XNOR2X1 U70 ( .A(s6[5]), .B(p6[5]), .Y(n129) );
  XNOR2X1 U71 ( .A(s0[7]), .B(p0[7]), .Y(n107) );
  XNOR2X1 U72 ( .A(s1[5]), .B(p1[5]), .Y(n95) );
  XNOR2X1 U73 ( .A(s6[2]), .B(p6[2]), .Y(n124) );
  XNOR2X1 U74 ( .A(s2[3]), .B(p2[3]), .Y(n21) );
  XNOR2X1 U75 ( .A(s1[2]), .B(p1[2]), .Y(n32) );
  NAND4X1 U76 ( .A(n24), .B(n23), .C(n22), .D(n21), .Y(n30) );
  XNOR2X1 U77 ( .A(s2[0]), .B(p2[0]), .Y(n24) );
  XNOR2X1 U78 ( .A(s2[1]), .B(p2[1]), .Y(n23) );
  XNOR2X1 U79 ( .A(s2[2]), .B(p2[2]), .Y(n22) );
  XNOR2X1 U80 ( .A(s6[4]), .B(p6[4]), .Y(n130) );
  XNOR2X1 U81 ( .A(s0[6]), .B(p0[6]), .Y(n108) );
  XNOR2X1 U82 ( .A(s1[4]), .B(p1[4]), .Y(n96) );
  XNOR2X1 U83 ( .A(s3[6]), .B(p3[6]), .Y(n16) );
  XNOR2X1 U84 ( .A(s6[1]), .B(p6[1]), .Y(n125) );
  XNOR2X1 U85 ( .A(s0[5]), .B(p0[5]), .Y(n109) );
  XNOR2X1 U86 ( .A(s0[3]), .B(p0[3]), .Y(n103) );
  XNOR2X1 U87 ( .A(s1[1]), .B(p1[1]), .Y(n91) );
  XNOR2X1 U88 ( .A(s3[3]), .B(p3[3]), .Y(n11) );
  XNOR2X1 U89 ( .A(s3[5]), .B(p3[5]), .Y(n17) );
  XNOR2X1 U90 ( .A(s3[2]), .B(p3[2]), .Y(n12) );
  XNOR2X1 U91 ( .A(s3[4]), .B(p3[4]), .Y(n18) );
  XNOR2X1 U92 ( .A(s3[1]), .B(p3[1]), .Y(n13) );
endmodule


module Pattern_String_Comparator_Cell_49 ( s7, s6, s5, s4, s3, s2, s1, s0, p7, 
        p6, p5, p4, p3, p2, p1, p0, check, match );
  input [7:0] s7;
  input [7:0] s6;
  input [7:0] s5;
  input [7:0] s4;
  input [7:0] s3;
  input [7:0] s2;
  input [7:0] s1;
  input [7:0] s0;
  input [7:0] p7;
  input [7:0] p6;
  input [7:0] p5;
  input [7:0] p4;
  input [7:0] p3;
  input [7:0] p2;
  input [7:0] p1;
  input [7:0] p0;
  input [7:0] check;
  output match;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30,
         n31, n32, n91, n92, n93, n94, n95, n96, n97, n98, n99, n100, n101,
         n102, n103, n104, n105, n106, n107, n108, n109, n110, n111, n112,
         n113, n114, n115, n116, n117, n118, n119, n120, n121, n122, n123,
         n124, n125, n126, n127, n128, n129, n130, n131, n132, n133, n134,
         n135, n136, n137, n138, n139, n140, n141, n142, n143, n144, n145,
         n146, n147, n148;

  NOR2X1 U2 ( .A(n148), .B(n147), .Y(match) );
  NAND4X1 U3 ( .A(n102), .B(n101), .C(n100), .D(n99), .Y(n148) );
  NAND4X1 U4 ( .A(n146), .B(n145), .C(n144), .D(n143), .Y(n147) );
  OAI21XL U5 ( .A0(n30), .A1(n29), .B0(check[2]), .Y(n100) );
  XNOR2X1 U6 ( .A(s7[7]), .B(p7[7]), .Y(n117) );
  OAI21XL U7 ( .A0(n122), .A1(n121), .B0(check[7]), .Y(n145) );
  NAND4X1 U8 ( .A(n116), .B(n115), .C(n114), .D(n113), .Y(n122) );
  NAND4X1 U9 ( .A(n120), .B(n119), .C(n118), .D(n117), .Y(n121) );
  XNOR2X1 U10 ( .A(s7[3]), .B(p7[3]), .Y(n113) );
  XNOR2X1 U11 ( .A(s7[6]), .B(p7[6]), .Y(n118) );
  XNOR2X1 U12 ( .A(s7[2]), .B(p7[2]), .Y(n114) );
  XNOR2X1 U13 ( .A(s7[5]), .B(p7[5]), .Y(n119) );
  XNOR2X1 U14 ( .A(s7[1]), .B(p7[1]), .Y(n115) );
  XNOR2X1 U15 ( .A(s7[0]), .B(p7[0]), .Y(n116) );
  XNOR2X1 U16 ( .A(s5[6]), .B(p5[6]), .Y(n138) );
  OAI21XL U17 ( .A0(n142), .A1(n141), .B0(check[5]), .Y(n143) );
  NAND4X1 U18 ( .A(n136), .B(n135), .C(n134), .D(n133), .Y(n142) );
  NAND4X1 U19 ( .A(n140), .B(n139), .C(n138), .D(n137), .Y(n141) );
  XNOR2X1 U20 ( .A(s5[0]), .B(p5[0]), .Y(n136) );
  XNOR2X1 U21 ( .A(s6[7]), .B(p6[7]), .Y(n127) );
  OAI21XL U22 ( .A0(n132), .A1(n131), .B0(check[6]), .Y(n144) );
  NAND4X1 U23 ( .A(n126), .B(n125), .C(n124), .D(n123), .Y(n132) );
  NAND4X1 U24 ( .A(n130), .B(n129), .C(n128), .D(n127), .Y(n131) );
  XNOR2X1 U25 ( .A(s6[0]), .B(p6[0]), .Y(n126) );
  XNOR2X1 U26 ( .A(s5[3]), .B(p5[3]), .Y(n133) );
  XNOR2X1 U27 ( .A(s5[5]), .B(p5[5]), .Y(n139) );
  XNOR2X1 U28 ( .A(s5[2]), .B(p5[2]), .Y(n134) );
  XNOR2X1 U29 ( .A(s5[4]), .B(p5[4]), .Y(n140) );
  XNOR2X1 U30 ( .A(s5[1]), .B(p5[1]), .Y(n135) );
  XNOR2X1 U31 ( .A(s3[7]), .B(p3[7]), .Y(n15) );
  OAI21XL U32 ( .A0(n20), .A1(n19), .B0(check[3]), .Y(n101) );
  NAND4X1 U33 ( .A(n14), .B(n13), .C(n12), .D(n11), .Y(n20) );
  NAND4X1 U34 ( .A(n18), .B(n17), .C(n16), .D(n15), .Y(n19) );
  XNOR2X1 U35 ( .A(s3[0]), .B(p3[0]), .Y(n14) );
  XNOR2X1 U36 ( .A(s4[7]), .B(p4[7]), .Y(n5) );
  OAI21XL U37 ( .A0(n10), .A1(n9), .B0(check[4]), .Y(n102) );
  NAND4X1 U38 ( .A(n4), .B(n3), .C(n2), .D(n1), .Y(n10) );
  NAND4X1 U39 ( .A(n8), .B(n7), .C(n6), .D(n5), .Y(n9) );
  XNOR2X1 U40 ( .A(s4[0]), .B(p4[0]), .Y(n4) );
  XNOR2X1 U41 ( .A(s4[6]), .B(p4[6]), .Y(n6) );
  XNOR2X1 U42 ( .A(s4[3]), .B(p4[3]), .Y(n1) );
  XNOR2X1 U43 ( .A(s4[5]), .B(p4[5]), .Y(n7) );
  XNOR2X1 U44 ( .A(s4[2]), .B(p4[2]), .Y(n2) );
  XNOR2X1 U45 ( .A(s4[4]), .B(p4[4]), .Y(n8) );
  XNOR2X1 U46 ( .A(s4[1]), .B(p4[1]), .Y(n3) );
  XNOR2X1 U47 ( .A(s0[2]), .B(p0[2]), .Y(n104) );
  OAI21XL U48 ( .A0(n112), .A1(n111), .B0(check[0]), .Y(n146) );
  NAND4X1 U49 ( .A(n110), .B(n109), .C(n108), .D(n107), .Y(n111) );
  NAND4X1 U50 ( .A(n106), .B(n105), .C(n104), .D(n103), .Y(n112) );
  XNOR2X1 U51 ( .A(s0[4]), .B(p0[4]), .Y(n110) );
  XNOR2X1 U52 ( .A(s7[4]), .B(p7[4]), .Y(n120) );
  XNOR2X1 U53 ( .A(s0[1]), .B(p0[1]), .Y(n105) );
  XNOR2X1 U54 ( .A(s5[7]), .B(p5[7]), .Y(n137) );
  XNOR2X1 U55 ( .A(s0[0]), .B(p0[0]), .Y(n106) );
  XNOR2X1 U56 ( .A(s1[7]), .B(p1[7]), .Y(n93) );
  OAI21XL U57 ( .A0(n98), .A1(n97), .B0(check[1]), .Y(n99) );
  NAND4X1 U58 ( .A(n92), .B(n91), .C(n32), .D(n31), .Y(n98) );
  NAND4X1 U59 ( .A(n96), .B(n95), .C(n94), .D(n93), .Y(n97) );
  XNOR2X1 U60 ( .A(s1[0]), .B(p1[0]), .Y(n92) );
  XNOR2X1 U61 ( .A(s6[6]), .B(p6[6]), .Y(n128) );
  XNOR2X1 U62 ( .A(s2[7]), .B(p2[7]), .Y(n25) );
  NAND4X1 U63 ( .A(n28), .B(n27), .C(n26), .D(n25), .Y(n29) );
  XNOR2X1 U64 ( .A(s2[4]), .B(p2[4]), .Y(n28) );
  XNOR2X1 U65 ( .A(s2[5]), .B(p2[5]), .Y(n27) );
  XNOR2X1 U66 ( .A(s2[6]), .B(p2[6]), .Y(n26) );
  XNOR2X1 U67 ( .A(s1[6]), .B(p1[6]), .Y(n94) );
  XNOR2X1 U68 ( .A(s6[3]), .B(p6[3]), .Y(n123) );
  XNOR2X1 U69 ( .A(s1[3]), .B(p1[3]), .Y(n31) );
  XNOR2X1 U70 ( .A(s6[5]), .B(p6[5]), .Y(n129) );
  XNOR2X1 U71 ( .A(s0[7]), .B(p0[7]), .Y(n107) );
  XNOR2X1 U72 ( .A(s1[5]), .B(p1[5]), .Y(n95) );
  XNOR2X1 U73 ( .A(s6[2]), .B(p6[2]), .Y(n124) );
  XNOR2X1 U74 ( .A(s2[3]), .B(p2[3]), .Y(n21) );
  XNOR2X1 U75 ( .A(s1[2]), .B(p1[2]), .Y(n32) );
  NAND4X1 U76 ( .A(n24), .B(n23), .C(n22), .D(n21), .Y(n30) );
  XNOR2X1 U77 ( .A(s2[0]), .B(p2[0]), .Y(n24) );
  XNOR2X1 U78 ( .A(s2[1]), .B(p2[1]), .Y(n23) );
  XNOR2X1 U79 ( .A(s2[2]), .B(p2[2]), .Y(n22) );
  XNOR2X1 U80 ( .A(s6[4]), .B(p6[4]), .Y(n130) );
  XNOR2X1 U81 ( .A(s0[6]), .B(p0[6]), .Y(n108) );
  XNOR2X1 U82 ( .A(s1[4]), .B(p1[4]), .Y(n96) );
  XNOR2X1 U83 ( .A(s3[6]), .B(p3[6]), .Y(n16) );
  XNOR2X1 U84 ( .A(s6[1]), .B(p6[1]), .Y(n125) );
  XNOR2X1 U85 ( .A(s0[5]), .B(p0[5]), .Y(n109) );
  XNOR2X1 U86 ( .A(s0[3]), .B(p0[3]), .Y(n103) );
  XNOR2X1 U87 ( .A(s1[1]), .B(p1[1]), .Y(n91) );
  XNOR2X1 U88 ( .A(s3[3]), .B(p3[3]), .Y(n11) );
  XNOR2X1 U89 ( .A(s3[5]), .B(p3[5]), .Y(n17) );
  XNOR2X1 U90 ( .A(s3[2]), .B(p3[2]), .Y(n12) );
  XNOR2X1 U91 ( .A(s3[4]), .B(p3[4]), .Y(n18) );
  XNOR2X1 U92 ( .A(s3[1]), .B(p3[1]), .Y(n13) );
endmodule


module Pattern_String_Comparator_Cell_48 ( s7, s6, s5, s4, s3, s2, s1, s0, p7, 
        p6, p5, p4, p3, p2, p1, p0, check, match );
  input [7:0] s7;
  input [7:0] s6;
  input [7:0] s5;
  input [7:0] s4;
  input [7:0] s3;
  input [7:0] s2;
  input [7:0] s1;
  input [7:0] s0;
  input [7:0] p7;
  input [7:0] p6;
  input [7:0] p5;
  input [7:0] p4;
  input [7:0] p3;
  input [7:0] p2;
  input [7:0] p1;
  input [7:0] p0;
  input [7:0] check;
  output match;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30,
         n31, n32, n91, n92, n93, n94, n95, n96, n97, n98, n99, n100, n101,
         n102, n103, n104, n105, n106, n107, n108, n109, n110, n111, n112,
         n113, n114, n115, n116, n117, n118, n119, n120, n121, n122, n123,
         n124, n125, n126, n127, n128, n129, n130, n131, n132, n133, n134,
         n135, n136, n137, n138, n139, n140, n141, n142, n143, n144, n145,
         n146, n147, n148;

  NOR2X1 U2 ( .A(n148), .B(n147), .Y(match) );
  NAND4X1 U3 ( .A(n102), .B(n101), .C(n100), .D(n99), .Y(n148) );
  NAND4X1 U4 ( .A(n146), .B(n145), .C(n144), .D(n143), .Y(n147) );
  OAI21XL U5 ( .A0(n30), .A1(n29), .B0(check[2]), .Y(n100) );
  XNOR2X1 U6 ( .A(s7[7]), .B(p7[7]), .Y(n117) );
  OAI21XL U7 ( .A0(n122), .A1(n121), .B0(check[7]), .Y(n145) );
  NAND4X1 U8 ( .A(n116), .B(n115), .C(n114), .D(n113), .Y(n122) );
  NAND4X1 U9 ( .A(n120), .B(n119), .C(n118), .D(n117), .Y(n121) );
  XNOR2X1 U10 ( .A(s7[3]), .B(p7[3]), .Y(n113) );
  XNOR2X1 U11 ( .A(s7[6]), .B(p7[6]), .Y(n118) );
  XNOR2X1 U12 ( .A(s7[2]), .B(p7[2]), .Y(n114) );
  XNOR2X1 U13 ( .A(s7[5]), .B(p7[5]), .Y(n119) );
  XNOR2X1 U14 ( .A(s7[1]), .B(p7[1]), .Y(n115) );
  XNOR2X1 U15 ( .A(s7[0]), .B(p7[0]), .Y(n116) );
  XNOR2X1 U16 ( .A(s5[6]), .B(p5[6]), .Y(n138) );
  OAI21XL U17 ( .A0(n142), .A1(n141), .B0(check[5]), .Y(n143) );
  NAND4X1 U18 ( .A(n136), .B(n135), .C(n134), .D(n133), .Y(n142) );
  NAND4X1 U19 ( .A(n140), .B(n139), .C(n138), .D(n137), .Y(n141) );
  XNOR2X1 U20 ( .A(s5[0]), .B(p5[0]), .Y(n136) );
  XNOR2X1 U21 ( .A(s6[7]), .B(p6[7]), .Y(n127) );
  OAI21XL U22 ( .A0(n132), .A1(n131), .B0(check[6]), .Y(n144) );
  NAND4X1 U23 ( .A(n126), .B(n125), .C(n124), .D(n123), .Y(n132) );
  NAND4X1 U24 ( .A(n130), .B(n129), .C(n128), .D(n127), .Y(n131) );
  XNOR2X1 U25 ( .A(s6[0]), .B(p6[0]), .Y(n126) );
  XNOR2X1 U26 ( .A(s5[3]), .B(p5[3]), .Y(n133) );
  XNOR2X1 U27 ( .A(s5[5]), .B(p5[5]), .Y(n139) );
  XNOR2X1 U28 ( .A(s5[2]), .B(p5[2]), .Y(n134) );
  XNOR2X1 U29 ( .A(s5[4]), .B(p5[4]), .Y(n140) );
  XNOR2X1 U30 ( .A(s5[1]), .B(p5[1]), .Y(n135) );
  XNOR2X1 U31 ( .A(s3[7]), .B(p3[7]), .Y(n15) );
  OAI21XL U32 ( .A0(n20), .A1(n19), .B0(check[3]), .Y(n101) );
  NAND4X1 U33 ( .A(n14), .B(n13), .C(n12), .D(n11), .Y(n20) );
  NAND4X1 U34 ( .A(n18), .B(n17), .C(n16), .D(n15), .Y(n19) );
  XNOR2X1 U35 ( .A(s3[0]), .B(p3[0]), .Y(n14) );
  XNOR2X1 U36 ( .A(s4[7]), .B(p4[7]), .Y(n5) );
  OAI21XL U37 ( .A0(n10), .A1(n9), .B0(check[4]), .Y(n102) );
  NAND4X1 U38 ( .A(n4), .B(n3), .C(n2), .D(n1), .Y(n10) );
  NAND4X1 U39 ( .A(n8), .B(n7), .C(n6), .D(n5), .Y(n9) );
  XNOR2X1 U40 ( .A(s4[0]), .B(p4[0]), .Y(n4) );
  XNOR2X1 U41 ( .A(s4[6]), .B(p4[6]), .Y(n6) );
  XNOR2X1 U42 ( .A(s4[3]), .B(p4[3]), .Y(n1) );
  XNOR2X1 U43 ( .A(s4[5]), .B(p4[5]), .Y(n7) );
  XNOR2X1 U44 ( .A(s4[2]), .B(p4[2]), .Y(n2) );
  XNOR2X1 U45 ( .A(s4[4]), .B(p4[4]), .Y(n8) );
  XNOR2X1 U46 ( .A(s4[1]), .B(p4[1]), .Y(n3) );
  XNOR2X1 U47 ( .A(s0[2]), .B(p0[2]), .Y(n104) );
  OAI21XL U48 ( .A0(n112), .A1(n111), .B0(check[0]), .Y(n146) );
  NAND4X1 U49 ( .A(n110), .B(n109), .C(n108), .D(n107), .Y(n111) );
  NAND4X1 U50 ( .A(n106), .B(n105), .C(n104), .D(n103), .Y(n112) );
  XNOR2X1 U51 ( .A(s0[4]), .B(p0[4]), .Y(n110) );
  XNOR2X1 U52 ( .A(s7[4]), .B(p7[4]), .Y(n120) );
  XNOR2X1 U53 ( .A(s0[1]), .B(p0[1]), .Y(n105) );
  XNOR2X1 U54 ( .A(s5[7]), .B(p5[7]), .Y(n137) );
  XNOR2X1 U55 ( .A(s0[0]), .B(p0[0]), .Y(n106) );
  XNOR2X1 U56 ( .A(s1[7]), .B(p1[7]), .Y(n93) );
  OAI21XL U57 ( .A0(n98), .A1(n97), .B0(check[1]), .Y(n99) );
  NAND4X1 U58 ( .A(n92), .B(n91), .C(n32), .D(n31), .Y(n98) );
  NAND4X1 U59 ( .A(n96), .B(n95), .C(n94), .D(n93), .Y(n97) );
  XNOR2X1 U60 ( .A(s1[0]), .B(p1[0]), .Y(n92) );
  XNOR2X1 U61 ( .A(s6[6]), .B(p6[6]), .Y(n128) );
  XNOR2X1 U62 ( .A(s2[7]), .B(p2[7]), .Y(n25) );
  NAND4X1 U63 ( .A(n28), .B(n27), .C(n26), .D(n25), .Y(n29) );
  XNOR2X1 U64 ( .A(s2[4]), .B(p2[4]), .Y(n28) );
  XNOR2X1 U65 ( .A(s2[5]), .B(p2[5]), .Y(n27) );
  XNOR2X1 U66 ( .A(s2[6]), .B(p2[6]), .Y(n26) );
  XNOR2X1 U67 ( .A(s1[6]), .B(p1[6]), .Y(n94) );
  XNOR2X1 U68 ( .A(s6[3]), .B(p6[3]), .Y(n123) );
  XNOR2X1 U69 ( .A(s1[3]), .B(p1[3]), .Y(n31) );
  XNOR2X1 U70 ( .A(s6[5]), .B(p6[5]), .Y(n129) );
  XNOR2X1 U71 ( .A(s0[7]), .B(p0[7]), .Y(n107) );
  XNOR2X1 U72 ( .A(s1[5]), .B(p1[5]), .Y(n95) );
  XNOR2X1 U73 ( .A(s6[2]), .B(p6[2]), .Y(n124) );
  XNOR2X1 U74 ( .A(s2[3]), .B(p2[3]), .Y(n21) );
  XNOR2X1 U75 ( .A(s1[2]), .B(p1[2]), .Y(n32) );
  NAND4X1 U76 ( .A(n24), .B(n23), .C(n22), .D(n21), .Y(n30) );
  XNOR2X1 U77 ( .A(s2[0]), .B(p2[0]), .Y(n24) );
  XNOR2X1 U78 ( .A(s2[1]), .B(p2[1]), .Y(n23) );
  XNOR2X1 U79 ( .A(s2[2]), .B(p2[2]), .Y(n22) );
  XNOR2X1 U80 ( .A(s6[4]), .B(p6[4]), .Y(n130) );
  XNOR2X1 U81 ( .A(s0[6]), .B(p0[6]), .Y(n108) );
  XNOR2X1 U82 ( .A(s1[4]), .B(p1[4]), .Y(n96) );
  XNOR2X1 U83 ( .A(s3[6]), .B(p3[6]), .Y(n16) );
  XNOR2X1 U84 ( .A(s6[1]), .B(p6[1]), .Y(n125) );
  XNOR2X1 U85 ( .A(s0[5]), .B(p0[5]), .Y(n109) );
  XNOR2X1 U86 ( .A(s0[3]), .B(p0[3]), .Y(n103) );
  XNOR2X1 U87 ( .A(s1[1]), .B(p1[1]), .Y(n91) );
  XNOR2X1 U88 ( .A(s3[3]), .B(p3[3]), .Y(n11) );
  XNOR2X1 U89 ( .A(s3[5]), .B(p3[5]), .Y(n17) );
  XNOR2X1 U90 ( .A(s3[2]), .B(p3[2]), .Y(n12) );
  XNOR2X1 U91 ( .A(s3[4]), .B(p3[4]), .Y(n18) );
  XNOR2X1 U92 ( .A(s3[1]), .B(p3[1]), .Y(n13) );
endmodule


module Pattern_String_Comparator_Cell_47 ( s7, s6, s5, s4, s3, s2, s1, s0, p7, 
        p6, p5, p4, p3, p2, p1, p0, check, match );
  input [7:0] s7;
  input [7:0] s6;
  input [7:0] s5;
  input [7:0] s4;
  input [7:0] s3;
  input [7:0] s2;
  input [7:0] s1;
  input [7:0] s0;
  input [7:0] p7;
  input [7:0] p6;
  input [7:0] p5;
  input [7:0] p4;
  input [7:0] p3;
  input [7:0] p2;
  input [7:0] p1;
  input [7:0] p0;
  input [7:0] check;
  output match;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30,
         n31, n32, n91, n92, n93, n94, n95, n96, n97, n98, n99, n100, n101,
         n102, n103, n104, n105, n106, n107, n108, n109, n110, n111, n112,
         n113, n114, n115, n116, n117, n118, n119, n120, n121, n122, n123,
         n124, n125, n126, n127, n128, n129, n130, n131, n132, n133, n134,
         n135, n136, n137, n138, n139, n140, n141, n142, n143, n144, n145,
         n146, n147, n148;

  NOR2X1 U2 ( .A(n148), .B(n147), .Y(match) );
  NAND4X1 U3 ( .A(n102), .B(n101), .C(n100), .D(n99), .Y(n148) );
  NAND4X1 U4 ( .A(n146), .B(n145), .C(n144), .D(n143), .Y(n147) );
  OAI21XL U5 ( .A0(n30), .A1(n29), .B0(check[2]), .Y(n100) );
  XNOR2X1 U6 ( .A(s7[7]), .B(p7[7]), .Y(n117) );
  OAI21XL U7 ( .A0(n122), .A1(n121), .B0(check[7]), .Y(n145) );
  NAND4X1 U8 ( .A(n116), .B(n115), .C(n114), .D(n113), .Y(n122) );
  NAND4X1 U9 ( .A(n120), .B(n119), .C(n118), .D(n117), .Y(n121) );
  XNOR2X1 U10 ( .A(s7[3]), .B(p7[3]), .Y(n113) );
  XNOR2X1 U11 ( .A(s7[6]), .B(p7[6]), .Y(n118) );
  XNOR2X1 U12 ( .A(s7[2]), .B(p7[2]), .Y(n114) );
  XNOR2X1 U13 ( .A(s7[5]), .B(p7[5]), .Y(n119) );
  XNOR2X1 U14 ( .A(s7[1]), .B(p7[1]), .Y(n115) );
  XNOR2X1 U15 ( .A(s7[0]), .B(p7[0]), .Y(n116) );
  XNOR2X1 U16 ( .A(s5[6]), .B(p5[6]), .Y(n138) );
  OAI21XL U17 ( .A0(n142), .A1(n141), .B0(check[5]), .Y(n143) );
  NAND4X1 U18 ( .A(n136), .B(n135), .C(n134), .D(n133), .Y(n142) );
  NAND4X1 U19 ( .A(n140), .B(n139), .C(n138), .D(n137), .Y(n141) );
  XNOR2X1 U20 ( .A(s5[0]), .B(p5[0]), .Y(n136) );
  XNOR2X1 U21 ( .A(s6[7]), .B(p6[7]), .Y(n127) );
  OAI21XL U22 ( .A0(n132), .A1(n131), .B0(check[6]), .Y(n144) );
  NAND4X1 U23 ( .A(n126), .B(n125), .C(n124), .D(n123), .Y(n132) );
  NAND4X1 U24 ( .A(n130), .B(n129), .C(n128), .D(n127), .Y(n131) );
  XNOR2X1 U25 ( .A(s6[0]), .B(p6[0]), .Y(n126) );
  XNOR2X1 U26 ( .A(s5[3]), .B(p5[3]), .Y(n133) );
  XNOR2X1 U27 ( .A(s5[5]), .B(p5[5]), .Y(n139) );
  XNOR2X1 U28 ( .A(s5[2]), .B(p5[2]), .Y(n134) );
  XNOR2X1 U29 ( .A(s5[4]), .B(p5[4]), .Y(n140) );
  XNOR2X1 U30 ( .A(s5[1]), .B(p5[1]), .Y(n135) );
  XNOR2X1 U31 ( .A(s3[7]), .B(p3[7]), .Y(n15) );
  OAI21XL U32 ( .A0(n20), .A1(n19), .B0(check[3]), .Y(n101) );
  NAND4X1 U33 ( .A(n14), .B(n13), .C(n12), .D(n11), .Y(n20) );
  NAND4X1 U34 ( .A(n18), .B(n17), .C(n16), .D(n15), .Y(n19) );
  XNOR2X1 U35 ( .A(s3[0]), .B(p3[0]), .Y(n14) );
  XNOR2X1 U36 ( .A(s4[7]), .B(p4[7]), .Y(n5) );
  OAI21XL U37 ( .A0(n10), .A1(n9), .B0(check[4]), .Y(n102) );
  NAND4X1 U38 ( .A(n4), .B(n3), .C(n2), .D(n1), .Y(n10) );
  NAND4X1 U39 ( .A(n8), .B(n7), .C(n6), .D(n5), .Y(n9) );
  XNOR2X1 U40 ( .A(s4[0]), .B(p4[0]), .Y(n4) );
  XNOR2X1 U41 ( .A(s4[6]), .B(p4[6]), .Y(n6) );
  XNOR2X1 U42 ( .A(s4[3]), .B(p4[3]), .Y(n1) );
  XNOR2X1 U43 ( .A(s4[5]), .B(p4[5]), .Y(n7) );
  XNOR2X1 U44 ( .A(s4[2]), .B(p4[2]), .Y(n2) );
  XNOR2X1 U45 ( .A(s4[4]), .B(p4[4]), .Y(n8) );
  XNOR2X1 U46 ( .A(s4[1]), .B(p4[1]), .Y(n3) );
  XNOR2X1 U47 ( .A(s0[2]), .B(p0[2]), .Y(n104) );
  OAI21XL U48 ( .A0(n112), .A1(n111), .B0(check[0]), .Y(n146) );
  NAND4X1 U49 ( .A(n110), .B(n109), .C(n108), .D(n107), .Y(n111) );
  NAND4X1 U50 ( .A(n106), .B(n105), .C(n104), .D(n103), .Y(n112) );
  XNOR2X1 U51 ( .A(s0[4]), .B(p0[4]), .Y(n110) );
  XNOR2X1 U52 ( .A(s7[4]), .B(p7[4]), .Y(n120) );
  XNOR2X1 U53 ( .A(s0[1]), .B(p0[1]), .Y(n105) );
  XNOR2X1 U54 ( .A(s5[7]), .B(p5[7]), .Y(n137) );
  XNOR2X1 U55 ( .A(s0[0]), .B(p0[0]), .Y(n106) );
  XNOR2X1 U56 ( .A(s1[7]), .B(p1[7]), .Y(n93) );
  OAI21XL U57 ( .A0(n98), .A1(n97), .B0(check[1]), .Y(n99) );
  NAND4X1 U58 ( .A(n92), .B(n91), .C(n32), .D(n31), .Y(n98) );
  NAND4X1 U59 ( .A(n96), .B(n95), .C(n94), .D(n93), .Y(n97) );
  XNOR2X1 U60 ( .A(s1[0]), .B(p1[0]), .Y(n92) );
  XNOR2X1 U61 ( .A(s6[6]), .B(p6[6]), .Y(n128) );
  XNOR2X1 U62 ( .A(s2[7]), .B(p2[7]), .Y(n25) );
  XNOR2X1 U63 ( .A(s1[6]), .B(p1[6]), .Y(n94) );
  NAND4X1 U64 ( .A(n28), .B(n27), .C(n26), .D(n25), .Y(n29) );
  XNOR2X1 U65 ( .A(s2[4]), .B(p2[4]), .Y(n28) );
  XNOR2X1 U66 ( .A(s2[5]), .B(p2[5]), .Y(n27) );
  XNOR2X1 U67 ( .A(s2[6]), .B(p2[6]), .Y(n26) );
  XNOR2X1 U68 ( .A(s6[3]), .B(p6[3]), .Y(n123) );
  XNOR2X1 U69 ( .A(s1[3]), .B(p1[3]), .Y(n31) );
  XNOR2X1 U70 ( .A(s6[5]), .B(p6[5]), .Y(n129) );
  XNOR2X1 U71 ( .A(s0[7]), .B(p0[7]), .Y(n107) );
  XNOR2X1 U72 ( .A(s1[5]), .B(p1[5]), .Y(n95) );
  XNOR2X1 U73 ( .A(s6[2]), .B(p6[2]), .Y(n124) );
  XNOR2X1 U74 ( .A(s2[3]), .B(p2[3]), .Y(n21) );
  XNOR2X1 U75 ( .A(s1[2]), .B(p1[2]), .Y(n32) );
  NAND4X1 U76 ( .A(n24), .B(n23), .C(n22), .D(n21), .Y(n30) );
  XNOR2X1 U77 ( .A(s2[0]), .B(p2[0]), .Y(n24) );
  XNOR2X1 U78 ( .A(s2[1]), .B(p2[1]), .Y(n23) );
  XNOR2X1 U79 ( .A(s2[2]), .B(p2[2]), .Y(n22) );
  XNOR2X1 U80 ( .A(s6[4]), .B(p6[4]), .Y(n130) );
  XNOR2X1 U81 ( .A(s0[6]), .B(p0[6]), .Y(n108) );
  XNOR2X1 U82 ( .A(s1[4]), .B(p1[4]), .Y(n96) );
  XNOR2X1 U83 ( .A(s3[6]), .B(p3[6]), .Y(n16) );
  XNOR2X1 U84 ( .A(s6[1]), .B(p6[1]), .Y(n125) );
  XNOR2X1 U85 ( .A(s0[5]), .B(p0[5]), .Y(n109) );
  XNOR2X1 U86 ( .A(s0[3]), .B(p0[3]), .Y(n103) );
  XNOR2X1 U87 ( .A(s1[1]), .B(p1[1]), .Y(n91) );
  XNOR2X1 U88 ( .A(s3[3]), .B(p3[3]), .Y(n11) );
  XNOR2X1 U89 ( .A(s3[5]), .B(p3[5]), .Y(n17) );
  XNOR2X1 U90 ( .A(s3[2]), .B(p3[2]), .Y(n12) );
  XNOR2X1 U91 ( .A(s3[4]), .B(p3[4]), .Y(n18) );
  XNOR2X1 U92 ( .A(s3[1]), .B(p3[1]), .Y(n13) );
endmodule


module Pattern_String_Comparator_Cell_46 ( s7, s6, s5, s4, s3, s2, s1, s0, p7, 
        p6, p5, p4, p3, p2, p1, p0, check, match );
  input [7:0] s7;
  input [7:0] s6;
  input [7:0] s5;
  input [7:0] s4;
  input [7:0] s3;
  input [7:0] s2;
  input [7:0] s1;
  input [7:0] s0;
  input [7:0] p7;
  input [7:0] p6;
  input [7:0] p5;
  input [7:0] p4;
  input [7:0] p3;
  input [7:0] p2;
  input [7:0] p1;
  input [7:0] p0;
  input [7:0] check;
  output match;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30,
         n31, n32, n91, n92, n93, n94, n95, n96, n97, n98, n99, n100, n101,
         n102, n103, n104, n105, n106, n107, n108, n109, n110, n111, n112,
         n113, n114, n115, n116, n117, n118, n119, n120, n121, n122, n123,
         n124, n125, n126, n127, n128, n129, n130, n131, n132, n133, n134,
         n135, n136, n137, n138, n139, n140, n141, n142, n143, n144, n145,
         n146, n147, n148;

  NOR2X1 U2 ( .A(n148), .B(n147), .Y(match) );
  NAND4X1 U3 ( .A(n102), .B(n101), .C(n100), .D(n99), .Y(n148) );
  NAND4X1 U4 ( .A(n146), .B(n145), .C(n144), .D(n143), .Y(n147) );
  OAI21XL U5 ( .A0(n30), .A1(n29), .B0(check[2]), .Y(n100) );
  XNOR2X1 U6 ( .A(s7[7]), .B(p7[7]), .Y(n117) );
  OAI21XL U7 ( .A0(n122), .A1(n121), .B0(check[7]), .Y(n145) );
  NAND4X1 U8 ( .A(n116), .B(n115), .C(n114), .D(n113), .Y(n122) );
  NAND4X1 U9 ( .A(n120), .B(n119), .C(n118), .D(n117), .Y(n121) );
  XNOR2X1 U10 ( .A(s7[3]), .B(p7[3]), .Y(n113) );
  XNOR2X1 U11 ( .A(s7[6]), .B(p7[6]), .Y(n118) );
  XNOR2X1 U12 ( .A(s7[2]), .B(p7[2]), .Y(n114) );
  XNOR2X1 U13 ( .A(s7[5]), .B(p7[5]), .Y(n119) );
  XNOR2X1 U14 ( .A(s7[1]), .B(p7[1]), .Y(n115) );
  XNOR2X1 U15 ( .A(s7[0]), .B(p7[0]), .Y(n116) );
  XNOR2X1 U16 ( .A(s5[6]), .B(p5[6]), .Y(n138) );
  OAI21XL U17 ( .A0(n142), .A1(n141), .B0(check[5]), .Y(n143) );
  NAND4X1 U18 ( .A(n136), .B(n135), .C(n134), .D(n133), .Y(n142) );
  NAND4X1 U19 ( .A(n140), .B(n139), .C(n138), .D(n137), .Y(n141) );
  XNOR2X1 U20 ( .A(s5[0]), .B(p5[0]), .Y(n136) );
  XNOR2X1 U21 ( .A(s6[7]), .B(p6[7]), .Y(n127) );
  OAI21XL U22 ( .A0(n132), .A1(n131), .B0(check[6]), .Y(n144) );
  NAND4X1 U23 ( .A(n126), .B(n125), .C(n124), .D(n123), .Y(n132) );
  NAND4X1 U24 ( .A(n130), .B(n129), .C(n128), .D(n127), .Y(n131) );
  XNOR2X1 U25 ( .A(s6[0]), .B(p6[0]), .Y(n126) );
  XNOR2X1 U26 ( .A(s5[3]), .B(p5[3]), .Y(n133) );
  XNOR2X1 U27 ( .A(s5[5]), .B(p5[5]), .Y(n139) );
  XNOR2X1 U28 ( .A(s5[2]), .B(p5[2]), .Y(n134) );
  XNOR2X1 U29 ( .A(s5[4]), .B(p5[4]), .Y(n140) );
  XNOR2X1 U30 ( .A(s5[1]), .B(p5[1]), .Y(n135) );
  XNOR2X1 U31 ( .A(s3[7]), .B(p3[7]), .Y(n15) );
  OAI21XL U32 ( .A0(n20), .A1(n19), .B0(check[3]), .Y(n101) );
  NAND4X1 U33 ( .A(n14), .B(n13), .C(n12), .D(n11), .Y(n20) );
  NAND4X1 U34 ( .A(n18), .B(n17), .C(n16), .D(n15), .Y(n19) );
  XNOR2X1 U35 ( .A(s3[0]), .B(p3[0]), .Y(n14) );
  XNOR2X1 U36 ( .A(s4[7]), .B(p4[7]), .Y(n5) );
  OAI21XL U37 ( .A0(n10), .A1(n9), .B0(check[4]), .Y(n102) );
  NAND4X1 U38 ( .A(n4), .B(n3), .C(n2), .D(n1), .Y(n10) );
  NAND4X1 U39 ( .A(n8), .B(n7), .C(n6), .D(n5), .Y(n9) );
  XNOR2X1 U40 ( .A(s4[0]), .B(p4[0]), .Y(n4) );
  XNOR2X1 U41 ( .A(s4[6]), .B(p4[6]), .Y(n6) );
  XNOR2X1 U42 ( .A(s4[3]), .B(p4[3]), .Y(n1) );
  XNOR2X1 U43 ( .A(s4[5]), .B(p4[5]), .Y(n7) );
  XNOR2X1 U44 ( .A(s4[2]), .B(p4[2]), .Y(n2) );
  XNOR2X1 U45 ( .A(s4[4]), .B(p4[4]), .Y(n8) );
  XNOR2X1 U46 ( .A(s4[1]), .B(p4[1]), .Y(n3) );
  XNOR2X1 U47 ( .A(s0[2]), .B(p0[2]), .Y(n104) );
  OAI21XL U48 ( .A0(n112), .A1(n111), .B0(check[0]), .Y(n146) );
  NAND4X1 U49 ( .A(n110), .B(n109), .C(n108), .D(n107), .Y(n111) );
  NAND4X1 U50 ( .A(n106), .B(n105), .C(n104), .D(n103), .Y(n112) );
  XNOR2X1 U51 ( .A(s0[4]), .B(p0[4]), .Y(n110) );
  XNOR2X1 U52 ( .A(s7[4]), .B(p7[4]), .Y(n120) );
  XNOR2X1 U53 ( .A(s0[1]), .B(p0[1]), .Y(n105) );
  XNOR2X1 U54 ( .A(s5[7]), .B(p5[7]), .Y(n137) );
  XNOR2X1 U55 ( .A(s0[0]), .B(p0[0]), .Y(n106) );
  XNOR2X1 U56 ( .A(s1[7]), .B(p1[7]), .Y(n93) );
  OAI21XL U57 ( .A0(n98), .A1(n97), .B0(check[1]), .Y(n99) );
  NAND4X1 U58 ( .A(n92), .B(n91), .C(n32), .D(n31), .Y(n98) );
  NAND4X1 U59 ( .A(n96), .B(n95), .C(n94), .D(n93), .Y(n97) );
  XNOR2X1 U60 ( .A(s1[0]), .B(p1[0]), .Y(n92) );
  XNOR2X1 U61 ( .A(s6[6]), .B(p6[6]), .Y(n128) );
  XNOR2X1 U62 ( .A(s2[7]), .B(p2[7]), .Y(n25) );
  XNOR2X1 U63 ( .A(s1[6]), .B(p1[6]), .Y(n94) );
  NAND4X1 U64 ( .A(n28), .B(n27), .C(n26), .D(n25), .Y(n29) );
  XNOR2X1 U65 ( .A(s2[4]), .B(p2[4]), .Y(n28) );
  XNOR2X1 U66 ( .A(s2[5]), .B(p2[5]), .Y(n27) );
  XNOR2X1 U67 ( .A(s2[6]), .B(p2[6]), .Y(n26) );
  XNOR2X1 U68 ( .A(s6[3]), .B(p6[3]), .Y(n123) );
  XNOR2X1 U69 ( .A(s1[3]), .B(p1[3]), .Y(n31) );
  XNOR2X1 U70 ( .A(s6[5]), .B(p6[5]), .Y(n129) );
  XNOR2X1 U71 ( .A(s0[7]), .B(p0[7]), .Y(n107) );
  XNOR2X1 U72 ( .A(s1[5]), .B(p1[5]), .Y(n95) );
  XNOR2X1 U73 ( .A(s6[2]), .B(p6[2]), .Y(n124) );
  XNOR2X1 U74 ( .A(s2[3]), .B(p2[3]), .Y(n21) );
  XNOR2X1 U75 ( .A(s1[2]), .B(p1[2]), .Y(n32) );
  NAND4X1 U76 ( .A(n24), .B(n23), .C(n22), .D(n21), .Y(n30) );
  XNOR2X1 U77 ( .A(s2[0]), .B(p2[0]), .Y(n24) );
  XNOR2X1 U78 ( .A(s2[1]), .B(p2[1]), .Y(n23) );
  XNOR2X1 U79 ( .A(s2[2]), .B(p2[2]), .Y(n22) );
  XNOR2X1 U80 ( .A(s6[4]), .B(p6[4]), .Y(n130) );
  XNOR2X1 U81 ( .A(s0[6]), .B(p0[6]), .Y(n108) );
  XNOR2X1 U82 ( .A(s1[4]), .B(p1[4]), .Y(n96) );
  XNOR2X1 U83 ( .A(s3[6]), .B(p3[6]), .Y(n16) );
  XNOR2X1 U84 ( .A(s6[1]), .B(p6[1]), .Y(n125) );
  XNOR2X1 U85 ( .A(s0[5]), .B(p0[5]), .Y(n109) );
  XNOR2X1 U86 ( .A(s0[3]), .B(p0[3]), .Y(n103) );
  XNOR2X1 U87 ( .A(s1[1]), .B(p1[1]), .Y(n91) );
  XNOR2X1 U88 ( .A(s3[3]), .B(p3[3]), .Y(n11) );
  XNOR2X1 U89 ( .A(s3[5]), .B(p3[5]), .Y(n17) );
  XNOR2X1 U90 ( .A(s3[2]), .B(p3[2]), .Y(n12) );
  XNOR2X1 U91 ( .A(s3[4]), .B(p3[4]), .Y(n18) );
  XNOR2X1 U92 ( .A(s3[1]), .B(p3[1]), .Y(n13) );
endmodule


module Pattern_String_Comparator_Cell_45 ( s7, s6, s5, s4, s3, s2, s1, s0, p7, 
        p6, p5, p4, p3, p2, p1, p0, check, match );
  input [7:0] s7;
  input [7:0] s6;
  input [7:0] s5;
  input [7:0] s4;
  input [7:0] s3;
  input [7:0] s2;
  input [7:0] s1;
  input [7:0] s0;
  input [7:0] p7;
  input [7:0] p6;
  input [7:0] p5;
  input [7:0] p4;
  input [7:0] p3;
  input [7:0] p2;
  input [7:0] p1;
  input [7:0] p0;
  input [7:0] check;
  output match;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30,
         n31, n32, n91, n92, n93, n94, n95, n96, n97, n98, n99, n100, n101,
         n102, n103, n104, n105, n106, n107, n108, n109, n110, n111, n112,
         n113, n114, n115, n116, n117, n118, n119, n120, n121, n122, n123,
         n124, n125, n126, n127, n128, n129, n130, n131, n132, n133, n134,
         n135, n136, n137, n138, n139, n140, n141, n142, n143, n144, n145,
         n146, n147, n148;

  NOR2X1 U2 ( .A(n148), .B(n147), .Y(match) );
  NAND4X1 U3 ( .A(n102), .B(n101), .C(n100), .D(n99), .Y(n148) );
  NAND4X1 U4 ( .A(n146), .B(n145), .C(n144), .D(n143), .Y(n147) );
  OAI21XL U5 ( .A0(n30), .A1(n29), .B0(check[2]), .Y(n100) );
  XNOR2X1 U6 ( .A(s7[7]), .B(p7[7]), .Y(n117) );
  OAI21XL U7 ( .A0(n122), .A1(n121), .B0(check[7]), .Y(n145) );
  NAND4X1 U8 ( .A(n116), .B(n115), .C(n114), .D(n113), .Y(n122) );
  NAND4X1 U9 ( .A(n120), .B(n119), .C(n118), .D(n117), .Y(n121) );
  XNOR2X1 U10 ( .A(s7[3]), .B(p7[3]), .Y(n113) );
  XNOR2X1 U11 ( .A(s7[6]), .B(p7[6]), .Y(n118) );
  XNOR2X1 U12 ( .A(s7[2]), .B(p7[2]), .Y(n114) );
  XNOR2X1 U13 ( .A(s7[5]), .B(p7[5]), .Y(n119) );
  XNOR2X1 U14 ( .A(s7[1]), .B(p7[1]), .Y(n115) );
  XNOR2X1 U15 ( .A(s7[0]), .B(p7[0]), .Y(n116) );
  XNOR2X1 U16 ( .A(s5[6]), .B(p5[6]), .Y(n138) );
  OAI21XL U17 ( .A0(n142), .A1(n141), .B0(check[5]), .Y(n143) );
  NAND4X1 U18 ( .A(n136), .B(n135), .C(n134), .D(n133), .Y(n142) );
  NAND4X1 U19 ( .A(n140), .B(n139), .C(n138), .D(n137), .Y(n141) );
  XNOR2X1 U20 ( .A(s5[0]), .B(p5[0]), .Y(n136) );
  XNOR2X1 U21 ( .A(s6[7]), .B(p6[7]), .Y(n127) );
  OAI21XL U22 ( .A0(n132), .A1(n131), .B0(check[6]), .Y(n144) );
  NAND4X1 U23 ( .A(n126), .B(n125), .C(n124), .D(n123), .Y(n132) );
  NAND4X1 U24 ( .A(n130), .B(n129), .C(n128), .D(n127), .Y(n131) );
  XNOR2X1 U25 ( .A(s6[0]), .B(p6[0]), .Y(n126) );
  XNOR2X1 U26 ( .A(s5[3]), .B(p5[3]), .Y(n133) );
  XNOR2X1 U27 ( .A(s5[5]), .B(p5[5]), .Y(n139) );
  XNOR2X1 U28 ( .A(s5[2]), .B(p5[2]), .Y(n134) );
  XNOR2X1 U29 ( .A(s5[4]), .B(p5[4]), .Y(n140) );
  XNOR2X1 U30 ( .A(s5[1]), .B(p5[1]), .Y(n135) );
  XNOR2X1 U31 ( .A(s3[7]), .B(p3[7]), .Y(n15) );
  OAI21XL U32 ( .A0(n20), .A1(n19), .B0(check[3]), .Y(n101) );
  NAND4X1 U33 ( .A(n14), .B(n13), .C(n12), .D(n11), .Y(n20) );
  NAND4X1 U34 ( .A(n18), .B(n17), .C(n16), .D(n15), .Y(n19) );
  XNOR2X1 U35 ( .A(s3[0]), .B(p3[0]), .Y(n14) );
  XNOR2X1 U36 ( .A(s4[7]), .B(p4[7]), .Y(n5) );
  OAI21XL U37 ( .A0(n10), .A1(n9), .B0(check[4]), .Y(n102) );
  NAND4X1 U38 ( .A(n4), .B(n3), .C(n2), .D(n1), .Y(n10) );
  NAND4X1 U39 ( .A(n8), .B(n7), .C(n6), .D(n5), .Y(n9) );
  XNOR2X1 U40 ( .A(s4[0]), .B(p4[0]), .Y(n4) );
  XNOR2X1 U41 ( .A(s4[6]), .B(p4[6]), .Y(n6) );
  XNOR2X1 U42 ( .A(s4[3]), .B(p4[3]), .Y(n1) );
  XNOR2X1 U43 ( .A(s4[5]), .B(p4[5]), .Y(n7) );
  XNOR2X1 U44 ( .A(s4[2]), .B(p4[2]), .Y(n2) );
  XNOR2X1 U45 ( .A(s4[4]), .B(p4[4]), .Y(n8) );
  XNOR2X1 U46 ( .A(s4[1]), .B(p4[1]), .Y(n3) );
  XNOR2X1 U47 ( .A(s0[2]), .B(p0[2]), .Y(n104) );
  OAI21XL U48 ( .A0(n112), .A1(n111), .B0(check[0]), .Y(n146) );
  NAND4X1 U49 ( .A(n110), .B(n109), .C(n108), .D(n107), .Y(n111) );
  NAND4X1 U50 ( .A(n106), .B(n105), .C(n104), .D(n103), .Y(n112) );
  XNOR2X1 U51 ( .A(s0[4]), .B(p0[4]), .Y(n110) );
  XNOR2X1 U52 ( .A(s7[4]), .B(p7[4]), .Y(n120) );
  XNOR2X1 U53 ( .A(s0[1]), .B(p0[1]), .Y(n105) );
  XNOR2X1 U54 ( .A(s5[7]), .B(p5[7]), .Y(n137) );
  XNOR2X1 U55 ( .A(s0[0]), .B(p0[0]), .Y(n106) );
  XNOR2X1 U56 ( .A(s1[7]), .B(p1[7]), .Y(n93) );
  OAI21XL U57 ( .A0(n98), .A1(n97), .B0(check[1]), .Y(n99) );
  NAND4X1 U58 ( .A(n92), .B(n91), .C(n32), .D(n31), .Y(n98) );
  NAND4X1 U59 ( .A(n96), .B(n95), .C(n94), .D(n93), .Y(n97) );
  XNOR2X1 U60 ( .A(s1[0]), .B(p1[0]), .Y(n92) );
  XNOR2X1 U61 ( .A(s6[6]), .B(p6[6]), .Y(n128) );
  XNOR2X1 U62 ( .A(s2[7]), .B(p2[7]), .Y(n25) );
  XNOR2X1 U63 ( .A(s1[6]), .B(p1[6]), .Y(n94) );
  NAND4X1 U64 ( .A(n28), .B(n27), .C(n26), .D(n25), .Y(n29) );
  XNOR2X1 U65 ( .A(s2[4]), .B(p2[4]), .Y(n28) );
  XNOR2X1 U66 ( .A(s2[5]), .B(p2[5]), .Y(n27) );
  XNOR2X1 U67 ( .A(s2[6]), .B(p2[6]), .Y(n26) );
  XNOR2X1 U68 ( .A(s6[3]), .B(p6[3]), .Y(n123) );
  XNOR2X1 U69 ( .A(s1[3]), .B(p1[3]), .Y(n31) );
  XNOR2X1 U70 ( .A(s6[5]), .B(p6[5]), .Y(n129) );
  XNOR2X1 U71 ( .A(s0[7]), .B(p0[7]), .Y(n107) );
  XNOR2X1 U72 ( .A(s1[5]), .B(p1[5]), .Y(n95) );
  XNOR2X1 U73 ( .A(s6[2]), .B(p6[2]), .Y(n124) );
  XNOR2X1 U74 ( .A(s2[3]), .B(p2[3]), .Y(n21) );
  XNOR2X1 U75 ( .A(s1[2]), .B(p1[2]), .Y(n32) );
  NAND4X1 U76 ( .A(n24), .B(n23), .C(n22), .D(n21), .Y(n30) );
  XNOR2X1 U77 ( .A(s2[0]), .B(p2[0]), .Y(n24) );
  XNOR2X1 U78 ( .A(s2[1]), .B(p2[1]), .Y(n23) );
  XNOR2X1 U79 ( .A(s2[2]), .B(p2[2]), .Y(n22) );
  XNOR2X1 U80 ( .A(s6[4]), .B(p6[4]), .Y(n130) );
  XNOR2X1 U81 ( .A(s0[6]), .B(p0[6]), .Y(n108) );
  XNOR2X1 U82 ( .A(s1[4]), .B(p1[4]), .Y(n96) );
  XNOR2X1 U83 ( .A(s3[6]), .B(p3[6]), .Y(n16) );
  XNOR2X1 U84 ( .A(s6[1]), .B(p6[1]), .Y(n125) );
  XNOR2X1 U85 ( .A(s0[5]), .B(p0[5]), .Y(n109) );
  XNOR2X1 U86 ( .A(s0[3]), .B(p0[3]), .Y(n103) );
  XNOR2X1 U87 ( .A(s1[1]), .B(p1[1]), .Y(n91) );
  XNOR2X1 U88 ( .A(s3[3]), .B(p3[3]), .Y(n11) );
  XNOR2X1 U89 ( .A(s3[5]), .B(p3[5]), .Y(n17) );
  XNOR2X1 U90 ( .A(s3[2]), .B(p3[2]), .Y(n12) );
  XNOR2X1 U91 ( .A(s3[4]), .B(p3[4]), .Y(n18) );
  XNOR2X1 U92 ( .A(s3[1]), .B(p3[1]), .Y(n13) );
endmodule


module Pattern_String_Comparator_Cell_44 ( s7, s6, s5, s4, s3, s2, s1, s0, p7, 
        p6, p5, p4, p3, p2, p1, p0, check, match );
  input [7:0] s7;
  input [7:0] s6;
  input [7:0] s5;
  input [7:0] s4;
  input [7:0] s3;
  input [7:0] s2;
  input [7:0] s1;
  input [7:0] s0;
  input [7:0] p7;
  input [7:0] p6;
  input [7:0] p5;
  input [7:0] p4;
  input [7:0] p3;
  input [7:0] p2;
  input [7:0] p1;
  input [7:0] p0;
  input [7:0] check;
  output match;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30,
         n31, n32, n91, n92, n93, n94, n95, n96, n97, n98, n99, n100, n101,
         n102, n103, n104, n105, n106, n107, n108, n109, n110, n111, n112,
         n113, n114, n115, n116, n117, n118, n119, n120, n121, n122, n123,
         n124, n125, n126, n127, n128, n129, n130, n131, n132, n133, n134,
         n135, n136, n137, n138, n139, n140, n141, n142, n143, n144, n145,
         n146, n147, n148;

  NOR2X1 U2 ( .A(n148), .B(n147), .Y(match) );
  NAND4X1 U3 ( .A(n102), .B(n101), .C(n100), .D(n99), .Y(n148) );
  NAND4X1 U4 ( .A(n146), .B(n145), .C(n144), .D(n143), .Y(n147) );
  OAI21XL U5 ( .A0(n30), .A1(n29), .B0(check[2]), .Y(n100) );
  XNOR2X1 U6 ( .A(s7[7]), .B(p7[7]), .Y(n117) );
  OAI21XL U7 ( .A0(n122), .A1(n121), .B0(check[7]), .Y(n145) );
  NAND4X1 U8 ( .A(n116), .B(n115), .C(n114), .D(n113), .Y(n122) );
  NAND4X1 U9 ( .A(n120), .B(n119), .C(n118), .D(n117), .Y(n121) );
  XNOR2X1 U10 ( .A(s7[3]), .B(p7[3]), .Y(n113) );
  XNOR2X1 U11 ( .A(s7[6]), .B(p7[6]), .Y(n118) );
  XNOR2X1 U12 ( .A(s7[2]), .B(p7[2]), .Y(n114) );
  XNOR2X1 U13 ( .A(s7[5]), .B(p7[5]), .Y(n119) );
  XNOR2X1 U14 ( .A(s7[1]), .B(p7[1]), .Y(n115) );
  XNOR2X1 U15 ( .A(s7[0]), .B(p7[0]), .Y(n116) );
  XNOR2X1 U16 ( .A(s5[6]), .B(p5[6]), .Y(n138) );
  OAI21XL U17 ( .A0(n142), .A1(n141), .B0(check[5]), .Y(n143) );
  NAND4X1 U18 ( .A(n136), .B(n135), .C(n134), .D(n133), .Y(n142) );
  NAND4X1 U19 ( .A(n140), .B(n139), .C(n138), .D(n137), .Y(n141) );
  XNOR2X1 U20 ( .A(s5[0]), .B(p5[0]), .Y(n136) );
  XNOR2X1 U21 ( .A(s6[7]), .B(p6[7]), .Y(n127) );
  OAI21XL U22 ( .A0(n132), .A1(n131), .B0(check[6]), .Y(n144) );
  NAND4X1 U23 ( .A(n126), .B(n125), .C(n124), .D(n123), .Y(n132) );
  NAND4X1 U24 ( .A(n130), .B(n129), .C(n128), .D(n127), .Y(n131) );
  XNOR2X1 U25 ( .A(s6[0]), .B(p6[0]), .Y(n126) );
  XNOR2X1 U26 ( .A(s5[3]), .B(p5[3]), .Y(n133) );
  XNOR2X1 U27 ( .A(s5[5]), .B(p5[5]), .Y(n139) );
  XNOR2X1 U28 ( .A(s5[2]), .B(p5[2]), .Y(n134) );
  XNOR2X1 U29 ( .A(s5[4]), .B(p5[4]), .Y(n140) );
  XNOR2X1 U30 ( .A(s5[1]), .B(p5[1]), .Y(n135) );
  XNOR2X1 U31 ( .A(s3[7]), .B(p3[7]), .Y(n15) );
  OAI21XL U32 ( .A0(n20), .A1(n19), .B0(check[3]), .Y(n101) );
  NAND4X1 U33 ( .A(n14), .B(n13), .C(n12), .D(n11), .Y(n20) );
  NAND4X1 U34 ( .A(n18), .B(n17), .C(n16), .D(n15), .Y(n19) );
  XNOR2X1 U35 ( .A(s3[0]), .B(p3[0]), .Y(n14) );
  XNOR2X1 U36 ( .A(s4[7]), .B(p4[7]), .Y(n5) );
  OAI21XL U37 ( .A0(n10), .A1(n9), .B0(check[4]), .Y(n102) );
  NAND4X1 U38 ( .A(n4), .B(n3), .C(n2), .D(n1), .Y(n10) );
  NAND4X1 U39 ( .A(n8), .B(n7), .C(n6), .D(n5), .Y(n9) );
  XNOR2X1 U40 ( .A(s4[0]), .B(p4[0]), .Y(n4) );
  XNOR2X1 U41 ( .A(s4[6]), .B(p4[6]), .Y(n6) );
  XNOR2X1 U42 ( .A(s4[3]), .B(p4[3]), .Y(n1) );
  XNOR2X1 U43 ( .A(s4[5]), .B(p4[5]), .Y(n7) );
  XNOR2X1 U44 ( .A(s4[2]), .B(p4[2]), .Y(n2) );
  XNOR2X1 U45 ( .A(s4[4]), .B(p4[4]), .Y(n8) );
  XNOR2X1 U46 ( .A(s4[1]), .B(p4[1]), .Y(n3) );
  XNOR2X1 U47 ( .A(s0[2]), .B(p0[2]), .Y(n104) );
  OAI21XL U48 ( .A0(n112), .A1(n111), .B0(check[0]), .Y(n146) );
  NAND4X1 U49 ( .A(n110), .B(n109), .C(n108), .D(n107), .Y(n111) );
  NAND4X1 U50 ( .A(n106), .B(n105), .C(n104), .D(n103), .Y(n112) );
  XNOR2X1 U51 ( .A(s0[4]), .B(p0[4]), .Y(n110) );
  XNOR2X1 U52 ( .A(s7[4]), .B(p7[4]), .Y(n120) );
  XNOR2X1 U53 ( .A(s0[1]), .B(p0[1]), .Y(n105) );
  XNOR2X1 U54 ( .A(s5[7]), .B(p5[7]), .Y(n137) );
  XNOR2X1 U55 ( .A(s0[0]), .B(p0[0]), .Y(n106) );
  XNOR2X1 U56 ( .A(s1[7]), .B(p1[7]), .Y(n93) );
  OAI21XL U57 ( .A0(n98), .A1(n97), .B0(check[1]), .Y(n99) );
  NAND4X1 U58 ( .A(n92), .B(n91), .C(n32), .D(n31), .Y(n98) );
  NAND4X1 U59 ( .A(n96), .B(n95), .C(n94), .D(n93), .Y(n97) );
  XNOR2X1 U60 ( .A(s1[0]), .B(p1[0]), .Y(n92) );
  XNOR2X1 U61 ( .A(s6[6]), .B(p6[6]), .Y(n128) );
  XNOR2X1 U62 ( .A(s2[7]), .B(p2[7]), .Y(n25) );
  XNOR2X1 U63 ( .A(s1[6]), .B(p1[6]), .Y(n94) );
  NAND4X1 U64 ( .A(n28), .B(n27), .C(n26), .D(n25), .Y(n29) );
  XNOR2X1 U65 ( .A(s2[4]), .B(p2[4]), .Y(n28) );
  XNOR2X1 U66 ( .A(s2[5]), .B(p2[5]), .Y(n27) );
  XNOR2X1 U67 ( .A(s2[6]), .B(p2[6]), .Y(n26) );
  XNOR2X1 U68 ( .A(s6[3]), .B(p6[3]), .Y(n123) );
  XNOR2X1 U69 ( .A(s1[3]), .B(p1[3]), .Y(n31) );
  XNOR2X1 U70 ( .A(s6[5]), .B(p6[5]), .Y(n129) );
  XNOR2X1 U71 ( .A(s0[7]), .B(p0[7]), .Y(n107) );
  XNOR2X1 U72 ( .A(s1[5]), .B(p1[5]), .Y(n95) );
  XNOR2X1 U73 ( .A(s6[2]), .B(p6[2]), .Y(n124) );
  XNOR2X1 U74 ( .A(s2[3]), .B(p2[3]), .Y(n21) );
  XNOR2X1 U75 ( .A(s1[2]), .B(p1[2]), .Y(n32) );
  NAND4X1 U76 ( .A(n24), .B(n23), .C(n22), .D(n21), .Y(n30) );
  XNOR2X1 U77 ( .A(s2[0]), .B(p2[0]), .Y(n24) );
  XNOR2X1 U78 ( .A(s2[1]), .B(p2[1]), .Y(n23) );
  XNOR2X1 U79 ( .A(s2[2]), .B(p2[2]), .Y(n22) );
  XNOR2X1 U80 ( .A(s6[4]), .B(p6[4]), .Y(n130) );
  XNOR2X1 U81 ( .A(s0[6]), .B(p0[6]), .Y(n108) );
  XNOR2X1 U82 ( .A(s1[4]), .B(p1[4]), .Y(n96) );
  XNOR2X1 U83 ( .A(s3[6]), .B(p3[6]), .Y(n16) );
  XNOR2X1 U84 ( .A(s6[1]), .B(p6[1]), .Y(n125) );
  XNOR2X1 U85 ( .A(s0[5]), .B(p0[5]), .Y(n109) );
  XNOR2X1 U86 ( .A(s0[3]), .B(p0[3]), .Y(n103) );
  XNOR2X1 U87 ( .A(s1[1]), .B(p1[1]), .Y(n91) );
  XNOR2X1 U88 ( .A(s3[3]), .B(p3[3]), .Y(n11) );
  XNOR2X1 U89 ( .A(s3[5]), .B(p3[5]), .Y(n17) );
  XNOR2X1 U90 ( .A(s3[2]), .B(p3[2]), .Y(n12) );
  XNOR2X1 U91 ( .A(s3[4]), .B(p3[4]), .Y(n18) );
  XNOR2X1 U92 ( .A(s3[1]), .B(p3[1]), .Y(n13) );
endmodule


module Pattern_String_Comparator_Cell_43 ( s7, s6, s5, s4, s3, s2, s1, s0, p7, 
        p6, p5, p4, p3, p2, p1, p0, check, match );
  input [7:0] s7;
  input [7:0] s6;
  input [7:0] s5;
  input [7:0] s4;
  input [7:0] s3;
  input [7:0] s2;
  input [7:0] s1;
  input [7:0] s0;
  input [7:0] p7;
  input [7:0] p6;
  input [7:0] p5;
  input [7:0] p4;
  input [7:0] p3;
  input [7:0] p2;
  input [7:0] p1;
  input [7:0] p0;
  input [7:0] check;
  output match;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30,
         n31, n32, n91, n92, n93, n94, n95, n96, n97, n98, n99, n100, n101,
         n102, n103, n104, n105, n106, n107, n108, n109, n110, n111, n112,
         n113, n114, n115, n116, n117, n118, n119, n120, n121, n122, n123,
         n124, n125, n126, n127, n128, n129, n130, n131, n132, n133, n134,
         n135, n136, n137, n138, n139, n140, n141, n142, n143, n144, n145,
         n146, n147, n148;

  NOR2X1 U2 ( .A(n148), .B(n147), .Y(match) );
  NAND4X1 U3 ( .A(n102), .B(n101), .C(n100), .D(n99), .Y(n148) );
  NAND4X1 U4 ( .A(n146), .B(n145), .C(n144), .D(n143), .Y(n147) );
  XNOR2X1 U5 ( .A(s7[7]), .B(p7[7]), .Y(n117) );
  OAI21XL U6 ( .A0(n122), .A1(n121), .B0(check[7]), .Y(n145) );
  NAND4X1 U7 ( .A(n116), .B(n115), .C(n114), .D(n113), .Y(n122) );
  NAND4X1 U8 ( .A(n120), .B(n119), .C(n118), .D(n117), .Y(n121) );
  XNOR2X1 U9 ( .A(s7[3]), .B(p7[3]), .Y(n113) );
  XNOR2X1 U10 ( .A(s7[6]), .B(p7[6]), .Y(n118) );
  XNOR2X1 U11 ( .A(s7[2]), .B(p7[2]), .Y(n114) );
  XNOR2X1 U12 ( .A(s7[5]), .B(p7[5]), .Y(n119) );
  XNOR2X1 U13 ( .A(s7[1]), .B(p7[1]), .Y(n115) );
  XNOR2X1 U14 ( .A(s7[0]), .B(p7[0]), .Y(n116) );
  XNOR2X1 U15 ( .A(s5[6]), .B(p5[6]), .Y(n138) );
  OAI21XL U16 ( .A0(n142), .A1(n141), .B0(check[5]), .Y(n143) );
  NAND4X1 U17 ( .A(n136), .B(n135), .C(n134), .D(n133), .Y(n142) );
  NAND4X1 U18 ( .A(n140), .B(n139), .C(n138), .D(n137), .Y(n141) );
  XNOR2X1 U19 ( .A(s5[0]), .B(p5[0]), .Y(n136) );
  XNOR2X1 U20 ( .A(s6[7]), .B(p6[7]), .Y(n127) );
  OAI21XL U21 ( .A0(n132), .A1(n131), .B0(check[6]), .Y(n144) );
  NAND4X1 U22 ( .A(n126), .B(n125), .C(n124), .D(n123), .Y(n132) );
  NAND4X1 U23 ( .A(n130), .B(n129), .C(n128), .D(n127), .Y(n131) );
  XNOR2X1 U24 ( .A(s6[0]), .B(p6[0]), .Y(n126) );
  XNOR2X1 U25 ( .A(s5[3]), .B(p5[3]), .Y(n133) );
  XNOR2X1 U26 ( .A(s5[5]), .B(p5[5]), .Y(n139) );
  XNOR2X1 U27 ( .A(s5[2]), .B(p5[2]), .Y(n134) );
  XNOR2X1 U28 ( .A(s5[4]), .B(p5[4]), .Y(n140) );
  XNOR2X1 U29 ( .A(s3[7]), .B(p3[7]), .Y(n15) );
  XNOR2X1 U30 ( .A(s5[1]), .B(p5[1]), .Y(n135) );
  OAI21XL U31 ( .A0(n20), .A1(n19), .B0(check[3]), .Y(n101) );
  NAND4X1 U32 ( .A(n14), .B(n13), .C(n12), .D(n11), .Y(n20) );
  NAND4X1 U33 ( .A(n18), .B(n17), .C(n16), .D(n15), .Y(n19) );
  XNOR2X1 U34 ( .A(s3[0]), .B(p3[0]), .Y(n14) );
  XNOR2X1 U35 ( .A(s4[7]), .B(p4[7]), .Y(n5) );
  OAI21XL U36 ( .A0(n10), .A1(n9), .B0(check[4]), .Y(n102) );
  NAND4X1 U37 ( .A(n4), .B(n3), .C(n2), .D(n1), .Y(n10) );
  NAND4X1 U38 ( .A(n8), .B(n7), .C(n6), .D(n5), .Y(n9) );
  XNOR2X1 U39 ( .A(s4[0]), .B(p4[0]), .Y(n4) );
  XNOR2X1 U40 ( .A(s4[6]), .B(p4[6]), .Y(n6) );
  XNOR2X1 U41 ( .A(s4[3]), .B(p4[3]), .Y(n1) );
  XNOR2X1 U42 ( .A(s4[5]), .B(p4[5]), .Y(n7) );
  XNOR2X1 U43 ( .A(s4[2]), .B(p4[2]), .Y(n2) );
  XNOR2X1 U44 ( .A(s4[4]), .B(p4[4]), .Y(n8) );
  XNOR2X1 U45 ( .A(s4[1]), .B(p4[1]), .Y(n3) );
  XNOR2X1 U46 ( .A(s0[2]), .B(p0[2]), .Y(n104) );
  OAI21XL U47 ( .A0(n112), .A1(n111), .B0(check[0]), .Y(n146) );
  NAND4X1 U48 ( .A(n110), .B(n109), .C(n108), .D(n107), .Y(n111) );
  NAND4X1 U49 ( .A(n106), .B(n105), .C(n104), .D(n103), .Y(n112) );
  XNOR2X1 U50 ( .A(s0[4]), .B(p0[4]), .Y(n110) );
  XNOR2X1 U51 ( .A(s7[4]), .B(p7[4]), .Y(n120) );
  XNOR2X1 U52 ( .A(s0[1]), .B(p0[1]), .Y(n105) );
  XNOR2X1 U53 ( .A(s5[7]), .B(p5[7]), .Y(n137) );
  XNOR2X1 U54 ( .A(s0[0]), .B(p0[0]), .Y(n106) );
  XNOR2X1 U55 ( .A(s1[7]), .B(p1[7]), .Y(n93) );
  OAI21XL U56 ( .A0(n98), .A1(n97), .B0(check[1]), .Y(n99) );
  NAND4X1 U57 ( .A(n92), .B(n91), .C(n32), .D(n31), .Y(n98) );
  NAND4X1 U58 ( .A(n96), .B(n95), .C(n94), .D(n93), .Y(n97) );
  XNOR2X1 U59 ( .A(s1[0]), .B(p1[0]), .Y(n92) );
  XNOR2X1 U60 ( .A(s6[6]), .B(p6[6]), .Y(n128) );
  XNOR2X1 U61 ( .A(s2[7]), .B(p2[7]), .Y(n25) );
  XNOR2X1 U62 ( .A(s1[6]), .B(p1[6]), .Y(n94) );
  OAI21XL U63 ( .A0(n30), .A1(n29), .B0(check[2]), .Y(n100) );
  NAND4X1 U64 ( .A(n24), .B(n23), .C(n22), .D(n21), .Y(n30) );
  NAND4X1 U65 ( .A(n28), .B(n27), .C(n26), .D(n25), .Y(n29) );
  XNOR2X1 U66 ( .A(s2[0]), .B(p2[0]), .Y(n24) );
  XNOR2X1 U67 ( .A(s6[3]), .B(p6[3]), .Y(n123) );
  XNOR2X1 U68 ( .A(s1[3]), .B(p1[3]), .Y(n31) );
  XNOR2X1 U69 ( .A(s2[6]), .B(p2[6]), .Y(n26) );
  XNOR2X1 U70 ( .A(s6[5]), .B(p6[5]), .Y(n129) );
  XNOR2X1 U71 ( .A(s0[7]), .B(p0[7]), .Y(n107) );
  XNOR2X1 U72 ( .A(s1[5]), .B(p1[5]), .Y(n95) );
  XNOR2X1 U73 ( .A(s6[2]), .B(p6[2]), .Y(n124) );
  XNOR2X1 U74 ( .A(s2[3]), .B(p2[3]), .Y(n21) );
  XNOR2X1 U75 ( .A(s1[2]), .B(p1[2]), .Y(n32) );
  XNOR2X1 U76 ( .A(s6[4]), .B(p6[4]), .Y(n130) );
  XNOR2X1 U77 ( .A(s1[4]), .B(p1[4]), .Y(n96) );
  XNOR2X1 U78 ( .A(s2[5]), .B(p2[5]), .Y(n27) );
  XNOR2X1 U79 ( .A(s0[6]), .B(p0[6]), .Y(n108) );
  XNOR2X1 U80 ( .A(s3[6]), .B(p3[6]), .Y(n16) );
  XNOR2X1 U81 ( .A(s2[2]), .B(p2[2]), .Y(n22) );
  XNOR2X1 U82 ( .A(s6[1]), .B(p6[1]), .Y(n125) );
  XNOR2X1 U83 ( .A(s0[5]), .B(p0[5]), .Y(n109) );
  XNOR2X1 U84 ( .A(s1[1]), .B(p1[1]), .Y(n91) );
  XNOR2X1 U85 ( .A(s0[3]), .B(p0[3]), .Y(n103) );
  XNOR2X1 U86 ( .A(s3[3]), .B(p3[3]), .Y(n11) );
  XNOR2X1 U87 ( .A(s2[4]), .B(p2[4]), .Y(n28) );
  XNOR2X1 U88 ( .A(s3[5]), .B(p3[5]), .Y(n17) );
  XNOR2X1 U89 ( .A(s2[1]), .B(p2[1]), .Y(n23) );
  XNOR2X1 U90 ( .A(s3[2]), .B(p3[2]), .Y(n12) );
  XNOR2X1 U91 ( .A(s3[4]), .B(p3[4]), .Y(n18) );
  XNOR2X1 U92 ( .A(s3[1]), .B(p3[1]), .Y(n13) );
endmodule


module Pattern_String_Comparator_Cell_42 ( s7, s6, s5, s4, s3, s2, s1, s0, p7, 
        p6, p5, p4, p3, p2, p1, p0, check, match );
  input [7:0] s7;
  input [7:0] s6;
  input [7:0] s5;
  input [7:0] s4;
  input [7:0] s3;
  input [7:0] s2;
  input [7:0] s1;
  input [7:0] s0;
  input [7:0] p7;
  input [7:0] p6;
  input [7:0] p5;
  input [7:0] p4;
  input [7:0] p3;
  input [7:0] p2;
  input [7:0] p1;
  input [7:0] p0;
  input [7:0] check;
  output match;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30,
         n31, n32, n91, n92, n93, n94, n95, n96, n97, n98, n99, n100, n101,
         n102, n103, n104, n105, n106, n107, n108, n109, n110, n111, n112,
         n113, n114, n115, n116, n117, n118, n119, n120, n121, n122, n123,
         n124, n125, n126, n127, n128, n129, n130, n131, n132, n133, n134,
         n135, n136, n137, n138, n139, n140, n141, n142, n143, n144, n145,
         n146, n147, n148;

  NOR2X1 U2 ( .A(n148), .B(n147), .Y(match) );
  NAND4X1 U3 ( .A(n102), .B(n101), .C(n100), .D(n99), .Y(n148) );
  NAND4X1 U4 ( .A(n146), .B(n145), .C(n144), .D(n143), .Y(n147) );
  XNOR2X1 U5 ( .A(s7[7]), .B(p7[7]), .Y(n117) );
  OAI21XL U6 ( .A0(n122), .A1(n121), .B0(check[7]), .Y(n145) );
  NAND4X1 U7 ( .A(n116), .B(n115), .C(n114), .D(n113), .Y(n122) );
  NAND4X1 U8 ( .A(n120), .B(n119), .C(n118), .D(n117), .Y(n121) );
  XNOR2X1 U9 ( .A(s7[3]), .B(p7[3]), .Y(n113) );
  XNOR2X1 U10 ( .A(s7[6]), .B(p7[6]), .Y(n118) );
  XNOR2X1 U11 ( .A(s7[2]), .B(p7[2]), .Y(n114) );
  XNOR2X1 U12 ( .A(s7[5]), .B(p7[5]), .Y(n119) );
  XNOR2X1 U13 ( .A(s7[1]), .B(p7[1]), .Y(n115) );
  XNOR2X1 U14 ( .A(s7[0]), .B(p7[0]), .Y(n116) );
  XNOR2X1 U15 ( .A(s5[6]), .B(p5[6]), .Y(n138) );
  OAI21XL U16 ( .A0(n142), .A1(n141), .B0(check[5]), .Y(n143) );
  NAND4X1 U17 ( .A(n136), .B(n135), .C(n134), .D(n133), .Y(n142) );
  NAND4X1 U18 ( .A(n140), .B(n139), .C(n138), .D(n137), .Y(n141) );
  XNOR2X1 U19 ( .A(s5[0]), .B(p5[0]), .Y(n136) );
  XNOR2X1 U20 ( .A(s6[7]), .B(p6[7]), .Y(n127) );
  OAI21XL U21 ( .A0(n132), .A1(n131), .B0(check[6]), .Y(n144) );
  NAND4X1 U22 ( .A(n126), .B(n125), .C(n124), .D(n123), .Y(n132) );
  NAND4X1 U23 ( .A(n130), .B(n129), .C(n128), .D(n127), .Y(n131) );
  XNOR2X1 U24 ( .A(s6[0]), .B(p6[0]), .Y(n126) );
  XNOR2X1 U25 ( .A(s5[3]), .B(p5[3]), .Y(n133) );
  XNOR2X1 U26 ( .A(s5[5]), .B(p5[5]), .Y(n139) );
  XNOR2X1 U27 ( .A(s5[2]), .B(p5[2]), .Y(n134) );
  XNOR2X1 U28 ( .A(s5[4]), .B(p5[4]), .Y(n140) );
  XNOR2X1 U29 ( .A(s3[7]), .B(p3[7]), .Y(n15) );
  XNOR2X1 U30 ( .A(s5[1]), .B(p5[1]), .Y(n135) );
  OAI21XL U31 ( .A0(n20), .A1(n19), .B0(check[3]), .Y(n101) );
  NAND4X1 U32 ( .A(n14), .B(n13), .C(n12), .D(n11), .Y(n20) );
  NAND4X1 U33 ( .A(n18), .B(n17), .C(n16), .D(n15), .Y(n19) );
  XNOR2X1 U34 ( .A(s3[0]), .B(p3[0]), .Y(n14) );
  XNOR2X1 U35 ( .A(s4[7]), .B(p4[7]), .Y(n5) );
  OAI21XL U36 ( .A0(n10), .A1(n9), .B0(check[4]), .Y(n102) );
  NAND4X1 U37 ( .A(n4), .B(n3), .C(n2), .D(n1), .Y(n10) );
  NAND4X1 U38 ( .A(n8), .B(n7), .C(n6), .D(n5), .Y(n9) );
  XNOR2X1 U39 ( .A(s4[0]), .B(p4[0]), .Y(n4) );
  XNOR2X1 U40 ( .A(s4[6]), .B(p4[6]), .Y(n6) );
  XNOR2X1 U41 ( .A(s4[3]), .B(p4[3]), .Y(n1) );
  XNOR2X1 U42 ( .A(s4[5]), .B(p4[5]), .Y(n7) );
  XNOR2X1 U43 ( .A(s4[2]), .B(p4[2]), .Y(n2) );
  XNOR2X1 U44 ( .A(s4[4]), .B(p4[4]), .Y(n8) );
  XNOR2X1 U45 ( .A(s4[1]), .B(p4[1]), .Y(n3) );
  XNOR2X1 U46 ( .A(s0[2]), .B(p0[2]), .Y(n104) );
  OAI21XL U47 ( .A0(n112), .A1(n111), .B0(check[0]), .Y(n146) );
  NAND4X1 U48 ( .A(n110), .B(n109), .C(n108), .D(n107), .Y(n111) );
  NAND4X1 U49 ( .A(n106), .B(n105), .C(n104), .D(n103), .Y(n112) );
  XNOR2X1 U50 ( .A(s0[4]), .B(p0[4]), .Y(n110) );
  XNOR2X1 U51 ( .A(s7[4]), .B(p7[4]), .Y(n120) );
  XNOR2X1 U52 ( .A(s0[1]), .B(p0[1]), .Y(n105) );
  XNOR2X1 U53 ( .A(s5[7]), .B(p5[7]), .Y(n137) );
  XNOR2X1 U54 ( .A(s0[0]), .B(p0[0]), .Y(n106) );
  XNOR2X1 U55 ( .A(s1[7]), .B(p1[7]), .Y(n93) );
  OAI21XL U56 ( .A0(n98), .A1(n97), .B0(check[1]), .Y(n99) );
  NAND4X1 U57 ( .A(n92), .B(n91), .C(n32), .D(n31), .Y(n98) );
  NAND4X1 U58 ( .A(n96), .B(n95), .C(n94), .D(n93), .Y(n97) );
  XNOR2X1 U59 ( .A(s1[0]), .B(p1[0]), .Y(n92) );
  XNOR2X1 U60 ( .A(s6[6]), .B(p6[6]), .Y(n128) );
  XNOR2X1 U61 ( .A(s2[7]), .B(p2[7]), .Y(n25) );
  XNOR2X1 U62 ( .A(s1[6]), .B(p1[6]), .Y(n94) );
  OAI21XL U63 ( .A0(n30), .A1(n29), .B0(check[2]), .Y(n100) );
  NAND4X1 U64 ( .A(n24), .B(n23), .C(n22), .D(n21), .Y(n30) );
  NAND4X1 U65 ( .A(n28), .B(n27), .C(n26), .D(n25), .Y(n29) );
  XNOR2X1 U66 ( .A(s2[0]), .B(p2[0]), .Y(n24) );
  XNOR2X1 U67 ( .A(s6[3]), .B(p6[3]), .Y(n123) );
  XNOR2X1 U68 ( .A(s1[3]), .B(p1[3]), .Y(n31) );
  XNOR2X1 U69 ( .A(s2[6]), .B(p2[6]), .Y(n26) );
  XNOR2X1 U70 ( .A(s6[5]), .B(p6[5]), .Y(n129) );
  XNOR2X1 U71 ( .A(s0[7]), .B(p0[7]), .Y(n107) );
  XNOR2X1 U72 ( .A(s1[5]), .B(p1[5]), .Y(n95) );
  XNOR2X1 U73 ( .A(s6[2]), .B(p6[2]), .Y(n124) );
  XNOR2X1 U74 ( .A(s2[3]), .B(p2[3]), .Y(n21) );
  XNOR2X1 U75 ( .A(s1[2]), .B(p1[2]), .Y(n32) );
  XNOR2X1 U76 ( .A(s6[4]), .B(p6[4]), .Y(n130) );
  XNOR2X1 U77 ( .A(s1[4]), .B(p1[4]), .Y(n96) );
  XNOR2X1 U78 ( .A(s2[5]), .B(p2[5]), .Y(n27) );
  XNOR2X1 U79 ( .A(s0[6]), .B(p0[6]), .Y(n108) );
  XNOR2X1 U80 ( .A(s3[6]), .B(p3[6]), .Y(n16) );
  XNOR2X1 U81 ( .A(s2[2]), .B(p2[2]), .Y(n22) );
  XNOR2X1 U82 ( .A(s6[1]), .B(p6[1]), .Y(n125) );
  XNOR2X1 U83 ( .A(s0[5]), .B(p0[5]), .Y(n109) );
  XNOR2X1 U84 ( .A(s1[1]), .B(p1[1]), .Y(n91) );
  XNOR2X1 U85 ( .A(s0[3]), .B(p0[3]), .Y(n103) );
  XNOR2X1 U86 ( .A(s3[3]), .B(p3[3]), .Y(n11) );
  XNOR2X1 U87 ( .A(s2[4]), .B(p2[4]), .Y(n28) );
  XNOR2X1 U88 ( .A(s3[5]), .B(p3[5]), .Y(n17) );
  XNOR2X1 U89 ( .A(s2[1]), .B(p2[1]), .Y(n23) );
  XNOR2X1 U90 ( .A(s3[2]), .B(p3[2]), .Y(n12) );
  XNOR2X1 U91 ( .A(s3[4]), .B(p3[4]), .Y(n18) );
  XNOR2X1 U92 ( .A(s3[1]), .B(p3[1]), .Y(n13) );
endmodule


module Pattern_String_Comparator_Cell_41 ( s7, s6, s5, s4, s3, s2, s1, s0, p7, 
        p6, p5, p4, p3, p2, p1, p0, check, match );
  input [7:0] s7;
  input [7:0] s6;
  input [7:0] s5;
  input [7:0] s4;
  input [7:0] s3;
  input [7:0] s2;
  input [7:0] s1;
  input [7:0] s0;
  input [7:0] p7;
  input [7:0] p6;
  input [7:0] p5;
  input [7:0] p4;
  input [7:0] p3;
  input [7:0] p2;
  input [7:0] p1;
  input [7:0] p0;
  input [7:0] check;
  output match;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30,
         n31, n32, n91, n92, n93, n94, n95, n96, n97, n98, n99, n100, n101,
         n102, n103, n104, n105, n106, n107, n108, n109, n110, n111, n112,
         n113, n114, n115, n116, n117, n118, n119, n120, n121, n122, n123,
         n124, n125, n126, n127, n128, n129, n130, n131, n132, n133, n134,
         n135, n136, n137, n138, n139, n140, n141, n142, n143, n144, n145,
         n146, n147, n148;

  NOR2X1 U2 ( .A(n148), .B(n147), .Y(match) );
  NAND4X1 U3 ( .A(n102), .B(n101), .C(n100), .D(n99), .Y(n148) );
  NAND4X1 U4 ( .A(n146), .B(n145), .C(n144), .D(n143), .Y(n147) );
  XNOR2X1 U5 ( .A(s7[7]), .B(p7[7]), .Y(n117) );
  OAI21XL U6 ( .A0(n122), .A1(n121), .B0(check[7]), .Y(n145) );
  NAND4X1 U7 ( .A(n116), .B(n115), .C(n114), .D(n113), .Y(n122) );
  NAND4X1 U8 ( .A(n120), .B(n119), .C(n118), .D(n117), .Y(n121) );
  XNOR2X1 U9 ( .A(s7[3]), .B(p7[3]), .Y(n113) );
  XNOR2X1 U10 ( .A(s7[6]), .B(p7[6]), .Y(n118) );
  XNOR2X1 U11 ( .A(s7[2]), .B(p7[2]), .Y(n114) );
  XNOR2X1 U12 ( .A(s7[5]), .B(p7[5]), .Y(n119) );
  XNOR2X1 U13 ( .A(s7[1]), .B(p7[1]), .Y(n115) );
  XNOR2X1 U14 ( .A(s7[0]), .B(p7[0]), .Y(n116) );
  XNOR2X1 U15 ( .A(s5[6]), .B(p5[6]), .Y(n138) );
  OAI21XL U16 ( .A0(n142), .A1(n141), .B0(check[5]), .Y(n143) );
  NAND4X1 U17 ( .A(n136), .B(n135), .C(n134), .D(n133), .Y(n142) );
  NAND4X1 U18 ( .A(n140), .B(n139), .C(n138), .D(n137), .Y(n141) );
  XNOR2X1 U19 ( .A(s5[0]), .B(p5[0]), .Y(n136) );
  XNOR2X1 U20 ( .A(s6[7]), .B(p6[7]), .Y(n127) );
  OAI21XL U21 ( .A0(n132), .A1(n131), .B0(check[6]), .Y(n144) );
  NAND4X1 U22 ( .A(n126), .B(n125), .C(n124), .D(n123), .Y(n132) );
  NAND4X1 U23 ( .A(n130), .B(n129), .C(n128), .D(n127), .Y(n131) );
  XNOR2X1 U24 ( .A(s6[0]), .B(p6[0]), .Y(n126) );
  XNOR2X1 U25 ( .A(s5[3]), .B(p5[3]), .Y(n133) );
  XNOR2X1 U26 ( .A(s5[5]), .B(p5[5]), .Y(n139) );
  XNOR2X1 U27 ( .A(s5[2]), .B(p5[2]), .Y(n134) );
  XNOR2X1 U28 ( .A(s5[4]), .B(p5[4]), .Y(n140) );
  XNOR2X1 U29 ( .A(s3[7]), .B(p3[7]), .Y(n15) );
  XNOR2X1 U30 ( .A(s5[1]), .B(p5[1]), .Y(n135) );
  OAI21XL U31 ( .A0(n20), .A1(n19), .B0(check[3]), .Y(n101) );
  NAND4X1 U32 ( .A(n14), .B(n13), .C(n12), .D(n11), .Y(n20) );
  NAND4X1 U33 ( .A(n18), .B(n17), .C(n16), .D(n15), .Y(n19) );
  XNOR2X1 U34 ( .A(s3[0]), .B(p3[0]), .Y(n14) );
  XNOR2X1 U35 ( .A(s4[7]), .B(p4[7]), .Y(n5) );
  OAI21XL U36 ( .A0(n10), .A1(n9), .B0(check[4]), .Y(n102) );
  NAND4X1 U37 ( .A(n4), .B(n3), .C(n2), .D(n1), .Y(n10) );
  NAND4X1 U38 ( .A(n8), .B(n7), .C(n6), .D(n5), .Y(n9) );
  XNOR2X1 U39 ( .A(s4[0]), .B(p4[0]), .Y(n4) );
  XNOR2X1 U40 ( .A(s4[6]), .B(p4[6]), .Y(n6) );
  XNOR2X1 U41 ( .A(s4[3]), .B(p4[3]), .Y(n1) );
  XNOR2X1 U42 ( .A(s4[5]), .B(p4[5]), .Y(n7) );
  XNOR2X1 U43 ( .A(s4[2]), .B(p4[2]), .Y(n2) );
  XNOR2X1 U44 ( .A(s4[4]), .B(p4[4]), .Y(n8) );
  XNOR2X1 U45 ( .A(s4[1]), .B(p4[1]), .Y(n3) );
  XNOR2X1 U46 ( .A(s0[2]), .B(p0[2]), .Y(n104) );
  OAI21XL U47 ( .A0(n112), .A1(n111), .B0(check[0]), .Y(n146) );
  NAND4X1 U48 ( .A(n110), .B(n109), .C(n108), .D(n107), .Y(n111) );
  NAND4X1 U49 ( .A(n106), .B(n105), .C(n104), .D(n103), .Y(n112) );
  XNOR2X1 U50 ( .A(s0[4]), .B(p0[4]), .Y(n110) );
  XNOR2X1 U51 ( .A(s7[4]), .B(p7[4]), .Y(n120) );
  XNOR2X1 U52 ( .A(s0[1]), .B(p0[1]), .Y(n105) );
  XNOR2X1 U53 ( .A(s5[7]), .B(p5[7]), .Y(n137) );
  XNOR2X1 U54 ( .A(s0[0]), .B(p0[0]), .Y(n106) );
  XNOR2X1 U55 ( .A(s1[7]), .B(p1[7]), .Y(n93) );
  OAI21XL U56 ( .A0(n98), .A1(n97), .B0(check[1]), .Y(n99) );
  NAND4X1 U57 ( .A(n92), .B(n91), .C(n32), .D(n31), .Y(n98) );
  NAND4X1 U58 ( .A(n96), .B(n95), .C(n94), .D(n93), .Y(n97) );
  XNOR2X1 U59 ( .A(s1[0]), .B(p1[0]), .Y(n92) );
  XNOR2X1 U60 ( .A(s6[6]), .B(p6[6]), .Y(n128) );
  XNOR2X1 U61 ( .A(s2[7]), .B(p2[7]), .Y(n25) );
  XNOR2X1 U62 ( .A(s1[6]), .B(p1[6]), .Y(n94) );
  OAI21XL U63 ( .A0(n30), .A1(n29), .B0(check[2]), .Y(n100) );
  NAND4X1 U64 ( .A(n24), .B(n23), .C(n22), .D(n21), .Y(n30) );
  NAND4X1 U65 ( .A(n28), .B(n27), .C(n26), .D(n25), .Y(n29) );
  XNOR2X1 U66 ( .A(s2[0]), .B(p2[0]), .Y(n24) );
  XNOR2X1 U67 ( .A(s6[3]), .B(p6[3]), .Y(n123) );
  XNOR2X1 U68 ( .A(s1[3]), .B(p1[3]), .Y(n31) );
  XNOR2X1 U69 ( .A(s2[6]), .B(p2[6]), .Y(n26) );
  XNOR2X1 U70 ( .A(s6[5]), .B(p6[5]), .Y(n129) );
  XNOR2X1 U71 ( .A(s0[7]), .B(p0[7]), .Y(n107) );
  XNOR2X1 U72 ( .A(s1[5]), .B(p1[5]), .Y(n95) );
  XNOR2X1 U73 ( .A(s6[2]), .B(p6[2]), .Y(n124) );
  XNOR2X1 U74 ( .A(s2[3]), .B(p2[3]), .Y(n21) );
  XNOR2X1 U75 ( .A(s1[2]), .B(p1[2]), .Y(n32) );
  XNOR2X1 U76 ( .A(s6[4]), .B(p6[4]), .Y(n130) );
  XNOR2X1 U77 ( .A(s1[4]), .B(p1[4]), .Y(n96) );
  XNOR2X1 U78 ( .A(s2[5]), .B(p2[5]), .Y(n27) );
  XNOR2X1 U79 ( .A(s0[6]), .B(p0[6]), .Y(n108) );
  XNOR2X1 U80 ( .A(s3[6]), .B(p3[6]), .Y(n16) );
  XNOR2X1 U81 ( .A(s2[2]), .B(p2[2]), .Y(n22) );
  XNOR2X1 U82 ( .A(s6[1]), .B(p6[1]), .Y(n125) );
  XNOR2X1 U83 ( .A(s0[5]), .B(p0[5]), .Y(n109) );
  XNOR2X1 U84 ( .A(s1[1]), .B(p1[1]), .Y(n91) );
  XNOR2X1 U85 ( .A(s0[3]), .B(p0[3]), .Y(n103) );
  XNOR2X1 U86 ( .A(s3[3]), .B(p3[3]), .Y(n11) );
  XNOR2X1 U87 ( .A(s2[4]), .B(p2[4]), .Y(n28) );
  XNOR2X1 U88 ( .A(s3[5]), .B(p3[5]), .Y(n17) );
  XNOR2X1 U89 ( .A(s2[1]), .B(p2[1]), .Y(n23) );
  XNOR2X1 U90 ( .A(s3[2]), .B(p3[2]), .Y(n12) );
  XNOR2X1 U91 ( .A(s3[4]), .B(p3[4]), .Y(n18) );
  XNOR2X1 U92 ( .A(s3[1]), .B(p3[1]), .Y(n13) );
endmodule


module Pattern_String_Comparator_Cell_40 ( s7, s6, s5, s4, s3, s2, s1, s0, p7, 
        p6, p5, p4, p3, p2, p1, p0, check, match );
  input [7:0] s7;
  input [7:0] s6;
  input [7:0] s5;
  input [7:0] s4;
  input [7:0] s3;
  input [7:0] s2;
  input [7:0] s1;
  input [7:0] s0;
  input [7:0] p7;
  input [7:0] p6;
  input [7:0] p5;
  input [7:0] p4;
  input [7:0] p3;
  input [7:0] p2;
  input [7:0] p1;
  input [7:0] p0;
  input [7:0] check;
  output match;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30,
         n31, n32, n91, n92, n93, n94, n95, n96, n97, n98, n99, n100, n101,
         n102, n103, n104, n105, n106, n107, n108, n109, n110, n111, n112,
         n113, n114, n115, n116, n117, n118, n119, n120, n121, n122, n123,
         n124, n125, n126, n127, n128, n129, n130, n131, n132, n133, n134,
         n135, n136, n137, n138, n139, n140, n141, n142, n143, n144, n145,
         n146, n147, n148;

  NOR2X1 U2 ( .A(n148), .B(n147), .Y(match) );
  NAND4X1 U3 ( .A(n102), .B(n101), .C(n100), .D(n99), .Y(n148) );
  NAND4X1 U4 ( .A(n146), .B(n145), .C(n144), .D(n143), .Y(n147) );
  XNOR2X1 U5 ( .A(s7[7]), .B(p7[7]), .Y(n117) );
  OAI21XL U6 ( .A0(n122), .A1(n121), .B0(check[7]), .Y(n145) );
  NAND4X1 U7 ( .A(n116), .B(n115), .C(n114), .D(n113), .Y(n122) );
  NAND4X1 U8 ( .A(n120), .B(n119), .C(n118), .D(n117), .Y(n121) );
  XNOR2X1 U9 ( .A(s7[3]), .B(p7[3]), .Y(n113) );
  XNOR2X1 U10 ( .A(s7[6]), .B(p7[6]), .Y(n118) );
  XNOR2X1 U11 ( .A(s7[2]), .B(p7[2]), .Y(n114) );
  XNOR2X1 U12 ( .A(s7[5]), .B(p7[5]), .Y(n119) );
  XNOR2X1 U13 ( .A(s7[1]), .B(p7[1]), .Y(n115) );
  XNOR2X1 U14 ( .A(s7[0]), .B(p7[0]), .Y(n116) );
  XNOR2X1 U15 ( .A(s5[6]), .B(p5[6]), .Y(n138) );
  OAI21XL U16 ( .A0(n142), .A1(n141), .B0(check[5]), .Y(n143) );
  NAND4X1 U17 ( .A(n136), .B(n135), .C(n134), .D(n133), .Y(n142) );
  NAND4X1 U18 ( .A(n140), .B(n139), .C(n138), .D(n137), .Y(n141) );
  XNOR2X1 U19 ( .A(s5[0]), .B(p5[0]), .Y(n136) );
  XNOR2X1 U20 ( .A(s6[7]), .B(p6[7]), .Y(n127) );
  OAI21XL U21 ( .A0(n132), .A1(n131), .B0(check[6]), .Y(n144) );
  NAND4X1 U22 ( .A(n126), .B(n125), .C(n124), .D(n123), .Y(n132) );
  NAND4X1 U23 ( .A(n130), .B(n129), .C(n128), .D(n127), .Y(n131) );
  XNOR2X1 U24 ( .A(s6[0]), .B(p6[0]), .Y(n126) );
  XNOR2X1 U25 ( .A(s5[3]), .B(p5[3]), .Y(n133) );
  XNOR2X1 U26 ( .A(s5[5]), .B(p5[5]), .Y(n139) );
  XNOR2X1 U27 ( .A(s5[2]), .B(p5[2]), .Y(n134) );
  XNOR2X1 U28 ( .A(s5[4]), .B(p5[4]), .Y(n140) );
  XNOR2X1 U29 ( .A(s3[7]), .B(p3[7]), .Y(n15) );
  OAI21XL U30 ( .A0(n20), .A1(n19), .B0(check[3]), .Y(n101) );
  NAND4X1 U31 ( .A(n14), .B(n13), .C(n12), .D(n11), .Y(n20) );
  NAND4X1 U32 ( .A(n18), .B(n17), .C(n16), .D(n15), .Y(n19) );
  XNOR2X1 U33 ( .A(s3[0]), .B(p3[0]), .Y(n14) );
  XNOR2X1 U34 ( .A(s5[1]), .B(p5[1]), .Y(n135) );
  XNOR2X1 U35 ( .A(s4[7]), .B(p4[7]), .Y(n5) );
  OAI21XL U36 ( .A0(n10), .A1(n9), .B0(check[4]), .Y(n102) );
  NAND4X1 U37 ( .A(n4), .B(n3), .C(n2), .D(n1), .Y(n10) );
  NAND4X1 U38 ( .A(n8), .B(n7), .C(n6), .D(n5), .Y(n9) );
  XNOR2X1 U39 ( .A(s4[0]), .B(p4[0]), .Y(n4) );
  XNOR2X1 U40 ( .A(s4[6]), .B(p4[6]), .Y(n6) );
  XNOR2X1 U41 ( .A(s4[3]), .B(p4[3]), .Y(n1) );
  XNOR2X1 U42 ( .A(s4[5]), .B(p4[5]), .Y(n7) );
  XNOR2X1 U43 ( .A(s4[2]), .B(p4[2]), .Y(n2) );
  XNOR2X1 U44 ( .A(s4[4]), .B(p4[4]), .Y(n8) );
  XNOR2X1 U45 ( .A(s4[1]), .B(p4[1]), .Y(n3) );
  XNOR2X1 U46 ( .A(s0[2]), .B(p0[2]), .Y(n104) );
  OAI21XL U47 ( .A0(n112), .A1(n111), .B0(check[0]), .Y(n146) );
  NAND4X1 U48 ( .A(n110), .B(n109), .C(n108), .D(n107), .Y(n111) );
  NAND4X1 U49 ( .A(n106), .B(n105), .C(n104), .D(n103), .Y(n112) );
  XNOR2X1 U50 ( .A(s0[4]), .B(p0[4]), .Y(n110) );
  XNOR2X1 U51 ( .A(s7[4]), .B(p7[4]), .Y(n120) );
  XNOR2X1 U52 ( .A(s0[1]), .B(p0[1]), .Y(n105) );
  XNOR2X1 U53 ( .A(s5[7]), .B(p5[7]), .Y(n137) );
  XNOR2X1 U54 ( .A(s0[0]), .B(p0[0]), .Y(n106) );
  XNOR2X1 U55 ( .A(s1[7]), .B(p1[7]), .Y(n93) );
  OAI21XL U56 ( .A0(n98), .A1(n97), .B0(check[1]), .Y(n99) );
  NAND4X1 U57 ( .A(n92), .B(n91), .C(n32), .D(n31), .Y(n98) );
  NAND4X1 U58 ( .A(n96), .B(n95), .C(n94), .D(n93), .Y(n97) );
  XNOR2X1 U59 ( .A(s1[0]), .B(p1[0]), .Y(n92) );
  XNOR2X1 U60 ( .A(s6[6]), .B(p6[6]), .Y(n128) );
  XNOR2X1 U61 ( .A(s2[7]), .B(p2[7]), .Y(n25) );
  OAI21XL U62 ( .A0(n30), .A1(n29), .B0(check[2]), .Y(n100) );
  NAND4X1 U63 ( .A(n24), .B(n23), .C(n22), .D(n21), .Y(n30) );
  NAND4X1 U64 ( .A(n28), .B(n27), .C(n26), .D(n25), .Y(n29) );
  XNOR2X1 U65 ( .A(s2[0]), .B(p2[0]), .Y(n24) );
  XNOR2X1 U66 ( .A(s1[6]), .B(p1[6]), .Y(n94) );
  XNOR2X1 U67 ( .A(s6[3]), .B(p6[3]), .Y(n123) );
  XNOR2X1 U68 ( .A(s1[3]), .B(p1[3]), .Y(n31) );
  XNOR2X1 U69 ( .A(s2[6]), .B(p2[6]), .Y(n26) );
  XNOR2X1 U70 ( .A(s6[5]), .B(p6[5]), .Y(n129) );
  XNOR2X1 U71 ( .A(s0[7]), .B(p0[7]), .Y(n107) );
  XNOR2X1 U72 ( .A(s1[5]), .B(p1[5]), .Y(n95) );
  XNOR2X1 U73 ( .A(s6[2]), .B(p6[2]), .Y(n124) );
  XNOR2X1 U74 ( .A(s2[3]), .B(p2[3]), .Y(n21) );
  XNOR2X1 U75 ( .A(s1[2]), .B(p1[2]), .Y(n32) );
  XNOR2X1 U76 ( .A(s6[4]), .B(p6[4]), .Y(n130) );
  XNOR2X1 U77 ( .A(s1[4]), .B(p1[4]), .Y(n96) );
  XNOR2X1 U78 ( .A(s2[5]), .B(p2[5]), .Y(n27) );
  XNOR2X1 U79 ( .A(s0[6]), .B(p0[6]), .Y(n108) );
  XNOR2X1 U80 ( .A(s3[6]), .B(p3[6]), .Y(n16) );
  XNOR2X1 U81 ( .A(s2[2]), .B(p2[2]), .Y(n22) );
  XNOR2X1 U82 ( .A(s6[1]), .B(p6[1]), .Y(n125) );
  XNOR2X1 U83 ( .A(s0[5]), .B(p0[5]), .Y(n109) );
  XNOR2X1 U84 ( .A(s1[1]), .B(p1[1]), .Y(n91) );
  XNOR2X1 U85 ( .A(s0[3]), .B(p0[3]), .Y(n103) );
  XNOR2X1 U86 ( .A(s3[3]), .B(p3[3]), .Y(n11) );
  XNOR2X1 U87 ( .A(s2[4]), .B(p2[4]), .Y(n28) );
  XNOR2X1 U88 ( .A(s3[5]), .B(p3[5]), .Y(n17) );
  XNOR2X1 U89 ( .A(s2[1]), .B(p2[1]), .Y(n23) );
  XNOR2X1 U90 ( .A(s3[2]), .B(p3[2]), .Y(n12) );
  XNOR2X1 U91 ( .A(s3[4]), .B(p3[4]), .Y(n18) );
  XNOR2X1 U92 ( .A(s3[1]), .B(p3[1]), .Y(n13) );
endmodule


module Pattern_String_Comparator_Cell_39 ( s7, s6, s5, s4, s3, s2, s1, s0, p7, 
        p6, p5, p4, p3, p2, p1, p0, check, match );
  input [7:0] s7;
  input [7:0] s6;
  input [7:0] s5;
  input [7:0] s4;
  input [7:0] s3;
  input [7:0] s2;
  input [7:0] s1;
  input [7:0] s0;
  input [7:0] p7;
  input [7:0] p6;
  input [7:0] p5;
  input [7:0] p4;
  input [7:0] p3;
  input [7:0] p2;
  input [7:0] p1;
  input [7:0] p0;
  input [7:0] check;
  output match;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30,
         n31, n32, n91, n92, n93, n94, n95, n96, n97, n98, n99, n100, n101,
         n102, n103, n104, n105, n106, n107, n108, n109, n110, n111, n112,
         n113, n114, n115, n116, n117, n118, n119, n120, n121, n122, n123,
         n124, n125, n126, n127, n128, n129, n130, n131, n132, n133, n134,
         n135, n136, n137, n138, n139, n140, n141, n142, n143, n144, n145,
         n146, n147, n148;

  NOR2X1 U2 ( .A(n148), .B(n147), .Y(match) );
  NAND4X1 U3 ( .A(n102), .B(n101), .C(n100), .D(n99), .Y(n148) );
  NAND4X1 U4 ( .A(n146), .B(n145), .C(n144), .D(n143), .Y(n147) );
  XNOR2X1 U5 ( .A(s7[7]), .B(p7[7]), .Y(n117) );
  OAI21XL U6 ( .A0(n122), .A1(n121), .B0(check[7]), .Y(n145) );
  NAND4X1 U7 ( .A(n116), .B(n115), .C(n114), .D(n113), .Y(n122) );
  NAND4X1 U8 ( .A(n120), .B(n119), .C(n118), .D(n117), .Y(n121) );
  XNOR2X1 U9 ( .A(s7[3]), .B(p7[3]), .Y(n113) );
  XNOR2X1 U10 ( .A(s7[6]), .B(p7[6]), .Y(n118) );
  XNOR2X1 U11 ( .A(s7[2]), .B(p7[2]), .Y(n114) );
  XNOR2X1 U12 ( .A(s7[5]), .B(p7[5]), .Y(n119) );
  XNOR2X1 U13 ( .A(s7[1]), .B(p7[1]), .Y(n115) );
  XNOR2X1 U14 ( .A(s7[0]), .B(p7[0]), .Y(n116) );
  XNOR2X1 U15 ( .A(s5[6]), .B(p5[6]), .Y(n138) );
  OAI21XL U16 ( .A0(n142), .A1(n141), .B0(check[5]), .Y(n143) );
  NAND4X1 U17 ( .A(n136), .B(n135), .C(n134), .D(n133), .Y(n142) );
  NAND4X1 U18 ( .A(n140), .B(n139), .C(n138), .D(n137), .Y(n141) );
  XNOR2X1 U19 ( .A(s5[0]), .B(p5[0]), .Y(n136) );
  XNOR2X1 U20 ( .A(s6[7]), .B(p6[7]), .Y(n127) );
  OAI21XL U21 ( .A0(n132), .A1(n131), .B0(check[6]), .Y(n144) );
  NAND4X1 U22 ( .A(n126), .B(n125), .C(n124), .D(n123), .Y(n132) );
  NAND4X1 U23 ( .A(n130), .B(n129), .C(n128), .D(n127), .Y(n131) );
  XNOR2X1 U24 ( .A(s6[0]), .B(p6[0]), .Y(n126) );
  XNOR2X1 U25 ( .A(s5[3]), .B(p5[3]), .Y(n133) );
  XNOR2X1 U26 ( .A(s5[5]), .B(p5[5]), .Y(n139) );
  XNOR2X1 U27 ( .A(s5[2]), .B(p5[2]), .Y(n134) );
  XNOR2X1 U28 ( .A(s5[4]), .B(p5[4]), .Y(n140) );
  XNOR2X1 U29 ( .A(s3[7]), .B(p3[7]), .Y(n15) );
  XNOR2X1 U30 ( .A(s5[1]), .B(p5[1]), .Y(n135) );
  OAI21XL U31 ( .A0(n20), .A1(n19), .B0(check[3]), .Y(n101) );
  NAND4X1 U32 ( .A(n14), .B(n13), .C(n12), .D(n11), .Y(n20) );
  NAND4X1 U33 ( .A(n18), .B(n17), .C(n16), .D(n15), .Y(n19) );
  XNOR2X1 U34 ( .A(s3[0]), .B(p3[0]), .Y(n14) );
  XNOR2X1 U35 ( .A(s4[7]), .B(p4[7]), .Y(n5) );
  OAI21XL U36 ( .A0(n10), .A1(n9), .B0(check[4]), .Y(n102) );
  NAND4X1 U37 ( .A(n4), .B(n3), .C(n2), .D(n1), .Y(n10) );
  NAND4X1 U38 ( .A(n8), .B(n7), .C(n6), .D(n5), .Y(n9) );
  XNOR2X1 U39 ( .A(s4[0]), .B(p4[0]), .Y(n4) );
  XNOR2X1 U40 ( .A(s4[6]), .B(p4[6]), .Y(n6) );
  XNOR2X1 U41 ( .A(s4[3]), .B(p4[3]), .Y(n1) );
  XNOR2X1 U42 ( .A(s4[5]), .B(p4[5]), .Y(n7) );
  XNOR2X1 U43 ( .A(s4[2]), .B(p4[2]), .Y(n2) );
  XNOR2X1 U44 ( .A(s4[4]), .B(p4[4]), .Y(n8) );
  XNOR2X1 U45 ( .A(s4[1]), .B(p4[1]), .Y(n3) );
  XNOR2X1 U46 ( .A(s7[4]), .B(p7[4]), .Y(n120) );
  XNOR2X1 U47 ( .A(s5[7]), .B(p5[7]), .Y(n137) );
  XNOR2X1 U48 ( .A(s0[2]), .B(p0[2]), .Y(n104) );
  OAI21XL U49 ( .A0(n112), .A1(n111), .B0(check[0]), .Y(n146) );
  NAND4X1 U50 ( .A(n110), .B(n109), .C(n108), .D(n107), .Y(n111) );
  NAND4X1 U51 ( .A(n106), .B(n105), .C(n104), .D(n103), .Y(n112) );
  XNOR2X1 U52 ( .A(s0[5]), .B(p0[5]), .Y(n109) );
  XNOR2X1 U53 ( .A(s1[7]), .B(p1[7]), .Y(n93) );
  OAI21XL U54 ( .A0(n98), .A1(n97), .B0(check[1]), .Y(n99) );
  NAND4X1 U55 ( .A(n92), .B(n91), .C(n32), .D(n31), .Y(n98) );
  NAND4X1 U56 ( .A(n96), .B(n95), .C(n94), .D(n93), .Y(n97) );
  XNOR2X1 U57 ( .A(s1[0]), .B(p1[0]), .Y(n92) );
  XNOR2X1 U58 ( .A(s0[1]), .B(p0[1]), .Y(n105) );
  XNOR2X1 U59 ( .A(s6[6]), .B(p6[6]), .Y(n128) );
  XNOR2X1 U60 ( .A(s2[7]), .B(p2[7]), .Y(n25) );
  XNOR2X1 U61 ( .A(s1[6]), .B(p1[6]), .Y(n94) );
  OAI21XL U62 ( .A0(n30), .A1(n29), .B0(check[2]), .Y(n100) );
  NAND4X1 U63 ( .A(n24), .B(n23), .C(n22), .D(n21), .Y(n30) );
  NAND4X1 U64 ( .A(n28), .B(n27), .C(n26), .D(n25), .Y(n29) );
  XNOR2X1 U65 ( .A(s2[0]), .B(p2[0]), .Y(n24) );
  XNOR2X1 U66 ( .A(s6[3]), .B(p6[3]), .Y(n123) );
  XNOR2X1 U67 ( .A(s1[3]), .B(p1[3]), .Y(n31) );
  XNOR2X1 U68 ( .A(s0[0]), .B(p0[0]), .Y(n106) );
  XNOR2X1 U69 ( .A(s2[6]), .B(p2[6]), .Y(n26) );
  XNOR2X1 U70 ( .A(s6[5]), .B(p6[5]), .Y(n129) );
  XNOR2X1 U71 ( .A(s1[5]), .B(p1[5]), .Y(n95) );
  XNOR2X1 U72 ( .A(s6[2]), .B(p6[2]), .Y(n124) );
  XNOR2X1 U73 ( .A(s2[3]), .B(p2[3]), .Y(n21) );
  XNOR2X1 U74 ( .A(s1[2]), .B(p1[2]), .Y(n32) );
  XNOR2X1 U75 ( .A(s6[4]), .B(p6[4]), .Y(n130) );
  XNOR2X1 U76 ( .A(s1[4]), .B(p1[4]), .Y(n96) );
  XNOR2X1 U77 ( .A(s2[5]), .B(p2[5]), .Y(n27) );
  XNOR2X1 U78 ( .A(s3[6]), .B(p3[6]), .Y(n16) );
  XNOR2X1 U79 ( .A(s2[2]), .B(p2[2]), .Y(n22) );
  XNOR2X1 U80 ( .A(s6[1]), .B(p6[1]), .Y(n125) );
  XNOR2X1 U81 ( .A(s1[1]), .B(p1[1]), .Y(n91) );
  XNOR2X1 U82 ( .A(s3[3]), .B(p3[3]), .Y(n11) );
  XNOR2X1 U83 ( .A(s2[4]), .B(p2[4]), .Y(n28) );
  XNOR2X1 U84 ( .A(s3[5]), .B(p3[5]), .Y(n17) );
  XNOR2X1 U85 ( .A(s2[1]), .B(p2[1]), .Y(n23) );
  XNOR2X1 U86 ( .A(s3[2]), .B(p3[2]), .Y(n12) );
  XNOR2X1 U87 ( .A(s0[7]), .B(p0[7]), .Y(n107) );
  XNOR2X1 U88 ( .A(s3[4]), .B(p3[4]), .Y(n18) );
  XNOR2X1 U89 ( .A(s3[1]), .B(p3[1]), .Y(n13) );
  XNOR2X1 U90 ( .A(s0[6]), .B(p0[6]), .Y(n108) );
  XNOR2X1 U91 ( .A(s0[3]), .B(p0[3]), .Y(n103) );
  XNOR2X1 U92 ( .A(s0[4]), .B(p0[4]), .Y(n110) );
endmodule


module Pattern_String_Comparator_Cell_38 ( s7, s6, s5, s4, s3, s2, s1, s0, p7, 
        p6, p5, p4, p3, p2, p1, p0, check, match );
  input [7:0] s7;
  input [7:0] s6;
  input [7:0] s5;
  input [7:0] s4;
  input [7:0] s3;
  input [7:0] s2;
  input [7:0] s1;
  input [7:0] s0;
  input [7:0] p7;
  input [7:0] p6;
  input [7:0] p5;
  input [7:0] p4;
  input [7:0] p3;
  input [7:0] p2;
  input [7:0] p1;
  input [7:0] p0;
  input [7:0] check;
  output match;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30,
         n31, n32, n91, n92, n93, n94, n95, n96, n97, n98, n99, n100, n101,
         n102, n103, n104, n105, n106, n107, n108, n109, n110, n111, n112,
         n113, n114, n115, n116, n117, n118, n119, n120, n121, n122, n123,
         n124, n125, n126, n127, n128, n129, n130, n131, n132, n133, n134,
         n135, n136, n137, n138, n139, n140, n141, n142, n143, n144, n145,
         n146, n147, n148;

  NOR2X1 U2 ( .A(n148), .B(n147), .Y(match) );
  NAND4X1 U3 ( .A(n102), .B(n101), .C(n100), .D(n99), .Y(n148) );
  NAND4X1 U4 ( .A(n146), .B(n145), .C(n144), .D(n143), .Y(n147) );
  XNOR2X1 U5 ( .A(s7[7]), .B(p7[7]), .Y(n117) );
  OAI21XL U6 ( .A0(n122), .A1(n121), .B0(check[7]), .Y(n145) );
  NAND4X1 U7 ( .A(n116), .B(n115), .C(n114), .D(n113), .Y(n122) );
  NAND4X1 U8 ( .A(n120), .B(n119), .C(n118), .D(n117), .Y(n121) );
  XNOR2X1 U9 ( .A(s7[3]), .B(p7[3]), .Y(n113) );
  XNOR2X1 U10 ( .A(s7[6]), .B(p7[6]), .Y(n118) );
  XNOR2X1 U11 ( .A(s7[2]), .B(p7[2]), .Y(n114) );
  XNOR2X1 U12 ( .A(s7[5]), .B(p7[5]), .Y(n119) );
  XNOR2X1 U13 ( .A(s7[1]), .B(p7[1]), .Y(n115) );
  XNOR2X1 U14 ( .A(s5[3]), .B(p5[3]), .Y(n133) );
  OAI21XL U15 ( .A0(n142), .A1(n141), .B0(check[5]), .Y(n143) );
  NAND4X1 U16 ( .A(n140), .B(n139), .C(n138), .D(n137), .Y(n141) );
  NAND4X1 U17 ( .A(n136), .B(n135), .C(n134), .D(n133), .Y(n142) );
  XNOR2X1 U18 ( .A(s5[7]), .B(p5[7]), .Y(n137) );
  XNOR2X1 U19 ( .A(s5[6]), .B(p5[6]), .Y(n138) );
  XNOR2X1 U20 ( .A(s6[7]), .B(p6[7]), .Y(n127) );
  OAI21XL U21 ( .A0(n132), .A1(n131), .B0(check[6]), .Y(n144) );
  NAND4X1 U22 ( .A(n126), .B(n125), .C(n124), .D(n123), .Y(n132) );
  NAND4X1 U23 ( .A(n130), .B(n129), .C(n128), .D(n127), .Y(n131) );
  XNOR2X1 U24 ( .A(s6[0]), .B(p6[0]), .Y(n126) );
  XNOR2X1 U25 ( .A(s5[2]), .B(p5[2]), .Y(n134) );
  XNOR2X1 U26 ( .A(s7[0]), .B(p7[0]), .Y(n116) );
  XNOR2X1 U27 ( .A(s5[5]), .B(p5[5]), .Y(n139) );
  XNOR2X1 U28 ( .A(s3[7]), .B(p3[7]), .Y(n15) );
  OAI21XL U29 ( .A0(n20), .A1(n19), .B0(check[3]), .Y(n101) );
  NAND4X1 U30 ( .A(n14), .B(n13), .C(n12), .D(n11), .Y(n20) );
  NAND4X1 U31 ( .A(n18), .B(n17), .C(n16), .D(n15), .Y(n19) );
  XNOR2X1 U32 ( .A(s3[0]), .B(p3[0]), .Y(n14) );
  XNOR2X1 U33 ( .A(s5[1]), .B(p5[1]), .Y(n135) );
  XNOR2X1 U34 ( .A(s5[4]), .B(p5[4]), .Y(n140) );
  XNOR2X1 U35 ( .A(s4[7]), .B(p4[7]), .Y(n5) );
  OAI21XL U36 ( .A0(n10), .A1(n9), .B0(check[4]), .Y(n102) );
  NAND4X1 U37 ( .A(n4), .B(n3), .C(n2), .D(n1), .Y(n10) );
  NAND4X1 U38 ( .A(n8), .B(n7), .C(n6), .D(n5), .Y(n9) );
  XNOR2X1 U39 ( .A(s4[0]), .B(p4[0]), .Y(n4) );
  XNOR2X1 U40 ( .A(s5[0]), .B(p5[0]), .Y(n136) );
  XNOR2X1 U41 ( .A(s4[3]), .B(p4[3]), .Y(n1) );
  XNOR2X1 U42 ( .A(s4[6]), .B(p4[6]), .Y(n6) );
  XNOR2X1 U43 ( .A(s4[2]), .B(p4[2]), .Y(n2) );
  XNOR2X1 U44 ( .A(s4[5]), .B(p4[5]), .Y(n7) );
  XNOR2X1 U45 ( .A(s4[1]), .B(p4[1]), .Y(n3) );
  XNOR2X1 U46 ( .A(s4[4]), .B(p4[4]), .Y(n8) );
  XNOR2X1 U47 ( .A(s7[4]), .B(p7[4]), .Y(n120) );
  XNOR2X1 U48 ( .A(s6[3]), .B(p6[3]), .Y(n123) );
  XNOR2X1 U49 ( .A(s2[7]), .B(p2[7]), .Y(n25) );
  OAI21XL U50 ( .A0(n30), .A1(n29), .B0(check[2]), .Y(n100) );
  NAND4X1 U51 ( .A(n24), .B(n23), .C(n22), .D(n21), .Y(n30) );
  NAND4X1 U52 ( .A(n28), .B(n27), .C(n26), .D(n25), .Y(n29) );
  XNOR2X1 U53 ( .A(s2[0]), .B(p2[0]), .Y(n24) );
  XNOR2X1 U54 ( .A(s6[6]), .B(p6[6]), .Y(n128) );
  XNOR2X1 U55 ( .A(s2[3]), .B(p2[3]), .Y(n21) );
  XNOR2X1 U56 ( .A(s6[2]), .B(p6[2]), .Y(n124) );
  XNOR2X1 U57 ( .A(s2[6]), .B(p2[6]), .Y(n26) );
  XNOR2X1 U58 ( .A(s6[5]), .B(p6[5]), .Y(n129) );
  XNOR2X1 U59 ( .A(s3[3]), .B(p3[3]), .Y(n11) );
  XNOR2X1 U60 ( .A(s2[2]), .B(p2[2]), .Y(n22) );
  XNOR2X1 U61 ( .A(s3[6]), .B(p3[6]), .Y(n16) );
  XNOR2X1 U62 ( .A(s6[1]), .B(p6[1]), .Y(n125) );
  XNOR2X1 U63 ( .A(s2[5]), .B(p2[5]), .Y(n27) );
  XNOR2X1 U64 ( .A(s1[5]), .B(p1[5]), .Y(n95) );
  OAI21XL U65 ( .A0(n98), .A1(n97), .B0(check[1]), .Y(n99) );
  NAND4X1 U66 ( .A(n92), .B(n91), .C(n32), .D(n31), .Y(n98) );
  NAND4X1 U67 ( .A(n96), .B(n95), .C(n94), .D(n93), .Y(n97) );
  XNOR2X1 U68 ( .A(s1[0]), .B(p1[0]), .Y(n92) );
  XNOR2X1 U69 ( .A(s6[4]), .B(p6[4]), .Y(n130) );
  XNOR2X1 U70 ( .A(s3[2]), .B(p3[2]), .Y(n12) );
  XNOR2X1 U71 ( .A(s2[1]), .B(p2[1]), .Y(n23) );
  XNOR2X1 U72 ( .A(s3[5]), .B(p3[5]), .Y(n17) );
  XNOR2X1 U73 ( .A(s2[4]), .B(p2[4]), .Y(n28) );
  XNOR2X1 U74 ( .A(s3[1]), .B(p3[1]), .Y(n13) );
  XNOR2X1 U75 ( .A(s3[4]), .B(p3[4]), .Y(n18) );
  XNOR2X1 U76 ( .A(s0[2]), .B(p0[2]), .Y(n104) );
  OAI21XL U77 ( .A0(n112), .A1(n111), .B0(check[0]), .Y(n146) );
  NAND4X1 U78 ( .A(n110), .B(n109), .C(n108), .D(n107), .Y(n111) );
  NAND4X1 U79 ( .A(n106), .B(n105), .C(n104), .D(n103), .Y(n112) );
  XNOR2X1 U80 ( .A(s0[4]), .B(p0[4]), .Y(n110) );
  XNOR2X1 U81 ( .A(s0[1]), .B(p0[1]), .Y(n105) );
  XNOR2X1 U82 ( .A(s0[0]), .B(p0[0]), .Y(n106) );
  XNOR2X1 U83 ( .A(s1[7]), .B(p1[7]), .Y(n93) );
  XNOR2X1 U84 ( .A(s1[6]), .B(p1[6]), .Y(n94) );
  XNOR2X1 U85 ( .A(s1[3]), .B(p1[3]), .Y(n31) );
  XNOR2X1 U86 ( .A(s0[7]), .B(p0[7]), .Y(n107) );
  XNOR2X1 U87 ( .A(s1[2]), .B(p1[2]), .Y(n32) );
  XNOR2X1 U88 ( .A(s1[4]), .B(p1[4]), .Y(n96) );
  XNOR2X1 U89 ( .A(s0[6]), .B(p0[6]), .Y(n108) );
  XNOR2X1 U90 ( .A(s0[3]), .B(p0[3]), .Y(n103) );
  XNOR2X1 U91 ( .A(s0[5]), .B(p0[5]), .Y(n109) );
  XNOR2X1 U92 ( .A(s1[1]), .B(p1[1]), .Y(n91) );
endmodule


module Pattern_String_Comparator_Cell_37 ( s7, s6, s5, s4, s3, s2, s1, s0, p7, 
        p6, p5, p4, p3, p2, p1, p0, check, match );
  input [7:0] s7;
  input [7:0] s6;
  input [7:0] s5;
  input [7:0] s4;
  input [7:0] s3;
  input [7:0] s2;
  input [7:0] s1;
  input [7:0] s0;
  input [7:0] p7;
  input [7:0] p6;
  input [7:0] p5;
  input [7:0] p4;
  input [7:0] p3;
  input [7:0] p2;
  input [7:0] p1;
  input [7:0] p0;
  input [7:0] check;
  output match;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30,
         n31, n32, n91, n92, n93, n94, n95, n96, n97, n98, n99, n100, n101,
         n102, n103, n104, n105, n106, n107, n108, n109, n110, n111, n112,
         n113, n114, n115, n116, n117, n118, n119, n120, n121, n122, n123,
         n124, n125, n126, n127, n128, n129, n130, n131, n132, n133, n134,
         n135, n136, n137, n138, n139, n140, n141, n142, n143, n144, n145,
         n146, n147, n148;

  NOR2X1 U2 ( .A(n148), .B(n147), .Y(match) );
  NAND4X1 U3 ( .A(n102), .B(n101), .C(n100), .D(n99), .Y(n148) );
  NAND4X1 U4 ( .A(n146), .B(n145), .C(n144), .D(n143), .Y(n147) );
  XNOR2X1 U5 ( .A(s7[7]), .B(p7[7]), .Y(n117) );
  OAI21XL U6 ( .A0(n122), .A1(n121), .B0(check[7]), .Y(n145) );
  NAND4X1 U7 ( .A(n116), .B(n115), .C(n114), .D(n113), .Y(n122) );
  NAND4X1 U8 ( .A(n120), .B(n119), .C(n118), .D(n117), .Y(n121) );
  XNOR2X1 U9 ( .A(s7[3]), .B(p7[3]), .Y(n113) );
  XNOR2X1 U10 ( .A(s7[6]), .B(p7[6]), .Y(n118) );
  XNOR2X1 U11 ( .A(s7[2]), .B(p7[2]), .Y(n114) );
  XNOR2X1 U12 ( .A(s7[5]), .B(p7[5]), .Y(n119) );
  XNOR2X1 U13 ( .A(s7[1]), .B(p7[1]), .Y(n115) );
  XNOR2X1 U14 ( .A(s7[0]), .B(p7[0]), .Y(n116) );
  XNOR2X1 U15 ( .A(s5[6]), .B(p5[6]), .Y(n138) );
  OAI21XL U16 ( .A0(n142), .A1(n141), .B0(check[5]), .Y(n143) );
  NAND4X1 U17 ( .A(n136), .B(n135), .C(n134), .D(n133), .Y(n142) );
  NAND4X1 U18 ( .A(n140), .B(n139), .C(n138), .D(n137), .Y(n141) );
  XNOR2X1 U19 ( .A(s5[0]), .B(p5[0]), .Y(n136) );
  XNOR2X1 U20 ( .A(s6[7]), .B(p6[7]), .Y(n127) );
  OAI21XL U21 ( .A0(n132), .A1(n131), .B0(check[6]), .Y(n144) );
  NAND4X1 U22 ( .A(n126), .B(n125), .C(n124), .D(n123), .Y(n132) );
  NAND4X1 U23 ( .A(n130), .B(n129), .C(n128), .D(n127), .Y(n131) );
  XNOR2X1 U24 ( .A(s6[0]), .B(p6[0]), .Y(n126) );
  XNOR2X1 U25 ( .A(s5[3]), .B(p5[3]), .Y(n133) );
  XNOR2X1 U26 ( .A(s5[5]), .B(p5[5]), .Y(n139) );
  XNOR2X1 U27 ( .A(s5[2]), .B(p5[2]), .Y(n134) );
  XNOR2X1 U28 ( .A(s5[4]), .B(p5[4]), .Y(n140) );
  XNOR2X1 U29 ( .A(s3[7]), .B(p3[7]), .Y(n15) );
  XNOR2X1 U30 ( .A(s5[1]), .B(p5[1]), .Y(n135) );
  OAI21XL U31 ( .A0(n20), .A1(n19), .B0(check[3]), .Y(n101) );
  NAND4X1 U32 ( .A(n14), .B(n13), .C(n12), .D(n11), .Y(n20) );
  NAND4X1 U33 ( .A(n18), .B(n17), .C(n16), .D(n15), .Y(n19) );
  XNOR2X1 U34 ( .A(s3[0]), .B(p3[0]), .Y(n14) );
  XNOR2X1 U35 ( .A(s4[7]), .B(p4[7]), .Y(n5) );
  OAI21XL U36 ( .A0(n10), .A1(n9), .B0(check[4]), .Y(n102) );
  NAND4X1 U37 ( .A(n4), .B(n3), .C(n2), .D(n1), .Y(n10) );
  NAND4X1 U38 ( .A(n8), .B(n7), .C(n6), .D(n5), .Y(n9) );
  XNOR2X1 U39 ( .A(s4[0]), .B(p4[0]), .Y(n4) );
  XNOR2X1 U40 ( .A(s4[6]), .B(p4[6]), .Y(n6) );
  XNOR2X1 U41 ( .A(s4[3]), .B(p4[3]), .Y(n1) );
  XNOR2X1 U42 ( .A(s4[5]), .B(p4[5]), .Y(n7) );
  XNOR2X1 U43 ( .A(s4[2]), .B(p4[2]), .Y(n2) );
  XNOR2X1 U44 ( .A(s4[4]), .B(p4[4]), .Y(n8) );
  XNOR2X1 U45 ( .A(s4[1]), .B(p4[1]), .Y(n3) );
  XNOR2X1 U46 ( .A(s7[4]), .B(p7[4]), .Y(n120) );
  XNOR2X1 U47 ( .A(s5[7]), .B(p5[7]), .Y(n137) );
  XNOR2X1 U48 ( .A(s0[2]), .B(p0[2]), .Y(n104) );
  OAI21XL U49 ( .A0(n112), .A1(n111), .B0(check[0]), .Y(n146) );
  NAND4X1 U50 ( .A(n110), .B(n109), .C(n108), .D(n107), .Y(n111) );
  NAND4X1 U51 ( .A(n106), .B(n105), .C(n104), .D(n103), .Y(n112) );
  XNOR2X1 U52 ( .A(s0[4]), .B(p0[4]), .Y(n110) );
  XNOR2X1 U53 ( .A(s0[1]), .B(p0[1]), .Y(n105) );
  XNOR2X1 U54 ( .A(s6[6]), .B(p6[6]), .Y(n128) );
  XNOR2X1 U55 ( .A(s6[3]), .B(p6[3]), .Y(n123) );
  XNOR2X1 U56 ( .A(s0[0]), .B(p0[0]), .Y(n106) );
  XNOR2X1 U57 ( .A(s6[5]), .B(p6[5]), .Y(n129) );
  XNOR2X1 U58 ( .A(s6[2]), .B(p6[2]), .Y(n124) );
  XNOR2X1 U59 ( .A(s1[7]), .B(p1[7]), .Y(n93) );
  OAI21XL U60 ( .A0(n98), .A1(n97), .B0(check[1]), .Y(n99) );
  NAND4X1 U61 ( .A(n92), .B(n91), .C(n32), .D(n31), .Y(n98) );
  NAND4X1 U62 ( .A(n96), .B(n95), .C(n94), .D(n93), .Y(n97) );
  XNOR2X1 U63 ( .A(s1[0]), .B(p1[0]), .Y(n92) );
  XNOR2X1 U64 ( .A(s6[4]), .B(p6[4]), .Y(n130) );
  XNOR2X1 U65 ( .A(s3[6]), .B(p3[6]), .Y(n16) );
  XNOR2X1 U66 ( .A(s6[1]), .B(p6[1]), .Y(n125) );
  XNOR2X1 U67 ( .A(s2[7]), .B(p2[7]), .Y(n25) );
  OAI21XL U68 ( .A0(n30), .A1(n29), .B0(check[2]), .Y(n100) );
  NAND4X1 U69 ( .A(n24), .B(n23), .C(n22), .D(n21), .Y(n30) );
  NAND4X1 U70 ( .A(n28), .B(n27), .C(n26), .D(n25), .Y(n29) );
  XNOR2X1 U71 ( .A(s2[0]), .B(p2[0]), .Y(n24) );
  XNOR2X1 U72 ( .A(s3[3]), .B(p3[3]), .Y(n11) );
  XNOR2X1 U73 ( .A(s1[6]), .B(p1[6]), .Y(n94) );
  XNOR2X1 U74 ( .A(s1[3]), .B(p1[3]), .Y(n31) );
  XNOR2X1 U75 ( .A(s3[5]), .B(p3[5]), .Y(n17) );
  XNOR2X1 U76 ( .A(s3[2]), .B(p3[2]), .Y(n12) );
  XNOR2X1 U77 ( .A(s2[6]), .B(p2[6]), .Y(n26) );
  XNOR2X1 U78 ( .A(s0[7]), .B(p0[7]), .Y(n107) );
  XNOR2X1 U79 ( .A(s1[5]), .B(p1[5]), .Y(n95) );
  XNOR2X1 U80 ( .A(s2[3]), .B(p2[3]), .Y(n21) );
  XNOR2X1 U81 ( .A(s1[2]), .B(p1[2]), .Y(n32) );
  XNOR2X1 U82 ( .A(s3[4]), .B(p3[4]), .Y(n18) );
  XNOR2X1 U83 ( .A(s1[4]), .B(p1[4]), .Y(n96) );
  XNOR2X1 U84 ( .A(s3[1]), .B(p3[1]), .Y(n13) );
  XNOR2X1 U85 ( .A(s0[6]), .B(p0[6]), .Y(n108) );
  XNOR2X1 U86 ( .A(s2[2]), .B(p2[2]), .Y(n22) );
  XNOR2X1 U87 ( .A(s0[3]), .B(p0[3]), .Y(n103) );
  XNOR2X1 U88 ( .A(s0[5]), .B(p0[5]), .Y(n109) );
  XNOR2X1 U89 ( .A(s1[1]), .B(p1[1]), .Y(n91) );
  XNOR2X1 U90 ( .A(s2[4]), .B(p2[4]), .Y(n28) );
  XNOR2X1 U91 ( .A(s2[1]), .B(p2[1]), .Y(n23) );
  XNOR2X1 U92 ( .A(s2[5]), .B(p2[5]), .Y(n27) );
endmodule


module Pattern_String_Comparator_Cell_36 ( s7, s6, s5, s4, s3, s2, s1, s0, p7, 
        p6, p5, p4, p3, p2, p1, p0, check, match );
  input [7:0] s7;
  input [7:0] s6;
  input [7:0] s5;
  input [7:0] s4;
  input [7:0] s3;
  input [7:0] s2;
  input [7:0] s1;
  input [7:0] s0;
  input [7:0] p7;
  input [7:0] p6;
  input [7:0] p5;
  input [7:0] p4;
  input [7:0] p3;
  input [7:0] p2;
  input [7:0] p1;
  input [7:0] p0;
  input [7:0] check;
  output match;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30,
         n31, n32, n91, n92, n93, n94, n95, n96, n97, n98, n99, n100, n101,
         n102, n103, n104, n105, n106, n107, n108, n109, n110, n111, n112,
         n113, n114, n115, n116, n117, n118, n119, n120, n121, n122, n123,
         n124, n125, n126, n127, n128, n129, n130, n131, n132, n133, n134,
         n135, n136, n137, n138, n139, n140, n141, n142, n143, n144, n145,
         n146, n147, n148;

  NOR2X1 U2 ( .A(n148), .B(n147), .Y(match) );
  NAND4X1 U3 ( .A(n102), .B(n101), .C(n100), .D(n99), .Y(n148) );
  NAND4X1 U4 ( .A(n146), .B(n145), .C(n144), .D(n143), .Y(n147) );
  XNOR2X1 U5 ( .A(s7[7]), .B(p7[7]), .Y(n117) );
  OAI21XL U6 ( .A0(n122), .A1(n121), .B0(check[7]), .Y(n145) );
  NAND4X1 U7 ( .A(n116), .B(n115), .C(n114), .D(n113), .Y(n122) );
  NAND4X1 U8 ( .A(n120), .B(n119), .C(n118), .D(n117), .Y(n121) );
  XNOR2X1 U9 ( .A(s7[3]), .B(p7[3]), .Y(n113) );
  XNOR2X1 U10 ( .A(s7[6]), .B(p7[6]), .Y(n118) );
  XNOR2X1 U11 ( .A(s7[2]), .B(p7[2]), .Y(n114) );
  XNOR2X1 U12 ( .A(s7[5]), .B(p7[5]), .Y(n119) );
  XNOR2X1 U13 ( .A(s7[1]), .B(p7[1]), .Y(n115) );
  XNOR2X1 U14 ( .A(s7[0]), .B(p7[0]), .Y(n116) );
  XNOR2X1 U15 ( .A(s5[6]), .B(p5[6]), .Y(n138) );
  OAI21XL U16 ( .A0(n142), .A1(n141), .B0(check[5]), .Y(n143) );
  NAND4X1 U17 ( .A(n136), .B(n135), .C(n134), .D(n133), .Y(n142) );
  NAND4X1 U18 ( .A(n140), .B(n139), .C(n138), .D(n137), .Y(n141) );
  XNOR2X1 U19 ( .A(s5[0]), .B(p5[0]), .Y(n136) );
  XNOR2X1 U20 ( .A(s6[7]), .B(p6[7]), .Y(n127) );
  OAI21XL U21 ( .A0(n132), .A1(n131), .B0(check[6]), .Y(n144) );
  NAND4X1 U22 ( .A(n126), .B(n125), .C(n124), .D(n123), .Y(n132) );
  NAND4X1 U23 ( .A(n130), .B(n129), .C(n128), .D(n127), .Y(n131) );
  XNOR2X1 U24 ( .A(s6[0]), .B(p6[0]), .Y(n126) );
  XNOR2X1 U25 ( .A(s5[3]), .B(p5[3]), .Y(n133) );
  XNOR2X1 U26 ( .A(s5[5]), .B(p5[5]), .Y(n139) );
  XNOR2X1 U27 ( .A(s5[2]), .B(p5[2]), .Y(n134) );
  XNOR2X1 U28 ( .A(s5[4]), .B(p5[4]), .Y(n140) );
  XNOR2X1 U29 ( .A(s5[1]), .B(p5[1]), .Y(n135) );
  XNOR2X1 U30 ( .A(s4[7]), .B(p4[7]), .Y(n5) );
  OAI21XL U31 ( .A0(n10), .A1(n9), .B0(check[4]), .Y(n102) );
  NAND4X1 U32 ( .A(n4), .B(n3), .C(n2), .D(n1), .Y(n10) );
  NAND4X1 U33 ( .A(n8), .B(n7), .C(n6), .D(n5), .Y(n9) );
  XNOR2X1 U34 ( .A(s4[0]), .B(p4[0]), .Y(n4) );
  XNOR2X1 U35 ( .A(s4[6]), .B(p4[6]), .Y(n6) );
  XNOR2X1 U36 ( .A(s4[3]), .B(p4[3]), .Y(n1) );
  XNOR2X1 U37 ( .A(s3[7]), .B(p3[7]), .Y(n15) );
  OAI21XL U38 ( .A0(n20), .A1(n19), .B0(check[3]), .Y(n101) );
  NAND4X1 U39 ( .A(n14), .B(n13), .C(n12), .D(n11), .Y(n20) );
  NAND4X1 U40 ( .A(n18), .B(n17), .C(n16), .D(n15), .Y(n19) );
  XNOR2X1 U41 ( .A(s3[0]), .B(p3[0]), .Y(n14) );
  XNOR2X1 U42 ( .A(s4[5]), .B(p4[5]), .Y(n7) );
  XNOR2X1 U43 ( .A(s4[2]), .B(p4[2]), .Y(n2) );
  XNOR2X1 U44 ( .A(s4[4]), .B(p4[4]), .Y(n8) );
  XNOR2X1 U45 ( .A(s4[1]), .B(p4[1]), .Y(n3) );
  XNOR2X1 U46 ( .A(s7[4]), .B(p7[4]), .Y(n120) );
  XNOR2X1 U47 ( .A(s5[7]), .B(p5[7]), .Y(n137) );
  XNOR2X1 U48 ( .A(s0[2]), .B(p0[2]), .Y(n104) );
  OAI21XL U49 ( .A0(n112), .A1(n111), .B0(check[0]), .Y(n146) );
  NAND4X1 U50 ( .A(n110), .B(n109), .C(n108), .D(n107), .Y(n111) );
  NAND4X1 U51 ( .A(n106), .B(n105), .C(n104), .D(n103), .Y(n112) );
  XNOR2X1 U52 ( .A(s0[4]), .B(p0[4]), .Y(n110) );
  XNOR2X1 U53 ( .A(s0[1]), .B(p0[1]), .Y(n105) );
  XNOR2X1 U54 ( .A(s6[6]), .B(p6[6]), .Y(n128) );
  XNOR2X1 U55 ( .A(s6[3]), .B(p6[3]), .Y(n123) );
  XNOR2X1 U56 ( .A(s0[0]), .B(p0[0]), .Y(n106) );
  XNOR2X1 U57 ( .A(s6[5]), .B(p6[5]), .Y(n129) );
  XNOR2X1 U58 ( .A(s6[2]), .B(p6[2]), .Y(n124) );
  XNOR2X1 U59 ( .A(s1[7]), .B(p1[7]), .Y(n93) );
  OAI21XL U60 ( .A0(n98), .A1(n97), .B0(check[1]), .Y(n99) );
  NAND4X1 U61 ( .A(n92), .B(n91), .C(n32), .D(n31), .Y(n98) );
  NAND4X1 U62 ( .A(n96), .B(n95), .C(n94), .D(n93), .Y(n97) );
  XNOR2X1 U63 ( .A(s1[0]), .B(p1[0]), .Y(n92) );
  XNOR2X1 U64 ( .A(s6[4]), .B(p6[4]), .Y(n130) );
  XNOR2X1 U65 ( .A(s6[1]), .B(p6[1]), .Y(n125) );
  XNOR2X1 U66 ( .A(s2[7]), .B(p2[7]), .Y(n25) );
  OAI21XL U67 ( .A0(n30), .A1(n29), .B0(check[2]), .Y(n100) );
  NAND4X1 U68 ( .A(n24), .B(n23), .C(n22), .D(n21), .Y(n30) );
  NAND4X1 U69 ( .A(n28), .B(n27), .C(n26), .D(n25), .Y(n29) );
  XNOR2X1 U70 ( .A(s2[0]), .B(p2[0]), .Y(n24) );
  XNOR2X1 U71 ( .A(s1[6]), .B(p1[6]), .Y(n94) );
  XNOR2X1 U72 ( .A(s1[3]), .B(p1[3]), .Y(n31) );
  XNOR2X1 U73 ( .A(s2[6]), .B(p2[6]), .Y(n26) );
  XNOR2X1 U74 ( .A(s0[7]), .B(p0[7]), .Y(n107) );
  XNOR2X1 U75 ( .A(s1[5]), .B(p1[5]), .Y(n95) );
  XNOR2X1 U76 ( .A(s2[3]), .B(p2[3]), .Y(n21) );
  XNOR2X1 U77 ( .A(s1[2]), .B(p1[2]), .Y(n32) );
  XNOR2X1 U78 ( .A(s1[4]), .B(p1[4]), .Y(n96) );
  XNOR2X1 U79 ( .A(s0[6]), .B(p0[6]), .Y(n108) );
  XNOR2X1 U80 ( .A(s2[5]), .B(p2[5]), .Y(n27) );
  XNOR2X1 U81 ( .A(s3[6]), .B(p3[6]), .Y(n16) );
  XNOR2X1 U82 ( .A(s2[2]), .B(p2[2]), .Y(n22) );
  XNOR2X1 U83 ( .A(s0[3]), .B(p0[3]), .Y(n103) );
  XNOR2X1 U84 ( .A(s0[5]), .B(p0[5]), .Y(n109) );
  XNOR2X1 U85 ( .A(s1[1]), .B(p1[1]), .Y(n91) );
  XNOR2X1 U86 ( .A(s3[3]), .B(p3[3]), .Y(n11) );
  XNOR2X1 U87 ( .A(s2[4]), .B(p2[4]), .Y(n28) );
  XNOR2X1 U88 ( .A(s2[1]), .B(p2[1]), .Y(n23) );
  XNOR2X1 U89 ( .A(s3[2]), .B(p3[2]), .Y(n12) );
  XNOR2X1 U90 ( .A(s3[4]), .B(p3[4]), .Y(n18) );
  XNOR2X1 U91 ( .A(s3[1]), .B(p3[1]), .Y(n13) );
  XNOR2X1 U92 ( .A(s3[5]), .B(p3[5]), .Y(n17) );
endmodule


module Pattern_String_Comparator_Cell_35 ( s7, s6, s5, s4, s3, s2, s1, s0, p7, 
        p6, p5, p4, p3, p2, p1, p0, check, match );
  input [7:0] s7;
  input [7:0] s6;
  input [7:0] s5;
  input [7:0] s4;
  input [7:0] s3;
  input [7:0] s2;
  input [7:0] s1;
  input [7:0] s0;
  input [7:0] p7;
  input [7:0] p6;
  input [7:0] p5;
  input [7:0] p4;
  input [7:0] p3;
  input [7:0] p2;
  input [7:0] p1;
  input [7:0] p0;
  input [7:0] check;
  output match;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30,
         n31, n32, n91, n92, n93, n94, n95, n96, n97, n98, n99, n100, n101,
         n102, n103, n104, n105, n106, n107, n108, n109, n110, n111, n112,
         n113, n114, n115, n116, n117, n118, n119, n120, n121, n122, n123,
         n124, n125, n126, n127, n128, n129, n130, n131, n132, n133, n134,
         n135, n136, n137, n138, n139, n140, n141, n142, n143, n144, n145,
         n146, n147, n148;

  NOR2X1 U2 ( .A(n148), .B(n147), .Y(match) );
  NAND4X1 U3 ( .A(n102), .B(n101), .C(n100), .D(n99), .Y(n148) );
  NAND4X1 U4 ( .A(n146), .B(n145), .C(n144), .D(n143), .Y(n147) );
  XNOR2X1 U5 ( .A(s7[7]), .B(p7[7]), .Y(n117) );
  OAI21XL U6 ( .A0(n122), .A1(n121), .B0(check[7]), .Y(n145) );
  NAND4X1 U7 ( .A(n116), .B(n115), .C(n114), .D(n113), .Y(n122) );
  NAND4X1 U8 ( .A(n120), .B(n119), .C(n118), .D(n117), .Y(n121) );
  XNOR2X1 U9 ( .A(s7[3]), .B(p7[3]), .Y(n113) );
  XNOR2X1 U10 ( .A(s7[6]), .B(p7[6]), .Y(n118) );
  XNOR2X1 U11 ( .A(s7[2]), .B(p7[2]), .Y(n114) );
  XNOR2X1 U12 ( .A(s7[5]), .B(p7[5]), .Y(n119) );
  XNOR2X1 U13 ( .A(s7[1]), .B(p7[1]), .Y(n115) );
  XNOR2X1 U14 ( .A(s7[0]), .B(p7[0]), .Y(n116) );
  XNOR2X1 U15 ( .A(s5[6]), .B(p5[6]), .Y(n138) );
  OAI21XL U16 ( .A0(n142), .A1(n141), .B0(check[5]), .Y(n143) );
  NAND4X1 U17 ( .A(n136), .B(n135), .C(n134), .D(n133), .Y(n142) );
  NAND4X1 U18 ( .A(n140), .B(n139), .C(n138), .D(n137), .Y(n141) );
  XNOR2X1 U19 ( .A(s5[0]), .B(p5[0]), .Y(n136) );
  XNOR2X1 U20 ( .A(s6[7]), .B(p6[7]), .Y(n127) );
  OAI21XL U21 ( .A0(n132), .A1(n131), .B0(check[6]), .Y(n144) );
  NAND4X1 U22 ( .A(n126), .B(n125), .C(n124), .D(n123), .Y(n132) );
  NAND4X1 U23 ( .A(n130), .B(n129), .C(n128), .D(n127), .Y(n131) );
  XNOR2X1 U24 ( .A(s6[0]), .B(p6[0]), .Y(n126) );
  XNOR2X1 U25 ( .A(s5[3]), .B(p5[3]), .Y(n133) );
  XNOR2X1 U26 ( .A(s5[5]), .B(p5[5]), .Y(n139) );
  XNOR2X1 U27 ( .A(s5[2]), .B(p5[2]), .Y(n134) );
  XNOR2X1 U28 ( .A(s5[4]), .B(p5[4]), .Y(n140) );
  XNOR2X1 U29 ( .A(s5[1]), .B(p5[1]), .Y(n135) );
  XNOR2X1 U30 ( .A(s3[7]), .B(p3[7]), .Y(n15) );
  OAI21XL U31 ( .A0(n20), .A1(n19), .B0(check[3]), .Y(n101) );
  NAND4X1 U32 ( .A(n14), .B(n13), .C(n12), .D(n11), .Y(n20) );
  NAND4X1 U33 ( .A(n18), .B(n17), .C(n16), .D(n15), .Y(n19) );
  XNOR2X1 U34 ( .A(s3[0]), .B(p3[0]), .Y(n14) );
  XNOR2X1 U35 ( .A(s4[7]), .B(p4[7]), .Y(n5) );
  OAI21XL U36 ( .A0(n10), .A1(n9), .B0(check[4]), .Y(n102) );
  NAND4X1 U37 ( .A(n4), .B(n3), .C(n2), .D(n1), .Y(n10) );
  NAND4X1 U38 ( .A(n8), .B(n7), .C(n6), .D(n5), .Y(n9) );
  XNOR2X1 U39 ( .A(s4[0]), .B(p4[0]), .Y(n4) );
  XNOR2X1 U40 ( .A(s4[6]), .B(p4[6]), .Y(n6) );
  XNOR2X1 U41 ( .A(s4[3]), .B(p4[3]), .Y(n1) );
  XNOR2X1 U42 ( .A(s4[2]), .B(p4[2]), .Y(n2) );
  XNOR2X1 U43 ( .A(s7[4]), .B(p7[4]), .Y(n120) );
  XNOR2X1 U44 ( .A(s4[4]), .B(p4[4]), .Y(n8) );
  XNOR2X1 U45 ( .A(s4[1]), .B(p4[1]), .Y(n3) );
  XNOR2X1 U46 ( .A(s5[7]), .B(p5[7]), .Y(n137) );
  XNOR2X1 U47 ( .A(s0[2]), .B(p0[2]), .Y(n104) );
  OAI21XL U48 ( .A0(n112), .A1(n111), .B0(check[0]), .Y(n146) );
  NAND4X1 U49 ( .A(n110), .B(n109), .C(n108), .D(n107), .Y(n111) );
  NAND4X1 U50 ( .A(n106), .B(n105), .C(n104), .D(n103), .Y(n112) );
  XNOR2X1 U51 ( .A(s0[4]), .B(p0[4]), .Y(n110) );
  XNOR2X1 U52 ( .A(s0[1]), .B(p0[1]), .Y(n105) );
  XNOR2X1 U53 ( .A(s6[6]), .B(p6[6]), .Y(n128) );
  XNOR2X1 U54 ( .A(s6[3]), .B(p6[3]), .Y(n123) );
  XNOR2X1 U55 ( .A(s0[0]), .B(p0[0]), .Y(n106) );
  XNOR2X1 U56 ( .A(s6[5]), .B(p6[5]), .Y(n129) );
  XNOR2X1 U57 ( .A(s6[2]), .B(p6[2]), .Y(n124) );
  XNOR2X1 U58 ( .A(s1[7]), .B(p1[7]), .Y(n93) );
  OAI21XL U59 ( .A0(n98), .A1(n97), .B0(check[1]), .Y(n99) );
  NAND4X1 U60 ( .A(n92), .B(n91), .C(n32), .D(n31), .Y(n98) );
  NAND4X1 U61 ( .A(n96), .B(n95), .C(n94), .D(n93), .Y(n97) );
  XNOR2X1 U62 ( .A(s1[0]), .B(p1[0]), .Y(n92) );
  XNOR2X1 U63 ( .A(s6[4]), .B(p6[4]), .Y(n130) );
  XNOR2X1 U64 ( .A(s6[1]), .B(p6[1]), .Y(n125) );
  XNOR2X1 U65 ( .A(s2[7]), .B(p2[7]), .Y(n25) );
  OAI21XL U66 ( .A0(n30), .A1(n29), .B0(check[2]), .Y(n100) );
  NAND4X1 U67 ( .A(n24), .B(n23), .C(n22), .D(n21), .Y(n30) );
  NAND4X1 U68 ( .A(n28), .B(n27), .C(n26), .D(n25), .Y(n29) );
  XNOR2X1 U69 ( .A(s2[0]), .B(p2[0]), .Y(n24) );
  XNOR2X1 U70 ( .A(s1[6]), .B(p1[6]), .Y(n94) );
  XNOR2X1 U71 ( .A(s1[3]), .B(p1[3]), .Y(n31) );
  XNOR2X1 U72 ( .A(s2[6]), .B(p2[6]), .Y(n26) );
  XNOR2X1 U73 ( .A(s0[7]), .B(p0[7]), .Y(n107) );
  XNOR2X1 U74 ( .A(s1[5]), .B(p1[5]), .Y(n95) );
  XNOR2X1 U75 ( .A(s2[3]), .B(p2[3]), .Y(n21) );
  XNOR2X1 U76 ( .A(s1[2]), .B(p1[2]), .Y(n32) );
  XNOR2X1 U77 ( .A(s4[5]), .B(p4[5]), .Y(n7) );
  XNOR2X1 U78 ( .A(s1[4]), .B(p1[4]), .Y(n96) );
  XNOR2X1 U79 ( .A(s0[6]), .B(p0[6]), .Y(n108) );
  XNOR2X1 U80 ( .A(s2[5]), .B(p2[5]), .Y(n27) );
  XNOR2X1 U81 ( .A(s3[6]), .B(p3[6]), .Y(n16) );
  XNOR2X1 U82 ( .A(s2[2]), .B(p2[2]), .Y(n22) );
  XNOR2X1 U83 ( .A(s0[3]), .B(p0[3]), .Y(n103) );
  XNOR2X1 U84 ( .A(s0[5]), .B(p0[5]), .Y(n109) );
  XNOR2X1 U85 ( .A(s1[1]), .B(p1[1]), .Y(n91) );
  XNOR2X1 U86 ( .A(s3[3]), .B(p3[3]), .Y(n11) );
  XNOR2X1 U87 ( .A(s2[4]), .B(p2[4]), .Y(n28) );
  XNOR2X1 U88 ( .A(s3[5]), .B(p3[5]), .Y(n17) );
  XNOR2X1 U89 ( .A(s2[1]), .B(p2[1]), .Y(n23) );
  XNOR2X1 U90 ( .A(s3[2]), .B(p3[2]), .Y(n12) );
  XNOR2X1 U91 ( .A(s3[4]), .B(p3[4]), .Y(n18) );
  XNOR2X1 U92 ( .A(s3[1]), .B(p3[1]), .Y(n13) );
endmodule


module Pattern_String_Comparator_Cell_34 ( s7, s6, s5, s4, s3, s2, s1, s0, p7, 
        p6, p5, p4, p3, p2, p1, p0, check, match );
  input [7:0] s7;
  input [7:0] s6;
  input [7:0] s5;
  input [7:0] s4;
  input [7:0] s3;
  input [7:0] s2;
  input [7:0] s1;
  input [7:0] s0;
  input [7:0] p7;
  input [7:0] p6;
  input [7:0] p5;
  input [7:0] p4;
  input [7:0] p3;
  input [7:0] p2;
  input [7:0] p1;
  input [7:0] p0;
  input [7:0] check;
  output match;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30,
         n31, n32, n91, n92, n93, n94, n95, n96, n97, n98, n99, n100, n101,
         n102, n103, n104, n105, n106, n107, n108, n109, n110, n111, n112,
         n113, n114, n115, n116, n117, n118, n119, n120, n121, n122, n123,
         n124, n125, n126, n127, n128, n129, n130, n131, n132, n133, n134,
         n135, n136, n137, n138, n139, n140, n141, n142, n143, n144, n145,
         n146, n147, n148;

  NOR2X1 U2 ( .A(n148), .B(n147), .Y(match) );
  NAND4X1 U3 ( .A(n102), .B(n101), .C(n100), .D(n99), .Y(n148) );
  NAND4X1 U4 ( .A(n146), .B(n145), .C(n144), .D(n143), .Y(n147) );
  XNOR2X1 U5 ( .A(s7[7]), .B(p7[7]), .Y(n117) );
  OAI21XL U6 ( .A0(n122), .A1(n121), .B0(check[7]), .Y(n145) );
  NAND4X1 U7 ( .A(n116), .B(n115), .C(n114), .D(n113), .Y(n122) );
  NAND4X1 U8 ( .A(n120), .B(n119), .C(n118), .D(n117), .Y(n121) );
  XNOR2X1 U9 ( .A(s7[3]), .B(p7[3]), .Y(n113) );
  XNOR2X1 U10 ( .A(s7[6]), .B(p7[6]), .Y(n118) );
  XNOR2X1 U11 ( .A(s7[2]), .B(p7[2]), .Y(n114) );
  XNOR2X1 U12 ( .A(s7[5]), .B(p7[5]), .Y(n119) );
  XNOR2X1 U13 ( .A(s7[1]), .B(p7[1]), .Y(n115) );
  XNOR2X1 U14 ( .A(s7[0]), .B(p7[0]), .Y(n116) );
  XNOR2X1 U15 ( .A(s6[7]), .B(p6[7]), .Y(n127) );
  OAI21XL U16 ( .A0(n132), .A1(n131), .B0(check[6]), .Y(n144) );
  NAND4X1 U17 ( .A(n126), .B(n125), .C(n124), .D(n123), .Y(n132) );
  NAND4X1 U18 ( .A(n130), .B(n129), .C(n128), .D(n127), .Y(n131) );
  XNOR2X1 U19 ( .A(s6[0]), .B(p6[0]), .Y(n126) );
  XNOR2X1 U20 ( .A(s5[6]), .B(p5[6]), .Y(n138) );
  OAI21XL U21 ( .A0(n142), .A1(n141), .B0(check[5]), .Y(n143) );
  NAND4X1 U22 ( .A(n136), .B(n135), .C(n134), .D(n133), .Y(n142) );
  NAND4X1 U23 ( .A(n140), .B(n139), .C(n138), .D(n137), .Y(n141) );
  XNOR2X1 U24 ( .A(s5[0]), .B(p5[0]), .Y(n136) );
  XNOR2X1 U25 ( .A(s5[3]), .B(p5[3]), .Y(n133) );
  XNOR2X1 U26 ( .A(s5[2]), .B(p5[2]), .Y(n134) );
  XNOR2X1 U27 ( .A(s5[4]), .B(p5[4]), .Y(n140) );
  XNOR2X1 U28 ( .A(s3[7]), .B(p3[7]), .Y(n15) );
  OAI21XL U29 ( .A0(n20), .A1(n19), .B0(check[3]), .Y(n101) );
  NAND4X1 U30 ( .A(n14), .B(n13), .C(n12), .D(n11), .Y(n20) );
  NAND4X1 U31 ( .A(n18), .B(n17), .C(n16), .D(n15), .Y(n19) );
  XNOR2X1 U32 ( .A(s3[0]), .B(p3[0]), .Y(n14) );
  XNOR2X1 U33 ( .A(s5[1]), .B(p5[1]), .Y(n135) );
  XNOR2X1 U34 ( .A(s4[7]), .B(p4[7]), .Y(n5) );
  OAI21XL U35 ( .A0(n10), .A1(n9), .B0(check[4]), .Y(n102) );
  NAND4X1 U36 ( .A(n4), .B(n3), .C(n2), .D(n1), .Y(n10) );
  NAND4X1 U37 ( .A(n8), .B(n7), .C(n6), .D(n5), .Y(n9) );
  XNOR2X1 U38 ( .A(s4[0]), .B(p4[0]), .Y(n4) );
  XNOR2X1 U39 ( .A(s4[6]), .B(p4[6]), .Y(n6) );
  XNOR2X1 U40 ( .A(s4[3]), .B(p4[3]), .Y(n1) );
  XNOR2X1 U41 ( .A(s4[5]), .B(p4[5]), .Y(n7) );
  XNOR2X1 U42 ( .A(s4[2]), .B(p4[2]), .Y(n2) );
  XNOR2X1 U43 ( .A(s7[4]), .B(p7[4]), .Y(n120) );
  XNOR2X1 U44 ( .A(s4[4]), .B(p4[4]), .Y(n8) );
  XNOR2X1 U45 ( .A(s4[1]), .B(p4[1]), .Y(n3) );
  XNOR2X1 U46 ( .A(s0[2]), .B(p0[2]), .Y(n104) );
  OAI21XL U47 ( .A0(n112), .A1(n111), .B0(check[0]), .Y(n146) );
  NAND4X1 U48 ( .A(n110), .B(n109), .C(n108), .D(n107), .Y(n111) );
  NAND4X1 U49 ( .A(n106), .B(n105), .C(n104), .D(n103), .Y(n112) );
  XNOR2X1 U50 ( .A(s0[4]), .B(p0[4]), .Y(n110) );
  XNOR2X1 U51 ( .A(s0[1]), .B(p0[1]), .Y(n105) );
  XNOR2X1 U52 ( .A(s6[6]), .B(p6[6]), .Y(n128) );
  XNOR2X1 U53 ( .A(s5[5]), .B(p5[5]), .Y(n139) );
  XNOR2X1 U54 ( .A(s6[3]), .B(p6[3]), .Y(n123) );
  XNOR2X1 U55 ( .A(s5[7]), .B(p5[7]), .Y(n137) );
  XNOR2X1 U56 ( .A(s0[0]), .B(p0[0]), .Y(n106) );
  XNOR2X1 U57 ( .A(s6[5]), .B(p6[5]), .Y(n129) );
  XNOR2X1 U58 ( .A(s6[2]), .B(p6[2]), .Y(n124) );
  XNOR2X1 U59 ( .A(s1[7]), .B(p1[7]), .Y(n93) );
  OAI21XL U60 ( .A0(n98), .A1(n97), .B0(check[1]), .Y(n99) );
  NAND4X1 U61 ( .A(n92), .B(n91), .C(n32), .D(n31), .Y(n98) );
  NAND4X1 U62 ( .A(n96), .B(n95), .C(n94), .D(n93), .Y(n97) );
  XNOR2X1 U63 ( .A(s1[0]), .B(p1[0]), .Y(n92) );
  XNOR2X1 U64 ( .A(s6[4]), .B(p6[4]), .Y(n130) );
  XNOR2X1 U65 ( .A(s6[1]), .B(p6[1]), .Y(n125) );
  XNOR2X1 U66 ( .A(s2[7]), .B(p2[7]), .Y(n25) );
  OAI21XL U67 ( .A0(n30), .A1(n29), .B0(check[2]), .Y(n100) );
  NAND4X1 U68 ( .A(n24), .B(n23), .C(n22), .D(n21), .Y(n30) );
  NAND4X1 U69 ( .A(n28), .B(n27), .C(n26), .D(n25), .Y(n29) );
  XNOR2X1 U70 ( .A(s2[0]), .B(p2[0]), .Y(n24) );
  XNOR2X1 U71 ( .A(s1[6]), .B(p1[6]), .Y(n94) );
  XNOR2X1 U72 ( .A(s1[3]), .B(p1[3]), .Y(n31) );
  XNOR2X1 U73 ( .A(s2[6]), .B(p2[6]), .Y(n26) );
  XNOR2X1 U74 ( .A(s0[7]), .B(p0[7]), .Y(n107) );
  XNOR2X1 U75 ( .A(s1[5]), .B(p1[5]), .Y(n95) );
  XNOR2X1 U76 ( .A(s2[3]), .B(p2[3]), .Y(n21) );
  XNOR2X1 U77 ( .A(s1[2]), .B(p1[2]), .Y(n32) );
  XNOR2X1 U78 ( .A(s1[4]), .B(p1[4]), .Y(n96) );
  XNOR2X1 U79 ( .A(s0[6]), .B(p0[6]), .Y(n108) );
  XNOR2X1 U80 ( .A(s2[5]), .B(p2[5]), .Y(n27) );
  XNOR2X1 U81 ( .A(s3[6]), .B(p3[6]), .Y(n16) );
  XNOR2X1 U82 ( .A(s2[2]), .B(p2[2]), .Y(n22) );
  XNOR2X1 U83 ( .A(s0[3]), .B(p0[3]), .Y(n103) );
  XNOR2X1 U84 ( .A(s0[5]), .B(p0[5]), .Y(n109) );
  XNOR2X1 U85 ( .A(s1[1]), .B(p1[1]), .Y(n91) );
  XNOR2X1 U86 ( .A(s3[3]), .B(p3[3]), .Y(n11) );
  XNOR2X1 U87 ( .A(s2[4]), .B(p2[4]), .Y(n28) );
  XNOR2X1 U88 ( .A(s3[5]), .B(p3[5]), .Y(n17) );
  XNOR2X1 U89 ( .A(s2[1]), .B(p2[1]), .Y(n23) );
  XNOR2X1 U90 ( .A(s3[2]), .B(p3[2]), .Y(n12) );
  XNOR2X1 U91 ( .A(s3[4]), .B(p3[4]), .Y(n18) );
  XNOR2X1 U92 ( .A(s3[1]), .B(p3[1]), .Y(n13) );
endmodule


module Pattern_String_Comparator_0 ( s0, s1, s2, s3, s4, s5, s6, s7, s8, s9, 
        s10, s11, s12, s13, s14, s15, s16, s17, s18, s19, s20, s21, s22, s23, 
        s24, s25, s26, s27, s28, s29, s30, s31, s32, p1_0, p1_1, p1_2, p1_3, 
        p1_4, p1_5, p1_6, p1_7, check1, match1, match1_space );
  input [7:0] s0;
  input [7:0] s1;
  input [7:0] s2;
  input [7:0] s3;
  input [7:0] s4;
  input [7:0] s5;
  input [7:0] s6;
  input [7:0] s7;
  input [7:0] s8;
  input [7:0] s9;
  input [7:0] s10;
  input [7:0] s11;
  input [7:0] s12;
  input [7:0] s13;
  input [7:0] s14;
  input [7:0] s15;
  input [7:0] s16;
  input [7:0] s17;
  input [7:0] s18;
  input [7:0] s19;
  input [7:0] s20;
  input [7:0] s21;
  input [7:0] s22;
  input [7:0] s23;
  input [7:0] s24;
  input [7:0] s25;
  input [7:0] s26;
  input [7:0] s27;
  input [7:0] s28;
  input [7:0] s29;
  input [7:0] s30;
  input [7:0] s31;
  input [7:0] s32;
  input [7:0] p1_0;
  input [7:0] p1_1;
  input [7:0] p1_2;
  input [7:0] p1_3;
  input [7:0] p1_4;
  input [7:0] p1_5;
  input [7:0] p1_6;
  input [7:0] p1_7;
  input [7:0] check1;
  output [31:0] match1;
  output match1_space;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
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
         n156, n157, n158, n159, n160, n161, n162, n163, n164, n165, n166,
         n167, n168, n169, n170, n171, n172, n173, n174, n175, n176, n177,
         n178, n179, n180, n181, n182, n183, n184, n185, n186, n187, n188,
         n189, n190, n191, n192, n193, n194, n195, n196, n197, n198, n199,
         n200, n201, n202, n203, n204, n205, n206, n207, n208, n209, n210,
         n211, n212, n213, n214, n215, n216, n217, n218, n219, n220, n221,
         n222, n223, n224, n225, n226, n227, n228, n229, n230, n231, n232,
         n233, n234, n235, n236, n237, n238, n239, n240, n241, n242, n243,
         n244, n245, n246, n247, n248, n249, n250, n251, n252, n253, n254,
         n255, n256, n257, n258, n259, n260, n261, n262, n263, n264, n265;

  Pattern_String_Comparator_Cell_0 PSC_Cell1_space ( .s7({1'b0, 1'b0, 1'b1, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), .s6(s32), .s5(s31), .s4(s30), .s3(s29), 
        .s2(s28), .s1(s27), .s0(s26), .p7({n58, n55, n52, n49, n45, n41, n38, 
        n35}), .p6({n89, n86, n82, n78, n74, n70, n66, n62}), .p5({n114, n110, 
        n107, n104, n101, n98, n95, n92}), .p4({n138, n135, n132, n129, n126, 
        n123, n120, n117}), .p3({n169, n166, n162, n158, n154, n150, n146, 
        n142}), .p2({n201, n197, n193, n189, n185, n181, n177, n173}), .p1({
        n233, n229, n225, n221, n217, n213, n209, n205}), .p0({n265, n261, 
        n257, n253, n249, n245, n241, n237}), .check({n32, n28, n24, n20, n16, 
        n12, n8, n4}), .match(match1_space) );
  Pattern_String_Comparator_Cell_65 PSC_Cell00 ( .s7(s32), .s6(s31), .s5(s30), 
        .s4(s29), .s3(s28), .s2(s27), .s1(s26), .s0(s25), .p7({n56, n53, n50, 
        n47, n43, n39, n36, n33}), .p6({n87, n84, n80, n76, n72, n68, n64, n60}), .p5({n112, n108, n105, n102, n99, n96, n93, n90}), .p4({n136, n133, n130, 
        n127, n124, n121, n118, n115}), .p3({n167, n164, n160, n156, n152, 
        n148, n144, n140}), .p2({n199, n195, n191, n187, n183, n179, n175, 
        n171}), .p1({n231, n227, n223, n219, n215, n211, n207, n203}), .p0({
        n263, n259, n255, n251, n247, n243, n239, n235}), .check({n30, n26, 
        n22, n18, n14, n10, n6, n2}), .match(match1[0]) );
  Pattern_String_Comparator_Cell_64 PSC_Cell0 ( .s7(s31), .s6(s30), .s5(s29), 
        .s4(s28), .s3(s27), .s2(s26), .s1(s25), .s0(s24), .p7({n56, n53, n50, 
        n47, n43, n39, n36, n33}), .p6({n87, n84, n80, n76, n72, n68, n64, n60}), .p5({n112, n108, n105, n102, n99, n96, n93, n90}), .p4({n136, n133, n130, 
        n127, n124, n121, n118, n115}), .p3({n167, n164, n160, n156, n152, 
        n148, n144, n140}), .p2({n199, n195, n191, n187, n183, n179, n175, 
        n171}), .p1({n231, n227, n223, n219, n215, n211, n207, n203}), .p0({
        n263, n259, n255, n251, n247, n243, n239, n235}), .check({n30, n26, 
        n22, n18, n14, n10, n6, n2}), .match(match1[1]) );
  Pattern_String_Comparator_Cell_63 PSC_Cell1 ( .s7(s30), .s6(s29), .s5(s28), 
        .s4(s27), .s3(s26), .s2(s25), .s1(s24), .s0(s23), .p7({n56, n53, n50, 
        n47, n43, n39, n36, n33}), .p6({n87, n84, n80, n76, n72, n68, n64, n60}), .p5({n112, n108, n105, n102, n99, n96, n93, n90}), .p4({n136, n133, n130, 
        n127, n124, n121, n118, n115}), .p3({n167, n164, n160, n156, n152, 
        n148, n144, n140}), .p2({n199, n195, n191, n187, n183, n179, n175, 
        n171}), .p1({n231, n227, n223, n219, n215, n211, n207, n203}), .p0({
        n263, n259, n255, n251, n247, n243, n239, n235}), .check({n30, n26, 
        n22, n18, n14, n10, n6, n2}), .match(match1[2]) );
  Pattern_String_Comparator_Cell_62 PSC_Cell2 ( .s7(s29), .s6(s28), .s5(s27), 
        .s4(s26), .s3(s25), .s2(s24), .s1(s23), .s0(s22), .p7({n56, n53, n50, 
        n47, n43, n39, n36, n33}), .p6({n87, n84, n80, n76, n72, n68, n64, n60}), .p5({n112, n108, n105, n102, n99, n96, n93, n90}), .p4({n136, n133, n130, 
        n127, n124, n121, n118, n115}), .p3({n167, n164, n160, n156, n152, 
        n148, n144, n140}), .p2({n199, n195, n191, n187, n183, n179, n175, 
        n171}), .p1({n231, n227, n223, n219, n215, n211, n207, n203}), .p0({
        n263, n259, n255, n251, n247, n243, n239, n235}), .check({n30, n26, 
        n22, n18, n14, n10, n6, n2}), .match(match1[3]) );
  Pattern_String_Comparator_Cell_61 PSC_Cell3 ( .s7(s28), .s6(s27), .s5(s26), 
        .s4(s25), .s3(s24), .s2(s23), .s1(s22), .s0(s21), .p7({n56, n53, n50, 
        n47, n43, n39, n36, n33}), .p6({n87, n84, n80, n76, n72, n68, n64, n60}), .p5({n112, n108, n105, n102, n99, n96, n93, n90}), .p4({n136, n133, n130, 
        n127, n124, n121, n118, n115}), .p3({n167, n164, n160, n156, n152, 
        n148, n144, n140}), .p2({n199, n195, n191, n187, n183, n179, n175, 
        n171}), .p1({n231, n227, n223, n219, n215, n211, n207, n203}), .p0({
        n263, n259, n255, n251, n247, n243, n239, n235}), .check({n30, n26, 
        n22, n18, n14, n10, n6, n2}), .match(match1[4]) );
  Pattern_String_Comparator_Cell_60 PSC_Cell4 ( .s7(s27), .s6(s26), .s5(s25), 
        .s4(s24), .s3(s23), .s2(s22), .s1(s21), .s0(s20), .p7({n56, n53, n50, 
        n47, n43, n39, n36, n33}), .p6({n87, n84, n80, n76, n72, n68, n64, n60}), .p5({n112, n108, n105, n102, n99, n96, n93, n90}), .p4({n136, n133, n130, 
        n127, n124, n121, n118, n115}), .p3({n167, n164, n160, n156, n152, 
        n148, n144, n140}), .p2({n199, n195, n191, n187, n183, n179, n175, 
        n171}), .p1({n231, n227, n223, n219, n215, n211, n207, n203}), .p0({
        n263, n259, n255, n251, n247, n243, n239, n235}), .check({n30, n26, 
        n22, n18, n14, n10, n6, n2}), .match(match1[5]) );
  Pattern_String_Comparator_Cell_59 PSC_Cell5 ( .s7(s26), .s6(s25), .s5(s24), 
        .s4(s23), .s3(s22), .s2(s21), .s1(s20), .s0(s19), .p7({n56, n53, n50, 
        n47, n43, n39, n36, n33}), .p6({n87, n84, n80, n76, n72, n68, n64, n60}), .p5({n112, n108, n105, n102, n99, n96, n93, n90}), .p4({n136, n133, n130, 
        n127, n124, n121, n118, n115}), .p3({n167, n164, n160, n156, n152, 
        n148, n144, n140}), .p2({n199, n195, n191, n187, n183, n179, n175, 
        n171}), .p1({n231, n227, n223, n219, n215, n211, n207, n203}), .p0({
        n263, n259, n255, n251, n247, n243, n239, n235}), .check({n30, n26, 
        n22, n18, n14, n10, n6, n2}), .match(match1[6]) );
  Pattern_String_Comparator_Cell_58 PSC_Cell6 ( .s7(s25), .s6(s24), .s5(s23), 
        .s4(s22), .s3(s21), .s2(s20), .s1(s19), .s0(s18), .p7({n56, n53, n50, 
        n47, n43, n39, n36, n33}), .p6({n87, n84, n80, n76, n72, n68, n64, n60}), .p5({n112, n108, n105, n102, n99, n96, n93, n90}), .p4({n136, n133, n130, 
        n127, n124, n121, n118, n115}), .p3({n167, n164, n160, n156, n152, 
        n148, n144, n140}), .p2({n199, n195, n191, n187, n183, n179, n175, 
        n171}), .p1({n231, n227, n223, n219, n215, n211, n207, n203}), .p0({
        n263, n259, n255, n251, n247, n243, n239, n235}), .check({n30, n26, 
        n22, n18, n14, n10, n6, n2}), .match(match1[7]) );
  Pattern_String_Comparator_Cell_57 PSC_Cell7 ( .s7(s24), .s6(s23), .s5(s22), 
        .s4(s21), .s3(s20), .s2(s19), .s1(s18), .s0(s17), .p7({n56, n53, n50, 
        n47, n43, n39, n36, n33}), .p6({n87, n84, n80, n76, n72, n68, n64, n60}), .p5({n112, n108, n105, n102, n99, n96, n93, n90}), .p4({n136, n133, n130, 
        n127, n124, n121, n118, n115}), .p3({n167, n164, n160, n156, n152, 
        n148, n144, n140}), .p2({n199, n195, n191, n187, n183, n179, n175, 
        n171}), .p1({n231, n227, n223, n219, n215, n211, n207, n203}), .p0({
        n263, n259, n255, n251, n247, n243, n239, n235}), .check({n30, n26, 
        n22, n18, n14, n10, n6, n2}), .match(match1[8]) );
  Pattern_String_Comparator_Cell_56 PSC_Cell8 ( .s7(s23), .s6(s22), .s5(s21), 
        .s4(s20), .s3(s19), .s2(s18), .s1(s17), .s0(s16), .p7({n56, n53, n50, 
        n47, n43, n39, n36, n33}), .p6({n87, n84, n80, n76, n72, n68, n64, n60}), .p5({n112, n108, n105, n102, n99, n96, n93, n90}), .p4({n136, n133, n130, 
        n127, n124, n121, n118, n115}), .p3({n167, n164, n160, n156, n152, 
        n148, n144, n140}), .p2({n199, n195, n191, n187, n183, n179, n175, 
        n171}), .p1({n231, n227, n223, n219, n215, n211, n207, n203}), .p0({
        n263, n259, n255, n251, n247, n243, n239, n235}), .check({n30, n26, 
        n22, n18, n14, n10, n6, n2}), .match(match1[9]) );
  Pattern_String_Comparator_Cell_55 PSC_Cell9 ( .s7(s22), .s6(s21), .s5(s20), 
        .s4(s19), .s3(s18), .s2(s17), .s1(s16), .s0(s15), .p7({n56, n53, n50, 
        n47, n43, n39, n36, n33}), .p6({n87, n84, n80, n76, n72, n68, n64, n60}), .p5({n112, n108, n105, n102, n99, n96, n93, n90}), .p4({n136, n133, n130, 
        n127, n124, n121, n118, n115}), .p3({n167, n164, n160, n156, n152, 
        n148, n144, n140}), .p2({n199, n195, n191, n187, n183, n179, n175, 
        n171}), .p1({n231, n227, n223, n219, n215, n211, n207, n203}), .p0({
        n263, n259, n255, n251, n247, n243, n239, n235}), .check({n30, n26, 
        n22, n18, n14, n10, n6, n2}), .match(match1[10]) );
  Pattern_String_Comparator_Cell_54 PSC_Cell10 ( .s7(s21), .s6(s20), .s5(s19), 
        .s4(s18), .s3(s17), .s2(s16), .s1(s15), .s0(s14), .p7({n56, n53, n50, 
        n47, n43, n39, n36, n33}), .p6({n87, n84, n80, n76, n72, n68, n64, n60}), .p5({n112, n108, n105, n102, n99, n96, n93, n90}), .p4({n136, n133, n130, 
        n127, n124, n121, n118, n115}), .p3({n167, n164, n160, n156, n152, 
        n148, n144, n140}), .p2({n199, n195, n191, n187, n183, n179, n175, 
        n171}), .p1({n231, n227, n223, n219, n215, n211, n207, n203}), .p0({
        n263, n259, n255, n251, n247, n243, n239, n235}), .check({n30, n26, 
        n22, n18, n14, n10, n6, n2}), .match(match1[11]) );
  Pattern_String_Comparator_Cell_53 PSC_Cell11 ( .s7(s20), .s6(s19), .s5(s18), 
        .s4(s17), .s3(s16), .s2(s15), .s1(s14), .s0(s13), .p7({n56, n53, n50, 
        n47, n43, n39, n36, n33}), .p6({n87, n84, n80, n76, n72, n68, n64, n60}), .p5({n112, n108, n105, n102, n99, n96, n93, n90}), .p4({n136, n133, n130, 
        n127, n124, n121, n118, n115}), .p3({n167, n164, n160, n156, n152, 
        n148, n144, n140}), .p2({n199, n195, n191, n187, n183, n179, n175, 
        n171}), .p1({n231, n227, n223, n219, n215, n211, n207, n203}), .p0({
        n263, n259, n255, n251, n247, n243, n239, n235}), .check({n30, n26, 
        n22, n18, n14, n10, n6, n2}), .match(match1[12]) );
  Pattern_String_Comparator_Cell_52 PSC_Cell12 ( .s7(s19), .s6(s18), .s5(s17), 
        .s4(s16), .s3(s15), .s2(s14), .s1(s13), .s0(s12), .p7({n57, n54, n51, 
        n48, n44, n40, n37, n34}), .p6({n88, n85, n81, n77, n73, n69, n65, n61}), .p5({n113, n109, n106, n103, n100, n97, n94, n91}), .p4({n137, n134, n131, 
        n128, n125, n122, n119, n116}), .p3({n168, n165, n161, n157, n153, 
        n149, n145, n141}), .p2({n200, n196, n192, n188, n184, n180, n176, 
        n172}), .p1({n232, n228, n224, n220, n216, n212, n208, n204}), .p0({
        n264, n260, n256, n252, n248, n244, n240, n236}), .check({n31, n27, 
        n23, n19, n15, n11, n7, n3}), .match(match1[13]) );
  Pattern_String_Comparator_Cell_51 PSC_Cell13 ( .s7(s18), .s6(s17), .s5(s16), 
        .s4(s15), .s3(s14), .s2(s13), .s1(s12), .s0(s11), .p7({n57, n54, n51, 
        n48, n44, n40, n37, n34}), .p6({n88, n85, n81, n77, n73, n69, n65, n61}), .p5({n113, n109, n106, n103, n100, n97, n94, n91}), .p4({n137, n134, n131, 
        n128, n125, n122, n119, n116}), .p3({n168, n165, n161, n157, n153, 
        n149, n145, n141}), .p2({n200, n196, n192, n188, n184, n180, n176, 
        n172}), .p1({n232, n228, n224, n220, n216, n212, n208, n204}), .p0({
        n264, n260, n256, n252, n248, n244, n240, n236}), .check({n31, n27, 
        n23, n19, n15, n11, n7, n3}), .match(match1[14]) );
  Pattern_String_Comparator_Cell_50 PSC_Cell14 ( .s7(s17), .s6(s16), .s5(s15), 
        .s4(s14), .s3(s13), .s2(s12), .s1(s11), .s0(s10), .p7({n57, n54, n51, 
        n48, n44, n40, n37, n34}), .p6({n88, n85, n81, n77, n73, n69, n65, n61}), .p5({n113, n109, n106, n103, n100, n97, n94, n91}), .p4({n137, n134, n131, 
        n128, n125, n122, n119, n116}), .p3({n168, n165, n161, n157, n153, 
        n149, n145, n141}), .p2({n200, n196, n192, n188, n184, n180, n176, 
        n172}), .p1({n232, n228, n224, n220, n216, n212, n208, n204}), .p0({
        n264, n260, n256, n252, n248, n244, n240, n236}), .check({n31, n27, 
        n23, n19, n15, n11, n7, n3}), .match(match1[15]) );
  Pattern_String_Comparator_Cell_49 PSC_Cell15 ( .s7(s16), .s6(s15), .s5(s14), 
        .s4(s13), .s3(s12), .s2(s11), .s1(s10), .s0(s9), .p7({n57, n54, n51, 
        n48, n44, n40, n37, n34}), .p6({n88, n85, n81, n77, n73, n69, n65, n61}), .p5({n113, n109, n106, n103, n100, n97, n94, n91}), .p4({n137, n134, n131, 
        n128, n125, n122, n119, n116}), .p3({n168, n165, n161, n157, n153, 
        n149, n145, n141}), .p2({n200, n196, n192, n188, n184, n180, n176, 
        n172}), .p1({n232, n228, n224, n220, n216, n212, n208, n204}), .p0({
        n264, n260, n256, n252, n248, n244, n240, n236}), .check({n31, n27, 
        n23, n19, n15, n11, n7, n3}), .match(match1[16]) );
  Pattern_String_Comparator_Cell_48 PSC_Cell16 ( .s7(s15), .s6(s14), .s5(s13), 
        .s4(s12), .s3(s11), .s2(s10), .s1(s9), .s0(s8), .p7({n57, n54, n51, 
        n48, n44, n40, n37, n34}), .p6({n88, n85, n81, n77, n73, n69, n65, n61}), .p5({n113, n109, n106, n103, n100, n97, n94, n91}), .p4({n137, n134, n131, 
        n128, n125, n122, n119, n116}), .p3({n168, n165, n161, n157, n153, 
        n149, n145, n141}), .p2({n200, n196, n192, n188, n184, n180, n176, 
        n172}), .p1({n232, n228, n224, n220, n216, n212, n208, n204}), .p0({
        n264, n260, n256, n252, n248, n244, n240, n236}), .check({n31, n27, 
        n23, n19, n15, n11, n7, n3}), .match(match1[17]) );
  Pattern_String_Comparator_Cell_47 PSC_Cell17 ( .s7(s14), .s6(s13), .s5(s12), 
        .s4(s11), .s3(s10), .s2(s9), .s1(s8), .s0(s7), .p7({n57, n54, n51, n48, 
        n44, n40, n37, n34}), .p6({n88, n85, n81, n77, n73, n69, n65, n61}), 
        .p5({n113, n109, n106, n103, n100, n97, n94, n91}), .p4({n137, n134, 
        n131, n128, n125, n122, n119, n116}), .p3({n168, n165, n161, n157, 
        n153, n149, n145, n141}), .p2({n200, n196, n192, n188, n184, n180, 
        n176, n172}), .p1({n232, n228, n224, n220, n216, n212, n208, n204}), 
        .p0({n264, n260, n256, n252, n248, n244, n240, n236}), .check({n31, 
        n27, n23, n19, n15, n11, n7, n3}), .match(match1[18]) );
  Pattern_String_Comparator_Cell_46 PSC_Cell18 ( .s7(s13), .s6(s12), .s5(s11), 
        .s4(s10), .s3(s9), .s2(s8), .s1(s7), .s0(s6), .p7({n57, n54, n51, n48, 
        n44, n40, n37, n34}), .p6({n88, n85, n81, n77, n73, n69, n65, n61}), 
        .p5({n113, n109, n106, n103, n100, n97, n94, n91}), .p4({n137, n134, 
        n131, n128, n125, n122, n119, n116}), .p3({n168, n165, n161, n157, 
        n153, n149, n145, n141}), .p2({n200, n196, n192, n188, n184, n180, 
        n176, n172}), .p1({n232, n228, n224, n220, n216, n212, n208, n204}), 
        .p0({n264, n260, n256, n252, n248, n244, n240, n236}), .check({n31, 
        n27, n23, n19, n15, n11, n7, n3}), .match(match1[19]) );
  Pattern_String_Comparator_Cell_45 PSC_Cell19 ( .s7(s12), .s6(s11), .s5(s10), 
        .s4(s9), .s3(s8), .s2(s7), .s1(s6), .s0(s5), .p7({n57, n54, n51, n48, 
        n44, n40, n37, n34}), .p6({n88, n85, n81, n77, n73, n69, n65, n61}), 
        .p5({n113, n109, n106, n103, n100, n97, n94, n91}), .p4({n137, n134, 
        n131, n128, n125, n122, n119, n116}), .p3({n168, n165, n161, n157, 
        n153, n149, n145, n141}), .p2({n200, n196, n192, n188, n184, n180, 
        n176, n172}), .p1({n232, n228, n224, n220, n216, n212, n208, n204}), 
        .p0({n264, n260, n256, n252, n248, n244, n240, n236}), .check({n31, 
        n27, n23, n19, n15, n11, n7, n3}), .match(match1[20]) );
  Pattern_String_Comparator_Cell_44 PSC_Cell20 ( .s7(s11), .s6(s10), .s5(s9), 
        .s4(s8), .s3(s7), .s2(s6), .s1(s5), .s0(s4), .p7({n57, n54, n51, n48, 
        n44, n40, n37, n34}), .p6({n88, n85, n81, n77, n73, n69, n65, n61}), 
        .p5({n113, n109, n106, n103, n100, n97, n94, n91}), .p4({n137, n134, 
        n131, n128, n125, n122, n119, n116}), .p3({n168, n165, n161, n157, 
        n153, n149, n145, n141}), .p2({n200, n196, n192, n188, n184, n180, 
        n176, n172}), .p1({n232, n228, n224, n220, n216, n212, n208, n204}), 
        .p0({n264, n260, n256, n252, n248, n244, n240, n236}), .check({n31, 
        n27, n23, n19, n15, n11, n7, n3}), .match(match1[21]) );
  Pattern_String_Comparator_Cell_43 PSC_Cell21 ( .s7(s10), .s6(s9), .s5(s8), 
        .s4(s7), .s3(s6), .s2(s5), .s1(s4), .s0(s3), .p7({n57, n54, n51, n48, 
        n44, n40, n37, n34}), .p6({n88, n85, n81, n77, n73, n69, n65, n61}), 
        .p5({n113, n109, n106, n103, n100, n97, n94, n91}), .p4({n137, n134, 
        n131, n128, n125, n122, n119, n116}), .p3({n168, n165, n161, n157, 
        n153, n149, n145, n141}), .p2({n200, n196, n192, n188, n184, n180, 
        n176, n172}), .p1({n232, n228, n224, n220, n216, n212, n208, n204}), 
        .p0({n264, n260, n256, n252, n248, n244, n240, n236}), .check({n31, 
        n27, n23, n19, n15, n11, n7, n3}), .match(match1[22]) );
  Pattern_String_Comparator_Cell_42 PSC_Cell22 ( .s7(s9), .s6(s8), .s5(s7), 
        .s4(s6), .s3(s5), .s2(s4), .s1(s3), .s0(s2), .p7({n57, n54, n51, n48, 
        n44, n40, n37, n34}), .p6({n88, n85, n81, n77, n73, n69, n65, n61}), 
        .p5({n113, n109, n106, n103, n100, n97, n94, n91}), .p4({n137, n134, 
        n131, n128, n125, n122, n119, n116}), .p3({n168, n165, n161, n157, 
        n153, n149, n145, n141}), .p2({n200, n196, n192, n188, n184, n180, 
        n176, n172}), .p1({n232, n228, n224, n220, n216, n212, n208, n204}), 
        .p0({n264, n260, n256, n252, n248, n244, n240, n236}), .check({n31, 
        n27, n23, n19, n15, n11, n7, n3}), .match(match1[23]) );
  Pattern_String_Comparator_Cell_41 PSC_Cell23 ( .s7(s8), .s6(s7), .s5(s6), 
        .s4(s5), .s3(s4), .s2(s3), .s1(s2), .s0(s1), .p7({n57, n54, n51, n48, 
        n44, n40, n37, n34}), .p6({n88, n85, n81, n77, n73, n69, n65, n61}), 
        .p5({n113, n109, n106, n103, n100, n97, n94, n91}), .p4({n137, n134, 
        n131, n128, n125, n122, n119, n116}), .p3({n168, n165, n161, n157, 
        n153, n149, n145, n141}), .p2({n200, n196, n192, n188, n184, n180, 
        n176, n172}), .p1({n232, n228, n224, n220, n216, n212, n208, n204}), 
        .p0({n264, n260, n256, n252, n248, n244, n240, n236}), .check({n31, 
        n27, n23, n19, n15, n11, n7, n3}), .match(match1[24]) );
  Pattern_String_Comparator_Cell_40 PSC_Cell24 ( .s7(s7), .s6(s6), .s5(s5), 
        .s4(s4), .s3(s3), .s2(s2), .s1(s1), .s0(s0), .p7({n57, n54, n51, n48, 
        n44, n40, n37, n34}), .p6({n88, n85, n81, n77, n73, n69, n65, n61}), 
        .p5({n113, n109, n106, n103, n100, n97, n94, n91}), .p4({n137, n134, 
        n131, n128, n125, n122, n119, n116}), .p3({n168, n165, n161, n157, 
        n153, n149, n145, n141}), .p2({n200, n196, n192, n188, n184, n180, 
        n176, n172}), .p1({n232, n228, n224, n220, n216, n212, n208, n204}), 
        .p0({n264, n260, n256, n252, n248, n244, n240, n236}), .check({n31, 
        n27, n23, n19, n15, n11, n7, n3}), .match(match1[25]) );
  Pattern_String_Comparator_Cell_39 PSC_Cell25 ( .s7(s6), .s6(s5), .s5(s4), 
        .s4(s3), .s3(s2), .s2(s1), .s1(s0), .s0({1'b0, 1'b0, 1'b1, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0}), .p7({n58, n55, n52, n49, n45, n41, n38, n35}), 
        .p6({n89, n86, n82, n78, n74, n70, n66, n62}), .p5({n114, n110, n107, 
        n104, n101, n98, n95, n92}), .p4({n138, n135, n132, n129, n126, n123, 
        n120, n117}), .p3({n169, n166, n162, n158, n154, n150, n146, n142}), 
        .p2({n201, n197, n193, n189, n185, n181, n177, n173}), .p1({n233, n229, 
        n225, n221, n217, n213, n209, n205}), .p0({n265, n261, n257, n253, 
        n249, n245, n241, n237}), .check({n32, n28, n24, n20, n16, n12, n8, n4}), .match(match1[26]) );
  Pattern_String_Comparator_Cell_38 PSC_Cell26 ( .s7(s5), .s6(s4), .s5(s3), 
        .s4(s2), .s3(s1), .s2(s0), .s1({1'b0, 1'b0, 1'b1, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0}), .s0({1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), 
        .p7({n58, n55, n52, n49, n45, n41, n38, n35}), .p6({n89, n86, n82, n78, 
        n74, n70, n66, n62}), .p5({n114, n110, n107, n104, n101, n98, n95, n92}), .p4({n138, n135, n132, n129, n126, n123, n120, n117}), .p3({n169, n166, 
        n162, n158, n154, n150, n146, n142}), .p2({n201, n197, n193, n189, 
        n185, n181, n177, n173}), .p1({n233, n229, n225, n221, n217, n213, 
        n209, n205}), .p0({n265, n261, n257, n253, n249, n245, n241, n237}), 
        .check({n32, n28, n24, n20, n16, n12, n8, n4}), .match(match1[27]) );
  Pattern_String_Comparator_Cell_37 PSC_Cell27 ( .s7(s4), .s6(s3), .s5(s2), 
        .s4(s1), .s3(s0), .s2({1'b0, 1'b0, 1'b1, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), .s1({1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), .s0({1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), .p7({n58, n55, n52, n49, n45, n41, n38, 
        n35}), .p6({n89, n86, n82, n78, n74, n70, n66, n62}), .p5({n114, n110, 
        n107, n104, n101, n98, n95, n92}), .p4({n138, n135, n132, n129, n126, 
        n123, n120, n117}), .p3({n169, n166, n162, n158, n154, n150, n146, 
        n142}), .p2({n201, n197, n193, n189, n185, n181, n177, n173}), .p1({
        n233, n229, n225, n221, n217, n213, n209, n205}), .p0({n265, n261, 
        n257, n253, n249, n245, n241, n237}), .check({n32, n28, n24, n20, n16, 
        n12, n8, n4}), .match(match1[28]) );
  Pattern_String_Comparator_Cell_36 PSC_Cell28 ( .s7(s3), .s6(s2), .s5(s1), 
        .s4(s0), .s3({1'b0, 1'b0, 1'b1, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), .s2({
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), .s1({1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), .s0({1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0}), .p7({n58, n55, n52, n49, n45, n41, n38, n35}), .p6({n89, n86, n82, n78, n74, n70, n66, n62}), .p5({n114, n110, n107, n104, 
        n101, n98, n95, n92}), .p4({n138, n135, n132, n129, n126, n123, n120, 
        n117}), .p3({n169, n166, n162, n158, n154, n150, n146, n142}), .p2({
        n201, n197, n193, n189, n185, n181, n177, n173}), .p1({n233, n229, 
        n225, n221, n217, n213, n209, n205}), .p0({n265, n261, n257, n253, 
        n249, n245, n241, n237}), .check({n32, n28, n24, n20, n16, n12, n8, n4}), .match(match1[29]) );
  Pattern_String_Comparator_Cell_35 PSC_Cell29 ( .s7(s2), .s6(s1), .s5(s0), 
        .s4({1'b0, 1'b0, 1'b1, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), .s3({1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), .s2({1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0}), .s1({1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0}), .s0({1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), 
        .p7({n58, n55, n52, n49, n45, n41, n38, n35}), .p6({n89, n86, n82, n78, 
        n74, n70, n66, n62}), .p5({n114, n110, n107, n104, n101, n98, n95, n92}), .p4({n138, n135, n132, n129, n126, n123, n120, n117}), .p3({n169, n166, 
        n162, n158, n154, n150, n146, n142}), .p2({n201, n197, n193, n189, 
        n185, n181, n177, n173}), .p1({n233, n229, n225, n221, n217, n213, 
        n209, n205}), .p0({n265, n261, n257, n253, n249, n245, n241, n237}), 
        .check({n32, n28, n24, n20, n16, n12, n8, n4}), .match(match1[30]) );
  Pattern_String_Comparator_Cell_34 PSC_Cell30 ( .s7(s1), .s6(s0), .s5({1'b0, 
        1'b0, 1'b1, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), .s4({1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), .s3({1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0}), .s2({1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0}), .s1({1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), .s0({
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), .p7({n58, n55, n52, 
        n49, n45, n41, n38, n35}), .p6({n89, n86, n82, n78, n74, n70, n66, n62}), .p5({n114, n110, n107, n104, n101, n98, n95, n92}), .p4({n138, n135, n132, 
        n129, n126, n123, n120, n117}), .p3({n169, n166, n162, n158, n154, 
        n150, n146, n142}), .p2({n201, n197, n193, n189, n185, n181, n177, 
        n173}), .p1({n233, n229, n225, n221, n217, n213, n209, n205}), .p0({
        n265, n261, n257, n253, n249, n245, n241, n237}), .check({n32, n28, 
        n24, n20, n16, n12, n8, n4}), .match(match1[31]) );
  CLKBUFX3 U3 ( .A(p1_7[7]), .Y(n56) );
  CLKBUFX3 U4 ( .A(p1_7[6]), .Y(n53) );
  CLKBUFX3 U5 ( .A(p1_7[2]), .Y(n39) );
  CLKBUFX3 U6 ( .A(p1_7[5]), .Y(n50) );
  CLKBUFX3 U7 ( .A(p1_7[1]), .Y(n36) );
  CLKBUFX3 U8 ( .A(p1_7[0]), .Y(n33) );
  CLKBUFX3 U9 ( .A(p1_5[6]), .Y(n108) );
  CLKBUFX3 U10 ( .A(p1_6[7]), .Y(n87) );
  CLKBUFX3 U11 ( .A(p1_5[3]), .Y(n99) );
  CLKBUFX3 U12 ( .A(p1_5[5]), .Y(n105) );
  CLKBUFX3 U13 ( .A(p1_5[2]), .Y(n96) );
  CLKBUFX3 U14 ( .A(p1_5[4]), .Y(n102) );
  CLKBUFX3 U15 ( .A(p1_5[1]), .Y(n93) );
  CLKBUFX3 U16 ( .A(p1_3[7]), .Y(n167) );
  CLKBUFX3 U17 ( .A(p1_5[0]), .Y(n90) );
  CLKBUFX3 U18 ( .A(p1_4[7]), .Y(n136) );
  CLKBUFX3 U19 ( .A(p1_4[6]), .Y(n133) );
  CLKBUFX3 U20 ( .A(p1_4[3]), .Y(n124) );
  CLKBUFX3 U21 ( .A(p1_4[5]), .Y(n130) );
  CLKBUFX3 U22 ( .A(p1_4[2]), .Y(n121) );
  CLKBUFX3 U23 ( .A(p1_4[4]), .Y(n127) );
  CLKBUFX3 U24 ( .A(p1_4[1]), .Y(n118) );
  CLKBUFX3 U25 ( .A(n242), .Y(n243) );
  CLKBUFX3 U26 ( .A(p1_4[0]), .Y(n115) );
  CLKBUFX3 U27 ( .A(n238), .Y(n239) );
  CLKBUFX3 U28 ( .A(n234), .Y(n235) );
  CLKBUFX3 U29 ( .A(p1_7[7]), .Y(n58) );
  CLKBUFX3 U30 ( .A(p1_7[6]), .Y(n55) );
  CLKBUFX3 U31 ( .A(p1_5[6]), .Y(n110) );
  CLKBUFX3 U32 ( .A(p1_6[7]), .Y(n89) );
  CLKBUFX3 U33 ( .A(p1_7[2]), .Y(n41) );
  CLKBUFX3 U34 ( .A(p1_5[3]), .Y(n101) );
  CLKBUFX3 U35 ( .A(p1_5[5]), .Y(n107) );
  CLKBUFX3 U36 ( .A(p1_5[2]), .Y(n98) );
  CLKBUFX3 U37 ( .A(p1_7[1]), .Y(n38) );
  CLKBUFX3 U38 ( .A(p1_5[4]), .Y(n104) );
  CLKBUFX3 U39 ( .A(p1_7[0]), .Y(n35) );
  CLKBUFX3 U40 ( .A(p1_3[7]), .Y(n169) );
  CLKBUFX3 U41 ( .A(p1_5[1]), .Y(n95) );
  CLKBUFX3 U42 ( .A(p1_4[7]), .Y(n138) );
  CLKBUFX3 U43 ( .A(p1_5[0]), .Y(n92) );
  CLKBUFX3 U44 ( .A(p1_4[6]), .Y(n135) );
  CLKBUFX3 U45 ( .A(p1_4[3]), .Y(n126) );
  CLKBUFX3 U46 ( .A(p1_7[7]), .Y(n57) );
  CLKBUFX3 U47 ( .A(p1_4[5]), .Y(n132) );
  CLKBUFX3 U48 ( .A(p1_4[2]), .Y(n123) );
  CLKBUFX3 U49 ( .A(p1_7[5]), .Y(n52) );
  CLKBUFX3 U50 ( .A(p1_7[6]), .Y(n54) );
  CLKBUFX3 U51 ( .A(p1_4[4]), .Y(n129) );
  CLKBUFX3 U52 ( .A(p1_4[1]), .Y(n120) );
  CLKBUFX3 U53 ( .A(p1_7[2]), .Y(n40) );
  CLKBUFX3 U54 ( .A(p1_7[5]), .Y(n51) );
  CLKBUFX3 U55 ( .A(n242), .Y(n245) );
  CLKBUFX3 U56 ( .A(p1_4[0]), .Y(n117) );
  CLKBUFX3 U57 ( .A(p1_7[1]), .Y(n37) );
  CLKBUFX3 U58 ( .A(n238), .Y(n241) );
  CLKBUFX3 U59 ( .A(p1_7[0]), .Y(n34) );
  CLKBUFX3 U60 ( .A(p1_5[6]), .Y(n109) );
  CLKBUFX3 U61 ( .A(p1_6[7]), .Y(n88) );
  CLKBUFX3 U62 ( .A(p1_5[3]), .Y(n100) );
  CLKBUFX3 U63 ( .A(n234), .Y(n237) );
  CLKBUFX3 U64 ( .A(p1_5[5]), .Y(n106) );
  CLKBUFX3 U65 ( .A(p1_5[2]), .Y(n97) );
  CLKBUFX3 U66 ( .A(p1_5[4]), .Y(n103) );
  CLKBUFX3 U67 ( .A(p1_5[1]), .Y(n94) );
  CLKBUFX3 U68 ( .A(p1_3[7]), .Y(n168) );
  CLKBUFX3 U69 ( .A(p1_4[7]), .Y(n137) );
  CLKBUFX3 U70 ( .A(p1_5[0]), .Y(n91) );
  CLKBUFX3 U71 ( .A(p1_4[6]), .Y(n134) );
  CLKBUFX3 U72 ( .A(p1_4[3]), .Y(n125) );
  CLKBUFX3 U73 ( .A(p1_4[5]), .Y(n131) );
  CLKBUFX3 U74 ( .A(p1_4[2]), .Y(n122) );
  CLKBUFX3 U75 ( .A(p1_4[4]), .Y(n128) );
  CLKBUFX3 U76 ( .A(p1_4[1]), .Y(n119) );
  CLKBUFX3 U77 ( .A(n242), .Y(n244) );
  CLKBUFX3 U78 ( .A(p1_4[0]), .Y(n116) );
  CLKBUFX3 U79 ( .A(n238), .Y(n240) );
  CLKBUFX3 U80 ( .A(n234), .Y(n236) );
  CLKBUFX3 U81 ( .A(n42), .Y(n43) );
  CLKBUFX3 U82 ( .A(p1_0[2]), .Y(n242) );
  CLKBUFX3 U83 ( .A(n46), .Y(n47) );
  CLKBUFX3 U84 ( .A(p1_0[1]), .Y(n238) );
  CLKBUFX3 U85 ( .A(n111), .Y(n112) );
  CLKBUFX3 U86 ( .A(p1_0[0]), .Y(n234) );
  CLKBUFX3 U87 ( .A(n230), .Y(n231) );
  CLKBUFX3 U88 ( .A(n83), .Y(n84) );
  CLKBUFX3 U89 ( .A(n226), .Y(n227) );
  CLKBUFX3 U90 ( .A(n198), .Y(n199) );
  CLKBUFX3 U91 ( .A(n71), .Y(n72) );
  CLKBUFX3 U92 ( .A(n214), .Y(n215) );
  CLKBUFX3 U93 ( .A(n194), .Y(n195) );
  CLKBUFX3 U94 ( .A(n79), .Y(n80) );
  CLKBUFX3 U95 ( .A(n262), .Y(n263) );
  CLKBUFX3 U96 ( .A(n222), .Y(n223) );
  CLKBUFX3 U97 ( .A(n67), .Y(n68) );
  CLKBUFX3 U98 ( .A(n210), .Y(n211) );
  CLKBUFX3 U99 ( .A(n182), .Y(n183) );
  CLKBUFX3 U100 ( .A(n75), .Y(n76) );
  CLKBUFX3 U101 ( .A(n258), .Y(n259) );
  CLKBUFX3 U102 ( .A(n218), .Y(n219) );
  CLKBUFX3 U103 ( .A(n190), .Y(n191) );
  CLKBUFX3 U104 ( .A(n163), .Y(n164) );
  CLKBUFX3 U105 ( .A(n178), .Y(n179) );
  CLKBUFX3 U106 ( .A(n63), .Y(n64) );
  CLKBUFX3 U107 ( .A(n254), .Y(n255) );
  CLKBUFX3 U108 ( .A(n246), .Y(n247) );
  CLKBUFX3 U109 ( .A(n206), .Y(n207) );
  CLKBUFX3 U110 ( .A(n151), .Y(n152) );
  CLKBUFX3 U111 ( .A(n186), .Y(n187) );
  CLKBUFX3 U112 ( .A(n59), .Y(n60) );
  CLKBUFX3 U113 ( .A(n159), .Y(n160) );
  CLKBUFX3 U114 ( .A(n174), .Y(n175) );
  CLKBUFX3 U115 ( .A(n202), .Y(n203) );
  CLKBUFX3 U116 ( .A(n147), .Y(n148) );
  CLKBUFX3 U117 ( .A(n250), .Y(n251) );
  CLKBUFX3 U118 ( .A(n155), .Y(n156) );
  CLKBUFX3 U119 ( .A(n170), .Y(n171) );
  CLKBUFX3 U120 ( .A(n143), .Y(n144) );
  CLKBUFX3 U121 ( .A(n139), .Y(n140) );
  CLKBUFX3 U122 ( .A(n42), .Y(n45) );
  CLKBUFX3 U123 ( .A(n111), .Y(n114) );
  CLKBUFX3 U124 ( .A(n230), .Y(n233) );
  CLKBUFX3 U125 ( .A(n46), .Y(n49) );
  CLKBUFX3 U126 ( .A(n83), .Y(n86) );
  CLKBUFX3 U127 ( .A(n226), .Y(n229) );
  CLKBUFX3 U128 ( .A(n198), .Y(n201) );
  CLKBUFX3 U129 ( .A(n71), .Y(n74) );
  CLKBUFX3 U130 ( .A(n214), .Y(n217) );
  CLKBUFX3 U131 ( .A(n194), .Y(n197) );
  CLKBUFX3 U132 ( .A(n79), .Y(n82) );
  CLKBUFX3 U133 ( .A(n262), .Y(n265) );
  CLKBUFX3 U134 ( .A(n222), .Y(n225) );
  CLKBUFX3 U135 ( .A(n67), .Y(n70) );
  CLKBUFX3 U136 ( .A(n210), .Y(n213) );
  CLKBUFX3 U137 ( .A(n182), .Y(n185) );
  CLKBUFX3 U138 ( .A(n75), .Y(n78) );
  CLKBUFX3 U139 ( .A(n218), .Y(n221) );
  CLKBUFX3 U140 ( .A(n190), .Y(n193) );
  CLKBUFX3 U141 ( .A(n258), .Y(n261) );
  CLKBUFX3 U142 ( .A(n163), .Y(n166) );
  CLKBUFX3 U143 ( .A(n178), .Y(n181) );
  CLKBUFX3 U144 ( .A(n63), .Y(n66) );
  CLKBUFX3 U145 ( .A(n254), .Y(n257) );
  CLKBUFX3 U146 ( .A(n206), .Y(n209) );
  CLKBUFX3 U147 ( .A(n246), .Y(n249) );
  CLKBUFX3 U148 ( .A(n151), .Y(n154) );
  CLKBUFX3 U149 ( .A(n186), .Y(n189) );
  CLKBUFX3 U150 ( .A(n59), .Y(n62) );
  CLKBUFX3 U151 ( .A(n159), .Y(n162) );
  CLKBUFX3 U152 ( .A(n174), .Y(n177) );
  CLKBUFX3 U153 ( .A(n202), .Y(n205) );
  CLKBUFX3 U154 ( .A(n147), .Y(n150) );
  CLKBUFX3 U155 ( .A(n250), .Y(n253) );
  CLKBUFX3 U156 ( .A(n155), .Y(n158) );
  CLKBUFX3 U157 ( .A(n170), .Y(n173) );
  CLKBUFX3 U158 ( .A(n42), .Y(n44) );
  CLKBUFX3 U159 ( .A(n143), .Y(n146) );
  CLKBUFX3 U160 ( .A(n139), .Y(n142) );
  CLKBUFX3 U161 ( .A(n46), .Y(n48) );
  CLKBUFX3 U162 ( .A(n111), .Y(n113) );
  CLKBUFX3 U163 ( .A(n230), .Y(n232) );
  CLKBUFX3 U164 ( .A(n83), .Y(n85) );
  CLKBUFX3 U165 ( .A(n198), .Y(n200) );
  CLKBUFX3 U166 ( .A(n226), .Y(n228) );
  CLKBUFX3 U167 ( .A(n71), .Y(n73) );
  CLKBUFX3 U168 ( .A(n214), .Y(n216) );
  CLKBUFX3 U169 ( .A(n194), .Y(n196) );
  CLKBUFX3 U170 ( .A(n79), .Y(n81) );
  CLKBUFX3 U171 ( .A(n262), .Y(n264) );
  CLKBUFX3 U172 ( .A(n222), .Y(n224) );
  CLKBUFX3 U173 ( .A(n67), .Y(n69) );
  CLKBUFX3 U174 ( .A(n210), .Y(n212) );
  CLKBUFX3 U175 ( .A(n182), .Y(n184) );
  CLKBUFX3 U176 ( .A(n75), .Y(n77) );
  CLKBUFX3 U177 ( .A(n218), .Y(n220) );
  CLKBUFX3 U178 ( .A(n190), .Y(n192) );
  CLKBUFX3 U179 ( .A(n258), .Y(n260) );
  CLKBUFX3 U180 ( .A(n163), .Y(n165) );
  CLKBUFX3 U181 ( .A(n178), .Y(n180) );
  CLKBUFX3 U182 ( .A(n63), .Y(n65) );
  CLKBUFX3 U183 ( .A(n254), .Y(n256) );
  CLKBUFX3 U184 ( .A(n206), .Y(n208) );
  CLKBUFX3 U185 ( .A(n246), .Y(n248) );
  CLKBUFX3 U186 ( .A(n151), .Y(n153) );
  CLKBUFX3 U187 ( .A(n186), .Y(n188) );
  CLKBUFX3 U188 ( .A(n59), .Y(n61) );
  CLKBUFX3 U189 ( .A(n159), .Y(n161) );
  CLKBUFX3 U190 ( .A(n174), .Y(n176) );
  CLKBUFX3 U191 ( .A(n202), .Y(n204) );
  CLKBUFX3 U192 ( .A(n147), .Y(n149) );
  CLKBUFX3 U193 ( .A(n250), .Y(n252) );
  CLKBUFX3 U194 ( .A(n155), .Y(n157) );
  CLKBUFX3 U195 ( .A(n170), .Y(n172) );
  CLKBUFX3 U196 ( .A(n143), .Y(n145) );
  CLKBUFX3 U197 ( .A(n139), .Y(n141) );
  CLKBUFX3 U198 ( .A(n21), .Y(n22) );
  CLKBUFX3 U199 ( .A(n25), .Y(n26) );
  CLKBUFX3 U200 ( .A(n5), .Y(n6) );
  CLKBUFX3 U201 ( .A(n29), .Y(n30) );
  CLKBUFX3 U202 ( .A(n9), .Y(n10) );
  CLKBUFX3 U203 ( .A(n1), .Y(n2) );
  CLKBUFX3 U204 ( .A(n13), .Y(n14) );
  CLKBUFX3 U205 ( .A(n17), .Y(n18) );
  CLKBUFX3 U206 ( .A(n21), .Y(n24) );
  CLKBUFX3 U207 ( .A(n25), .Y(n28) );
  CLKBUFX3 U208 ( .A(n5), .Y(n8) );
  CLKBUFX3 U209 ( .A(n29), .Y(n32) );
  CLKBUFX3 U210 ( .A(n9), .Y(n12) );
  CLKBUFX3 U211 ( .A(n13), .Y(n16) );
  CLKBUFX3 U212 ( .A(n1), .Y(n4) );
  CLKBUFX3 U213 ( .A(n17), .Y(n20) );
  CLKBUFX3 U214 ( .A(n21), .Y(n23) );
  CLKBUFX3 U215 ( .A(n25), .Y(n27) );
  CLKBUFX3 U216 ( .A(n5), .Y(n7) );
  CLKBUFX3 U217 ( .A(n29), .Y(n31) );
  CLKBUFX3 U218 ( .A(n9), .Y(n11) );
  CLKBUFX3 U219 ( .A(n13), .Y(n15) );
  CLKBUFX3 U220 ( .A(n1), .Y(n3) );
  CLKBUFX3 U221 ( .A(n17), .Y(n19) );
  CLKBUFX3 U222 ( .A(p1_7[3]), .Y(n42) );
  CLKBUFX3 U223 ( .A(p1_7[4]), .Y(n46) );
  CLKBUFX3 U224 ( .A(p1_5[7]), .Y(n111) );
  CLKBUFX3 U225 ( .A(p1_1[7]), .Y(n230) );
  CLKBUFX3 U226 ( .A(p1_6[6]), .Y(n83) );
  CLKBUFX3 U227 ( .A(p1_2[7]), .Y(n198) );
  CLKBUFX3 U228 ( .A(p1_1[6]), .Y(n226) );
  CLKBUFX3 U229 ( .A(p1_6[3]), .Y(n71) );
  CLKBUFX3 U230 ( .A(p1_1[3]), .Y(n214) );
  CLKBUFX3 U231 ( .A(p1_2[6]), .Y(n194) );
  CLKBUFX3 U232 ( .A(p1_6[5]), .Y(n79) );
  CLKBUFX3 U233 ( .A(p1_0[7]), .Y(n262) );
  CLKBUFX3 U234 ( .A(p1_1[5]), .Y(n222) );
  CLKBUFX3 U235 ( .A(p1_6[2]), .Y(n67) );
  CLKBUFX3 U236 ( .A(p1_2[3]), .Y(n182) );
  CLKBUFX3 U237 ( .A(p1_1[2]), .Y(n210) );
  CLKBUFX3 U238 ( .A(p1_6[4]), .Y(n75) );
  CLKBUFX3 U239 ( .A(p1_0[6]), .Y(n258) );
  CLKBUFX3 U240 ( .A(p1_2[5]), .Y(n190) );
  CLKBUFX3 U241 ( .A(p1_1[4]), .Y(n218) );
  CLKBUFX3 U242 ( .A(p1_3[6]), .Y(n163) );
  CLKBUFX3 U243 ( .A(p1_2[2]), .Y(n178) );
  CLKBUFX3 U244 ( .A(p1_6[1]), .Y(n63) );
  CLKBUFX3 U245 ( .A(p1_0[5]), .Y(n254) );
  CLKBUFX3 U246 ( .A(p1_0[3]), .Y(n246) );
  CLKBUFX3 U247 ( .A(p1_1[1]), .Y(n206) );
  CLKBUFX3 U248 ( .A(p1_3[3]), .Y(n151) );
  CLKBUFX3 U249 ( .A(p1_2[4]), .Y(n186) );
  CLKBUFX3 U250 ( .A(p1_6[0]), .Y(n59) );
  CLKBUFX3 U251 ( .A(p1_3[5]), .Y(n159) );
  CLKBUFX3 U252 ( .A(p1_2[1]), .Y(n174) );
  CLKBUFX3 U253 ( .A(p1_1[0]), .Y(n202) );
  CLKBUFX3 U254 ( .A(p1_3[2]), .Y(n147) );
  CLKBUFX3 U255 ( .A(p1_0[4]), .Y(n250) );
  CLKBUFX3 U256 ( .A(p1_3[4]), .Y(n155) );
  CLKBUFX3 U257 ( .A(p1_2[0]), .Y(n170) );
  CLKBUFX3 U258 ( .A(p1_3[1]), .Y(n143) );
  CLKBUFX3 U259 ( .A(p1_3[0]), .Y(n139) );
  CLKBUFX3 U260 ( .A(check1[5]), .Y(n21) );
  CLKBUFX3 U261 ( .A(check1[6]), .Y(n25) );
  CLKBUFX3 U262 ( .A(check1[1]), .Y(n5) );
  CLKBUFX3 U263 ( .A(check1[7]), .Y(n29) );
  CLKBUFX3 U264 ( .A(check1[2]), .Y(n9) );
  CLKBUFX3 U265 ( .A(check1[0]), .Y(n1) );
  CLKBUFX3 U266 ( .A(check1[3]), .Y(n13) );
  CLKBUFX3 U267 ( .A(check1[4]), .Y(n17) );
endmodule


module Pattern_String_Comparator_Cell_33 ( s7, s6, s5, s4, s3, s2, s1, s0, p7, 
        p6, p5, p4, p3, p2, p1, p0, check, match );
  input [7:0] s7;
  input [7:0] s6;
  input [7:0] s5;
  input [7:0] s4;
  input [7:0] s3;
  input [7:0] s2;
  input [7:0] s1;
  input [7:0] s0;
  input [7:0] p7;
  input [7:0] p6;
  input [7:0] p5;
  input [7:0] p4;
  input [7:0] p3;
  input [7:0] p2;
  input [7:0] p1;
  input [7:0] p0;
  input [7:0] check;
  output match;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30,
         n31, n32, n91, n92, n93, n94, n95, n96, n97, n98, n99, n100, n101,
         n102, n103, n104, n105, n106, n107, n108, n109, n110, n111, n112,
         n113, n114, n115, n116, n117, n118, n119, n120, n121, n122, n123,
         n124, n125, n126, n127, n128, n129, n130, n131, n132, n133, n134,
         n135, n136, n137, n138, n139, n140, n141, n142, n143, n144, n145,
         n146, n147, n148;

  NOR2X1 U2 ( .A(n148), .B(n147), .Y(match) );
  NAND4X1 U3 ( .A(n102), .B(n101), .C(n100), .D(n99), .Y(n148) );
  OAI21XL U4 ( .A0(n20), .A1(n19), .B0(check[3]), .Y(n101) );
  OAI21XL U5 ( .A0(n30), .A1(n29), .B0(check[2]), .Y(n100) );
  OAI21XL U6 ( .A0(n98), .A1(n97), .B0(check[1]), .Y(n99) );
  NAND4X1 U7 ( .A(n146), .B(n145), .C(n144), .D(n143), .Y(n147) );
  OAI21XL U8 ( .A0(n122), .A1(n121), .B0(check[7]), .Y(n145) );
  OAI21XL U9 ( .A0(n132), .A1(n131), .B0(check[6]), .Y(n144) );
  OAI21XL U10 ( .A0(n142), .A1(n141), .B0(check[5]), .Y(n143) );
  XNOR2X1 U11 ( .A(s0[0]), .B(p0[0]), .Y(n106) );
  XNOR2X1 U12 ( .A(s0[4]), .B(p0[4]), .Y(n110) );
  XNOR2X1 U13 ( .A(s5[0]), .B(p5[0]), .Y(n136) );
  XNOR2X1 U14 ( .A(s5[4]), .B(p5[4]), .Y(n140) );
  XNOR2X1 U15 ( .A(s6[0]), .B(p6[0]), .Y(n126) );
  XNOR2X1 U16 ( .A(s6[4]), .B(p6[4]), .Y(n130) );
  XNOR2X1 U17 ( .A(s7[0]), .B(p7[0]), .Y(n116) );
  XNOR2X1 U18 ( .A(s7[4]), .B(p7[4]), .Y(n120) );
  XNOR2X1 U19 ( .A(s4[0]), .B(p4[0]), .Y(n4) );
  XNOR2X1 U20 ( .A(s4[4]), .B(p4[4]), .Y(n8) );
  XNOR2X1 U21 ( .A(s1[0]), .B(p1[0]), .Y(n92) );
  XNOR2X1 U22 ( .A(s1[4]), .B(p1[4]), .Y(n96) );
  XNOR2X1 U23 ( .A(s2[0]), .B(p2[0]), .Y(n24) );
  XNOR2X1 U24 ( .A(s2[4]), .B(p2[4]), .Y(n28) );
  XNOR2X1 U25 ( .A(s3[0]), .B(p3[0]), .Y(n14) );
  XNOR2X1 U26 ( .A(s3[4]), .B(p3[4]), .Y(n18) );
  XNOR2X1 U27 ( .A(s0[3]), .B(p0[3]), .Y(n103) );
  XNOR2X1 U28 ( .A(s0[7]), .B(p0[7]), .Y(n107) );
  XNOR2X1 U29 ( .A(s4[3]), .B(p4[3]), .Y(n1) );
  XNOR2X1 U30 ( .A(s4[7]), .B(p4[7]), .Y(n5) );
  XNOR2X1 U31 ( .A(s0[2]), .B(p0[2]), .Y(n104) );
  XNOR2X1 U32 ( .A(s0[6]), .B(p0[6]), .Y(n108) );
  XNOR2X1 U33 ( .A(s4[2]), .B(p4[2]), .Y(n2) );
  XNOR2X1 U34 ( .A(s4[6]), .B(p4[6]), .Y(n6) );
  XNOR2X1 U35 ( .A(s0[1]), .B(p0[1]), .Y(n105) );
  XNOR2X1 U36 ( .A(s4[1]), .B(p4[1]), .Y(n3) );
  OAI21XL U37 ( .A0(n112), .A1(n111), .B0(check[0]), .Y(n146) );
  NAND4X1 U38 ( .A(n110), .B(n109), .C(n108), .D(n107), .Y(n111) );
  NAND4X1 U39 ( .A(n106), .B(n105), .C(n104), .D(n103), .Y(n112) );
  XNOR2X1 U40 ( .A(s0[5]), .B(p0[5]), .Y(n109) );
  OAI21XL U41 ( .A0(n10), .A1(n9), .B0(check[4]), .Y(n102) );
  NAND4X1 U42 ( .A(n8), .B(n7), .C(n6), .D(n5), .Y(n9) );
  NAND4X1 U43 ( .A(n4), .B(n3), .C(n2), .D(n1), .Y(n10) );
  XNOR2X1 U44 ( .A(s4[5]), .B(p4[5]), .Y(n7) );
  NAND4X1 U45 ( .A(n116), .B(n115), .C(n114), .D(n113), .Y(n122) );
  XNOR2X1 U46 ( .A(s7[1]), .B(p7[1]), .Y(n115) );
  XNOR2X1 U47 ( .A(s7[2]), .B(p7[2]), .Y(n114) );
  XNOR2X1 U48 ( .A(s7[3]), .B(p7[3]), .Y(n113) );
  NAND4X1 U49 ( .A(n126), .B(n125), .C(n124), .D(n123), .Y(n132) );
  XNOR2X1 U50 ( .A(s6[1]), .B(p6[1]), .Y(n125) );
  XNOR2X1 U51 ( .A(s6[2]), .B(p6[2]), .Y(n124) );
  XNOR2X1 U52 ( .A(s6[3]), .B(p6[3]), .Y(n123) );
  NAND4X1 U53 ( .A(n136), .B(n135), .C(n134), .D(n133), .Y(n142) );
  XNOR2X1 U54 ( .A(s5[1]), .B(p5[1]), .Y(n135) );
  XNOR2X1 U55 ( .A(s5[2]), .B(p5[2]), .Y(n134) );
  XNOR2X1 U56 ( .A(s5[3]), .B(p5[3]), .Y(n133) );
  NAND4X1 U57 ( .A(n14), .B(n13), .C(n12), .D(n11), .Y(n20) );
  XNOR2X1 U58 ( .A(s3[1]), .B(p3[1]), .Y(n13) );
  XNOR2X1 U59 ( .A(s3[2]), .B(p3[2]), .Y(n12) );
  XNOR2X1 U60 ( .A(s3[3]), .B(p3[3]), .Y(n11) );
  NAND4X1 U61 ( .A(n24), .B(n23), .C(n22), .D(n21), .Y(n30) );
  XNOR2X1 U62 ( .A(s2[1]), .B(p2[1]), .Y(n23) );
  XNOR2X1 U63 ( .A(s2[2]), .B(p2[2]), .Y(n22) );
  XNOR2X1 U64 ( .A(s2[3]), .B(p2[3]), .Y(n21) );
  NAND4X1 U65 ( .A(n92), .B(n91), .C(n32), .D(n31), .Y(n98) );
  XNOR2X1 U66 ( .A(s1[1]), .B(p1[1]), .Y(n91) );
  XNOR2X1 U67 ( .A(s1[2]), .B(p1[2]), .Y(n32) );
  XNOR2X1 U68 ( .A(s1[3]), .B(p1[3]), .Y(n31) );
  NAND4X1 U69 ( .A(n120), .B(n119), .C(n118), .D(n117), .Y(n121) );
  XNOR2X1 U70 ( .A(s7[5]), .B(p7[5]), .Y(n119) );
  XNOR2X1 U71 ( .A(s7[6]), .B(p7[6]), .Y(n118) );
  XNOR2X1 U72 ( .A(s7[7]), .B(p7[7]), .Y(n117) );
  NAND4X1 U73 ( .A(n140), .B(n139), .C(n138), .D(n137), .Y(n141) );
  XNOR2X1 U74 ( .A(s5[5]), .B(p5[5]), .Y(n139) );
  XNOR2X1 U75 ( .A(s5[6]), .B(p5[6]), .Y(n138) );
  XNOR2X1 U76 ( .A(s5[7]), .B(p5[7]), .Y(n137) );
  NAND4X1 U77 ( .A(n130), .B(n129), .C(n128), .D(n127), .Y(n131) );
  XNOR2X1 U78 ( .A(s6[5]), .B(p6[5]), .Y(n129) );
  XNOR2X1 U79 ( .A(s6[6]), .B(p6[6]), .Y(n128) );
  XNOR2X1 U80 ( .A(s6[7]), .B(p6[7]), .Y(n127) );
  NAND4X1 U81 ( .A(n18), .B(n17), .C(n16), .D(n15), .Y(n19) );
  XNOR2X1 U82 ( .A(s3[5]), .B(p3[5]), .Y(n17) );
  XNOR2X1 U83 ( .A(s3[6]), .B(p3[6]), .Y(n16) );
  XNOR2X1 U84 ( .A(s3[7]), .B(p3[7]), .Y(n15) );
  NAND4X1 U85 ( .A(n28), .B(n27), .C(n26), .D(n25), .Y(n29) );
  XNOR2X1 U86 ( .A(s2[5]), .B(p2[5]), .Y(n27) );
  XNOR2X1 U87 ( .A(s2[6]), .B(p2[6]), .Y(n26) );
  XNOR2X1 U88 ( .A(s2[7]), .B(p2[7]), .Y(n25) );
  NAND4X1 U89 ( .A(n96), .B(n95), .C(n94), .D(n93), .Y(n97) );
  XNOR2X1 U90 ( .A(s1[5]), .B(p1[5]), .Y(n95) );
  XNOR2X1 U91 ( .A(s1[6]), .B(p1[6]), .Y(n94) );
  XNOR2X1 U92 ( .A(s1[7]), .B(p1[7]), .Y(n93) );
endmodule


module Pattern_String_Comparator_Cell_32 ( s7, s6, s5, s4, s3, s2, s1, s0, p7, 
        p6, p5, p4, p3, p2, p1, p0, check, match );
  input [7:0] s7;
  input [7:0] s6;
  input [7:0] s5;
  input [7:0] s4;
  input [7:0] s3;
  input [7:0] s2;
  input [7:0] s1;
  input [7:0] s0;
  input [7:0] p7;
  input [7:0] p6;
  input [7:0] p5;
  input [7:0] p4;
  input [7:0] p3;
  input [7:0] p2;
  input [7:0] p1;
  input [7:0] p0;
  input [7:0] check;
  output match;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30,
         n31, n32, n91, n92, n93, n94, n95, n96, n97, n98, n99, n100, n101,
         n102, n103, n104, n105, n106, n107, n108, n109, n110, n111, n112,
         n113, n114, n115, n116, n117, n118, n119, n120, n121, n122, n123,
         n124, n125, n126, n127, n128, n129, n130, n131, n132, n133, n134,
         n135, n136, n137, n138, n139, n140, n141, n142, n143, n144, n145,
         n146, n147, n148;

  NOR2X1 U2 ( .A(n148), .B(n147), .Y(match) );
  NAND4X1 U3 ( .A(n102), .B(n101), .C(n100), .D(n99), .Y(n148) );
  NAND4X1 U4 ( .A(n146), .B(n145), .C(n144), .D(n143), .Y(n147) );
  OAI21XL U5 ( .A0(n30), .A1(n29), .B0(check[2]), .Y(n100) );
  XNOR2X1 U6 ( .A(s7[7]), .B(p7[7]), .Y(n117) );
  OAI21XL U7 ( .A0(n122), .A1(n121), .B0(check[7]), .Y(n145) );
  NAND4X1 U8 ( .A(n116), .B(n115), .C(n114), .D(n113), .Y(n122) );
  NAND4X1 U9 ( .A(n120), .B(n119), .C(n118), .D(n117), .Y(n121) );
  XNOR2X1 U10 ( .A(s7[3]), .B(p7[3]), .Y(n113) );
  XNOR2X1 U11 ( .A(s7[6]), .B(p7[6]), .Y(n118) );
  XNOR2X1 U12 ( .A(s7[2]), .B(p7[2]), .Y(n114) );
  XNOR2X1 U13 ( .A(s7[5]), .B(p7[5]), .Y(n119) );
  XNOR2X1 U14 ( .A(s7[1]), .B(p7[1]), .Y(n115) );
  XNOR2X1 U15 ( .A(s7[0]), .B(p7[0]), .Y(n116) );
  XNOR2X1 U16 ( .A(s5[6]), .B(p5[6]), .Y(n138) );
  OAI21XL U17 ( .A0(n142), .A1(n141), .B0(check[5]), .Y(n143) );
  NAND4X1 U18 ( .A(n136), .B(n135), .C(n134), .D(n133), .Y(n142) );
  NAND4X1 U19 ( .A(n140), .B(n139), .C(n138), .D(n137), .Y(n141) );
  XNOR2X1 U20 ( .A(s5[0]), .B(p5[0]), .Y(n136) );
  XNOR2X1 U21 ( .A(s6[7]), .B(p6[7]), .Y(n127) );
  OAI21XL U22 ( .A0(n132), .A1(n131), .B0(check[6]), .Y(n144) );
  NAND4X1 U23 ( .A(n126), .B(n125), .C(n124), .D(n123), .Y(n132) );
  NAND4X1 U24 ( .A(n130), .B(n129), .C(n128), .D(n127), .Y(n131) );
  XNOR2X1 U25 ( .A(s6[0]), .B(p6[0]), .Y(n126) );
  XNOR2X1 U26 ( .A(s5[3]), .B(p5[3]), .Y(n133) );
  XNOR2X1 U27 ( .A(s5[5]), .B(p5[5]), .Y(n139) );
  XNOR2X1 U28 ( .A(s5[2]), .B(p5[2]), .Y(n134) );
  XNOR2X1 U29 ( .A(s5[4]), .B(p5[4]), .Y(n140) );
  XNOR2X1 U30 ( .A(s5[1]), .B(p5[1]), .Y(n135) );
  XNOR2X1 U31 ( .A(s3[7]), .B(p3[7]), .Y(n15) );
  OAI21XL U32 ( .A0(n20), .A1(n19), .B0(check[3]), .Y(n101) );
  NAND4X1 U33 ( .A(n14), .B(n13), .C(n12), .D(n11), .Y(n20) );
  NAND4X1 U34 ( .A(n18), .B(n17), .C(n16), .D(n15), .Y(n19) );
  XNOR2X1 U35 ( .A(s3[0]), .B(p3[0]), .Y(n14) );
  XNOR2X1 U36 ( .A(s4[7]), .B(p4[7]), .Y(n5) );
  OAI21XL U37 ( .A0(n10), .A1(n9), .B0(check[4]), .Y(n102) );
  NAND4X1 U38 ( .A(n4), .B(n3), .C(n2), .D(n1), .Y(n10) );
  NAND4X1 U39 ( .A(n8), .B(n7), .C(n6), .D(n5), .Y(n9) );
  XNOR2X1 U40 ( .A(s4[0]), .B(p4[0]), .Y(n4) );
  XNOR2X1 U41 ( .A(s4[6]), .B(p4[6]), .Y(n6) );
  XNOR2X1 U42 ( .A(s4[3]), .B(p4[3]), .Y(n1) );
  XNOR2X1 U43 ( .A(s4[5]), .B(p4[5]), .Y(n7) );
  XNOR2X1 U44 ( .A(s4[2]), .B(p4[2]), .Y(n2) );
  XNOR2X1 U45 ( .A(s4[4]), .B(p4[4]), .Y(n8) );
  XNOR2X1 U46 ( .A(s4[1]), .B(p4[1]), .Y(n3) );
  XNOR2X1 U47 ( .A(s0[2]), .B(p0[2]), .Y(n104) );
  OAI21XL U48 ( .A0(n112), .A1(n111), .B0(check[0]), .Y(n146) );
  NAND4X1 U49 ( .A(n110), .B(n109), .C(n108), .D(n107), .Y(n111) );
  NAND4X1 U50 ( .A(n106), .B(n105), .C(n104), .D(n103), .Y(n112) );
  XNOR2X1 U51 ( .A(s0[4]), .B(p0[4]), .Y(n110) );
  XNOR2X1 U52 ( .A(s7[4]), .B(p7[4]), .Y(n120) );
  XNOR2X1 U53 ( .A(s0[1]), .B(p0[1]), .Y(n105) );
  XNOR2X1 U54 ( .A(s5[7]), .B(p5[7]), .Y(n137) );
  XNOR2X1 U55 ( .A(s0[0]), .B(p0[0]), .Y(n106) );
  XNOR2X1 U56 ( .A(s1[7]), .B(p1[7]), .Y(n93) );
  OAI21XL U57 ( .A0(n98), .A1(n97), .B0(check[1]), .Y(n99) );
  NAND4X1 U58 ( .A(n92), .B(n91), .C(n32), .D(n31), .Y(n98) );
  NAND4X1 U59 ( .A(n96), .B(n95), .C(n94), .D(n93), .Y(n97) );
  XNOR2X1 U60 ( .A(s1[0]), .B(p1[0]), .Y(n92) );
  XNOR2X1 U61 ( .A(s6[6]), .B(p6[6]), .Y(n128) );
  XNOR2X1 U62 ( .A(s2[7]), .B(p2[7]), .Y(n25) );
  XNOR2X1 U63 ( .A(s1[6]), .B(p1[6]), .Y(n94) );
  NAND4X1 U64 ( .A(n28), .B(n27), .C(n26), .D(n25), .Y(n29) );
  XNOR2X1 U65 ( .A(s2[4]), .B(p2[4]), .Y(n28) );
  XNOR2X1 U66 ( .A(s2[5]), .B(p2[5]), .Y(n27) );
  XNOR2X1 U67 ( .A(s2[6]), .B(p2[6]), .Y(n26) );
  XNOR2X1 U68 ( .A(s6[3]), .B(p6[3]), .Y(n123) );
  XNOR2X1 U69 ( .A(s1[3]), .B(p1[3]), .Y(n31) );
  XNOR2X1 U70 ( .A(s6[5]), .B(p6[5]), .Y(n129) );
  XNOR2X1 U71 ( .A(s0[7]), .B(p0[7]), .Y(n107) );
  XNOR2X1 U72 ( .A(s1[5]), .B(p1[5]), .Y(n95) );
  XNOR2X1 U73 ( .A(s6[2]), .B(p6[2]), .Y(n124) );
  XNOR2X1 U74 ( .A(s2[3]), .B(p2[3]), .Y(n21) );
  XNOR2X1 U75 ( .A(s1[2]), .B(p1[2]), .Y(n32) );
  NAND4X1 U76 ( .A(n24), .B(n23), .C(n22), .D(n21), .Y(n30) );
  XNOR2X1 U77 ( .A(s2[0]), .B(p2[0]), .Y(n24) );
  XNOR2X1 U78 ( .A(s2[1]), .B(p2[1]), .Y(n23) );
  XNOR2X1 U79 ( .A(s2[2]), .B(p2[2]), .Y(n22) );
  XNOR2X1 U80 ( .A(s6[4]), .B(p6[4]), .Y(n130) );
  XNOR2X1 U81 ( .A(s0[6]), .B(p0[6]), .Y(n108) );
  XNOR2X1 U82 ( .A(s1[4]), .B(p1[4]), .Y(n96) );
  XNOR2X1 U83 ( .A(s3[6]), .B(p3[6]), .Y(n16) );
  XNOR2X1 U84 ( .A(s6[1]), .B(p6[1]), .Y(n125) );
  XNOR2X1 U85 ( .A(s0[5]), .B(p0[5]), .Y(n109) );
  XNOR2X1 U86 ( .A(s0[3]), .B(p0[3]), .Y(n103) );
  XNOR2X1 U87 ( .A(s1[1]), .B(p1[1]), .Y(n91) );
  XNOR2X1 U88 ( .A(s3[3]), .B(p3[3]), .Y(n11) );
  XNOR2X1 U89 ( .A(s3[5]), .B(p3[5]), .Y(n17) );
  XNOR2X1 U90 ( .A(s3[2]), .B(p3[2]), .Y(n12) );
  XNOR2X1 U91 ( .A(s3[4]), .B(p3[4]), .Y(n18) );
  XNOR2X1 U92 ( .A(s3[1]), .B(p3[1]), .Y(n13) );
endmodule


module Pattern_String_Comparator_Cell_31 ( s7, s6, s5, s4, s3, s2, s1, s0, p7, 
        p6, p5, p4, p3, p2, p1, p0, check, match );
  input [7:0] s7;
  input [7:0] s6;
  input [7:0] s5;
  input [7:0] s4;
  input [7:0] s3;
  input [7:0] s2;
  input [7:0] s1;
  input [7:0] s0;
  input [7:0] p7;
  input [7:0] p6;
  input [7:0] p5;
  input [7:0] p4;
  input [7:0] p3;
  input [7:0] p2;
  input [7:0] p1;
  input [7:0] p0;
  input [7:0] check;
  output match;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30,
         n31, n32, n91, n92, n93, n94, n95, n96, n97, n98, n99, n100, n101,
         n102, n103, n104, n105, n106, n107, n108, n109, n110, n111, n112,
         n113, n114, n115, n116, n117, n118, n119, n120, n121, n122, n123,
         n124, n125, n126, n127, n128, n129, n130, n131, n132, n133, n134,
         n135, n136, n137, n138, n139, n140, n141, n142, n143, n144, n145,
         n146, n147, n148;

  NOR2X1 U2 ( .A(n148), .B(n147), .Y(match) );
  NAND4X1 U3 ( .A(n102), .B(n101), .C(n100), .D(n99), .Y(n148) );
  NAND4X1 U4 ( .A(n146), .B(n145), .C(n144), .D(n143), .Y(n147) );
  OAI21XL U5 ( .A0(n30), .A1(n29), .B0(check[2]), .Y(n100) );
  XNOR2X1 U6 ( .A(s7[7]), .B(p7[7]), .Y(n117) );
  OAI21XL U7 ( .A0(n122), .A1(n121), .B0(check[7]), .Y(n145) );
  NAND4X1 U8 ( .A(n116), .B(n115), .C(n114), .D(n113), .Y(n122) );
  NAND4X1 U9 ( .A(n120), .B(n119), .C(n118), .D(n117), .Y(n121) );
  XNOR2X1 U10 ( .A(s7[3]), .B(p7[3]), .Y(n113) );
  XNOR2X1 U11 ( .A(s7[6]), .B(p7[6]), .Y(n118) );
  XNOR2X1 U12 ( .A(s7[2]), .B(p7[2]), .Y(n114) );
  XNOR2X1 U13 ( .A(s7[5]), .B(p7[5]), .Y(n119) );
  XNOR2X1 U14 ( .A(s7[1]), .B(p7[1]), .Y(n115) );
  XNOR2X1 U15 ( .A(s7[0]), .B(p7[0]), .Y(n116) );
  XNOR2X1 U16 ( .A(s5[6]), .B(p5[6]), .Y(n138) );
  OAI21XL U17 ( .A0(n142), .A1(n141), .B0(check[5]), .Y(n143) );
  NAND4X1 U18 ( .A(n136), .B(n135), .C(n134), .D(n133), .Y(n142) );
  NAND4X1 U19 ( .A(n140), .B(n139), .C(n138), .D(n137), .Y(n141) );
  XNOR2X1 U20 ( .A(s5[0]), .B(p5[0]), .Y(n136) );
  XNOR2X1 U21 ( .A(s6[7]), .B(p6[7]), .Y(n127) );
  OAI21XL U22 ( .A0(n132), .A1(n131), .B0(check[6]), .Y(n144) );
  NAND4X1 U23 ( .A(n126), .B(n125), .C(n124), .D(n123), .Y(n132) );
  NAND4X1 U24 ( .A(n130), .B(n129), .C(n128), .D(n127), .Y(n131) );
  XNOR2X1 U25 ( .A(s6[0]), .B(p6[0]), .Y(n126) );
  XNOR2X1 U26 ( .A(s5[3]), .B(p5[3]), .Y(n133) );
  XNOR2X1 U27 ( .A(s5[5]), .B(p5[5]), .Y(n139) );
  XNOR2X1 U28 ( .A(s5[2]), .B(p5[2]), .Y(n134) );
  XNOR2X1 U29 ( .A(s5[4]), .B(p5[4]), .Y(n140) );
  XNOR2X1 U30 ( .A(s5[1]), .B(p5[1]), .Y(n135) );
  XNOR2X1 U31 ( .A(s3[7]), .B(p3[7]), .Y(n15) );
  OAI21XL U32 ( .A0(n20), .A1(n19), .B0(check[3]), .Y(n101) );
  NAND4X1 U33 ( .A(n14), .B(n13), .C(n12), .D(n11), .Y(n20) );
  NAND4X1 U34 ( .A(n18), .B(n17), .C(n16), .D(n15), .Y(n19) );
  XNOR2X1 U35 ( .A(s3[0]), .B(p3[0]), .Y(n14) );
  XNOR2X1 U36 ( .A(s4[7]), .B(p4[7]), .Y(n5) );
  OAI21XL U37 ( .A0(n10), .A1(n9), .B0(check[4]), .Y(n102) );
  NAND4X1 U38 ( .A(n4), .B(n3), .C(n2), .D(n1), .Y(n10) );
  NAND4X1 U39 ( .A(n8), .B(n7), .C(n6), .D(n5), .Y(n9) );
  XNOR2X1 U40 ( .A(s4[0]), .B(p4[0]), .Y(n4) );
  XNOR2X1 U41 ( .A(s4[6]), .B(p4[6]), .Y(n6) );
  XNOR2X1 U42 ( .A(s4[3]), .B(p4[3]), .Y(n1) );
  XNOR2X1 U43 ( .A(s4[5]), .B(p4[5]), .Y(n7) );
  XNOR2X1 U44 ( .A(s4[2]), .B(p4[2]), .Y(n2) );
  XNOR2X1 U45 ( .A(s4[4]), .B(p4[4]), .Y(n8) );
  XNOR2X1 U46 ( .A(s4[1]), .B(p4[1]), .Y(n3) );
  XNOR2X1 U47 ( .A(s0[2]), .B(p0[2]), .Y(n104) );
  OAI21XL U48 ( .A0(n112), .A1(n111), .B0(check[0]), .Y(n146) );
  NAND4X1 U49 ( .A(n110), .B(n109), .C(n108), .D(n107), .Y(n111) );
  NAND4X1 U50 ( .A(n106), .B(n105), .C(n104), .D(n103), .Y(n112) );
  XNOR2X1 U51 ( .A(s0[4]), .B(p0[4]), .Y(n110) );
  XNOR2X1 U52 ( .A(s7[4]), .B(p7[4]), .Y(n120) );
  XNOR2X1 U53 ( .A(s0[1]), .B(p0[1]), .Y(n105) );
  XNOR2X1 U54 ( .A(s5[7]), .B(p5[7]), .Y(n137) );
  XNOR2X1 U55 ( .A(s0[0]), .B(p0[0]), .Y(n106) );
  XNOR2X1 U56 ( .A(s1[7]), .B(p1[7]), .Y(n93) );
  OAI21XL U57 ( .A0(n98), .A1(n97), .B0(check[1]), .Y(n99) );
  NAND4X1 U58 ( .A(n92), .B(n91), .C(n32), .D(n31), .Y(n98) );
  NAND4X1 U59 ( .A(n96), .B(n95), .C(n94), .D(n93), .Y(n97) );
  XNOR2X1 U60 ( .A(s1[0]), .B(p1[0]), .Y(n92) );
  XNOR2X1 U61 ( .A(s6[6]), .B(p6[6]), .Y(n128) );
  XNOR2X1 U62 ( .A(s2[7]), .B(p2[7]), .Y(n25) );
  XNOR2X1 U63 ( .A(s1[6]), .B(p1[6]), .Y(n94) );
  NAND4X1 U64 ( .A(n28), .B(n27), .C(n26), .D(n25), .Y(n29) );
  XNOR2X1 U65 ( .A(s2[4]), .B(p2[4]), .Y(n28) );
  XNOR2X1 U66 ( .A(s2[5]), .B(p2[5]), .Y(n27) );
  XNOR2X1 U67 ( .A(s2[6]), .B(p2[6]), .Y(n26) );
  XNOR2X1 U68 ( .A(s6[3]), .B(p6[3]), .Y(n123) );
  XNOR2X1 U69 ( .A(s1[3]), .B(p1[3]), .Y(n31) );
  XNOR2X1 U70 ( .A(s6[5]), .B(p6[5]), .Y(n129) );
  XNOR2X1 U71 ( .A(s0[7]), .B(p0[7]), .Y(n107) );
  XNOR2X1 U72 ( .A(s1[5]), .B(p1[5]), .Y(n95) );
  XNOR2X1 U73 ( .A(s6[2]), .B(p6[2]), .Y(n124) );
  XNOR2X1 U74 ( .A(s2[3]), .B(p2[3]), .Y(n21) );
  XNOR2X1 U75 ( .A(s1[2]), .B(p1[2]), .Y(n32) );
  NAND4X1 U76 ( .A(n24), .B(n23), .C(n22), .D(n21), .Y(n30) );
  XNOR2X1 U77 ( .A(s2[0]), .B(p2[0]), .Y(n24) );
  XNOR2X1 U78 ( .A(s2[1]), .B(p2[1]), .Y(n23) );
  XNOR2X1 U79 ( .A(s2[2]), .B(p2[2]), .Y(n22) );
  XNOR2X1 U80 ( .A(s6[4]), .B(p6[4]), .Y(n130) );
  XNOR2X1 U81 ( .A(s0[6]), .B(p0[6]), .Y(n108) );
  XNOR2X1 U82 ( .A(s1[4]), .B(p1[4]), .Y(n96) );
  XNOR2X1 U83 ( .A(s3[6]), .B(p3[6]), .Y(n16) );
  XNOR2X1 U84 ( .A(s6[1]), .B(p6[1]), .Y(n125) );
  XNOR2X1 U85 ( .A(s0[5]), .B(p0[5]), .Y(n109) );
  XNOR2X1 U86 ( .A(s0[3]), .B(p0[3]), .Y(n103) );
  XNOR2X1 U87 ( .A(s1[1]), .B(p1[1]), .Y(n91) );
  XNOR2X1 U88 ( .A(s3[3]), .B(p3[3]), .Y(n11) );
  XNOR2X1 U89 ( .A(s3[5]), .B(p3[5]), .Y(n17) );
  XNOR2X1 U90 ( .A(s3[2]), .B(p3[2]), .Y(n12) );
  XNOR2X1 U91 ( .A(s3[4]), .B(p3[4]), .Y(n18) );
  XNOR2X1 U92 ( .A(s3[1]), .B(p3[1]), .Y(n13) );
endmodule


module Pattern_String_Comparator_Cell_30 ( s7, s6, s5, s4, s3, s2, s1, s0, p7, 
        p6, p5, p4, p3, p2, p1, p0, check, match );
  input [7:0] s7;
  input [7:0] s6;
  input [7:0] s5;
  input [7:0] s4;
  input [7:0] s3;
  input [7:0] s2;
  input [7:0] s1;
  input [7:0] s0;
  input [7:0] p7;
  input [7:0] p6;
  input [7:0] p5;
  input [7:0] p4;
  input [7:0] p3;
  input [7:0] p2;
  input [7:0] p1;
  input [7:0] p0;
  input [7:0] check;
  output match;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30,
         n31, n32, n91, n92, n93, n94, n95, n96, n97, n98, n99, n100, n101,
         n102, n103, n104, n105, n106, n107, n108, n109, n110, n111, n112,
         n113, n114, n115, n116, n117, n118, n119, n120, n121, n122, n123,
         n124, n125, n126, n127, n128, n129, n130, n131, n132, n133, n134,
         n135, n136, n137, n138, n139, n140, n141, n142, n143, n144, n145,
         n146, n147, n148;

  NOR2X1 U2 ( .A(n148), .B(n147), .Y(match) );
  NAND4X1 U3 ( .A(n102), .B(n101), .C(n100), .D(n99), .Y(n148) );
  NAND4X1 U4 ( .A(n146), .B(n145), .C(n144), .D(n143), .Y(n147) );
  OAI21XL U5 ( .A0(n30), .A1(n29), .B0(check[2]), .Y(n100) );
  XNOR2X1 U6 ( .A(s7[7]), .B(p7[7]), .Y(n117) );
  OAI21XL U7 ( .A0(n122), .A1(n121), .B0(check[7]), .Y(n145) );
  NAND4X1 U8 ( .A(n116), .B(n115), .C(n114), .D(n113), .Y(n122) );
  NAND4X1 U9 ( .A(n120), .B(n119), .C(n118), .D(n117), .Y(n121) );
  XNOR2X1 U10 ( .A(s7[3]), .B(p7[3]), .Y(n113) );
  XNOR2X1 U11 ( .A(s7[6]), .B(p7[6]), .Y(n118) );
  XNOR2X1 U12 ( .A(s7[2]), .B(p7[2]), .Y(n114) );
  XNOR2X1 U13 ( .A(s7[5]), .B(p7[5]), .Y(n119) );
  XNOR2X1 U14 ( .A(s7[1]), .B(p7[1]), .Y(n115) );
  XNOR2X1 U15 ( .A(s7[0]), .B(p7[0]), .Y(n116) );
  XNOR2X1 U16 ( .A(s5[6]), .B(p5[6]), .Y(n138) );
  OAI21XL U17 ( .A0(n142), .A1(n141), .B0(check[5]), .Y(n143) );
  NAND4X1 U18 ( .A(n136), .B(n135), .C(n134), .D(n133), .Y(n142) );
  NAND4X1 U19 ( .A(n140), .B(n139), .C(n138), .D(n137), .Y(n141) );
  XNOR2X1 U20 ( .A(s5[0]), .B(p5[0]), .Y(n136) );
  XNOR2X1 U21 ( .A(s6[7]), .B(p6[7]), .Y(n127) );
  OAI21XL U22 ( .A0(n132), .A1(n131), .B0(check[6]), .Y(n144) );
  NAND4X1 U23 ( .A(n126), .B(n125), .C(n124), .D(n123), .Y(n132) );
  NAND4X1 U24 ( .A(n130), .B(n129), .C(n128), .D(n127), .Y(n131) );
  XNOR2X1 U25 ( .A(s6[0]), .B(p6[0]), .Y(n126) );
  XNOR2X1 U26 ( .A(s5[3]), .B(p5[3]), .Y(n133) );
  XNOR2X1 U27 ( .A(s5[5]), .B(p5[5]), .Y(n139) );
  XNOR2X1 U28 ( .A(s5[2]), .B(p5[2]), .Y(n134) );
  XNOR2X1 U29 ( .A(s5[4]), .B(p5[4]), .Y(n140) );
  XNOR2X1 U30 ( .A(s5[1]), .B(p5[1]), .Y(n135) );
  XNOR2X1 U31 ( .A(s3[7]), .B(p3[7]), .Y(n15) );
  OAI21XL U32 ( .A0(n20), .A1(n19), .B0(check[3]), .Y(n101) );
  NAND4X1 U33 ( .A(n14), .B(n13), .C(n12), .D(n11), .Y(n20) );
  NAND4X1 U34 ( .A(n18), .B(n17), .C(n16), .D(n15), .Y(n19) );
  XNOR2X1 U35 ( .A(s3[0]), .B(p3[0]), .Y(n14) );
  XNOR2X1 U36 ( .A(s4[7]), .B(p4[7]), .Y(n5) );
  OAI21XL U37 ( .A0(n10), .A1(n9), .B0(check[4]), .Y(n102) );
  NAND4X1 U38 ( .A(n4), .B(n3), .C(n2), .D(n1), .Y(n10) );
  NAND4X1 U39 ( .A(n8), .B(n7), .C(n6), .D(n5), .Y(n9) );
  XNOR2X1 U40 ( .A(s4[0]), .B(p4[0]), .Y(n4) );
  XNOR2X1 U41 ( .A(s4[6]), .B(p4[6]), .Y(n6) );
  XNOR2X1 U42 ( .A(s4[3]), .B(p4[3]), .Y(n1) );
  XNOR2X1 U43 ( .A(s4[5]), .B(p4[5]), .Y(n7) );
  XNOR2X1 U44 ( .A(s4[2]), .B(p4[2]), .Y(n2) );
  XNOR2X1 U45 ( .A(s4[4]), .B(p4[4]), .Y(n8) );
  XNOR2X1 U46 ( .A(s4[1]), .B(p4[1]), .Y(n3) );
  XNOR2X1 U47 ( .A(s0[2]), .B(p0[2]), .Y(n104) );
  OAI21XL U48 ( .A0(n112), .A1(n111), .B0(check[0]), .Y(n146) );
  NAND4X1 U49 ( .A(n110), .B(n109), .C(n108), .D(n107), .Y(n111) );
  NAND4X1 U50 ( .A(n106), .B(n105), .C(n104), .D(n103), .Y(n112) );
  XNOR2X1 U51 ( .A(s0[4]), .B(p0[4]), .Y(n110) );
  XNOR2X1 U52 ( .A(s7[4]), .B(p7[4]), .Y(n120) );
  XNOR2X1 U53 ( .A(s0[1]), .B(p0[1]), .Y(n105) );
  XNOR2X1 U54 ( .A(s5[7]), .B(p5[7]), .Y(n137) );
  XNOR2X1 U55 ( .A(s0[0]), .B(p0[0]), .Y(n106) );
  XNOR2X1 U56 ( .A(s1[7]), .B(p1[7]), .Y(n93) );
  OAI21XL U57 ( .A0(n98), .A1(n97), .B0(check[1]), .Y(n99) );
  NAND4X1 U58 ( .A(n92), .B(n91), .C(n32), .D(n31), .Y(n98) );
  NAND4X1 U59 ( .A(n96), .B(n95), .C(n94), .D(n93), .Y(n97) );
  XNOR2X1 U60 ( .A(s1[0]), .B(p1[0]), .Y(n92) );
  XNOR2X1 U61 ( .A(s6[6]), .B(p6[6]), .Y(n128) );
  XNOR2X1 U62 ( .A(s2[7]), .B(p2[7]), .Y(n25) );
  XNOR2X1 U63 ( .A(s1[6]), .B(p1[6]), .Y(n94) );
  NAND4X1 U64 ( .A(n28), .B(n27), .C(n26), .D(n25), .Y(n29) );
  XNOR2X1 U65 ( .A(s2[4]), .B(p2[4]), .Y(n28) );
  XNOR2X1 U66 ( .A(s2[5]), .B(p2[5]), .Y(n27) );
  XNOR2X1 U67 ( .A(s2[6]), .B(p2[6]), .Y(n26) );
  XNOR2X1 U68 ( .A(s6[3]), .B(p6[3]), .Y(n123) );
  XNOR2X1 U69 ( .A(s1[3]), .B(p1[3]), .Y(n31) );
  XNOR2X1 U70 ( .A(s6[5]), .B(p6[5]), .Y(n129) );
  XNOR2X1 U71 ( .A(s0[7]), .B(p0[7]), .Y(n107) );
  XNOR2X1 U72 ( .A(s1[5]), .B(p1[5]), .Y(n95) );
  XNOR2X1 U73 ( .A(s6[2]), .B(p6[2]), .Y(n124) );
  XNOR2X1 U74 ( .A(s2[3]), .B(p2[3]), .Y(n21) );
  XNOR2X1 U75 ( .A(s1[2]), .B(p1[2]), .Y(n32) );
  NAND4X1 U76 ( .A(n24), .B(n23), .C(n22), .D(n21), .Y(n30) );
  XNOR2X1 U77 ( .A(s2[0]), .B(p2[0]), .Y(n24) );
  XNOR2X1 U78 ( .A(s2[1]), .B(p2[1]), .Y(n23) );
  XNOR2X1 U79 ( .A(s2[2]), .B(p2[2]), .Y(n22) );
  XNOR2X1 U80 ( .A(s6[4]), .B(p6[4]), .Y(n130) );
  XNOR2X1 U81 ( .A(s0[6]), .B(p0[6]), .Y(n108) );
  XNOR2X1 U82 ( .A(s1[4]), .B(p1[4]), .Y(n96) );
  XNOR2X1 U83 ( .A(s3[6]), .B(p3[6]), .Y(n16) );
  XNOR2X1 U84 ( .A(s6[1]), .B(p6[1]), .Y(n125) );
  XNOR2X1 U85 ( .A(s0[5]), .B(p0[5]), .Y(n109) );
  XNOR2X1 U86 ( .A(s0[3]), .B(p0[3]), .Y(n103) );
  XNOR2X1 U87 ( .A(s1[1]), .B(p1[1]), .Y(n91) );
  XNOR2X1 U88 ( .A(s3[3]), .B(p3[3]), .Y(n11) );
  XNOR2X1 U89 ( .A(s3[5]), .B(p3[5]), .Y(n17) );
  XNOR2X1 U90 ( .A(s3[2]), .B(p3[2]), .Y(n12) );
  XNOR2X1 U91 ( .A(s3[4]), .B(p3[4]), .Y(n18) );
  XNOR2X1 U92 ( .A(s3[1]), .B(p3[1]), .Y(n13) );
endmodule


module Pattern_String_Comparator_Cell_29 ( s7, s6, s5, s4, s3, s2, s1, s0, p7, 
        p6, p5, p4, p3, p2, p1, p0, check, match );
  input [7:0] s7;
  input [7:0] s6;
  input [7:0] s5;
  input [7:0] s4;
  input [7:0] s3;
  input [7:0] s2;
  input [7:0] s1;
  input [7:0] s0;
  input [7:0] p7;
  input [7:0] p6;
  input [7:0] p5;
  input [7:0] p4;
  input [7:0] p3;
  input [7:0] p2;
  input [7:0] p1;
  input [7:0] p0;
  input [7:0] check;
  output match;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30,
         n31, n32, n91, n92, n93, n94, n95, n96, n97, n98, n99, n100, n101,
         n102, n103, n104, n105, n106, n107, n108, n109, n110, n111, n112,
         n113, n114, n115, n116, n117, n118, n119, n120, n121, n122, n123,
         n124, n125, n126, n127, n128, n129, n130, n131, n132, n133, n134,
         n135, n136, n137, n138, n139, n140, n141, n142, n143, n144, n145,
         n146, n147, n148;

  NOR2X1 U2 ( .A(n148), .B(n147), .Y(match) );
  NAND4X1 U3 ( .A(n102), .B(n101), .C(n100), .D(n99), .Y(n148) );
  NAND4X1 U4 ( .A(n146), .B(n145), .C(n144), .D(n143), .Y(n147) );
  OAI21XL U5 ( .A0(n30), .A1(n29), .B0(check[2]), .Y(n100) );
  XNOR2X1 U6 ( .A(s7[7]), .B(p7[7]), .Y(n117) );
  OAI21XL U7 ( .A0(n122), .A1(n121), .B0(check[7]), .Y(n145) );
  NAND4X1 U8 ( .A(n116), .B(n115), .C(n114), .D(n113), .Y(n122) );
  NAND4X1 U9 ( .A(n120), .B(n119), .C(n118), .D(n117), .Y(n121) );
  XNOR2X1 U10 ( .A(s7[3]), .B(p7[3]), .Y(n113) );
  XNOR2X1 U11 ( .A(s7[6]), .B(p7[6]), .Y(n118) );
  XNOR2X1 U12 ( .A(s7[2]), .B(p7[2]), .Y(n114) );
  XNOR2X1 U13 ( .A(s7[5]), .B(p7[5]), .Y(n119) );
  XNOR2X1 U14 ( .A(s7[1]), .B(p7[1]), .Y(n115) );
  XNOR2X1 U15 ( .A(s7[0]), .B(p7[0]), .Y(n116) );
  XNOR2X1 U16 ( .A(s5[6]), .B(p5[6]), .Y(n138) );
  OAI21XL U17 ( .A0(n142), .A1(n141), .B0(check[5]), .Y(n143) );
  NAND4X1 U18 ( .A(n136), .B(n135), .C(n134), .D(n133), .Y(n142) );
  NAND4X1 U19 ( .A(n140), .B(n139), .C(n138), .D(n137), .Y(n141) );
  XNOR2X1 U20 ( .A(s5[0]), .B(p5[0]), .Y(n136) );
  XNOR2X1 U21 ( .A(s6[7]), .B(p6[7]), .Y(n127) );
  OAI21XL U22 ( .A0(n132), .A1(n131), .B0(check[6]), .Y(n144) );
  NAND4X1 U23 ( .A(n126), .B(n125), .C(n124), .D(n123), .Y(n132) );
  NAND4X1 U24 ( .A(n130), .B(n129), .C(n128), .D(n127), .Y(n131) );
  XNOR2X1 U25 ( .A(s6[0]), .B(p6[0]), .Y(n126) );
  XNOR2X1 U26 ( .A(s5[3]), .B(p5[3]), .Y(n133) );
  XNOR2X1 U27 ( .A(s5[5]), .B(p5[5]), .Y(n139) );
  XNOR2X1 U28 ( .A(s5[2]), .B(p5[2]), .Y(n134) );
  XNOR2X1 U29 ( .A(s5[4]), .B(p5[4]), .Y(n140) );
  XNOR2X1 U30 ( .A(s5[1]), .B(p5[1]), .Y(n135) );
  XNOR2X1 U31 ( .A(s3[7]), .B(p3[7]), .Y(n15) );
  OAI21XL U32 ( .A0(n20), .A1(n19), .B0(check[3]), .Y(n101) );
  NAND4X1 U33 ( .A(n14), .B(n13), .C(n12), .D(n11), .Y(n20) );
  NAND4X1 U34 ( .A(n18), .B(n17), .C(n16), .D(n15), .Y(n19) );
  XNOR2X1 U35 ( .A(s3[0]), .B(p3[0]), .Y(n14) );
  XNOR2X1 U36 ( .A(s4[7]), .B(p4[7]), .Y(n5) );
  OAI21XL U37 ( .A0(n10), .A1(n9), .B0(check[4]), .Y(n102) );
  NAND4X1 U38 ( .A(n4), .B(n3), .C(n2), .D(n1), .Y(n10) );
  NAND4X1 U39 ( .A(n8), .B(n7), .C(n6), .D(n5), .Y(n9) );
  XNOR2X1 U40 ( .A(s4[0]), .B(p4[0]), .Y(n4) );
  XNOR2X1 U41 ( .A(s4[6]), .B(p4[6]), .Y(n6) );
  XNOR2X1 U42 ( .A(s4[3]), .B(p4[3]), .Y(n1) );
  XNOR2X1 U43 ( .A(s4[5]), .B(p4[5]), .Y(n7) );
  XNOR2X1 U44 ( .A(s4[2]), .B(p4[2]), .Y(n2) );
  XNOR2X1 U45 ( .A(s4[4]), .B(p4[4]), .Y(n8) );
  XNOR2X1 U46 ( .A(s4[1]), .B(p4[1]), .Y(n3) );
  XNOR2X1 U47 ( .A(s0[2]), .B(p0[2]), .Y(n104) );
  OAI21XL U48 ( .A0(n112), .A1(n111), .B0(check[0]), .Y(n146) );
  NAND4X1 U49 ( .A(n110), .B(n109), .C(n108), .D(n107), .Y(n111) );
  NAND4X1 U50 ( .A(n106), .B(n105), .C(n104), .D(n103), .Y(n112) );
  XNOR2X1 U51 ( .A(s0[4]), .B(p0[4]), .Y(n110) );
  XNOR2X1 U52 ( .A(s7[4]), .B(p7[4]), .Y(n120) );
  XNOR2X1 U53 ( .A(s0[1]), .B(p0[1]), .Y(n105) );
  XNOR2X1 U54 ( .A(s5[7]), .B(p5[7]), .Y(n137) );
  XNOR2X1 U55 ( .A(s0[0]), .B(p0[0]), .Y(n106) );
  XNOR2X1 U56 ( .A(s1[7]), .B(p1[7]), .Y(n93) );
  OAI21XL U57 ( .A0(n98), .A1(n97), .B0(check[1]), .Y(n99) );
  NAND4X1 U58 ( .A(n92), .B(n91), .C(n32), .D(n31), .Y(n98) );
  NAND4X1 U59 ( .A(n96), .B(n95), .C(n94), .D(n93), .Y(n97) );
  XNOR2X1 U60 ( .A(s1[0]), .B(p1[0]), .Y(n92) );
  XNOR2X1 U61 ( .A(s6[6]), .B(p6[6]), .Y(n128) );
  XNOR2X1 U62 ( .A(s2[7]), .B(p2[7]), .Y(n25) );
  XNOR2X1 U63 ( .A(s1[6]), .B(p1[6]), .Y(n94) );
  NAND4X1 U64 ( .A(n28), .B(n27), .C(n26), .D(n25), .Y(n29) );
  XNOR2X1 U65 ( .A(s2[4]), .B(p2[4]), .Y(n28) );
  XNOR2X1 U66 ( .A(s2[5]), .B(p2[5]), .Y(n27) );
  XNOR2X1 U67 ( .A(s2[6]), .B(p2[6]), .Y(n26) );
  XNOR2X1 U68 ( .A(s6[3]), .B(p6[3]), .Y(n123) );
  XNOR2X1 U69 ( .A(s1[3]), .B(p1[3]), .Y(n31) );
  XNOR2X1 U70 ( .A(s6[5]), .B(p6[5]), .Y(n129) );
  XNOR2X1 U71 ( .A(s0[7]), .B(p0[7]), .Y(n107) );
  XNOR2X1 U72 ( .A(s1[5]), .B(p1[5]), .Y(n95) );
  XNOR2X1 U73 ( .A(s6[2]), .B(p6[2]), .Y(n124) );
  XNOR2X1 U74 ( .A(s2[3]), .B(p2[3]), .Y(n21) );
  XNOR2X1 U75 ( .A(s1[2]), .B(p1[2]), .Y(n32) );
  NAND4X1 U76 ( .A(n24), .B(n23), .C(n22), .D(n21), .Y(n30) );
  XNOR2X1 U77 ( .A(s2[0]), .B(p2[0]), .Y(n24) );
  XNOR2X1 U78 ( .A(s2[1]), .B(p2[1]), .Y(n23) );
  XNOR2X1 U79 ( .A(s2[2]), .B(p2[2]), .Y(n22) );
  XNOR2X1 U80 ( .A(s6[4]), .B(p6[4]), .Y(n130) );
  XNOR2X1 U81 ( .A(s0[6]), .B(p0[6]), .Y(n108) );
  XNOR2X1 U82 ( .A(s1[4]), .B(p1[4]), .Y(n96) );
  XNOR2X1 U83 ( .A(s3[6]), .B(p3[6]), .Y(n16) );
  XNOR2X1 U84 ( .A(s6[1]), .B(p6[1]), .Y(n125) );
  XNOR2X1 U85 ( .A(s0[5]), .B(p0[5]), .Y(n109) );
  XNOR2X1 U86 ( .A(s0[3]), .B(p0[3]), .Y(n103) );
  XNOR2X1 U87 ( .A(s1[1]), .B(p1[1]), .Y(n91) );
  XNOR2X1 U88 ( .A(s3[3]), .B(p3[3]), .Y(n11) );
  XNOR2X1 U89 ( .A(s3[5]), .B(p3[5]), .Y(n17) );
  XNOR2X1 U90 ( .A(s3[2]), .B(p3[2]), .Y(n12) );
  XNOR2X1 U91 ( .A(s3[4]), .B(p3[4]), .Y(n18) );
  XNOR2X1 U92 ( .A(s3[1]), .B(p3[1]), .Y(n13) );
endmodule


module Pattern_String_Comparator_Cell_28 ( s7, s6, s5, s4, s3, s2, s1, s0, p7, 
        p6, p5, p4, p3, p2, p1, p0, check, match );
  input [7:0] s7;
  input [7:0] s6;
  input [7:0] s5;
  input [7:0] s4;
  input [7:0] s3;
  input [7:0] s2;
  input [7:0] s1;
  input [7:0] s0;
  input [7:0] p7;
  input [7:0] p6;
  input [7:0] p5;
  input [7:0] p4;
  input [7:0] p3;
  input [7:0] p2;
  input [7:0] p1;
  input [7:0] p0;
  input [7:0] check;
  output match;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30,
         n31, n32, n91, n92, n93, n94, n95, n96, n97, n98, n99, n100, n101,
         n102, n103, n104, n105, n106, n107, n108, n109, n110, n111, n112,
         n113, n114, n115, n116, n117, n118, n119, n120, n121, n122, n123,
         n124, n125, n126, n127, n128, n129, n130, n131, n132, n133, n134,
         n135, n136, n137, n138, n139, n140, n141, n142, n143, n144, n145,
         n146, n147, n148;

  NOR2X1 U2 ( .A(n148), .B(n147), .Y(match) );
  NAND4X1 U3 ( .A(n102), .B(n101), .C(n100), .D(n99), .Y(n148) );
  NAND4X1 U4 ( .A(n146), .B(n145), .C(n144), .D(n143), .Y(n147) );
  OAI21XL U5 ( .A0(n30), .A1(n29), .B0(check[2]), .Y(n100) );
  XNOR2X1 U6 ( .A(s7[7]), .B(p7[7]), .Y(n117) );
  OAI21XL U7 ( .A0(n122), .A1(n121), .B0(check[7]), .Y(n145) );
  NAND4X1 U8 ( .A(n116), .B(n115), .C(n114), .D(n113), .Y(n122) );
  NAND4X1 U9 ( .A(n120), .B(n119), .C(n118), .D(n117), .Y(n121) );
  XNOR2X1 U10 ( .A(s7[3]), .B(p7[3]), .Y(n113) );
  XNOR2X1 U11 ( .A(s7[6]), .B(p7[6]), .Y(n118) );
  XNOR2X1 U12 ( .A(s7[2]), .B(p7[2]), .Y(n114) );
  XNOR2X1 U13 ( .A(s7[5]), .B(p7[5]), .Y(n119) );
  XNOR2X1 U14 ( .A(s7[1]), .B(p7[1]), .Y(n115) );
  XNOR2X1 U15 ( .A(s7[0]), .B(p7[0]), .Y(n116) );
  XNOR2X1 U16 ( .A(s5[6]), .B(p5[6]), .Y(n138) );
  OAI21XL U17 ( .A0(n142), .A1(n141), .B0(check[5]), .Y(n143) );
  NAND4X1 U18 ( .A(n136), .B(n135), .C(n134), .D(n133), .Y(n142) );
  NAND4X1 U19 ( .A(n140), .B(n139), .C(n138), .D(n137), .Y(n141) );
  XNOR2X1 U20 ( .A(s5[0]), .B(p5[0]), .Y(n136) );
  XNOR2X1 U21 ( .A(s6[7]), .B(p6[7]), .Y(n127) );
  OAI21XL U22 ( .A0(n132), .A1(n131), .B0(check[6]), .Y(n144) );
  NAND4X1 U23 ( .A(n126), .B(n125), .C(n124), .D(n123), .Y(n132) );
  NAND4X1 U24 ( .A(n130), .B(n129), .C(n128), .D(n127), .Y(n131) );
  XNOR2X1 U25 ( .A(s6[0]), .B(p6[0]), .Y(n126) );
  XNOR2X1 U26 ( .A(s5[3]), .B(p5[3]), .Y(n133) );
  XNOR2X1 U27 ( .A(s5[5]), .B(p5[5]), .Y(n139) );
  XNOR2X1 U28 ( .A(s5[2]), .B(p5[2]), .Y(n134) );
  XNOR2X1 U29 ( .A(s5[4]), .B(p5[4]), .Y(n140) );
  XNOR2X1 U30 ( .A(s5[1]), .B(p5[1]), .Y(n135) );
  XNOR2X1 U31 ( .A(s3[7]), .B(p3[7]), .Y(n15) );
  OAI21XL U32 ( .A0(n20), .A1(n19), .B0(check[3]), .Y(n101) );
  NAND4X1 U33 ( .A(n14), .B(n13), .C(n12), .D(n11), .Y(n20) );
  NAND4X1 U34 ( .A(n18), .B(n17), .C(n16), .D(n15), .Y(n19) );
  XNOR2X1 U35 ( .A(s3[0]), .B(p3[0]), .Y(n14) );
  XNOR2X1 U36 ( .A(s4[7]), .B(p4[7]), .Y(n5) );
  OAI21XL U37 ( .A0(n10), .A1(n9), .B0(check[4]), .Y(n102) );
  NAND4X1 U38 ( .A(n4), .B(n3), .C(n2), .D(n1), .Y(n10) );
  NAND4X1 U39 ( .A(n8), .B(n7), .C(n6), .D(n5), .Y(n9) );
  XNOR2X1 U40 ( .A(s4[0]), .B(p4[0]), .Y(n4) );
  XNOR2X1 U41 ( .A(s4[6]), .B(p4[6]), .Y(n6) );
  XNOR2X1 U42 ( .A(s4[3]), .B(p4[3]), .Y(n1) );
  XNOR2X1 U43 ( .A(s4[5]), .B(p4[5]), .Y(n7) );
  XNOR2X1 U44 ( .A(s4[2]), .B(p4[2]), .Y(n2) );
  XNOR2X1 U45 ( .A(s4[4]), .B(p4[4]), .Y(n8) );
  XNOR2X1 U46 ( .A(s4[1]), .B(p4[1]), .Y(n3) );
  XNOR2X1 U47 ( .A(s0[2]), .B(p0[2]), .Y(n104) );
  OAI21XL U48 ( .A0(n112), .A1(n111), .B0(check[0]), .Y(n146) );
  NAND4X1 U49 ( .A(n110), .B(n109), .C(n108), .D(n107), .Y(n111) );
  NAND4X1 U50 ( .A(n106), .B(n105), .C(n104), .D(n103), .Y(n112) );
  XNOR2X1 U51 ( .A(s0[4]), .B(p0[4]), .Y(n110) );
  XNOR2X1 U52 ( .A(s7[4]), .B(p7[4]), .Y(n120) );
  XNOR2X1 U53 ( .A(s0[1]), .B(p0[1]), .Y(n105) );
  XNOR2X1 U54 ( .A(s5[7]), .B(p5[7]), .Y(n137) );
  XNOR2X1 U55 ( .A(s0[0]), .B(p0[0]), .Y(n106) );
  XNOR2X1 U56 ( .A(s1[7]), .B(p1[7]), .Y(n93) );
  OAI21XL U57 ( .A0(n98), .A1(n97), .B0(check[1]), .Y(n99) );
  NAND4X1 U58 ( .A(n92), .B(n91), .C(n32), .D(n31), .Y(n98) );
  NAND4X1 U59 ( .A(n96), .B(n95), .C(n94), .D(n93), .Y(n97) );
  XNOR2X1 U60 ( .A(s1[0]), .B(p1[0]), .Y(n92) );
  XNOR2X1 U61 ( .A(s6[6]), .B(p6[6]), .Y(n128) );
  XNOR2X1 U62 ( .A(s2[7]), .B(p2[7]), .Y(n25) );
  XNOR2X1 U63 ( .A(s1[6]), .B(p1[6]), .Y(n94) );
  NAND4X1 U64 ( .A(n28), .B(n27), .C(n26), .D(n25), .Y(n29) );
  XNOR2X1 U65 ( .A(s2[4]), .B(p2[4]), .Y(n28) );
  XNOR2X1 U66 ( .A(s2[5]), .B(p2[5]), .Y(n27) );
  XNOR2X1 U67 ( .A(s2[6]), .B(p2[6]), .Y(n26) );
  XNOR2X1 U68 ( .A(s6[3]), .B(p6[3]), .Y(n123) );
  XNOR2X1 U69 ( .A(s1[3]), .B(p1[3]), .Y(n31) );
  XNOR2X1 U70 ( .A(s6[5]), .B(p6[5]), .Y(n129) );
  XNOR2X1 U71 ( .A(s0[7]), .B(p0[7]), .Y(n107) );
  XNOR2X1 U72 ( .A(s1[5]), .B(p1[5]), .Y(n95) );
  XNOR2X1 U73 ( .A(s6[2]), .B(p6[2]), .Y(n124) );
  XNOR2X1 U74 ( .A(s2[3]), .B(p2[3]), .Y(n21) );
  XNOR2X1 U75 ( .A(s1[2]), .B(p1[2]), .Y(n32) );
  NAND4X1 U76 ( .A(n24), .B(n23), .C(n22), .D(n21), .Y(n30) );
  XNOR2X1 U77 ( .A(s2[0]), .B(p2[0]), .Y(n24) );
  XNOR2X1 U78 ( .A(s2[1]), .B(p2[1]), .Y(n23) );
  XNOR2X1 U79 ( .A(s2[2]), .B(p2[2]), .Y(n22) );
  XNOR2X1 U80 ( .A(s6[4]), .B(p6[4]), .Y(n130) );
  XNOR2X1 U81 ( .A(s0[6]), .B(p0[6]), .Y(n108) );
  XNOR2X1 U82 ( .A(s1[4]), .B(p1[4]), .Y(n96) );
  XNOR2X1 U83 ( .A(s3[6]), .B(p3[6]), .Y(n16) );
  XNOR2X1 U84 ( .A(s6[1]), .B(p6[1]), .Y(n125) );
  XNOR2X1 U85 ( .A(s0[5]), .B(p0[5]), .Y(n109) );
  XNOR2X1 U86 ( .A(s0[3]), .B(p0[3]), .Y(n103) );
  XNOR2X1 U87 ( .A(s1[1]), .B(p1[1]), .Y(n91) );
  XNOR2X1 U88 ( .A(s3[3]), .B(p3[3]), .Y(n11) );
  XNOR2X1 U89 ( .A(s3[5]), .B(p3[5]), .Y(n17) );
  XNOR2X1 U90 ( .A(s3[2]), .B(p3[2]), .Y(n12) );
  XNOR2X1 U91 ( .A(s3[4]), .B(p3[4]), .Y(n18) );
  XNOR2X1 U92 ( .A(s3[1]), .B(p3[1]), .Y(n13) );
endmodule


module Pattern_String_Comparator_Cell_27 ( s7, s6, s5, s4, s3, s2, s1, s0, p7, 
        p6, p5, p4, p3, p2, p1, p0, check, match );
  input [7:0] s7;
  input [7:0] s6;
  input [7:0] s5;
  input [7:0] s4;
  input [7:0] s3;
  input [7:0] s2;
  input [7:0] s1;
  input [7:0] s0;
  input [7:0] p7;
  input [7:0] p6;
  input [7:0] p5;
  input [7:0] p4;
  input [7:0] p3;
  input [7:0] p2;
  input [7:0] p1;
  input [7:0] p0;
  input [7:0] check;
  output match;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30,
         n31, n32, n91, n92, n93, n94, n95, n96, n97, n98, n99, n100, n101,
         n102, n103, n104, n105, n106, n107, n108, n109, n110, n111, n112,
         n113, n114, n115, n116, n117, n118, n119, n120, n121, n122, n123,
         n124, n125, n126, n127, n128, n129, n130, n131, n132, n133, n134,
         n135, n136, n137, n138, n139, n140, n141, n142, n143, n144, n145,
         n146, n147, n148;

  NOR2X1 U2 ( .A(n148), .B(n147), .Y(match) );
  NAND4X1 U3 ( .A(n102), .B(n101), .C(n100), .D(n99), .Y(n148) );
  NAND4X1 U4 ( .A(n146), .B(n145), .C(n144), .D(n143), .Y(n147) );
  OAI21XL U5 ( .A0(n30), .A1(n29), .B0(check[2]), .Y(n100) );
  XNOR2X1 U6 ( .A(s7[7]), .B(p7[7]), .Y(n117) );
  OAI21XL U7 ( .A0(n122), .A1(n121), .B0(check[7]), .Y(n145) );
  NAND4X1 U8 ( .A(n116), .B(n115), .C(n114), .D(n113), .Y(n122) );
  NAND4X1 U9 ( .A(n120), .B(n119), .C(n118), .D(n117), .Y(n121) );
  XNOR2X1 U10 ( .A(s7[3]), .B(p7[3]), .Y(n113) );
  XNOR2X1 U11 ( .A(s7[6]), .B(p7[6]), .Y(n118) );
  XNOR2X1 U12 ( .A(s7[2]), .B(p7[2]), .Y(n114) );
  XNOR2X1 U13 ( .A(s7[5]), .B(p7[5]), .Y(n119) );
  XNOR2X1 U14 ( .A(s7[1]), .B(p7[1]), .Y(n115) );
  XNOR2X1 U15 ( .A(s7[0]), .B(p7[0]), .Y(n116) );
  XNOR2X1 U16 ( .A(s5[6]), .B(p5[6]), .Y(n138) );
  OAI21XL U17 ( .A0(n142), .A1(n141), .B0(check[5]), .Y(n143) );
  NAND4X1 U18 ( .A(n136), .B(n135), .C(n134), .D(n133), .Y(n142) );
  NAND4X1 U19 ( .A(n140), .B(n139), .C(n138), .D(n137), .Y(n141) );
  XNOR2X1 U20 ( .A(s5[0]), .B(p5[0]), .Y(n136) );
  XNOR2X1 U21 ( .A(s6[7]), .B(p6[7]), .Y(n127) );
  OAI21XL U22 ( .A0(n132), .A1(n131), .B0(check[6]), .Y(n144) );
  NAND4X1 U23 ( .A(n126), .B(n125), .C(n124), .D(n123), .Y(n132) );
  NAND4X1 U24 ( .A(n130), .B(n129), .C(n128), .D(n127), .Y(n131) );
  XNOR2X1 U25 ( .A(s6[0]), .B(p6[0]), .Y(n126) );
  XNOR2X1 U26 ( .A(s5[3]), .B(p5[3]), .Y(n133) );
  XNOR2X1 U27 ( .A(s5[5]), .B(p5[5]), .Y(n139) );
  XNOR2X1 U28 ( .A(s5[2]), .B(p5[2]), .Y(n134) );
  XNOR2X1 U29 ( .A(s5[4]), .B(p5[4]), .Y(n140) );
  XNOR2X1 U30 ( .A(s5[1]), .B(p5[1]), .Y(n135) );
  XNOR2X1 U31 ( .A(s3[7]), .B(p3[7]), .Y(n15) );
  OAI21XL U32 ( .A0(n20), .A1(n19), .B0(check[3]), .Y(n101) );
  NAND4X1 U33 ( .A(n14), .B(n13), .C(n12), .D(n11), .Y(n20) );
  NAND4X1 U34 ( .A(n18), .B(n17), .C(n16), .D(n15), .Y(n19) );
  XNOR2X1 U35 ( .A(s3[0]), .B(p3[0]), .Y(n14) );
  XNOR2X1 U36 ( .A(s4[7]), .B(p4[7]), .Y(n5) );
  OAI21XL U37 ( .A0(n10), .A1(n9), .B0(check[4]), .Y(n102) );
  NAND4X1 U38 ( .A(n4), .B(n3), .C(n2), .D(n1), .Y(n10) );
  NAND4X1 U39 ( .A(n8), .B(n7), .C(n6), .D(n5), .Y(n9) );
  XNOR2X1 U40 ( .A(s4[0]), .B(p4[0]), .Y(n4) );
  XNOR2X1 U41 ( .A(s4[6]), .B(p4[6]), .Y(n6) );
  XNOR2X1 U42 ( .A(s4[3]), .B(p4[3]), .Y(n1) );
  XNOR2X1 U43 ( .A(s4[5]), .B(p4[5]), .Y(n7) );
  XNOR2X1 U44 ( .A(s4[2]), .B(p4[2]), .Y(n2) );
  XNOR2X1 U45 ( .A(s4[4]), .B(p4[4]), .Y(n8) );
  XNOR2X1 U46 ( .A(s4[1]), .B(p4[1]), .Y(n3) );
  XNOR2X1 U47 ( .A(s0[2]), .B(p0[2]), .Y(n104) );
  OAI21XL U48 ( .A0(n112), .A1(n111), .B0(check[0]), .Y(n146) );
  NAND4X1 U49 ( .A(n110), .B(n109), .C(n108), .D(n107), .Y(n111) );
  NAND4X1 U50 ( .A(n106), .B(n105), .C(n104), .D(n103), .Y(n112) );
  XNOR2X1 U51 ( .A(s0[4]), .B(p0[4]), .Y(n110) );
  XNOR2X1 U52 ( .A(s7[4]), .B(p7[4]), .Y(n120) );
  XNOR2X1 U53 ( .A(s0[1]), .B(p0[1]), .Y(n105) );
  XNOR2X1 U54 ( .A(s5[7]), .B(p5[7]), .Y(n137) );
  XNOR2X1 U55 ( .A(s0[0]), .B(p0[0]), .Y(n106) );
  XNOR2X1 U56 ( .A(s1[7]), .B(p1[7]), .Y(n93) );
  OAI21XL U57 ( .A0(n98), .A1(n97), .B0(check[1]), .Y(n99) );
  NAND4X1 U58 ( .A(n92), .B(n91), .C(n32), .D(n31), .Y(n98) );
  NAND4X1 U59 ( .A(n96), .B(n95), .C(n94), .D(n93), .Y(n97) );
  XNOR2X1 U60 ( .A(s1[0]), .B(p1[0]), .Y(n92) );
  XNOR2X1 U61 ( .A(s6[6]), .B(p6[6]), .Y(n128) );
  XNOR2X1 U62 ( .A(s2[7]), .B(p2[7]), .Y(n25) );
  XNOR2X1 U63 ( .A(s1[6]), .B(p1[6]), .Y(n94) );
  NAND4X1 U64 ( .A(n28), .B(n27), .C(n26), .D(n25), .Y(n29) );
  XNOR2X1 U65 ( .A(s2[4]), .B(p2[4]), .Y(n28) );
  XNOR2X1 U66 ( .A(s2[5]), .B(p2[5]), .Y(n27) );
  XNOR2X1 U67 ( .A(s2[6]), .B(p2[6]), .Y(n26) );
  XNOR2X1 U68 ( .A(s6[3]), .B(p6[3]), .Y(n123) );
  XNOR2X1 U69 ( .A(s1[3]), .B(p1[3]), .Y(n31) );
  XNOR2X1 U70 ( .A(s6[5]), .B(p6[5]), .Y(n129) );
  XNOR2X1 U71 ( .A(s0[7]), .B(p0[7]), .Y(n107) );
  XNOR2X1 U72 ( .A(s1[5]), .B(p1[5]), .Y(n95) );
  XNOR2X1 U73 ( .A(s6[2]), .B(p6[2]), .Y(n124) );
  XNOR2X1 U74 ( .A(s2[3]), .B(p2[3]), .Y(n21) );
  XNOR2X1 U75 ( .A(s1[2]), .B(p1[2]), .Y(n32) );
  NAND4X1 U76 ( .A(n24), .B(n23), .C(n22), .D(n21), .Y(n30) );
  XNOR2X1 U77 ( .A(s2[0]), .B(p2[0]), .Y(n24) );
  XNOR2X1 U78 ( .A(s2[1]), .B(p2[1]), .Y(n23) );
  XNOR2X1 U79 ( .A(s2[2]), .B(p2[2]), .Y(n22) );
  XNOR2X1 U80 ( .A(s6[4]), .B(p6[4]), .Y(n130) );
  XNOR2X1 U81 ( .A(s0[6]), .B(p0[6]), .Y(n108) );
  XNOR2X1 U82 ( .A(s1[4]), .B(p1[4]), .Y(n96) );
  XNOR2X1 U83 ( .A(s3[6]), .B(p3[6]), .Y(n16) );
  XNOR2X1 U84 ( .A(s6[1]), .B(p6[1]), .Y(n125) );
  XNOR2X1 U85 ( .A(s0[5]), .B(p0[5]), .Y(n109) );
  XNOR2X1 U86 ( .A(s0[3]), .B(p0[3]), .Y(n103) );
  XNOR2X1 U87 ( .A(s1[1]), .B(p1[1]), .Y(n91) );
  XNOR2X1 U88 ( .A(s3[3]), .B(p3[3]), .Y(n11) );
  XNOR2X1 U89 ( .A(s3[5]), .B(p3[5]), .Y(n17) );
  XNOR2X1 U90 ( .A(s3[2]), .B(p3[2]), .Y(n12) );
  XNOR2X1 U91 ( .A(s3[4]), .B(p3[4]), .Y(n18) );
  XNOR2X1 U92 ( .A(s3[1]), .B(p3[1]), .Y(n13) );
endmodule


module Pattern_String_Comparator_Cell_26 ( s7, s6, s5, s4, s3, s2, s1, s0, p7, 
        p6, p5, p4, p3, p2, p1, p0, check, match );
  input [7:0] s7;
  input [7:0] s6;
  input [7:0] s5;
  input [7:0] s4;
  input [7:0] s3;
  input [7:0] s2;
  input [7:0] s1;
  input [7:0] s0;
  input [7:0] p7;
  input [7:0] p6;
  input [7:0] p5;
  input [7:0] p4;
  input [7:0] p3;
  input [7:0] p2;
  input [7:0] p1;
  input [7:0] p0;
  input [7:0] check;
  output match;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30,
         n31, n32, n91, n92, n93, n94, n95, n96, n97, n98, n99, n100, n101,
         n102, n103, n104, n105, n106, n107, n108, n109, n110, n111, n112,
         n113, n114, n115, n116, n117, n118, n119, n120, n121, n122, n123,
         n124, n125, n126, n127, n128, n129, n130, n131, n132, n133, n134,
         n135, n136, n137, n138, n139, n140, n141, n142, n143, n144, n145,
         n146, n147, n148;

  NOR2X1 U2 ( .A(n148), .B(n147), .Y(match) );
  NAND4X1 U3 ( .A(n102), .B(n101), .C(n100), .D(n99), .Y(n148) );
  NAND4X1 U4 ( .A(n146), .B(n145), .C(n144), .D(n143), .Y(n147) );
  OAI21XL U5 ( .A0(n30), .A1(n29), .B0(check[2]), .Y(n100) );
  XNOR2X1 U6 ( .A(s7[7]), .B(p7[7]), .Y(n117) );
  OAI21XL U7 ( .A0(n122), .A1(n121), .B0(check[7]), .Y(n145) );
  NAND4X1 U8 ( .A(n116), .B(n115), .C(n114), .D(n113), .Y(n122) );
  NAND4X1 U9 ( .A(n120), .B(n119), .C(n118), .D(n117), .Y(n121) );
  XNOR2X1 U10 ( .A(s7[3]), .B(p7[3]), .Y(n113) );
  XNOR2X1 U11 ( .A(s7[6]), .B(p7[6]), .Y(n118) );
  XNOR2X1 U12 ( .A(s7[2]), .B(p7[2]), .Y(n114) );
  XNOR2X1 U13 ( .A(s7[5]), .B(p7[5]), .Y(n119) );
  XNOR2X1 U14 ( .A(s7[1]), .B(p7[1]), .Y(n115) );
  XNOR2X1 U15 ( .A(s7[0]), .B(p7[0]), .Y(n116) );
  XNOR2X1 U16 ( .A(s5[6]), .B(p5[6]), .Y(n138) );
  OAI21XL U17 ( .A0(n142), .A1(n141), .B0(check[5]), .Y(n143) );
  NAND4X1 U18 ( .A(n136), .B(n135), .C(n134), .D(n133), .Y(n142) );
  NAND4X1 U19 ( .A(n140), .B(n139), .C(n138), .D(n137), .Y(n141) );
  XNOR2X1 U20 ( .A(s5[0]), .B(p5[0]), .Y(n136) );
  XNOR2X1 U21 ( .A(s6[7]), .B(p6[7]), .Y(n127) );
  OAI21XL U22 ( .A0(n132), .A1(n131), .B0(check[6]), .Y(n144) );
  NAND4X1 U23 ( .A(n126), .B(n125), .C(n124), .D(n123), .Y(n132) );
  NAND4X1 U24 ( .A(n130), .B(n129), .C(n128), .D(n127), .Y(n131) );
  XNOR2X1 U25 ( .A(s6[0]), .B(p6[0]), .Y(n126) );
  XNOR2X1 U26 ( .A(s5[3]), .B(p5[3]), .Y(n133) );
  XNOR2X1 U27 ( .A(s5[5]), .B(p5[5]), .Y(n139) );
  XNOR2X1 U28 ( .A(s5[2]), .B(p5[2]), .Y(n134) );
  XNOR2X1 U29 ( .A(s5[4]), .B(p5[4]), .Y(n140) );
  XNOR2X1 U30 ( .A(s5[1]), .B(p5[1]), .Y(n135) );
  XNOR2X1 U31 ( .A(s3[7]), .B(p3[7]), .Y(n15) );
  OAI21XL U32 ( .A0(n20), .A1(n19), .B0(check[3]), .Y(n101) );
  NAND4X1 U33 ( .A(n14), .B(n13), .C(n12), .D(n11), .Y(n20) );
  NAND4X1 U34 ( .A(n18), .B(n17), .C(n16), .D(n15), .Y(n19) );
  XNOR2X1 U35 ( .A(s3[0]), .B(p3[0]), .Y(n14) );
  XNOR2X1 U36 ( .A(s4[7]), .B(p4[7]), .Y(n5) );
  OAI21XL U37 ( .A0(n10), .A1(n9), .B0(check[4]), .Y(n102) );
  NAND4X1 U38 ( .A(n4), .B(n3), .C(n2), .D(n1), .Y(n10) );
  NAND4X1 U39 ( .A(n8), .B(n7), .C(n6), .D(n5), .Y(n9) );
  XNOR2X1 U40 ( .A(s4[0]), .B(p4[0]), .Y(n4) );
  XNOR2X1 U41 ( .A(s4[6]), .B(p4[6]), .Y(n6) );
  XNOR2X1 U42 ( .A(s4[3]), .B(p4[3]), .Y(n1) );
  XNOR2X1 U43 ( .A(s4[5]), .B(p4[5]), .Y(n7) );
  XNOR2X1 U44 ( .A(s4[2]), .B(p4[2]), .Y(n2) );
  XNOR2X1 U45 ( .A(s4[4]), .B(p4[4]), .Y(n8) );
  XNOR2X1 U46 ( .A(s4[1]), .B(p4[1]), .Y(n3) );
  XNOR2X1 U47 ( .A(s0[2]), .B(p0[2]), .Y(n104) );
  OAI21XL U48 ( .A0(n112), .A1(n111), .B0(check[0]), .Y(n146) );
  NAND4X1 U49 ( .A(n110), .B(n109), .C(n108), .D(n107), .Y(n111) );
  NAND4X1 U50 ( .A(n106), .B(n105), .C(n104), .D(n103), .Y(n112) );
  XNOR2X1 U51 ( .A(s0[4]), .B(p0[4]), .Y(n110) );
  XNOR2X1 U52 ( .A(s7[4]), .B(p7[4]), .Y(n120) );
  XNOR2X1 U53 ( .A(s0[1]), .B(p0[1]), .Y(n105) );
  XNOR2X1 U54 ( .A(s5[7]), .B(p5[7]), .Y(n137) );
  XNOR2X1 U55 ( .A(s0[0]), .B(p0[0]), .Y(n106) );
  XNOR2X1 U56 ( .A(s1[7]), .B(p1[7]), .Y(n93) );
  OAI21XL U57 ( .A0(n98), .A1(n97), .B0(check[1]), .Y(n99) );
  NAND4X1 U58 ( .A(n92), .B(n91), .C(n32), .D(n31), .Y(n98) );
  NAND4X1 U59 ( .A(n96), .B(n95), .C(n94), .D(n93), .Y(n97) );
  XNOR2X1 U60 ( .A(s1[0]), .B(p1[0]), .Y(n92) );
  XNOR2X1 U61 ( .A(s6[6]), .B(p6[6]), .Y(n128) );
  XNOR2X1 U62 ( .A(s2[7]), .B(p2[7]), .Y(n25) );
  XNOR2X1 U63 ( .A(s1[6]), .B(p1[6]), .Y(n94) );
  NAND4X1 U64 ( .A(n28), .B(n27), .C(n26), .D(n25), .Y(n29) );
  XNOR2X1 U65 ( .A(s2[4]), .B(p2[4]), .Y(n28) );
  XNOR2X1 U66 ( .A(s2[5]), .B(p2[5]), .Y(n27) );
  XNOR2X1 U67 ( .A(s2[6]), .B(p2[6]), .Y(n26) );
  XNOR2X1 U68 ( .A(s6[3]), .B(p6[3]), .Y(n123) );
  XNOR2X1 U69 ( .A(s1[3]), .B(p1[3]), .Y(n31) );
  XNOR2X1 U70 ( .A(s6[5]), .B(p6[5]), .Y(n129) );
  XNOR2X1 U71 ( .A(s0[7]), .B(p0[7]), .Y(n107) );
  XNOR2X1 U72 ( .A(s1[5]), .B(p1[5]), .Y(n95) );
  XNOR2X1 U73 ( .A(s6[2]), .B(p6[2]), .Y(n124) );
  XNOR2X1 U74 ( .A(s2[3]), .B(p2[3]), .Y(n21) );
  XNOR2X1 U75 ( .A(s1[2]), .B(p1[2]), .Y(n32) );
  NAND4X1 U76 ( .A(n24), .B(n23), .C(n22), .D(n21), .Y(n30) );
  XNOR2X1 U77 ( .A(s2[0]), .B(p2[0]), .Y(n24) );
  XNOR2X1 U78 ( .A(s2[1]), .B(p2[1]), .Y(n23) );
  XNOR2X1 U79 ( .A(s2[2]), .B(p2[2]), .Y(n22) );
  XNOR2X1 U80 ( .A(s6[4]), .B(p6[4]), .Y(n130) );
  XNOR2X1 U81 ( .A(s0[6]), .B(p0[6]), .Y(n108) );
  XNOR2X1 U82 ( .A(s1[4]), .B(p1[4]), .Y(n96) );
  XNOR2X1 U83 ( .A(s3[6]), .B(p3[6]), .Y(n16) );
  XNOR2X1 U84 ( .A(s6[1]), .B(p6[1]), .Y(n125) );
  XNOR2X1 U85 ( .A(s0[5]), .B(p0[5]), .Y(n109) );
  XNOR2X1 U86 ( .A(s0[3]), .B(p0[3]), .Y(n103) );
  XNOR2X1 U87 ( .A(s1[1]), .B(p1[1]), .Y(n91) );
  XNOR2X1 U88 ( .A(s3[3]), .B(p3[3]), .Y(n11) );
  XNOR2X1 U89 ( .A(s3[5]), .B(p3[5]), .Y(n17) );
  XNOR2X1 U90 ( .A(s3[2]), .B(p3[2]), .Y(n12) );
  XNOR2X1 U91 ( .A(s3[4]), .B(p3[4]), .Y(n18) );
  XNOR2X1 U92 ( .A(s3[1]), .B(p3[1]), .Y(n13) );
endmodule


module Pattern_String_Comparator_Cell_25 ( s7, s6, s5, s4, s3, s2, s1, s0, p7, 
        p6, p5, p4, p3, p2, p1, p0, check, match );
  input [7:0] s7;
  input [7:0] s6;
  input [7:0] s5;
  input [7:0] s4;
  input [7:0] s3;
  input [7:0] s2;
  input [7:0] s1;
  input [7:0] s0;
  input [7:0] p7;
  input [7:0] p6;
  input [7:0] p5;
  input [7:0] p4;
  input [7:0] p3;
  input [7:0] p2;
  input [7:0] p1;
  input [7:0] p0;
  input [7:0] check;
  output match;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30,
         n31, n32, n91, n92, n93, n94, n95, n96, n97, n98, n99, n100, n101,
         n102, n103, n104, n105, n106, n107, n108, n109, n110, n111, n112,
         n113, n114, n115, n116, n117, n118, n119, n120, n121, n122, n123,
         n124, n125, n126, n127, n128, n129, n130, n131, n132, n133, n134,
         n135, n136, n137, n138, n139, n140, n141, n142, n143, n144, n145,
         n146, n147, n148;

  NOR2X1 U2 ( .A(n148), .B(n147), .Y(match) );
  NAND4X1 U3 ( .A(n102), .B(n101), .C(n100), .D(n99), .Y(n148) );
  NAND4X1 U4 ( .A(n146), .B(n145), .C(n144), .D(n143), .Y(n147) );
  OAI21XL U5 ( .A0(n30), .A1(n29), .B0(check[2]), .Y(n100) );
  XNOR2X1 U6 ( .A(s7[7]), .B(p7[7]), .Y(n117) );
  OAI21XL U7 ( .A0(n122), .A1(n121), .B0(check[7]), .Y(n145) );
  NAND4X1 U8 ( .A(n116), .B(n115), .C(n114), .D(n113), .Y(n122) );
  NAND4X1 U9 ( .A(n120), .B(n119), .C(n118), .D(n117), .Y(n121) );
  XNOR2X1 U10 ( .A(s7[3]), .B(p7[3]), .Y(n113) );
  XNOR2X1 U11 ( .A(s7[6]), .B(p7[6]), .Y(n118) );
  XNOR2X1 U12 ( .A(s7[2]), .B(p7[2]), .Y(n114) );
  XNOR2X1 U13 ( .A(s7[5]), .B(p7[5]), .Y(n119) );
  XNOR2X1 U14 ( .A(s7[1]), .B(p7[1]), .Y(n115) );
  XNOR2X1 U15 ( .A(s7[0]), .B(p7[0]), .Y(n116) );
  XNOR2X1 U16 ( .A(s5[6]), .B(p5[6]), .Y(n138) );
  OAI21XL U17 ( .A0(n142), .A1(n141), .B0(check[5]), .Y(n143) );
  NAND4X1 U18 ( .A(n136), .B(n135), .C(n134), .D(n133), .Y(n142) );
  NAND4X1 U19 ( .A(n140), .B(n139), .C(n138), .D(n137), .Y(n141) );
  XNOR2X1 U20 ( .A(s5[0]), .B(p5[0]), .Y(n136) );
  XNOR2X1 U21 ( .A(s6[7]), .B(p6[7]), .Y(n127) );
  OAI21XL U22 ( .A0(n132), .A1(n131), .B0(check[6]), .Y(n144) );
  NAND4X1 U23 ( .A(n126), .B(n125), .C(n124), .D(n123), .Y(n132) );
  NAND4X1 U24 ( .A(n130), .B(n129), .C(n128), .D(n127), .Y(n131) );
  XNOR2X1 U25 ( .A(s6[0]), .B(p6[0]), .Y(n126) );
  XNOR2X1 U26 ( .A(s5[3]), .B(p5[3]), .Y(n133) );
  XNOR2X1 U27 ( .A(s5[5]), .B(p5[5]), .Y(n139) );
  XNOR2X1 U28 ( .A(s5[2]), .B(p5[2]), .Y(n134) );
  XNOR2X1 U29 ( .A(s5[4]), .B(p5[4]), .Y(n140) );
  XNOR2X1 U30 ( .A(s5[1]), .B(p5[1]), .Y(n135) );
  XNOR2X1 U31 ( .A(s3[7]), .B(p3[7]), .Y(n15) );
  OAI21XL U32 ( .A0(n20), .A1(n19), .B0(check[3]), .Y(n101) );
  NAND4X1 U33 ( .A(n14), .B(n13), .C(n12), .D(n11), .Y(n20) );
  NAND4X1 U34 ( .A(n18), .B(n17), .C(n16), .D(n15), .Y(n19) );
  XNOR2X1 U35 ( .A(s3[0]), .B(p3[0]), .Y(n14) );
  XNOR2X1 U36 ( .A(s4[7]), .B(p4[7]), .Y(n5) );
  OAI21XL U37 ( .A0(n10), .A1(n9), .B0(check[4]), .Y(n102) );
  NAND4X1 U38 ( .A(n4), .B(n3), .C(n2), .D(n1), .Y(n10) );
  NAND4X1 U39 ( .A(n8), .B(n7), .C(n6), .D(n5), .Y(n9) );
  XNOR2X1 U40 ( .A(s4[0]), .B(p4[0]), .Y(n4) );
  XNOR2X1 U41 ( .A(s4[6]), .B(p4[6]), .Y(n6) );
  XNOR2X1 U42 ( .A(s4[3]), .B(p4[3]), .Y(n1) );
  XNOR2X1 U43 ( .A(s4[5]), .B(p4[5]), .Y(n7) );
  XNOR2X1 U44 ( .A(s4[2]), .B(p4[2]), .Y(n2) );
  XNOR2X1 U45 ( .A(s4[4]), .B(p4[4]), .Y(n8) );
  XNOR2X1 U46 ( .A(s4[1]), .B(p4[1]), .Y(n3) );
  XNOR2X1 U47 ( .A(s0[2]), .B(p0[2]), .Y(n104) );
  OAI21XL U48 ( .A0(n112), .A1(n111), .B0(check[0]), .Y(n146) );
  NAND4X1 U49 ( .A(n110), .B(n109), .C(n108), .D(n107), .Y(n111) );
  NAND4X1 U50 ( .A(n106), .B(n105), .C(n104), .D(n103), .Y(n112) );
  XNOR2X1 U51 ( .A(s0[4]), .B(p0[4]), .Y(n110) );
  XNOR2X1 U52 ( .A(s7[4]), .B(p7[4]), .Y(n120) );
  XNOR2X1 U53 ( .A(s0[1]), .B(p0[1]), .Y(n105) );
  XNOR2X1 U54 ( .A(s5[7]), .B(p5[7]), .Y(n137) );
  XNOR2X1 U55 ( .A(s0[0]), .B(p0[0]), .Y(n106) );
  XNOR2X1 U56 ( .A(s1[7]), .B(p1[7]), .Y(n93) );
  OAI21XL U57 ( .A0(n98), .A1(n97), .B0(check[1]), .Y(n99) );
  NAND4X1 U58 ( .A(n92), .B(n91), .C(n32), .D(n31), .Y(n98) );
  NAND4X1 U59 ( .A(n96), .B(n95), .C(n94), .D(n93), .Y(n97) );
  XNOR2X1 U60 ( .A(s1[0]), .B(p1[0]), .Y(n92) );
  XNOR2X1 U61 ( .A(s6[6]), .B(p6[6]), .Y(n128) );
  XNOR2X1 U62 ( .A(s2[7]), .B(p2[7]), .Y(n25) );
  XNOR2X1 U63 ( .A(s1[6]), .B(p1[6]), .Y(n94) );
  NAND4X1 U64 ( .A(n28), .B(n27), .C(n26), .D(n25), .Y(n29) );
  XNOR2X1 U65 ( .A(s2[4]), .B(p2[4]), .Y(n28) );
  XNOR2X1 U66 ( .A(s2[5]), .B(p2[5]), .Y(n27) );
  XNOR2X1 U67 ( .A(s2[6]), .B(p2[6]), .Y(n26) );
  XNOR2X1 U68 ( .A(s6[3]), .B(p6[3]), .Y(n123) );
  XNOR2X1 U69 ( .A(s1[3]), .B(p1[3]), .Y(n31) );
  XNOR2X1 U70 ( .A(s6[5]), .B(p6[5]), .Y(n129) );
  XNOR2X1 U71 ( .A(s0[7]), .B(p0[7]), .Y(n107) );
  XNOR2X1 U72 ( .A(s1[5]), .B(p1[5]), .Y(n95) );
  XNOR2X1 U73 ( .A(s6[2]), .B(p6[2]), .Y(n124) );
  XNOR2X1 U74 ( .A(s2[3]), .B(p2[3]), .Y(n21) );
  XNOR2X1 U75 ( .A(s1[2]), .B(p1[2]), .Y(n32) );
  NAND4X1 U76 ( .A(n24), .B(n23), .C(n22), .D(n21), .Y(n30) );
  XNOR2X1 U77 ( .A(s2[0]), .B(p2[0]), .Y(n24) );
  XNOR2X1 U78 ( .A(s2[1]), .B(p2[1]), .Y(n23) );
  XNOR2X1 U79 ( .A(s2[2]), .B(p2[2]), .Y(n22) );
  XNOR2X1 U80 ( .A(s6[4]), .B(p6[4]), .Y(n130) );
  XNOR2X1 U81 ( .A(s0[6]), .B(p0[6]), .Y(n108) );
  XNOR2X1 U82 ( .A(s1[4]), .B(p1[4]), .Y(n96) );
  XNOR2X1 U83 ( .A(s3[6]), .B(p3[6]), .Y(n16) );
  XNOR2X1 U84 ( .A(s6[1]), .B(p6[1]), .Y(n125) );
  XNOR2X1 U85 ( .A(s0[5]), .B(p0[5]), .Y(n109) );
  XNOR2X1 U86 ( .A(s0[3]), .B(p0[3]), .Y(n103) );
  XNOR2X1 U87 ( .A(s1[1]), .B(p1[1]), .Y(n91) );
  XNOR2X1 U88 ( .A(s3[3]), .B(p3[3]), .Y(n11) );
  XNOR2X1 U89 ( .A(s3[5]), .B(p3[5]), .Y(n17) );
  XNOR2X1 U90 ( .A(s3[2]), .B(p3[2]), .Y(n12) );
  XNOR2X1 U91 ( .A(s3[4]), .B(p3[4]), .Y(n18) );
  XNOR2X1 U92 ( .A(s3[1]), .B(p3[1]), .Y(n13) );
endmodule


module Pattern_String_Comparator_Cell_24 ( s7, s6, s5, s4, s3, s2, s1, s0, p7, 
        p6, p5, p4, p3, p2, p1, p0, check, match );
  input [7:0] s7;
  input [7:0] s6;
  input [7:0] s5;
  input [7:0] s4;
  input [7:0] s3;
  input [7:0] s2;
  input [7:0] s1;
  input [7:0] s0;
  input [7:0] p7;
  input [7:0] p6;
  input [7:0] p5;
  input [7:0] p4;
  input [7:0] p3;
  input [7:0] p2;
  input [7:0] p1;
  input [7:0] p0;
  input [7:0] check;
  output match;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30,
         n31, n32, n91, n92, n93, n94, n95, n96, n97, n98, n99, n100, n101,
         n102, n103, n104, n105, n106, n107, n108, n109, n110, n111, n112,
         n113, n114, n115, n116, n117, n118, n119, n120, n121, n122, n123,
         n124, n125, n126, n127, n128, n129, n130, n131, n132, n133, n134,
         n135, n136, n137, n138, n139, n140, n141, n142, n143, n144, n145,
         n146, n147, n148;

  NOR2X1 U2 ( .A(n148), .B(n147), .Y(match) );
  NAND4X1 U3 ( .A(n102), .B(n101), .C(n100), .D(n99), .Y(n148) );
  NAND4X1 U4 ( .A(n146), .B(n145), .C(n144), .D(n143), .Y(n147) );
  OAI21XL U5 ( .A0(n30), .A1(n29), .B0(check[2]), .Y(n100) );
  XNOR2X1 U6 ( .A(s7[7]), .B(p7[7]), .Y(n117) );
  OAI21XL U7 ( .A0(n122), .A1(n121), .B0(check[7]), .Y(n145) );
  NAND4X1 U8 ( .A(n116), .B(n115), .C(n114), .D(n113), .Y(n122) );
  NAND4X1 U9 ( .A(n120), .B(n119), .C(n118), .D(n117), .Y(n121) );
  XNOR2X1 U10 ( .A(s7[3]), .B(p7[3]), .Y(n113) );
  XNOR2X1 U11 ( .A(s7[6]), .B(p7[6]), .Y(n118) );
  XNOR2X1 U12 ( .A(s7[2]), .B(p7[2]), .Y(n114) );
  XNOR2X1 U13 ( .A(s7[5]), .B(p7[5]), .Y(n119) );
  XNOR2X1 U14 ( .A(s7[1]), .B(p7[1]), .Y(n115) );
  XNOR2X1 U15 ( .A(s7[0]), .B(p7[0]), .Y(n116) );
  XNOR2X1 U16 ( .A(s5[6]), .B(p5[6]), .Y(n138) );
  OAI21XL U17 ( .A0(n142), .A1(n141), .B0(check[5]), .Y(n143) );
  NAND4X1 U18 ( .A(n136), .B(n135), .C(n134), .D(n133), .Y(n142) );
  NAND4X1 U19 ( .A(n140), .B(n139), .C(n138), .D(n137), .Y(n141) );
  XNOR2X1 U20 ( .A(s5[0]), .B(p5[0]), .Y(n136) );
  XNOR2X1 U21 ( .A(s6[7]), .B(p6[7]), .Y(n127) );
  OAI21XL U22 ( .A0(n132), .A1(n131), .B0(check[6]), .Y(n144) );
  NAND4X1 U23 ( .A(n126), .B(n125), .C(n124), .D(n123), .Y(n132) );
  NAND4X1 U24 ( .A(n130), .B(n129), .C(n128), .D(n127), .Y(n131) );
  XNOR2X1 U25 ( .A(s6[0]), .B(p6[0]), .Y(n126) );
  XNOR2X1 U26 ( .A(s5[3]), .B(p5[3]), .Y(n133) );
  XNOR2X1 U27 ( .A(s5[5]), .B(p5[5]), .Y(n139) );
  XNOR2X1 U28 ( .A(s5[2]), .B(p5[2]), .Y(n134) );
  XNOR2X1 U29 ( .A(s5[4]), .B(p5[4]), .Y(n140) );
  XNOR2X1 U30 ( .A(s5[1]), .B(p5[1]), .Y(n135) );
  XNOR2X1 U31 ( .A(s3[7]), .B(p3[7]), .Y(n15) );
  OAI21XL U32 ( .A0(n20), .A1(n19), .B0(check[3]), .Y(n101) );
  NAND4X1 U33 ( .A(n14), .B(n13), .C(n12), .D(n11), .Y(n20) );
  NAND4X1 U34 ( .A(n18), .B(n17), .C(n16), .D(n15), .Y(n19) );
  XNOR2X1 U35 ( .A(s3[0]), .B(p3[0]), .Y(n14) );
  XNOR2X1 U36 ( .A(s4[7]), .B(p4[7]), .Y(n5) );
  OAI21XL U37 ( .A0(n10), .A1(n9), .B0(check[4]), .Y(n102) );
  NAND4X1 U38 ( .A(n4), .B(n3), .C(n2), .D(n1), .Y(n10) );
  NAND4X1 U39 ( .A(n8), .B(n7), .C(n6), .D(n5), .Y(n9) );
  XNOR2X1 U40 ( .A(s4[0]), .B(p4[0]), .Y(n4) );
  XNOR2X1 U41 ( .A(s4[6]), .B(p4[6]), .Y(n6) );
  XNOR2X1 U42 ( .A(s4[3]), .B(p4[3]), .Y(n1) );
  XNOR2X1 U43 ( .A(s4[5]), .B(p4[5]), .Y(n7) );
  XNOR2X1 U44 ( .A(s4[2]), .B(p4[2]), .Y(n2) );
  XNOR2X1 U45 ( .A(s4[4]), .B(p4[4]), .Y(n8) );
  XNOR2X1 U46 ( .A(s4[1]), .B(p4[1]), .Y(n3) );
  XNOR2X1 U47 ( .A(s0[2]), .B(p0[2]), .Y(n104) );
  OAI21XL U48 ( .A0(n112), .A1(n111), .B0(check[0]), .Y(n146) );
  NAND4X1 U49 ( .A(n110), .B(n109), .C(n108), .D(n107), .Y(n111) );
  NAND4X1 U50 ( .A(n106), .B(n105), .C(n104), .D(n103), .Y(n112) );
  XNOR2X1 U51 ( .A(s0[4]), .B(p0[4]), .Y(n110) );
  XNOR2X1 U52 ( .A(s7[4]), .B(p7[4]), .Y(n120) );
  XNOR2X1 U53 ( .A(s0[1]), .B(p0[1]), .Y(n105) );
  XNOR2X1 U54 ( .A(s5[7]), .B(p5[7]), .Y(n137) );
  XNOR2X1 U55 ( .A(s0[0]), .B(p0[0]), .Y(n106) );
  XNOR2X1 U56 ( .A(s1[7]), .B(p1[7]), .Y(n93) );
  OAI21XL U57 ( .A0(n98), .A1(n97), .B0(check[1]), .Y(n99) );
  NAND4X1 U58 ( .A(n92), .B(n91), .C(n32), .D(n31), .Y(n98) );
  NAND4X1 U59 ( .A(n96), .B(n95), .C(n94), .D(n93), .Y(n97) );
  XNOR2X1 U60 ( .A(s1[0]), .B(p1[0]), .Y(n92) );
  XNOR2X1 U61 ( .A(s6[6]), .B(p6[6]), .Y(n128) );
  XNOR2X1 U62 ( .A(s2[7]), .B(p2[7]), .Y(n25) );
  XNOR2X1 U63 ( .A(s1[6]), .B(p1[6]), .Y(n94) );
  NAND4X1 U64 ( .A(n28), .B(n27), .C(n26), .D(n25), .Y(n29) );
  XNOR2X1 U65 ( .A(s2[4]), .B(p2[4]), .Y(n28) );
  XNOR2X1 U66 ( .A(s2[5]), .B(p2[5]), .Y(n27) );
  XNOR2X1 U67 ( .A(s2[6]), .B(p2[6]), .Y(n26) );
  XNOR2X1 U68 ( .A(s6[3]), .B(p6[3]), .Y(n123) );
  XNOR2X1 U69 ( .A(s1[3]), .B(p1[3]), .Y(n31) );
  XNOR2X1 U70 ( .A(s6[5]), .B(p6[5]), .Y(n129) );
  XNOR2X1 U71 ( .A(s0[7]), .B(p0[7]), .Y(n107) );
  XNOR2X1 U72 ( .A(s1[5]), .B(p1[5]), .Y(n95) );
  XNOR2X1 U73 ( .A(s6[2]), .B(p6[2]), .Y(n124) );
  XNOR2X1 U74 ( .A(s2[3]), .B(p2[3]), .Y(n21) );
  XNOR2X1 U75 ( .A(s1[2]), .B(p1[2]), .Y(n32) );
  NAND4X1 U76 ( .A(n24), .B(n23), .C(n22), .D(n21), .Y(n30) );
  XNOR2X1 U77 ( .A(s2[0]), .B(p2[0]), .Y(n24) );
  XNOR2X1 U78 ( .A(s2[1]), .B(p2[1]), .Y(n23) );
  XNOR2X1 U79 ( .A(s2[2]), .B(p2[2]), .Y(n22) );
  XNOR2X1 U80 ( .A(s6[4]), .B(p6[4]), .Y(n130) );
  XNOR2X1 U81 ( .A(s0[6]), .B(p0[6]), .Y(n108) );
  XNOR2X1 U82 ( .A(s1[4]), .B(p1[4]), .Y(n96) );
  XNOR2X1 U83 ( .A(s3[6]), .B(p3[6]), .Y(n16) );
  XNOR2X1 U84 ( .A(s6[1]), .B(p6[1]), .Y(n125) );
  XNOR2X1 U85 ( .A(s0[5]), .B(p0[5]), .Y(n109) );
  XNOR2X1 U86 ( .A(s0[3]), .B(p0[3]), .Y(n103) );
  XNOR2X1 U87 ( .A(s1[1]), .B(p1[1]), .Y(n91) );
  XNOR2X1 U88 ( .A(s3[3]), .B(p3[3]), .Y(n11) );
  XNOR2X1 U89 ( .A(s3[5]), .B(p3[5]), .Y(n17) );
  XNOR2X1 U90 ( .A(s3[2]), .B(p3[2]), .Y(n12) );
  XNOR2X1 U91 ( .A(s3[4]), .B(p3[4]), .Y(n18) );
  XNOR2X1 U92 ( .A(s3[1]), .B(p3[1]), .Y(n13) );
endmodule


module Pattern_String_Comparator_Cell_23 ( s7, s6, s5, s4, s3, s2, s1, s0, p7, 
        p6, p5, p4, p3, p2, p1, p0, check, match );
  input [7:0] s7;
  input [7:0] s6;
  input [7:0] s5;
  input [7:0] s4;
  input [7:0] s3;
  input [7:0] s2;
  input [7:0] s1;
  input [7:0] s0;
  input [7:0] p7;
  input [7:0] p6;
  input [7:0] p5;
  input [7:0] p4;
  input [7:0] p3;
  input [7:0] p2;
  input [7:0] p1;
  input [7:0] p0;
  input [7:0] check;
  output match;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30,
         n31, n32, n91, n92, n93, n94, n95, n96, n97, n98, n99, n100, n101,
         n102, n103, n104, n105, n106, n107, n108, n109, n110, n111, n112,
         n113, n114, n115, n116, n117, n118, n119, n120, n121, n122, n123,
         n124, n125, n126, n127, n128, n129, n130, n131, n132, n133, n134,
         n135, n136, n137, n138, n139, n140, n141, n142, n143, n144, n145,
         n146, n147, n148;

  NOR2X1 U2 ( .A(n148), .B(n147), .Y(match) );
  NAND4X1 U3 ( .A(n102), .B(n101), .C(n100), .D(n99), .Y(n148) );
  NAND4X1 U4 ( .A(n146), .B(n145), .C(n144), .D(n143), .Y(n147) );
  OAI21XL U5 ( .A0(n30), .A1(n29), .B0(check[2]), .Y(n100) );
  XNOR2X1 U6 ( .A(s7[7]), .B(p7[7]), .Y(n117) );
  OAI21XL U7 ( .A0(n122), .A1(n121), .B0(check[7]), .Y(n145) );
  NAND4X1 U8 ( .A(n116), .B(n115), .C(n114), .D(n113), .Y(n122) );
  NAND4X1 U9 ( .A(n120), .B(n119), .C(n118), .D(n117), .Y(n121) );
  XNOR2X1 U10 ( .A(s7[3]), .B(p7[3]), .Y(n113) );
  XNOR2X1 U11 ( .A(s7[6]), .B(p7[6]), .Y(n118) );
  XNOR2X1 U12 ( .A(s7[2]), .B(p7[2]), .Y(n114) );
  XNOR2X1 U13 ( .A(s7[5]), .B(p7[5]), .Y(n119) );
  XNOR2X1 U14 ( .A(s7[1]), .B(p7[1]), .Y(n115) );
  XNOR2X1 U15 ( .A(s7[0]), .B(p7[0]), .Y(n116) );
  XNOR2X1 U16 ( .A(s5[6]), .B(p5[6]), .Y(n138) );
  OAI21XL U17 ( .A0(n142), .A1(n141), .B0(check[5]), .Y(n143) );
  NAND4X1 U18 ( .A(n136), .B(n135), .C(n134), .D(n133), .Y(n142) );
  NAND4X1 U19 ( .A(n140), .B(n139), .C(n138), .D(n137), .Y(n141) );
  XNOR2X1 U20 ( .A(s5[0]), .B(p5[0]), .Y(n136) );
  XNOR2X1 U21 ( .A(s6[7]), .B(p6[7]), .Y(n127) );
  OAI21XL U22 ( .A0(n132), .A1(n131), .B0(check[6]), .Y(n144) );
  NAND4X1 U23 ( .A(n126), .B(n125), .C(n124), .D(n123), .Y(n132) );
  NAND4X1 U24 ( .A(n130), .B(n129), .C(n128), .D(n127), .Y(n131) );
  XNOR2X1 U25 ( .A(s6[0]), .B(p6[0]), .Y(n126) );
  XNOR2X1 U26 ( .A(s5[3]), .B(p5[3]), .Y(n133) );
  XNOR2X1 U27 ( .A(s5[5]), .B(p5[5]), .Y(n139) );
  XNOR2X1 U28 ( .A(s5[2]), .B(p5[2]), .Y(n134) );
  XNOR2X1 U29 ( .A(s5[4]), .B(p5[4]), .Y(n140) );
  XNOR2X1 U30 ( .A(s5[1]), .B(p5[1]), .Y(n135) );
  XNOR2X1 U31 ( .A(s3[7]), .B(p3[7]), .Y(n15) );
  OAI21XL U32 ( .A0(n20), .A1(n19), .B0(check[3]), .Y(n101) );
  NAND4X1 U33 ( .A(n14), .B(n13), .C(n12), .D(n11), .Y(n20) );
  NAND4X1 U34 ( .A(n18), .B(n17), .C(n16), .D(n15), .Y(n19) );
  XNOR2X1 U35 ( .A(s3[0]), .B(p3[0]), .Y(n14) );
  XNOR2X1 U36 ( .A(s4[7]), .B(p4[7]), .Y(n5) );
  OAI21XL U37 ( .A0(n10), .A1(n9), .B0(check[4]), .Y(n102) );
  NAND4X1 U38 ( .A(n4), .B(n3), .C(n2), .D(n1), .Y(n10) );
  NAND4X1 U39 ( .A(n8), .B(n7), .C(n6), .D(n5), .Y(n9) );
  XNOR2X1 U40 ( .A(s4[0]), .B(p4[0]), .Y(n4) );
  XNOR2X1 U41 ( .A(s4[6]), .B(p4[6]), .Y(n6) );
  XNOR2X1 U42 ( .A(s4[3]), .B(p4[3]), .Y(n1) );
  XNOR2X1 U43 ( .A(s4[5]), .B(p4[5]), .Y(n7) );
  XNOR2X1 U44 ( .A(s4[2]), .B(p4[2]), .Y(n2) );
  XNOR2X1 U45 ( .A(s4[4]), .B(p4[4]), .Y(n8) );
  XNOR2X1 U46 ( .A(s4[1]), .B(p4[1]), .Y(n3) );
  XNOR2X1 U47 ( .A(s0[2]), .B(p0[2]), .Y(n104) );
  OAI21XL U48 ( .A0(n112), .A1(n111), .B0(check[0]), .Y(n146) );
  NAND4X1 U49 ( .A(n110), .B(n109), .C(n108), .D(n107), .Y(n111) );
  NAND4X1 U50 ( .A(n106), .B(n105), .C(n104), .D(n103), .Y(n112) );
  XNOR2X1 U51 ( .A(s0[4]), .B(p0[4]), .Y(n110) );
  XNOR2X1 U52 ( .A(s7[4]), .B(p7[4]), .Y(n120) );
  XNOR2X1 U53 ( .A(s0[1]), .B(p0[1]), .Y(n105) );
  XNOR2X1 U54 ( .A(s5[7]), .B(p5[7]), .Y(n137) );
  XNOR2X1 U55 ( .A(s0[0]), .B(p0[0]), .Y(n106) );
  XNOR2X1 U56 ( .A(s1[7]), .B(p1[7]), .Y(n93) );
  OAI21XL U57 ( .A0(n98), .A1(n97), .B0(check[1]), .Y(n99) );
  NAND4X1 U58 ( .A(n92), .B(n91), .C(n32), .D(n31), .Y(n98) );
  NAND4X1 U59 ( .A(n96), .B(n95), .C(n94), .D(n93), .Y(n97) );
  XNOR2X1 U60 ( .A(s1[0]), .B(p1[0]), .Y(n92) );
  XNOR2X1 U61 ( .A(s6[6]), .B(p6[6]), .Y(n128) );
  XNOR2X1 U62 ( .A(s2[7]), .B(p2[7]), .Y(n25) );
  XNOR2X1 U63 ( .A(s1[6]), .B(p1[6]), .Y(n94) );
  NAND4X1 U64 ( .A(n28), .B(n27), .C(n26), .D(n25), .Y(n29) );
  XNOR2X1 U65 ( .A(s2[4]), .B(p2[4]), .Y(n28) );
  XNOR2X1 U66 ( .A(s2[5]), .B(p2[5]), .Y(n27) );
  XNOR2X1 U67 ( .A(s2[6]), .B(p2[6]), .Y(n26) );
  XNOR2X1 U68 ( .A(s6[3]), .B(p6[3]), .Y(n123) );
  XNOR2X1 U69 ( .A(s1[3]), .B(p1[3]), .Y(n31) );
  XNOR2X1 U70 ( .A(s6[5]), .B(p6[5]), .Y(n129) );
  XNOR2X1 U71 ( .A(s0[7]), .B(p0[7]), .Y(n107) );
  XNOR2X1 U72 ( .A(s1[5]), .B(p1[5]), .Y(n95) );
  XNOR2X1 U73 ( .A(s6[2]), .B(p6[2]), .Y(n124) );
  XNOR2X1 U74 ( .A(s2[3]), .B(p2[3]), .Y(n21) );
  XNOR2X1 U75 ( .A(s1[2]), .B(p1[2]), .Y(n32) );
  NAND4X1 U76 ( .A(n24), .B(n23), .C(n22), .D(n21), .Y(n30) );
  XNOR2X1 U77 ( .A(s2[0]), .B(p2[0]), .Y(n24) );
  XNOR2X1 U78 ( .A(s2[1]), .B(p2[1]), .Y(n23) );
  XNOR2X1 U79 ( .A(s2[2]), .B(p2[2]), .Y(n22) );
  XNOR2X1 U80 ( .A(s6[4]), .B(p6[4]), .Y(n130) );
  XNOR2X1 U81 ( .A(s0[6]), .B(p0[6]), .Y(n108) );
  XNOR2X1 U82 ( .A(s1[4]), .B(p1[4]), .Y(n96) );
  XNOR2X1 U83 ( .A(s3[6]), .B(p3[6]), .Y(n16) );
  XNOR2X1 U84 ( .A(s6[1]), .B(p6[1]), .Y(n125) );
  XNOR2X1 U85 ( .A(s0[5]), .B(p0[5]), .Y(n109) );
  XNOR2X1 U86 ( .A(s0[3]), .B(p0[3]), .Y(n103) );
  XNOR2X1 U87 ( .A(s1[1]), .B(p1[1]), .Y(n91) );
  XNOR2X1 U88 ( .A(s3[3]), .B(p3[3]), .Y(n11) );
  XNOR2X1 U89 ( .A(s3[5]), .B(p3[5]), .Y(n17) );
  XNOR2X1 U90 ( .A(s3[2]), .B(p3[2]), .Y(n12) );
  XNOR2X1 U91 ( .A(s3[4]), .B(p3[4]), .Y(n18) );
  XNOR2X1 U92 ( .A(s3[1]), .B(p3[1]), .Y(n13) );
endmodule


module Pattern_String_Comparator_Cell_22 ( s7, s6, s5, s4, s3, s2, s1, s0, p7, 
        p6, p5, p4, p3, p2, p1, p0, check, match );
  input [7:0] s7;
  input [7:0] s6;
  input [7:0] s5;
  input [7:0] s4;
  input [7:0] s3;
  input [7:0] s2;
  input [7:0] s1;
  input [7:0] s0;
  input [7:0] p7;
  input [7:0] p6;
  input [7:0] p5;
  input [7:0] p4;
  input [7:0] p3;
  input [7:0] p2;
  input [7:0] p1;
  input [7:0] p0;
  input [7:0] check;
  output match;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30,
         n31, n32, n91, n92, n93, n94, n95, n96, n97, n98, n99, n100, n101,
         n102, n103, n104, n105, n106, n107, n108, n109, n110, n111, n112,
         n113, n114, n115, n116, n117, n118, n119, n120, n121, n122, n123,
         n124, n125, n126, n127, n128, n129, n130, n131, n132, n133, n134,
         n135, n136, n137, n138, n139, n140, n141, n142, n143, n144, n145,
         n146, n147, n148;

  NOR2X1 U2 ( .A(n148), .B(n147), .Y(match) );
  NAND4X1 U3 ( .A(n102), .B(n101), .C(n100), .D(n99), .Y(n148) );
  NAND4X1 U4 ( .A(n146), .B(n145), .C(n144), .D(n143), .Y(n147) );
  OAI21XL U5 ( .A0(n30), .A1(n29), .B0(check[2]), .Y(n100) );
  XNOR2X1 U6 ( .A(s7[7]), .B(p7[7]), .Y(n117) );
  OAI21XL U7 ( .A0(n122), .A1(n121), .B0(check[7]), .Y(n145) );
  NAND4X1 U8 ( .A(n116), .B(n115), .C(n114), .D(n113), .Y(n122) );
  NAND4X1 U9 ( .A(n120), .B(n119), .C(n118), .D(n117), .Y(n121) );
  XNOR2X1 U10 ( .A(s7[3]), .B(p7[3]), .Y(n113) );
  XNOR2X1 U11 ( .A(s7[6]), .B(p7[6]), .Y(n118) );
  XNOR2X1 U12 ( .A(s7[2]), .B(p7[2]), .Y(n114) );
  XNOR2X1 U13 ( .A(s7[5]), .B(p7[5]), .Y(n119) );
  XNOR2X1 U14 ( .A(s7[1]), .B(p7[1]), .Y(n115) );
  XNOR2X1 U15 ( .A(s7[0]), .B(p7[0]), .Y(n116) );
  XNOR2X1 U16 ( .A(s5[6]), .B(p5[6]), .Y(n138) );
  OAI21XL U17 ( .A0(n142), .A1(n141), .B0(check[5]), .Y(n143) );
  NAND4X1 U18 ( .A(n136), .B(n135), .C(n134), .D(n133), .Y(n142) );
  NAND4X1 U19 ( .A(n140), .B(n139), .C(n138), .D(n137), .Y(n141) );
  XNOR2X1 U20 ( .A(s5[0]), .B(p5[0]), .Y(n136) );
  XNOR2X1 U21 ( .A(s6[7]), .B(p6[7]), .Y(n127) );
  OAI21XL U22 ( .A0(n132), .A1(n131), .B0(check[6]), .Y(n144) );
  NAND4X1 U23 ( .A(n126), .B(n125), .C(n124), .D(n123), .Y(n132) );
  NAND4X1 U24 ( .A(n130), .B(n129), .C(n128), .D(n127), .Y(n131) );
  XNOR2X1 U25 ( .A(s6[0]), .B(p6[0]), .Y(n126) );
  XNOR2X1 U26 ( .A(s5[3]), .B(p5[3]), .Y(n133) );
  XNOR2X1 U27 ( .A(s5[5]), .B(p5[5]), .Y(n139) );
  XNOR2X1 U28 ( .A(s5[2]), .B(p5[2]), .Y(n134) );
  XNOR2X1 U29 ( .A(s5[4]), .B(p5[4]), .Y(n140) );
  XNOR2X1 U30 ( .A(s5[1]), .B(p5[1]), .Y(n135) );
  XNOR2X1 U31 ( .A(s3[7]), .B(p3[7]), .Y(n15) );
  OAI21XL U32 ( .A0(n20), .A1(n19), .B0(check[3]), .Y(n101) );
  NAND4X1 U33 ( .A(n14), .B(n13), .C(n12), .D(n11), .Y(n20) );
  NAND4X1 U34 ( .A(n18), .B(n17), .C(n16), .D(n15), .Y(n19) );
  XNOR2X1 U35 ( .A(s3[0]), .B(p3[0]), .Y(n14) );
  XNOR2X1 U36 ( .A(s4[7]), .B(p4[7]), .Y(n5) );
  OAI21XL U37 ( .A0(n10), .A1(n9), .B0(check[4]), .Y(n102) );
  NAND4X1 U38 ( .A(n4), .B(n3), .C(n2), .D(n1), .Y(n10) );
  NAND4X1 U39 ( .A(n8), .B(n7), .C(n6), .D(n5), .Y(n9) );
  XNOR2X1 U40 ( .A(s4[0]), .B(p4[0]), .Y(n4) );
  XNOR2X1 U41 ( .A(s4[6]), .B(p4[6]), .Y(n6) );
  XNOR2X1 U42 ( .A(s4[3]), .B(p4[3]), .Y(n1) );
  XNOR2X1 U43 ( .A(s4[5]), .B(p4[5]), .Y(n7) );
  XNOR2X1 U44 ( .A(s4[2]), .B(p4[2]), .Y(n2) );
  XNOR2X1 U45 ( .A(s4[4]), .B(p4[4]), .Y(n8) );
  XNOR2X1 U46 ( .A(s4[1]), .B(p4[1]), .Y(n3) );
  XNOR2X1 U47 ( .A(s0[2]), .B(p0[2]), .Y(n104) );
  OAI21XL U48 ( .A0(n112), .A1(n111), .B0(check[0]), .Y(n146) );
  NAND4X1 U49 ( .A(n110), .B(n109), .C(n108), .D(n107), .Y(n111) );
  NAND4X1 U50 ( .A(n106), .B(n105), .C(n104), .D(n103), .Y(n112) );
  XNOR2X1 U51 ( .A(s0[4]), .B(p0[4]), .Y(n110) );
  XNOR2X1 U52 ( .A(s7[4]), .B(p7[4]), .Y(n120) );
  XNOR2X1 U53 ( .A(s0[1]), .B(p0[1]), .Y(n105) );
  XNOR2X1 U54 ( .A(s5[7]), .B(p5[7]), .Y(n137) );
  XNOR2X1 U55 ( .A(s0[0]), .B(p0[0]), .Y(n106) );
  XNOR2X1 U56 ( .A(s1[7]), .B(p1[7]), .Y(n93) );
  OAI21XL U57 ( .A0(n98), .A1(n97), .B0(check[1]), .Y(n99) );
  NAND4X1 U58 ( .A(n92), .B(n91), .C(n32), .D(n31), .Y(n98) );
  NAND4X1 U59 ( .A(n96), .B(n95), .C(n94), .D(n93), .Y(n97) );
  XNOR2X1 U60 ( .A(s1[0]), .B(p1[0]), .Y(n92) );
  XNOR2X1 U61 ( .A(s6[6]), .B(p6[6]), .Y(n128) );
  XNOR2X1 U62 ( .A(s2[7]), .B(p2[7]), .Y(n25) );
  XNOR2X1 U63 ( .A(s1[6]), .B(p1[6]), .Y(n94) );
  NAND4X1 U64 ( .A(n28), .B(n27), .C(n26), .D(n25), .Y(n29) );
  XNOR2X1 U65 ( .A(s2[4]), .B(p2[4]), .Y(n28) );
  XNOR2X1 U66 ( .A(s2[5]), .B(p2[5]), .Y(n27) );
  XNOR2X1 U67 ( .A(s2[6]), .B(p2[6]), .Y(n26) );
  XNOR2X1 U68 ( .A(s6[3]), .B(p6[3]), .Y(n123) );
  XNOR2X1 U69 ( .A(s1[3]), .B(p1[3]), .Y(n31) );
  XNOR2X1 U70 ( .A(s6[5]), .B(p6[5]), .Y(n129) );
  XNOR2X1 U71 ( .A(s0[7]), .B(p0[7]), .Y(n107) );
  XNOR2X1 U72 ( .A(s1[5]), .B(p1[5]), .Y(n95) );
  XNOR2X1 U73 ( .A(s6[2]), .B(p6[2]), .Y(n124) );
  XNOR2X1 U74 ( .A(s2[3]), .B(p2[3]), .Y(n21) );
  XNOR2X1 U75 ( .A(s1[2]), .B(p1[2]), .Y(n32) );
  NAND4X1 U76 ( .A(n24), .B(n23), .C(n22), .D(n21), .Y(n30) );
  XNOR2X1 U77 ( .A(s2[0]), .B(p2[0]), .Y(n24) );
  XNOR2X1 U78 ( .A(s2[1]), .B(p2[1]), .Y(n23) );
  XNOR2X1 U79 ( .A(s2[2]), .B(p2[2]), .Y(n22) );
  XNOR2X1 U80 ( .A(s6[4]), .B(p6[4]), .Y(n130) );
  XNOR2X1 U81 ( .A(s0[6]), .B(p0[6]), .Y(n108) );
  XNOR2X1 U82 ( .A(s1[4]), .B(p1[4]), .Y(n96) );
  XNOR2X1 U83 ( .A(s3[6]), .B(p3[6]), .Y(n16) );
  XNOR2X1 U84 ( .A(s6[1]), .B(p6[1]), .Y(n125) );
  XNOR2X1 U85 ( .A(s0[5]), .B(p0[5]), .Y(n109) );
  XNOR2X1 U86 ( .A(s0[3]), .B(p0[3]), .Y(n103) );
  XNOR2X1 U87 ( .A(s1[1]), .B(p1[1]), .Y(n91) );
  XNOR2X1 U88 ( .A(s3[3]), .B(p3[3]), .Y(n11) );
  XNOR2X1 U89 ( .A(s3[5]), .B(p3[5]), .Y(n17) );
  XNOR2X1 U90 ( .A(s3[2]), .B(p3[2]), .Y(n12) );
  XNOR2X1 U91 ( .A(s3[4]), .B(p3[4]), .Y(n18) );
  XNOR2X1 U92 ( .A(s3[1]), .B(p3[1]), .Y(n13) );
endmodule


module Pattern_String_Comparator_Cell_21 ( s7, s6, s5, s4, s3, s2, s1, s0, p7, 
        p6, p5, p4, p3, p2, p1, p0, check, match );
  input [7:0] s7;
  input [7:0] s6;
  input [7:0] s5;
  input [7:0] s4;
  input [7:0] s3;
  input [7:0] s2;
  input [7:0] s1;
  input [7:0] s0;
  input [7:0] p7;
  input [7:0] p6;
  input [7:0] p5;
  input [7:0] p4;
  input [7:0] p3;
  input [7:0] p2;
  input [7:0] p1;
  input [7:0] p0;
  input [7:0] check;
  output match;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30,
         n31, n32, n91, n92, n93, n94, n95, n96, n97, n98, n99, n100, n101,
         n102, n103, n104, n105, n106, n107, n108, n109, n110, n111, n112,
         n113, n114, n115, n116, n117, n118, n119, n120, n121, n122, n123,
         n124, n125, n126, n127, n128, n129, n130, n131, n132, n133, n134,
         n135, n136, n137, n138, n139, n140, n141, n142, n143, n144, n145,
         n146, n147, n148;

  NOR2X1 U2 ( .A(n148), .B(n147), .Y(match) );
  NAND4X1 U3 ( .A(n102), .B(n101), .C(n100), .D(n99), .Y(n148) );
  NAND4X1 U4 ( .A(n146), .B(n145), .C(n144), .D(n143), .Y(n147) );
  OAI21XL U5 ( .A0(n30), .A1(n29), .B0(check[2]), .Y(n100) );
  XNOR2X1 U6 ( .A(s7[7]), .B(p7[7]), .Y(n117) );
  OAI21XL U7 ( .A0(n122), .A1(n121), .B0(check[7]), .Y(n145) );
  NAND4X1 U8 ( .A(n116), .B(n115), .C(n114), .D(n113), .Y(n122) );
  NAND4X1 U9 ( .A(n120), .B(n119), .C(n118), .D(n117), .Y(n121) );
  XNOR2X1 U10 ( .A(s7[3]), .B(p7[3]), .Y(n113) );
  XNOR2X1 U11 ( .A(s7[6]), .B(p7[6]), .Y(n118) );
  XNOR2X1 U12 ( .A(s7[2]), .B(p7[2]), .Y(n114) );
  XNOR2X1 U13 ( .A(s7[5]), .B(p7[5]), .Y(n119) );
  XNOR2X1 U14 ( .A(s7[1]), .B(p7[1]), .Y(n115) );
  XNOR2X1 U15 ( .A(s7[0]), .B(p7[0]), .Y(n116) );
  XNOR2X1 U16 ( .A(s5[6]), .B(p5[6]), .Y(n138) );
  OAI21XL U17 ( .A0(n142), .A1(n141), .B0(check[5]), .Y(n143) );
  NAND4X1 U18 ( .A(n136), .B(n135), .C(n134), .D(n133), .Y(n142) );
  NAND4X1 U19 ( .A(n140), .B(n139), .C(n138), .D(n137), .Y(n141) );
  XNOR2X1 U20 ( .A(s5[0]), .B(p5[0]), .Y(n136) );
  XNOR2X1 U21 ( .A(s6[7]), .B(p6[7]), .Y(n127) );
  OAI21XL U22 ( .A0(n132), .A1(n131), .B0(check[6]), .Y(n144) );
  NAND4X1 U23 ( .A(n126), .B(n125), .C(n124), .D(n123), .Y(n132) );
  NAND4X1 U24 ( .A(n130), .B(n129), .C(n128), .D(n127), .Y(n131) );
  XNOR2X1 U25 ( .A(s6[0]), .B(p6[0]), .Y(n126) );
  XNOR2X1 U26 ( .A(s5[3]), .B(p5[3]), .Y(n133) );
  XNOR2X1 U27 ( .A(s5[5]), .B(p5[5]), .Y(n139) );
  XNOR2X1 U28 ( .A(s5[2]), .B(p5[2]), .Y(n134) );
  XNOR2X1 U29 ( .A(s5[4]), .B(p5[4]), .Y(n140) );
  XNOR2X1 U30 ( .A(s5[1]), .B(p5[1]), .Y(n135) );
  XNOR2X1 U31 ( .A(s3[7]), .B(p3[7]), .Y(n15) );
  OAI21XL U32 ( .A0(n20), .A1(n19), .B0(check[3]), .Y(n101) );
  NAND4X1 U33 ( .A(n14), .B(n13), .C(n12), .D(n11), .Y(n20) );
  NAND4X1 U34 ( .A(n18), .B(n17), .C(n16), .D(n15), .Y(n19) );
  XNOR2X1 U35 ( .A(s3[0]), .B(p3[0]), .Y(n14) );
  XNOR2X1 U36 ( .A(s4[7]), .B(p4[7]), .Y(n5) );
  OAI21XL U37 ( .A0(n10), .A1(n9), .B0(check[4]), .Y(n102) );
  NAND4X1 U38 ( .A(n4), .B(n3), .C(n2), .D(n1), .Y(n10) );
  NAND4X1 U39 ( .A(n8), .B(n7), .C(n6), .D(n5), .Y(n9) );
  XNOR2X1 U40 ( .A(s4[0]), .B(p4[0]), .Y(n4) );
  XNOR2X1 U41 ( .A(s4[6]), .B(p4[6]), .Y(n6) );
  XNOR2X1 U42 ( .A(s4[3]), .B(p4[3]), .Y(n1) );
  XNOR2X1 U43 ( .A(s4[5]), .B(p4[5]), .Y(n7) );
  XNOR2X1 U44 ( .A(s4[2]), .B(p4[2]), .Y(n2) );
  XNOR2X1 U45 ( .A(s4[4]), .B(p4[4]), .Y(n8) );
  XNOR2X1 U46 ( .A(s4[1]), .B(p4[1]), .Y(n3) );
  XNOR2X1 U47 ( .A(s0[2]), .B(p0[2]), .Y(n104) );
  OAI21XL U48 ( .A0(n112), .A1(n111), .B0(check[0]), .Y(n146) );
  NAND4X1 U49 ( .A(n110), .B(n109), .C(n108), .D(n107), .Y(n111) );
  NAND4X1 U50 ( .A(n106), .B(n105), .C(n104), .D(n103), .Y(n112) );
  XNOR2X1 U51 ( .A(s0[4]), .B(p0[4]), .Y(n110) );
  XNOR2X1 U52 ( .A(s7[4]), .B(p7[4]), .Y(n120) );
  XNOR2X1 U53 ( .A(s0[1]), .B(p0[1]), .Y(n105) );
  XNOR2X1 U54 ( .A(s5[7]), .B(p5[7]), .Y(n137) );
  XNOR2X1 U55 ( .A(s0[0]), .B(p0[0]), .Y(n106) );
  XNOR2X1 U56 ( .A(s1[7]), .B(p1[7]), .Y(n93) );
  OAI21XL U57 ( .A0(n98), .A1(n97), .B0(check[1]), .Y(n99) );
  NAND4X1 U58 ( .A(n92), .B(n91), .C(n32), .D(n31), .Y(n98) );
  NAND4X1 U59 ( .A(n96), .B(n95), .C(n94), .D(n93), .Y(n97) );
  XNOR2X1 U60 ( .A(s1[0]), .B(p1[0]), .Y(n92) );
  XNOR2X1 U61 ( .A(s6[6]), .B(p6[6]), .Y(n128) );
  XNOR2X1 U62 ( .A(s2[7]), .B(p2[7]), .Y(n25) );
  XNOR2X1 U63 ( .A(s1[6]), .B(p1[6]), .Y(n94) );
  NAND4X1 U64 ( .A(n28), .B(n27), .C(n26), .D(n25), .Y(n29) );
  XNOR2X1 U65 ( .A(s2[4]), .B(p2[4]), .Y(n28) );
  XNOR2X1 U66 ( .A(s2[5]), .B(p2[5]), .Y(n27) );
  XNOR2X1 U67 ( .A(s2[6]), .B(p2[6]), .Y(n26) );
  XNOR2X1 U68 ( .A(s6[3]), .B(p6[3]), .Y(n123) );
  XNOR2X1 U69 ( .A(s1[3]), .B(p1[3]), .Y(n31) );
  XNOR2X1 U70 ( .A(s6[5]), .B(p6[5]), .Y(n129) );
  XNOR2X1 U71 ( .A(s0[7]), .B(p0[7]), .Y(n107) );
  XNOR2X1 U72 ( .A(s1[5]), .B(p1[5]), .Y(n95) );
  XNOR2X1 U73 ( .A(s6[2]), .B(p6[2]), .Y(n124) );
  XNOR2X1 U74 ( .A(s2[3]), .B(p2[3]), .Y(n21) );
  XNOR2X1 U75 ( .A(s1[2]), .B(p1[2]), .Y(n32) );
  NAND4X1 U76 ( .A(n24), .B(n23), .C(n22), .D(n21), .Y(n30) );
  XNOR2X1 U77 ( .A(s2[0]), .B(p2[0]), .Y(n24) );
  XNOR2X1 U78 ( .A(s2[1]), .B(p2[1]), .Y(n23) );
  XNOR2X1 U79 ( .A(s2[2]), .B(p2[2]), .Y(n22) );
  XNOR2X1 U80 ( .A(s6[4]), .B(p6[4]), .Y(n130) );
  XNOR2X1 U81 ( .A(s0[6]), .B(p0[6]), .Y(n108) );
  XNOR2X1 U82 ( .A(s1[4]), .B(p1[4]), .Y(n96) );
  XNOR2X1 U83 ( .A(s3[6]), .B(p3[6]), .Y(n16) );
  XNOR2X1 U84 ( .A(s6[1]), .B(p6[1]), .Y(n125) );
  XNOR2X1 U85 ( .A(s0[5]), .B(p0[5]), .Y(n109) );
  XNOR2X1 U86 ( .A(s0[3]), .B(p0[3]), .Y(n103) );
  XNOR2X1 U87 ( .A(s1[1]), .B(p1[1]), .Y(n91) );
  XNOR2X1 U88 ( .A(s3[3]), .B(p3[3]), .Y(n11) );
  XNOR2X1 U89 ( .A(s3[5]), .B(p3[5]), .Y(n17) );
  XNOR2X1 U90 ( .A(s3[2]), .B(p3[2]), .Y(n12) );
  XNOR2X1 U91 ( .A(s3[4]), .B(p3[4]), .Y(n18) );
  XNOR2X1 U92 ( .A(s3[1]), .B(p3[1]), .Y(n13) );
endmodule


module Pattern_String_Comparator_Cell_20 ( s7, s6, s5, s4, s3, s2, s1, s0, p7, 
        p6, p5, p4, p3, p2, p1, p0, check, match );
  input [7:0] s7;
  input [7:0] s6;
  input [7:0] s5;
  input [7:0] s4;
  input [7:0] s3;
  input [7:0] s2;
  input [7:0] s1;
  input [7:0] s0;
  input [7:0] p7;
  input [7:0] p6;
  input [7:0] p5;
  input [7:0] p4;
  input [7:0] p3;
  input [7:0] p2;
  input [7:0] p1;
  input [7:0] p0;
  input [7:0] check;
  output match;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30,
         n31, n32, n91, n92, n93, n94, n95, n96, n97, n98, n99, n100, n101,
         n102, n103, n104, n105, n106, n107, n108, n109, n110, n111, n112,
         n113, n114, n115, n116, n117, n118, n119, n120, n121, n122, n123,
         n124, n125, n126, n127, n128, n129, n130, n131, n132, n133, n134,
         n135, n136, n137, n138, n139, n140, n141, n142, n143, n144, n145,
         n146, n147, n148;

  NOR2X1 U2 ( .A(n148), .B(n147), .Y(match) );
  NAND4X1 U3 ( .A(n102), .B(n101), .C(n100), .D(n99), .Y(n148) );
  NAND4X1 U4 ( .A(n146), .B(n145), .C(n144), .D(n143), .Y(n147) );
  OAI21XL U5 ( .A0(n30), .A1(n29), .B0(check[2]), .Y(n100) );
  XNOR2X1 U6 ( .A(s7[7]), .B(p7[7]), .Y(n117) );
  OAI21XL U7 ( .A0(n122), .A1(n121), .B0(check[7]), .Y(n145) );
  NAND4X1 U8 ( .A(n116), .B(n115), .C(n114), .D(n113), .Y(n122) );
  NAND4X1 U9 ( .A(n120), .B(n119), .C(n118), .D(n117), .Y(n121) );
  XNOR2X1 U10 ( .A(s7[3]), .B(p7[3]), .Y(n113) );
  XNOR2X1 U11 ( .A(s7[6]), .B(p7[6]), .Y(n118) );
  XNOR2X1 U12 ( .A(s7[2]), .B(p7[2]), .Y(n114) );
  XNOR2X1 U13 ( .A(s7[5]), .B(p7[5]), .Y(n119) );
  XNOR2X1 U14 ( .A(s7[1]), .B(p7[1]), .Y(n115) );
  XNOR2X1 U15 ( .A(s7[0]), .B(p7[0]), .Y(n116) );
  XNOR2X1 U16 ( .A(s5[6]), .B(p5[6]), .Y(n138) );
  OAI21XL U17 ( .A0(n142), .A1(n141), .B0(check[5]), .Y(n143) );
  NAND4X1 U18 ( .A(n136), .B(n135), .C(n134), .D(n133), .Y(n142) );
  NAND4X1 U19 ( .A(n140), .B(n139), .C(n138), .D(n137), .Y(n141) );
  XNOR2X1 U20 ( .A(s5[0]), .B(p5[0]), .Y(n136) );
  XNOR2X1 U21 ( .A(s6[7]), .B(p6[7]), .Y(n127) );
  OAI21XL U22 ( .A0(n132), .A1(n131), .B0(check[6]), .Y(n144) );
  NAND4X1 U23 ( .A(n126), .B(n125), .C(n124), .D(n123), .Y(n132) );
  NAND4X1 U24 ( .A(n130), .B(n129), .C(n128), .D(n127), .Y(n131) );
  XNOR2X1 U25 ( .A(s6[0]), .B(p6[0]), .Y(n126) );
  XNOR2X1 U26 ( .A(s5[3]), .B(p5[3]), .Y(n133) );
  XNOR2X1 U27 ( .A(s5[5]), .B(p5[5]), .Y(n139) );
  XNOR2X1 U28 ( .A(s5[2]), .B(p5[2]), .Y(n134) );
  XNOR2X1 U29 ( .A(s5[4]), .B(p5[4]), .Y(n140) );
  XNOR2X1 U30 ( .A(s5[1]), .B(p5[1]), .Y(n135) );
  XNOR2X1 U31 ( .A(s3[7]), .B(p3[7]), .Y(n15) );
  OAI21XL U32 ( .A0(n20), .A1(n19), .B0(check[3]), .Y(n101) );
  NAND4X1 U33 ( .A(n14), .B(n13), .C(n12), .D(n11), .Y(n20) );
  NAND4X1 U34 ( .A(n18), .B(n17), .C(n16), .D(n15), .Y(n19) );
  XNOR2X1 U35 ( .A(s3[0]), .B(p3[0]), .Y(n14) );
  XNOR2X1 U36 ( .A(s4[7]), .B(p4[7]), .Y(n5) );
  OAI21XL U37 ( .A0(n10), .A1(n9), .B0(check[4]), .Y(n102) );
  NAND4X1 U38 ( .A(n4), .B(n3), .C(n2), .D(n1), .Y(n10) );
  NAND4X1 U39 ( .A(n8), .B(n7), .C(n6), .D(n5), .Y(n9) );
  XNOR2X1 U40 ( .A(s4[0]), .B(p4[0]), .Y(n4) );
  XNOR2X1 U41 ( .A(s4[6]), .B(p4[6]), .Y(n6) );
  XNOR2X1 U42 ( .A(s4[3]), .B(p4[3]), .Y(n1) );
  XNOR2X1 U43 ( .A(s4[5]), .B(p4[5]), .Y(n7) );
  XNOR2X1 U44 ( .A(s4[2]), .B(p4[2]), .Y(n2) );
  XNOR2X1 U45 ( .A(s4[4]), .B(p4[4]), .Y(n8) );
  XNOR2X1 U46 ( .A(s4[1]), .B(p4[1]), .Y(n3) );
  XNOR2X1 U47 ( .A(s0[2]), .B(p0[2]), .Y(n104) );
  OAI21XL U48 ( .A0(n112), .A1(n111), .B0(check[0]), .Y(n146) );
  NAND4X1 U49 ( .A(n110), .B(n109), .C(n108), .D(n107), .Y(n111) );
  NAND4X1 U50 ( .A(n106), .B(n105), .C(n104), .D(n103), .Y(n112) );
  XNOR2X1 U51 ( .A(s0[4]), .B(p0[4]), .Y(n110) );
  XNOR2X1 U52 ( .A(s7[4]), .B(p7[4]), .Y(n120) );
  XNOR2X1 U53 ( .A(s0[1]), .B(p0[1]), .Y(n105) );
  XNOR2X1 U54 ( .A(s5[7]), .B(p5[7]), .Y(n137) );
  XNOR2X1 U55 ( .A(s0[0]), .B(p0[0]), .Y(n106) );
  XNOR2X1 U56 ( .A(s1[7]), .B(p1[7]), .Y(n93) );
  OAI21XL U57 ( .A0(n98), .A1(n97), .B0(check[1]), .Y(n99) );
  NAND4X1 U58 ( .A(n92), .B(n91), .C(n32), .D(n31), .Y(n98) );
  NAND4X1 U59 ( .A(n96), .B(n95), .C(n94), .D(n93), .Y(n97) );
  XNOR2X1 U60 ( .A(s1[0]), .B(p1[0]), .Y(n92) );
  XNOR2X1 U61 ( .A(s6[6]), .B(p6[6]), .Y(n128) );
  XNOR2X1 U62 ( .A(s2[7]), .B(p2[7]), .Y(n25) );
  NAND4X1 U63 ( .A(n28), .B(n27), .C(n26), .D(n25), .Y(n29) );
  XNOR2X1 U64 ( .A(s2[4]), .B(p2[4]), .Y(n28) );
  XNOR2X1 U65 ( .A(s2[5]), .B(p2[5]), .Y(n27) );
  XNOR2X1 U66 ( .A(s2[6]), .B(p2[6]), .Y(n26) );
  XNOR2X1 U67 ( .A(s1[6]), .B(p1[6]), .Y(n94) );
  XNOR2X1 U68 ( .A(s6[3]), .B(p6[3]), .Y(n123) );
  XNOR2X1 U69 ( .A(s1[3]), .B(p1[3]), .Y(n31) );
  XNOR2X1 U70 ( .A(s6[5]), .B(p6[5]), .Y(n129) );
  XNOR2X1 U71 ( .A(s0[7]), .B(p0[7]), .Y(n107) );
  XNOR2X1 U72 ( .A(s1[5]), .B(p1[5]), .Y(n95) );
  XNOR2X1 U73 ( .A(s6[2]), .B(p6[2]), .Y(n124) );
  XNOR2X1 U74 ( .A(s2[3]), .B(p2[3]), .Y(n21) );
  XNOR2X1 U75 ( .A(s1[2]), .B(p1[2]), .Y(n32) );
  NAND4X1 U76 ( .A(n24), .B(n23), .C(n22), .D(n21), .Y(n30) );
  XNOR2X1 U77 ( .A(s2[0]), .B(p2[0]), .Y(n24) );
  XNOR2X1 U78 ( .A(s2[1]), .B(p2[1]), .Y(n23) );
  XNOR2X1 U79 ( .A(s2[2]), .B(p2[2]), .Y(n22) );
  XNOR2X1 U80 ( .A(s6[4]), .B(p6[4]), .Y(n130) );
  XNOR2X1 U81 ( .A(s0[6]), .B(p0[6]), .Y(n108) );
  XNOR2X1 U82 ( .A(s1[4]), .B(p1[4]), .Y(n96) );
  XNOR2X1 U83 ( .A(s3[6]), .B(p3[6]), .Y(n16) );
  XNOR2X1 U84 ( .A(s6[1]), .B(p6[1]), .Y(n125) );
  XNOR2X1 U85 ( .A(s0[5]), .B(p0[5]), .Y(n109) );
  XNOR2X1 U86 ( .A(s0[3]), .B(p0[3]), .Y(n103) );
  XNOR2X1 U87 ( .A(s1[1]), .B(p1[1]), .Y(n91) );
  XNOR2X1 U88 ( .A(s3[3]), .B(p3[3]), .Y(n11) );
  XNOR2X1 U89 ( .A(s3[5]), .B(p3[5]), .Y(n17) );
  XNOR2X1 U90 ( .A(s3[2]), .B(p3[2]), .Y(n12) );
  XNOR2X1 U91 ( .A(s3[4]), .B(p3[4]), .Y(n18) );
  XNOR2X1 U92 ( .A(s3[1]), .B(p3[1]), .Y(n13) );
endmodule


module Pattern_String_Comparator_Cell_19 ( s7, s6, s5, s4, s3, s2, s1, s0, p7, 
        p6, p5, p4, p3, p2, p1, p0, check, match );
  input [7:0] s7;
  input [7:0] s6;
  input [7:0] s5;
  input [7:0] s4;
  input [7:0] s3;
  input [7:0] s2;
  input [7:0] s1;
  input [7:0] s0;
  input [7:0] p7;
  input [7:0] p6;
  input [7:0] p5;
  input [7:0] p4;
  input [7:0] p3;
  input [7:0] p2;
  input [7:0] p1;
  input [7:0] p0;
  input [7:0] check;
  output match;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30,
         n31, n32, n91, n92, n93, n94, n95, n96, n97, n98, n99, n100, n101,
         n102, n103, n104, n105, n106, n107, n108, n109, n110, n111, n112,
         n113, n114, n115, n116, n117, n118, n119, n120, n121, n122, n123,
         n124, n125, n126, n127, n128, n129, n130, n131, n132, n133, n134,
         n135, n136, n137, n138, n139, n140, n141, n142, n143, n144, n145,
         n146, n147, n148;

  NOR2X1 U2 ( .A(n148), .B(n147), .Y(match) );
  NAND4X1 U3 ( .A(n102), .B(n101), .C(n100), .D(n99), .Y(n148) );
  NAND4X1 U4 ( .A(n146), .B(n145), .C(n144), .D(n143), .Y(n147) );
  OAI21XL U5 ( .A0(n30), .A1(n29), .B0(check[2]), .Y(n100) );
  XNOR2X1 U6 ( .A(s7[7]), .B(p7[7]), .Y(n117) );
  OAI21XL U7 ( .A0(n122), .A1(n121), .B0(check[7]), .Y(n145) );
  NAND4X1 U8 ( .A(n116), .B(n115), .C(n114), .D(n113), .Y(n122) );
  NAND4X1 U9 ( .A(n120), .B(n119), .C(n118), .D(n117), .Y(n121) );
  XNOR2X1 U10 ( .A(s7[3]), .B(p7[3]), .Y(n113) );
  XNOR2X1 U11 ( .A(s7[6]), .B(p7[6]), .Y(n118) );
  XNOR2X1 U12 ( .A(s7[2]), .B(p7[2]), .Y(n114) );
  XNOR2X1 U13 ( .A(s7[5]), .B(p7[5]), .Y(n119) );
  XNOR2X1 U14 ( .A(s7[1]), .B(p7[1]), .Y(n115) );
  XNOR2X1 U15 ( .A(s7[0]), .B(p7[0]), .Y(n116) );
  XNOR2X1 U16 ( .A(s5[6]), .B(p5[6]), .Y(n138) );
  OAI21XL U17 ( .A0(n142), .A1(n141), .B0(check[5]), .Y(n143) );
  NAND4X1 U18 ( .A(n136), .B(n135), .C(n134), .D(n133), .Y(n142) );
  NAND4X1 U19 ( .A(n140), .B(n139), .C(n138), .D(n137), .Y(n141) );
  XNOR2X1 U20 ( .A(s5[0]), .B(p5[0]), .Y(n136) );
  XNOR2X1 U21 ( .A(s6[7]), .B(p6[7]), .Y(n127) );
  OAI21XL U22 ( .A0(n132), .A1(n131), .B0(check[6]), .Y(n144) );
  NAND4X1 U23 ( .A(n126), .B(n125), .C(n124), .D(n123), .Y(n132) );
  NAND4X1 U24 ( .A(n130), .B(n129), .C(n128), .D(n127), .Y(n131) );
  XNOR2X1 U25 ( .A(s6[0]), .B(p6[0]), .Y(n126) );
  XNOR2X1 U26 ( .A(s5[3]), .B(p5[3]), .Y(n133) );
  XNOR2X1 U27 ( .A(s5[5]), .B(p5[5]), .Y(n139) );
  XNOR2X1 U28 ( .A(s5[2]), .B(p5[2]), .Y(n134) );
  XNOR2X1 U29 ( .A(s5[4]), .B(p5[4]), .Y(n140) );
  XNOR2X1 U30 ( .A(s5[1]), .B(p5[1]), .Y(n135) );
  XNOR2X1 U31 ( .A(s3[7]), .B(p3[7]), .Y(n15) );
  OAI21XL U32 ( .A0(n20), .A1(n19), .B0(check[3]), .Y(n101) );
  NAND4X1 U33 ( .A(n14), .B(n13), .C(n12), .D(n11), .Y(n20) );
  NAND4X1 U34 ( .A(n18), .B(n17), .C(n16), .D(n15), .Y(n19) );
  XNOR2X1 U35 ( .A(s3[0]), .B(p3[0]), .Y(n14) );
  XNOR2X1 U36 ( .A(s4[7]), .B(p4[7]), .Y(n5) );
  OAI21XL U37 ( .A0(n10), .A1(n9), .B0(check[4]), .Y(n102) );
  NAND4X1 U38 ( .A(n4), .B(n3), .C(n2), .D(n1), .Y(n10) );
  NAND4X1 U39 ( .A(n8), .B(n7), .C(n6), .D(n5), .Y(n9) );
  XNOR2X1 U40 ( .A(s4[0]), .B(p4[0]), .Y(n4) );
  XNOR2X1 U41 ( .A(s4[6]), .B(p4[6]), .Y(n6) );
  XNOR2X1 U42 ( .A(s4[3]), .B(p4[3]), .Y(n1) );
  XNOR2X1 U43 ( .A(s4[5]), .B(p4[5]), .Y(n7) );
  XNOR2X1 U44 ( .A(s4[2]), .B(p4[2]), .Y(n2) );
  XNOR2X1 U45 ( .A(s4[4]), .B(p4[4]), .Y(n8) );
  XNOR2X1 U46 ( .A(s4[1]), .B(p4[1]), .Y(n3) );
  XNOR2X1 U47 ( .A(s0[2]), .B(p0[2]), .Y(n104) );
  OAI21XL U48 ( .A0(n112), .A1(n111), .B0(check[0]), .Y(n146) );
  NAND4X1 U49 ( .A(n110), .B(n109), .C(n108), .D(n107), .Y(n111) );
  NAND4X1 U50 ( .A(n106), .B(n105), .C(n104), .D(n103), .Y(n112) );
  XNOR2X1 U51 ( .A(s0[4]), .B(p0[4]), .Y(n110) );
  XNOR2X1 U52 ( .A(s7[4]), .B(p7[4]), .Y(n120) );
  XNOR2X1 U53 ( .A(s0[1]), .B(p0[1]), .Y(n105) );
  XNOR2X1 U54 ( .A(s5[7]), .B(p5[7]), .Y(n137) );
  XNOR2X1 U55 ( .A(s0[0]), .B(p0[0]), .Y(n106) );
  XNOR2X1 U56 ( .A(s1[7]), .B(p1[7]), .Y(n93) );
  OAI21XL U57 ( .A0(n98), .A1(n97), .B0(check[1]), .Y(n99) );
  NAND4X1 U58 ( .A(n92), .B(n91), .C(n32), .D(n31), .Y(n98) );
  NAND4X1 U59 ( .A(n96), .B(n95), .C(n94), .D(n93), .Y(n97) );
  XNOR2X1 U60 ( .A(s1[0]), .B(p1[0]), .Y(n92) );
  XNOR2X1 U61 ( .A(s6[6]), .B(p6[6]), .Y(n128) );
  XNOR2X1 U62 ( .A(s2[7]), .B(p2[7]), .Y(n25) );
  XNOR2X1 U63 ( .A(s1[6]), .B(p1[6]), .Y(n94) );
  NAND4X1 U64 ( .A(n28), .B(n27), .C(n26), .D(n25), .Y(n29) );
  XNOR2X1 U65 ( .A(s2[4]), .B(p2[4]), .Y(n28) );
  XNOR2X1 U66 ( .A(s2[5]), .B(p2[5]), .Y(n27) );
  XNOR2X1 U67 ( .A(s2[6]), .B(p2[6]), .Y(n26) );
  XNOR2X1 U68 ( .A(s6[3]), .B(p6[3]), .Y(n123) );
  XNOR2X1 U69 ( .A(s1[3]), .B(p1[3]), .Y(n31) );
  XNOR2X1 U70 ( .A(s6[5]), .B(p6[5]), .Y(n129) );
  XNOR2X1 U71 ( .A(s0[7]), .B(p0[7]), .Y(n107) );
  XNOR2X1 U72 ( .A(s1[5]), .B(p1[5]), .Y(n95) );
  XNOR2X1 U73 ( .A(s6[2]), .B(p6[2]), .Y(n124) );
  XNOR2X1 U74 ( .A(s2[3]), .B(p2[3]), .Y(n21) );
  XNOR2X1 U75 ( .A(s1[2]), .B(p1[2]), .Y(n32) );
  NAND4X1 U76 ( .A(n24), .B(n23), .C(n22), .D(n21), .Y(n30) );
  XNOR2X1 U77 ( .A(s2[0]), .B(p2[0]), .Y(n24) );
  XNOR2X1 U78 ( .A(s2[1]), .B(p2[1]), .Y(n23) );
  XNOR2X1 U79 ( .A(s2[2]), .B(p2[2]), .Y(n22) );
  XNOR2X1 U80 ( .A(s6[4]), .B(p6[4]), .Y(n130) );
  XNOR2X1 U81 ( .A(s0[6]), .B(p0[6]), .Y(n108) );
  XNOR2X1 U82 ( .A(s1[4]), .B(p1[4]), .Y(n96) );
  XNOR2X1 U83 ( .A(s3[6]), .B(p3[6]), .Y(n16) );
  XNOR2X1 U84 ( .A(s6[1]), .B(p6[1]), .Y(n125) );
  XNOR2X1 U85 ( .A(s0[5]), .B(p0[5]), .Y(n109) );
  XNOR2X1 U86 ( .A(s0[3]), .B(p0[3]), .Y(n103) );
  XNOR2X1 U87 ( .A(s1[1]), .B(p1[1]), .Y(n91) );
  XNOR2X1 U88 ( .A(s3[3]), .B(p3[3]), .Y(n11) );
  XNOR2X1 U89 ( .A(s3[5]), .B(p3[5]), .Y(n17) );
  XNOR2X1 U90 ( .A(s3[2]), .B(p3[2]), .Y(n12) );
  XNOR2X1 U91 ( .A(s3[4]), .B(p3[4]), .Y(n18) );
  XNOR2X1 U92 ( .A(s3[1]), .B(p3[1]), .Y(n13) );
endmodule


module Pattern_String_Comparator_Cell_18 ( s7, s6, s5, s4, s3, s2, s1, s0, p7, 
        p6, p5, p4, p3, p2, p1, p0, check, match );
  input [7:0] s7;
  input [7:0] s6;
  input [7:0] s5;
  input [7:0] s4;
  input [7:0] s3;
  input [7:0] s2;
  input [7:0] s1;
  input [7:0] s0;
  input [7:0] p7;
  input [7:0] p6;
  input [7:0] p5;
  input [7:0] p4;
  input [7:0] p3;
  input [7:0] p2;
  input [7:0] p1;
  input [7:0] p0;
  input [7:0] check;
  output match;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30,
         n31, n32, n91, n92, n93, n94, n95, n96, n97, n98, n99, n100, n101,
         n102, n103, n104, n105, n106, n107, n108, n109, n110, n111, n112,
         n113, n114, n115, n116, n117, n118, n119, n120, n121, n122, n123,
         n124, n125, n126, n127, n128, n129, n130, n131, n132, n133, n134,
         n135, n136, n137, n138, n139, n140, n141, n142, n143, n144, n145,
         n146, n147, n148;

  NOR2X1 U2 ( .A(n148), .B(n147), .Y(match) );
  NAND4X1 U3 ( .A(n102), .B(n101), .C(n100), .D(n99), .Y(n148) );
  NAND4X1 U4 ( .A(n146), .B(n145), .C(n144), .D(n143), .Y(n147) );
  OAI21XL U5 ( .A0(n30), .A1(n29), .B0(check[2]), .Y(n100) );
  XNOR2X1 U6 ( .A(s7[7]), .B(p7[7]), .Y(n117) );
  OAI21XL U7 ( .A0(n122), .A1(n121), .B0(check[7]), .Y(n145) );
  NAND4X1 U8 ( .A(n116), .B(n115), .C(n114), .D(n113), .Y(n122) );
  NAND4X1 U9 ( .A(n120), .B(n119), .C(n118), .D(n117), .Y(n121) );
  XNOR2X1 U10 ( .A(s7[3]), .B(p7[3]), .Y(n113) );
  XNOR2X1 U11 ( .A(s7[6]), .B(p7[6]), .Y(n118) );
  XNOR2X1 U12 ( .A(s7[2]), .B(p7[2]), .Y(n114) );
  XNOR2X1 U13 ( .A(s7[5]), .B(p7[5]), .Y(n119) );
  XNOR2X1 U14 ( .A(s7[1]), .B(p7[1]), .Y(n115) );
  XNOR2X1 U15 ( .A(s7[0]), .B(p7[0]), .Y(n116) );
  XNOR2X1 U16 ( .A(s5[6]), .B(p5[6]), .Y(n138) );
  OAI21XL U17 ( .A0(n142), .A1(n141), .B0(check[5]), .Y(n143) );
  NAND4X1 U18 ( .A(n136), .B(n135), .C(n134), .D(n133), .Y(n142) );
  NAND4X1 U19 ( .A(n140), .B(n139), .C(n138), .D(n137), .Y(n141) );
  XNOR2X1 U20 ( .A(s5[0]), .B(p5[0]), .Y(n136) );
  XNOR2X1 U21 ( .A(s6[7]), .B(p6[7]), .Y(n127) );
  OAI21XL U22 ( .A0(n132), .A1(n131), .B0(check[6]), .Y(n144) );
  NAND4X1 U23 ( .A(n126), .B(n125), .C(n124), .D(n123), .Y(n132) );
  NAND4X1 U24 ( .A(n130), .B(n129), .C(n128), .D(n127), .Y(n131) );
  XNOR2X1 U25 ( .A(s6[0]), .B(p6[0]), .Y(n126) );
  XNOR2X1 U26 ( .A(s5[3]), .B(p5[3]), .Y(n133) );
  XNOR2X1 U27 ( .A(s5[5]), .B(p5[5]), .Y(n139) );
  XNOR2X1 U28 ( .A(s5[2]), .B(p5[2]), .Y(n134) );
  XNOR2X1 U29 ( .A(s5[4]), .B(p5[4]), .Y(n140) );
  XNOR2X1 U30 ( .A(s5[1]), .B(p5[1]), .Y(n135) );
  XNOR2X1 U31 ( .A(s3[7]), .B(p3[7]), .Y(n15) );
  OAI21XL U32 ( .A0(n20), .A1(n19), .B0(check[3]), .Y(n101) );
  NAND4X1 U33 ( .A(n14), .B(n13), .C(n12), .D(n11), .Y(n20) );
  NAND4X1 U34 ( .A(n18), .B(n17), .C(n16), .D(n15), .Y(n19) );
  XNOR2X1 U35 ( .A(s3[0]), .B(p3[0]), .Y(n14) );
  XNOR2X1 U36 ( .A(s4[7]), .B(p4[7]), .Y(n5) );
  OAI21XL U37 ( .A0(n10), .A1(n9), .B0(check[4]), .Y(n102) );
  NAND4X1 U38 ( .A(n4), .B(n3), .C(n2), .D(n1), .Y(n10) );
  NAND4X1 U39 ( .A(n8), .B(n7), .C(n6), .D(n5), .Y(n9) );
  XNOR2X1 U40 ( .A(s4[0]), .B(p4[0]), .Y(n4) );
  XNOR2X1 U41 ( .A(s4[6]), .B(p4[6]), .Y(n6) );
  XNOR2X1 U42 ( .A(s4[3]), .B(p4[3]), .Y(n1) );
  XNOR2X1 U43 ( .A(s4[5]), .B(p4[5]), .Y(n7) );
  XNOR2X1 U44 ( .A(s4[2]), .B(p4[2]), .Y(n2) );
  XNOR2X1 U45 ( .A(s4[4]), .B(p4[4]), .Y(n8) );
  XNOR2X1 U46 ( .A(s4[1]), .B(p4[1]), .Y(n3) );
  XNOR2X1 U47 ( .A(s0[2]), .B(p0[2]), .Y(n104) );
  OAI21XL U48 ( .A0(n112), .A1(n111), .B0(check[0]), .Y(n146) );
  NAND4X1 U49 ( .A(n110), .B(n109), .C(n108), .D(n107), .Y(n111) );
  NAND4X1 U50 ( .A(n106), .B(n105), .C(n104), .D(n103), .Y(n112) );
  XNOR2X1 U51 ( .A(s0[4]), .B(p0[4]), .Y(n110) );
  XNOR2X1 U52 ( .A(s7[4]), .B(p7[4]), .Y(n120) );
  XNOR2X1 U53 ( .A(s0[1]), .B(p0[1]), .Y(n105) );
  XNOR2X1 U54 ( .A(s5[7]), .B(p5[7]), .Y(n137) );
  XNOR2X1 U55 ( .A(s0[0]), .B(p0[0]), .Y(n106) );
  XNOR2X1 U56 ( .A(s1[7]), .B(p1[7]), .Y(n93) );
  OAI21XL U57 ( .A0(n98), .A1(n97), .B0(check[1]), .Y(n99) );
  NAND4X1 U58 ( .A(n92), .B(n91), .C(n32), .D(n31), .Y(n98) );
  NAND4X1 U59 ( .A(n96), .B(n95), .C(n94), .D(n93), .Y(n97) );
  XNOR2X1 U60 ( .A(s1[0]), .B(p1[0]), .Y(n92) );
  XNOR2X1 U61 ( .A(s6[6]), .B(p6[6]), .Y(n128) );
  XNOR2X1 U62 ( .A(s2[7]), .B(p2[7]), .Y(n25) );
  XNOR2X1 U63 ( .A(s1[6]), .B(p1[6]), .Y(n94) );
  NAND4X1 U64 ( .A(n28), .B(n27), .C(n26), .D(n25), .Y(n29) );
  XNOR2X1 U65 ( .A(s2[4]), .B(p2[4]), .Y(n28) );
  XNOR2X1 U66 ( .A(s2[5]), .B(p2[5]), .Y(n27) );
  XNOR2X1 U67 ( .A(s2[6]), .B(p2[6]), .Y(n26) );
  XNOR2X1 U68 ( .A(s6[3]), .B(p6[3]), .Y(n123) );
  XNOR2X1 U69 ( .A(s1[3]), .B(p1[3]), .Y(n31) );
  XNOR2X1 U70 ( .A(s6[5]), .B(p6[5]), .Y(n129) );
  XNOR2X1 U71 ( .A(s0[7]), .B(p0[7]), .Y(n107) );
  XNOR2X1 U72 ( .A(s1[5]), .B(p1[5]), .Y(n95) );
  XNOR2X1 U73 ( .A(s6[2]), .B(p6[2]), .Y(n124) );
  XNOR2X1 U74 ( .A(s2[3]), .B(p2[3]), .Y(n21) );
  XNOR2X1 U75 ( .A(s1[2]), .B(p1[2]), .Y(n32) );
  NAND4X1 U76 ( .A(n24), .B(n23), .C(n22), .D(n21), .Y(n30) );
  XNOR2X1 U77 ( .A(s2[0]), .B(p2[0]), .Y(n24) );
  XNOR2X1 U78 ( .A(s2[1]), .B(p2[1]), .Y(n23) );
  XNOR2X1 U79 ( .A(s2[2]), .B(p2[2]), .Y(n22) );
  XNOR2X1 U80 ( .A(s6[4]), .B(p6[4]), .Y(n130) );
  XNOR2X1 U81 ( .A(s0[6]), .B(p0[6]), .Y(n108) );
  XNOR2X1 U82 ( .A(s1[4]), .B(p1[4]), .Y(n96) );
  XNOR2X1 U83 ( .A(s3[6]), .B(p3[6]), .Y(n16) );
  XNOR2X1 U84 ( .A(s6[1]), .B(p6[1]), .Y(n125) );
  XNOR2X1 U85 ( .A(s0[5]), .B(p0[5]), .Y(n109) );
  XNOR2X1 U86 ( .A(s0[3]), .B(p0[3]), .Y(n103) );
  XNOR2X1 U87 ( .A(s1[1]), .B(p1[1]), .Y(n91) );
  XNOR2X1 U88 ( .A(s3[3]), .B(p3[3]), .Y(n11) );
  XNOR2X1 U89 ( .A(s3[5]), .B(p3[5]), .Y(n17) );
  XNOR2X1 U90 ( .A(s3[2]), .B(p3[2]), .Y(n12) );
  XNOR2X1 U91 ( .A(s3[4]), .B(p3[4]), .Y(n18) );
  XNOR2X1 U92 ( .A(s3[1]), .B(p3[1]), .Y(n13) );
endmodule


module Pattern_String_Comparator_Cell_17 ( s7, s6, s5, s4, s3, s2, s1, s0, p7, 
        p6, p5, p4, p3, p2, p1, p0, check, match );
  input [7:0] s7;
  input [7:0] s6;
  input [7:0] s5;
  input [7:0] s4;
  input [7:0] s3;
  input [7:0] s2;
  input [7:0] s1;
  input [7:0] s0;
  input [7:0] p7;
  input [7:0] p6;
  input [7:0] p5;
  input [7:0] p4;
  input [7:0] p3;
  input [7:0] p2;
  input [7:0] p1;
  input [7:0] p0;
  input [7:0] check;
  output match;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30,
         n31, n32, n91, n92, n93, n94, n95, n96, n97, n98, n99, n100, n101,
         n102, n103, n104, n105, n106, n107, n108, n109, n110, n111, n112,
         n113, n114, n115, n116, n117, n118, n119, n120, n121, n122, n123,
         n124, n125, n126, n127, n128, n129, n130, n131, n132, n133, n134,
         n135, n136, n137, n138, n139, n140, n141, n142, n143, n144, n145,
         n146, n147, n148;

  NOR2X1 U2 ( .A(n148), .B(n147), .Y(match) );
  NAND4X1 U3 ( .A(n102), .B(n101), .C(n100), .D(n99), .Y(n148) );
  NAND4X1 U4 ( .A(n146), .B(n145), .C(n144), .D(n143), .Y(n147) );
  OAI21XL U5 ( .A0(n30), .A1(n29), .B0(check[2]), .Y(n100) );
  XNOR2X1 U6 ( .A(s7[7]), .B(p7[7]), .Y(n117) );
  OAI21XL U7 ( .A0(n122), .A1(n121), .B0(check[7]), .Y(n145) );
  NAND4X1 U8 ( .A(n116), .B(n115), .C(n114), .D(n113), .Y(n122) );
  NAND4X1 U9 ( .A(n120), .B(n119), .C(n118), .D(n117), .Y(n121) );
  XNOR2X1 U10 ( .A(s7[3]), .B(p7[3]), .Y(n113) );
  XNOR2X1 U11 ( .A(s7[6]), .B(p7[6]), .Y(n118) );
  XNOR2X1 U12 ( .A(s7[2]), .B(p7[2]), .Y(n114) );
  XNOR2X1 U13 ( .A(s7[5]), .B(p7[5]), .Y(n119) );
  XNOR2X1 U14 ( .A(s7[1]), .B(p7[1]), .Y(n115) );
  XNOR2X1 U15 ( .A(s7[0]), .B(p7[0]), .Y(n116) );
  XNOR2X1 U16 ( .A(s5[6]), .B(p5[6]), .Y(n138) );
  OAI21XL U17 ( .A0(n142), .A1(n141), .B0(check[5]), .Y(n143) );
  NAND4X1 U18 ( .A(n136), .B(n135), .C(n134), .D(n133), .Y(n142) );
  NAND4X1 U19 ( .A(n140), .B(n139), .C(n138), .D(n137), .Y(n141) );
  XNOR2X1 U20 ( .A(s5[0]), .B(p5[0]), .Y(n136) );
  XNOR2X1 U21 ( .A(s6[7]), .B(p6[7]), .Y(n127) );
  OAI21XL U22 ( .A0(n132), .A1(n131), .B0(check[6]), .Y(n144) );
  NAND4X1 U23 ( .A(n126), .B(n125), .C(n124), .D(n123), .Y(n132) );
  NAND4X1 U24 ( .A(n130), .B(n129), .C(n128), .D(n127), .Y(n131) );
  XNOR2X1 U25 ( .A(s6[0]), .B(p6[0]), .Y(n126) );
  XNOR2X1 U26 ( .A(s5[3]), .B(p5[3]), .Y(n133) );
  XNOR2X1 U27 ( .A(s5[5]), .B(p5[5]), .Y(n139) );
  XNOR2X1 U28 ( .A(s5[2]), .B(p5[2]), .Y(n134) );
  XNOR2X1 U29 ( .A(s5[4]), .B(p5[4]), .Y(n140) );
  XNOR2X1 U30 ( .A(s5[1]), .B(p5[1]), .Y(n135) );
  XNOR2X1 U31 ( .A(s3[7]), .B(p3[7]), .Y(n15) );
  OAI21XL U32 ( .A0(n20), .A1(n19), .B0(check[3]), .Y(n101) );
  NAND4X1 U33 ( .A(n14), .B(n13), .C(n12), .D(n11), .Y(n20) );
  NAND4X1 U34 ( .A(n18), .B(n17), .C(n16), .D(n15), .Y(n19) );
  XNOR2X1 U35 ( .A(s3[0]), .B(p3[0]), .Y(n14) );
  XNOR2X1 U36 ( .A(s4[7]), .B(p4[7]), .Y(n5) );
  OAI21XL U37 ( .A0(n10), .A1(n9), .B0(check[4]), .Y(n102) );
  NAND4X1 U38 ( .A(n4), .B(n3), .C(n2), .D(n1), .Y(n10) );
  NAND4X1 U39 ( .A(n8), .B(n7), .C(n6), .D(n5), .Y(n9) );
  XNOR2X1 U40 ( .A(s4[0]), .B(p4[0]), .Y(n4) );
  XNOR2X1 U41 ( .A(s4[6]), .B(p4[6]), .Y(n6) );
  XNOR2X1 U42 ( .A(s4[3]), .B(p4[3]), .Y(n1) );
  XNOR2X1 U43 ( .A(s4[5]), .B(p4[5]), .Y(n7) );
  XNOR2X1 U44 ( .A(s4[2]), .B(p4[2]), .Y(n2) );
  XNOR2X1 U45 ( .A(s4[4]), .B(p4[4]), .Y(n8) );
  XNOR2X1 U46 ( .A(s4[1]), .B(p4[1]), .Y(n3) );
  XNOR2X1 U47 ( .A(s0[2]), .B(p0[2]), .Y(n104) );
  OAI21XL U48 ( .A0(n112), .A1(n111), .B0(check[0]), .Y(n146) );
  NAND4X1 U49 ( .A(n110), .B(n109), .C(n108), .D(n107), .Y(n111) );
  NAND4X1 U50 ( .A(n106), .B(n105), .C(n104), .D(n103), .Y(n112) );
  XNOR2X1 U51 ( .A(s0[4]), .B(p0[4]), .Y(n110) );
  XNOR2X1 U52 ( .A(s7[4]), .B(p7[4]), .Y(n120) );
  XNOR2X1 U53 ( .A(s0[1]), .B(p0[1]), .Y(n105) );
  XNOR2X1 U54 ( .A(s5[7]), .B(p5[7]), .Y(n137) );
  XNOR2X1 U55 ( .A(s0[0]), .B(p0[0]), .Y(n106) );
  XNOR2X1 U56 ( .A(s1[7]), .B(p1[7]), .Y(n93) );
  OAI21XL U57 ( .A0(n98), .A1(n97), .B0(check[1]), .Y(n99) );
  NAND4X1 U58 ( .A(n92), .B(n91), .C(n32), .D(n31), .Y(n98) );
  NAND4X1 U59 ( .A(n96), .B(n95), .C(n94), .D(n93), .Y(n97) );
  XNOR2X1 U60 ( .A(s1[0]), .B(p1[0]), .Y(n92) );
  XNOR2X1 U61 ( .A(s6[6]), .B(p6[6]), .Y(n128) );
  XNOR2X1 U62 ( .A(s2[7]), .B(p2[7]), .Y(n25) );
  XNOR2X1 U63 ( .A(s1[6]), .B(p1[6]), .Y(n94) );
  NAND4X1 U64 ( .A(n28), .B(n27), .C(n26), .D(n25), .Y(n29) );
  XNOR2X1 U65 ( .A(s2[4]), .B(p2[4]), .Y(n28) );
  XNOR2X1 U66 ( .A(s2[5]), .B(p2[5]), .Y(n27) );
  XNOR2X1 U67 ( .A(s2[6]), .B(p2[6]), .Y(n26) );
  XNOR2X1 U68 ( .A(s6[3]), .B(p6[3]), .Y(n123) );
  XNOR2X1 U69 ( .A(s1[3]), .B(p1[3]), .Y(n31) );
  XNOR2X1 U70 ( .A(s6[5]), .B(p6[5]), .Y(n129) );
  XNOR2X1 U71 ( .A(s0[7]), .B(p0[7]), .Y(n107) );
  XNOR2X1 U72 ( .A(s1[5]), .B(p1[5]), .Y(n95) );
  XNOR2X1 U73 ( .A(s6[2]), .B(p6[2]), .Y(n124) );
  XNOR2X1 U74 ( .A(s2[3]), .B(p2[3]), .Y(n21) );
  XNOR2X1 U75 ( .A(s1[2]), .B(p1[2]), .Y(n32) );
  NAND4X1 U76 ( .A(n24), .B(n23), .C(n22), .D(n21), .Y(n30) );
  XNOR2X1 U77 ( .A(s2[0]), .B(p2[0]), .Y(n24) );
  XNOR2X1 U78 ( .A(s2[1]), .B(p2[1]), .Y(n23) );
  XNOR2X1 U79 ( .A(s2[2]), .B(p2[2]), .Y(n22) );
  XNOR2X1 U80 ( .A(s6[4]), .B(p6[4]), .Y(n130) );
  XNOR2X1 U81 ( .A(s0[6]), .B(p0[6]), .Y(n108) );
  XNOR2X1 U82 ( .A(s1[4]), .B(p1[4]), .Y(n96) );
  XNOR2X1 U83 ( .A(s3[6]), .B(p3[6]), .Y(n16) );
  XNOR2X1 U84 ( .A(s6[1]), .B(p6[1]), .Y(n125) );
  XNOR2X1 U85 ( .A(s0[5]), .B(p0[5]), .Y(n109) );
  XNOR2X1 U86 ( .A(s0[3]), .B(p0[3]), .Y(n103) );
  XNOR2X1 U87 ( .A(s1[1]), .B(p1[1]), .Y(n91) );
  XNOR2X1 U88 ( .A(s3[3]), .B(p3[3]), .Y(n11) );
  XNOR2X1 U89 ( .A(s3[5]), .B(p3[5]), .Y(n17) );
  XNOR2X1 U90 ( .A(s3[2]), .B(p3[2]), .Y(n12) );
  XNOR2X1 U91 ( .A(s3[4]), .B(p3[4]), .Y(n18) );
  XNOR2X1 U92 ( .A(s3[1]), .B(p3[1]), .Y(n13) );
endmodule


module Pattern_String_Comparator_Cell_16 ( s7, s6, s5, s4, s3, s2, s1, s0, p7, 
        p6, p5, p4, p3, p2, p1, p0, check, match );
  input [7:0] s7;
  input [7:0] s6;
  input [7:0] s5;
  input [7:0] s4;
  input [7:0] s3;
  input [7:0] s2;
  input [7:0] s1;
  input [7:0] s0;
  input [7:0] p7;
  input [7:0] p6;
  input [7:0] p5;
  input [7:0] p4;
  input [7:0] p3;
  input [7:0] p2;
  input [7:0] p1;
  input [7:0] p0;
  input [7:0] check;
  output match;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30,
         n31, n32, n91, n92, n93, n94, n95, n96, n97, n98, n99, n100, n101,
         n102, n103, n104, n105, n106, n107, n108, n109, n110, n111, n112,
         n113, n114, n115, n116, n117, n118, n119, n120, n121, n122, n123,
         n124, n125, n126, n127, n128, n129, n130, n131, n132, n133, n134,
         n135, n136, n137, n138, n139, n140, n141, n142, n143, n144, n145,
         n146, n147, n148;

  NOR2X1 U2 ( .A(n148), .B(n147), .Y(match) );
  NAND4X1 U3 ( .A(n102), .B(n101), .C(n100), .D(n99), .Y(n148) );
  NAND4X1 U4 ( .A(n146), .B(n145), .C(n144), .D(n143), .Y(n147) );
  OAI21XL U5 ( .A0(n30), .A1(n29), .B0(check[2]), .Y(n100) );
  XNOR2X1 U6 ( .A(s7[7]), .B(p7[7]), .Y(n117) );
  OAI21XL U7 ( .A0(n122), .A1(n121), .B0(check[7]), .Y(n145) );
  NAND4X1 U8 ( .A(n116), .B(n115), .C(n114), .D(n113), .Y(n122) );
  NAND4X1 U9 ( .A(n120), .B(n119), .C(n118), .D(n117), .Y(n121) );
  XNOR2X1 U10 ( .A(s7[3]), .B(p7[3]), .Y(n113) );
  XNOR2X1 U11 ( .A(s7[6]), .B(p7[6]), .Y(n118) );
  XNOR2X1 U12 ( .A(s7[2]), .B(p7[2]), .Y(n114) );
  XNOR2X1 U13 ( .A(s7[5]), .B(p7[5]), .Y(n119) );
  XNOR2X1 U14 ( .A(s7[1]), .B(p7[1]), .Y(n115) );
  XNOR2X1 U15 ( .A(s7[0]), .B(p7[0]), .Y(n116) );
  XNOR2X1 U16 ( .A(s5[6]), .B(p5[6]), .Y(n138) );
  OAI21XL U17 ( .A0(n142), .A1(n141), .B0(check[5]), .Y(n143) );
  NAND4X1 U18 ( .A(n136), .B(n135), .C(n134), .D(n133), .Y(n142) );
  NAND4X1 U19 ( .A(n140), .B(n139), .C(n138), .D(n137), .Y(n141) );
  XNOR2X1 U20 ( .A(s5[0]), .B(p5[0]), .Y(n136) );
  XNOR2X1 U21 ( .A(s6[7]), .B(p6[7]), .Y(n127) );
  OAI21XL U22 ( .A0(n132), .A1(n131), .B0(check[6]), .Y(n144) );
  NAND4X1 U23 ( .A(n126), .B(n125), .C(n124), .D(n123), .Y(n132) );
  NAND4X1 U24 ( .A(n130), .B(n129), .C(n128), .D(n127), .Y(n131) );
  XNOR2X1 U25 ( .A(s6[0]), .B(p6[0]), .Y(n126) );
  XNOR2X1 U26 ( .A(s5[3]), .B(p5[3]), .Y(n133) );
  XNOR2X1 U27 ( .A(s5[5]), .B(p5[5]), .Y(n139) );
  XNOR2X1 U28 ( .A(s5[2]), .B(p5[2]), .Y(n134) );
  XNOR2X1 U29 ( .A(s5[4]), .B(p5[4]), .Y(n140) );
  XNOR2X1 U30 ( .A(s5[1]), .B(p5[1]), .Y(n135) );
  XNOR2X1 U31 ( .A(s3[7]), .B(p3[7]), .Y(n15) );
  OAI21XL U32 ( .A0(n20), .A1(n19), .B0(check[3]), .Y(n101) );
  NAND4X1 U33 ( .A(n14), .B(n13), .C(n12), .D(n11), .Y(n20) );
  NAND4X1 U34 ( .A(n18), .B(n17), .C(n16), .D(n15), .Y(n19) );
  XNOR2X1 U35 ( .A(s3[0]), .B(p3[0]), .Y(n14) );
  XNOR2X1 U36 ( .A(s4[7]), .B(p4[7]), .Y(n5) );
  OAI21XL U37 ( .A0(n10), .A1(n9), .B0(check[4]), .Y(n102) );
  NAND4X1 U38 ( .A(n4), .B(n3), .C(n2), .D(n1), .Y(n10) );
  NAND4X1 U39 ( .A(n8), .B(n7), .C(n6), .D(n5), .Y(n9) );
  XNOR2X1 U40 ( .A(s4[0]), .B(p4[0]), .Y(n4) );
  XNOR2X1 U41 ( .A(s4[6]), .B(p4[6]), .Y(n6) );
  XNOR2X1 U42 ( .A(s4[3]), .B(p4[3]), .Y(n1) );
  XNOR2X1 U43 ( .A(s4[5]), .B(p4[5]), .Y(n7) );
  XNOR2X1 U44 ( .A(s4[2]), .B(p4[2]), .Y(n2) );
  XNOR2X1 U45 ( .A(s4[4]), .B(p4[4]), .Y(n8) );
  XNOR2X1 U46 ( .A(s4[1]), .B(p4[1]), .Y(n3) );
  XNOR2X1 U47 ( .A(s0[2]), .B(p0[2]), .Y(n104) );
  OAI21XL U48 ( .A0(n112), .A1(n111), .B0(check[0]), .Y(n146) );
  NAND4X1 U49 ( .A(n110), .B(n109), .C(n108), .D(n107), .Y(n111) );
  NAND4X1 U50 ( .A(n106), .B(n105), .C(n104), .D(n103), .Y(n112) );
  XNOR2X1 U51 ( .A(s0[4]), .B(p0[4]), .Y(n110) );
  XNOR2X1 U52 ( .A(s7[4]), .B(p7[4]), .Y(n120) );
  XNOR2X1 U53 ( .A(s0[1]), .B(p0[1]), .Y(n105) );
  XNOR2X1 U54 ( .A(s5[7]), .B(p5[7]), .Y(n137) );
  XNOR2X1 U55 ( .A(s0[0]), .B(p0[0]), .Y(n106) );
  XNOR2X1 U56 ( .A(s1[7]), .B(p1[7]), .Y(n93) );
  OAI21XL U57 ( .A0(n98), .A1(n97), .B0(check[1]), .Y(n99) );
  NAND4X1 U58 ( .A(n92), .B(n91), .C(n32), .D(n31), .Y(n98) );
  NAND4X1 U59 ( .A(n96), .B(n95), .C(n94), .D(n93), .Y(n97) );
  XNOR2X1 U60 ( .A(s1[0]), .B(p1[0]), .Y(n92) );
  XNOR2X1 U61 ( .A(s6[6]), .B(p6[6]), .Y(n128) );
  XNOR2X1 U62 ( .A(s2[7]), .B(p2[7]), .Y(n25) );
  XNOR2X1 U63 ( .A(s1[6]), .B(p1[6]), .Y(n94) );
  NAND4X1 U64 ( .A(n28), .B(n27), .C(n26), .D(n25), .Y(n29) );
  XNOR2X1 U65 ( .A(s2[4]), .B(p2[4]), .Y(n28) );
  XNOR2X1 U66 ( .A(s2[5]), .B(p2[5]), .Y(n27) );
  XNOR2X1 U67 ( .A(s2[6]), .B(p2[6]), .Y(n26) );
  XNOR2X1 U68 ( .A(s6[3]), .B(p6[3]), .Y(n123) );
  XNOR2X1 U69 ( .A(s1[3]), .B(p1[3]), .Y(n31) );
  XNOR2X1 U70 ( .A(s6[5]), .B(p6[5]), .Y(n129) );
  XNOR2X1 U71 ( .A(s0[7]), .B(p0[7]), .Y(n107) );
  XNOR2X1 U72 ( .A(s1[5]), .B(p1[5]), .Y(n95) );
  XNOR2X1 U73 ( .A(s6[2]), .B(p6[2]), .Y(n124) );
  XNOR2X1 U74 ( .A(s2[3]), .B(p2[3]), .Y(n21) );
  XNOR2X1 U75 ( .A(s1[2]), .B(p1[2]), .Y(n32) );
  NAND4X1 U76 ( .A(n24), .B(n23), .C(n22), .D(n21), .Y(n30) );
  XNOR2X1 U77 ( .A(s2[0]), .B(p2[0]), .Y(n24) );
  XNOR2X1 U78 ( .A(s2[1]), .B(p2[1]), .Y(n23) );
  XNOR2X1 U79 ( .A(s2[2]), .B(p2[2]), .Y(n22) );
  XNOR2X1 U80 ( .A(s6[4]), .B(p6[4]), .Y(n130) );
  XNOR2X1 U81 ( .A(s0[6]), .B(p0[6]), .Y(n108) );
  XNOR2X1 U82 ( .A(s1[4]), .B(p1[4]), .Y(n96) );
  XNOR2X1 U83 ( .A(s3[6]), .B(p3[6]), .Y(n16) );
  XNOR2X1 U84 ( .A(s6[1]), .B(p6[1]), .Y(n125) );
  XNOR2X1 U85 ( .A(s0[5]), .B(p0[5]), .Y(n109) );
  XNOR2X1 U86 ( .A(s0[3]), .B(p0[3]), .Y(n103) );
  XNOR2X1 U87 ( .A(s1[1]), .B(p1[1]), .Y(n91) );
  XNOR2X1 U88 ( .A(s3[3]), .B(p3[3]), .Y(n11) );
  XNOR2X1 U89 ( .A(s3[5]), .B(p3[5]), .Y(n17) );
  XNOR2X1 U90 ( .A(s3[2]), .B(p3[2]), .Y(n12) );
  XNOR2X1 U91 ( .A(s3[4]), .B(p3[4]), .Y(n18) );
  XNOR2X1 U92 ( .A(s3[1]), .B(p3[1]), .Y(n13) );
endmodule


module Pattern_String_Comparator_Cell_15 ( s7, s6, s5, s4, s3, s2, s1, s0, p7, 
        p6, p5, p4, p3, p2, p1, p0, check, match );
  input [7:0] s7;
  input [7:0] s6;
  input [7:0] s5;
  input [7:0] s4;
  input [7:0] s3;
  input [7:0] s2;
  input [7:0] s1;
  input [7:0] s0;
  input [7:0] p7;
  input [7:0] p6;
  input [7:0] p5;
  input [7:0] p4;
  input [7:0] p3;
  input [7:0] p2;
  input [7:0] p1;
  input [7:0] p0;
  input [7:0] check;
  output match;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30,
         n31, n32, n91, n92, n93, n94, n95, n96, n97, n98, n99, n100, n101,
         n102, n103, n104, n105, n106, n107, n108, n109, n110, n111, n112,
         n113, n114, n115, n116, n117, n118, n119, n120, n121, n122, n123,
         n124, n125, n126, n127, n128, n129, n130, n131, n132, n133, n134,
         n135, n136, n137, n138, n139, n140, n141, n142, n143, n144, n145,
         n146, n147, n148;

  NOR2X1 U2 ( .A(n148), .B(n147), .Y(match) );
  NAND4X1 U3 ( .A(n102), .B(n101), .C(n100), .D(n99), .Y(n148) );
  NAND4X1 U4 ( .A(n146), .B(n145), .C(n144), .D(n143), .Y(n147) );
  OAI21XL U5 ( .A0(n30), .A1(n29), .B0(check[2]), .Y(n100) );
  XNOR2X1 U6 ( .A(s7[7]), .B(p7[7]), .Y(n117) );
  OAI21XL U7 ( .A0(n122), .A1(n121), .B0(check[7]), .Y(n145) );
  NAND4X1 U8 ( .A(n116), .B(n115), .C(n114), .D(n113), .Y(n122) );
  NAND4X1 U9 ( .A(n120), .B(n119), .C(n118), .D(n117), .Y(n121) );
  XNOR2X1 U10 ( .A(s7[3]), .B(p7[3]), .Y(n113) );
  XNOR2X1 U11 ( .A(s7[6]), .B(p7[6]), .Y(n118) );
  XNOR2X1 U12 ( .A(s7[2]), .B(p7[2]), .Y(n114) );
  XNOR2X1 U13 ( .A(s7[5]), .B(p7[5]), .Y(n119) );
  XNOR2X1 U14 ( .A(s7[1]), .B(p7[1]), .Y(n115) );
  XNOR2X1 U15 ( .A(s7[0]), .B(p7[0]), .Y(n116) );
  XNOR2X1 U16 ( .A(s5[6]), .B(p5[6]), .Y(n138) );
  OAI21XL U17 ( .A0(n142), .A1(n141), .B0(check[5]), .Y(n143) );
  NAND4X1 U18 ( .A(n136), .B(n135), .C(n134), .D(n133), .Y(n142) );
  NAND4X1 U19 ( .A(n140), .B(n139), .C(n138), .D(n137), .Y(n141) );
  XNOR2X1 U20 ( .A(s5[0]), .B(p5[0]), .Y(n136) );
  XNOR2X1 U21 ( .A(s6[7]), .B(p6[7]), .Y(n127) );
  OAI21XL U22 ( .A0(n132), .A1(n131), .B0(check[6]), .Y(n144) );
  NAND4X1 U23 ( .A(n126), .B(n125), .C(n124), .D(n123), .Y(n132) );
  NAND4X1 U24 ( .A(n130), .B(n129), .C(n128), .D(n127), .Y(n131) );
  XNOR2X1 U25 ( .A(s6[0]), .B(p6[0]), .Y(n126) );
  XNOR2X1 U26 ( .A(s5[3]), .B(p5[3]), .Y(n133) );
  XNOR2X1 U27 ( .A(s5[5]), .B(p5[5]), .Y(n139) );
  XNOR2X1 U28 ( .A(s5[2]), .B(p5[2]), .Y(n134) );
  XNOR2X1 U29 ( .A(s5[4]), .B(p5[4]), .Y(n140) );
  XNOR2X1 U30 ( .A(s5[1]), .B(p5[1]), .Y(n135) );
  XNOR2X1 U31 ( .A(s3[7]), .B(p3[7]), .Y(n15) );
  OAI21XL U32 ( .A0(n20), .A1(n19), .B0(check[3]), .Y(n101) );
  NAND4X1 U33 ( .A(n14), .B(n13), .C(n12), .D(n11), .Y(n20) );
  NAND4X1 U34 ( .A(n18), .B(n17), .C(n16), .D(n15), .Y(n19) );
  XNOR2X1 U35 ( .A(s3[0]), .B(p3[0]), .Y(n14) );
  XNOR2X1 U36 ( .A(s4[7]), .B(p4[7]), .Y(n5) );
  OAI21XL U37 ( .A0(n10), .A1(n9), .B0(check[4]), .Y(n102) );
  NAND4X1 U38 ( .A(n4), .B(n3), .C(n2), .D(n1), .Y(n10) );
  NAND4X1 U39 ( .A(n8), .B(n7), .C(n6), .D(n5), .Y(n9) );
  XNOR2X1 U40 ( .A(s4[0]), .B(p4[0]), .Y(n4) );
  XNOR2X1 U41 ( .A(s4[6]), .B(p4[6]), .Y(n6) );
  XNOR2X1 U42 ( .A(s4[3]), .B(p4[3]), .Y(n1) );
  XNOR2X1 U43 ( .A(s4[5]), .B(p4[5]), .Y(n7) );
  XNOR2X1 U44 ( .A(s4[2]), .B(p4[2]), .Y(n2) );
  XNOR2X1 U45 ( .A(s4[4]), .B(p4[4]), .Y(n8) );
  XNOR2X1 U46 ( .A(s4[1]), .B(p4[1]), .Y(n3) );
  XNOR2X1 U47 ( .A(s0[2]), .B(p0[2]), .Y(n104) );
  OAI21XL U48 ( .A0(n112), .A1(n111), .B0(check[0]), .Y(n146) );
  NAND4X1 U49 ( .A(n110), .B(n109), .C(n108), .D(n107), .Y(n111) );
  NAND4X1 U50 ( .A(n106), .B(n105), .C(n104), .D(n103), .Y(n112) );
  XNOR2X1 U51 ( .A(s0[4]), .B(p0[4]), .Y(n110) );
  XNOR2X1 U52 ( .A(s7[4]), .B(p7[4]), .Y(n120) );
  XNOR2X1 U53 ( .A(s0[1]), .B(p0[1]), .Y(n105) );
  XNOR2X1 U54 ( .A(s5[7]), .B(p5[7]), .Y(n137) );
  XNOR2X1 U55 ( .A(s0[0]), .B(p0[0]), .Y(n106) );
  XNOR2X1 U56 ( .A(s1[7]), .B(p1[7]), .Y(n93) );
  OAI21XL U57 ( .A0(n98), .A1(n97), .B0(check[1]), .Y(n99) );
  NAND4X1 U58 ( .A(n92), .B(n91), .C(n32), .D(n31), .Y(n98) );
  NAND4X1 U59 ( .A(n96), .B(n95), .C(n94), .D(n93), .Y(n97) );
  XNOR2X1 U60 ( .A(s1[0]), .B(p1[0]), .Y(n92) );
  XNOR2X1 U61 ( .A(s6[6]), .B(p6[6]), .Y(n128) );
  XNOR2X1 U62 ( .A(s2[7]), .B(p2[7]), .Y(n25) );
  XNOR2X1 U63 ( .A(s1[6]), .B(p1[6]), .Y(n94) );
  NAND4X1 U64 ( .A(n28), .B(n27), .C(n26), .D(n25), .Y(n29) );
  XNOR2X1 U65 ( .A(s2[4]), .B(p2[4]), .Y(n28) );
  XNOR2X1 U66 ( .A(s2[5]), .B(p2[5]), .Y(n27) );
  XNOR2X1 U67 ( .A(s2[6]), .B(p2[6]), .Y(n26) );
  XNOR2X1 U68 ( .A(s6[3]), .B(p6[3]), .Y(n123) );
  XNOR2X1 U69 ( .A(s1[3]), .B(p1[3]), .Y(n31) );
  XNOR2X1 U70 ( .A(s6[5]), .B(p6[5]), .Y(n129) );
  XNOR2X1 U71 ( .A(s0[7]), .B(p0[7]), .Y(n107) );
  XNOR2X1 U72 ( .A(s1[5]), .B(p1[5]), .Y(n95) );
  XNOR2X1 U73 ( .A(s6[2]), .B(p6[2]), .Y(n124) );
  XNOR2X1 U74 ( .A(s2[3]), .B(p2[3]), .Y(n21) );
  XNOR2X1 U75 ( .A(s1[2]), .B(p1[2]), .Y(n32) );
  NAND4X1 U76 ( .A(n24), .B(n23), .C(n22), .D(n21), .Y(n30) );
  XNOR2X1 U77 ( .A(s2[0]), .B(p2[0]), .Y(n24) );
  XNOR2X1 U78 ( .A(s2[1]), .B(p2[1]), .Y(n23) );
  XNOR2X1 U79 ( .A(s2[2]), .B(p2[2]), .Y(n22) );
  XNOR2X1 U80 ( .A(s6[4]), .B(p6[4]), .Y(n130) );
  XNOR2X1 U81 ( .A(s0[6]), .B(p0[6]), .Y(n108) );
  XNOR2X1 U82 ( .A(s1[4]), .B(p1[4]), .Y(n96) );
  XNOR2X1 U83 ( .A(s3[6]), .B(p3[6]), .Y(n16) );
  XNOR2X1 U84 ( .A(s6[1]), .B(p6[1]), .Y(n125) );
  XNOR2X1 U85 ( .A(s0[5]), .B(p0[5]), .Y(n109) );
  XNOR2X1 U86 ( .A(s0[3]), .B(p0[3]), .Y(n103) );
  XNOR2X1 U87 ( .A(s1[1]), .B(p1[1]), .Y(n91) );
  XNOR2X1 U88 ( .A(s3[3]), .B(p3[3]), .Y(n11) );
  XNOR2X1 U89 ( .A(s3[5]), .B(p3[5]), .Y(n17) );
  XNOR2X1 U90 ( .A(s3[2]), .B(p3[2]), .Y(n12) );
  XNOR2X1 U91 ( .A(s3[4]), .B(p3[4]), .Y(n18) );
  XNOR2X1 U92 ( .A(s3[1]), .B(p3[1]), .Y(n13) );
endmodule


module Pattern_String_Comparator_Cell_14 ( s7, s6, s5, s4, s3, s2, s1, s0, p7, 
        p6, p5, p4, p3, p2, p1, p0, check, match );
  input [7:0] s7;
  input [7:0] s6;
  input [7:0] s5;
  input [7:0] s4;
  input [7:0] s3;
  input [7:0] s2;
  input [7:0] s1;
  input [7:0] s0;
  input [7:0] p7;
  input [7:0] p6;
  input [7:0] p5;
  input [7:0] p4;
  input [7:0] p3;
  input [7:0] p2;
  input [7:0] p1;
  input [7:0] p0;
  input [7:0] check;
  output match;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30,
         n31, n32, n91, n92, n93, n94, n95, n96, n97, n98, n99, n100, n101,
         n102, n103, n104, n105, n106, n107, n108, n109, n110, n111, n112,
         n113, n114, n115, n116, n117, n118, n119, n120, n121, n122, n123,
         n124, n125, n126, n127, n128, n129, n130, n131, n132, n133, n134,
         n135, n136, n137, n138, n139, n140, n141, n142, n143, n144, n145,
         n146, n147, n148;

  NOR2X1 U2 ( .A(n148), .B(n147), .Y(match) );
  NAND4X1 U3 ( .A(n102), .B(n101), .C(n100), .D(n99), .Y(n148) );
  NAND4X1 U4 ( .A(n146), .B(n145), .C(n144), .D(n143), .Y(n147) );
  OAI21XL U5 ( .A0(n30), .A1(n29), .B0(check[2]), .Y(n100) );
  XNOR2X1 U6 ( .A(s7[7]), .B(p7[7]), .Y(n117) );
  OAI21XL U7 ( .A0(n122), .A1(n121), .B0(check[7]), .Y(n145) );
  NAND4X1 U8 ( .A(n116), .B(n115), .C(n114), .D(n113), .Y(n122) );
  NAND4X1 U9 ( .A(n120), .B(n119), .C(n118), .D(n117), .Y(n121) );
  XNOR2X1 U10 ( .A(s7[3]), .B(p7[3]), .Y(n113) );
  XNOR2X1 U11 ( .A(s7[6]), .B(p7[6]), .Y(n118) );
  XNOR2X1 U12 ( .A(s7[2]), .B(p7[2]), .Y(n114) );
  XNOR2X1 U13 ( .A(s7[5]), .B(p7[5]), .Y(n119) );
  XNOR2X1 U14 ( .A(s7[1]), .B(p7[1]), .Y(n115) );
  XNOR2X1 U15 ( .A(s7[0]), .B(p7[0]), .Y(n116) );
  XNOR2X1 U16 ( .A(s5[6]), .B(p5[6]), .Y(n138) );
  OAI21XL U17 ( .A0(n142), .A1(n141), .B0(check[5]), .Y(n143) );
  NAND4X1 U18 ( .A(n136), .B(n135), .C(n134), .D(n133), .Y(n142) );
  NAND4X1 U19 ( .A(n140), .B(n139), .C(n138), .D(n137), .Y(n141) );
  XNOR2X1 U20 ( .A(s5[0]), .B(p5[0]), .Y(n136) );
  XNOR2X1 U21 ( .A(s6[7]), .B(p6[7]), .Y(n127) );
  OAI21XL U22 ( .A0(n132), .A1(n131), .B0(check[6]), .Y(n144) );
  NAND4X1 U23 ( .A(n126), .B(n125), .C(n124), .D(n123), .Y(n132) );
  NAND4X1 U24 ( .A(n130), .B(n129), .C(n128), .D(n127), .Y(n131) );
  XNOR2X1 U25 ( .A(s6[0]), .B(p6[0]), .Y(n126) );
  XNOR2X1 U26 ( .A(s5[3]), .B(p5[3]), .Y(n133) );
  XNOR2X1 U27 ( .A(s5[5]), .B(p5[5]), .Y(n139) );
  XNOR2X1 U28 ( .A(s5[2]), .B(p5[2]), .Y(n134) );
  XNOR2X1 U29 ( .A(s5[4]), .B(p5[4]), .Y(n140) );
  XNOR2X1 U30 ( .A(s5[1]), .B(p5[1]), .Y(n135) );
  XNOR2X1 U31 ( .A(s3[7]), .B(p3[7]), .Y(n15) );
  OAI21XL U32 ( .A0(n20), .A1(n19), .B0(check[3]), .Y(n101) );
  NAND4X1 U33 ( .A(n14), .B(n13), .C(n12), .D(n11), .Y(n20) );
  NAND4X1 U34 ( .A(n18), .B(n17), .C(n16), .D(n15), .Y(n19) );
  XNOR2X1 U35 ( .A(s3[0]), .B(p3[0]), .Y(n14) );
  XNOR2X1 U36 ( .A(s4[7]), .B(p4[7]), .Y(n5) );
  OAI21XL U37 ( .A0(n10), .A1(n9), .B0(check[4]), .Y(n102) );
  NAND4X1 U38 ( .A(n4), .B(n3), .C(n2), .D(n1), .Y(n10) );
  NAND4X1 U39 ( .A(n8), .B(n7), .C(n6), .D(n5), .Y(n9) );
  XNOR2X1 U40 ( .A(s4[0]), .B(p4[0]), .Y(n4) );
  XNOR2X1 U41 ( .A(s4[6]), .B(p4[6]), .Y(n6) );
  XNOR2X1 U42 ( .A(s4[3]), .B(p4[3]), .Y(n1) );
  XNOR2X1 U43 ( .A(s4[5]), .B(p4[5]), .Y(n7) );
  XNOR2X1 U44 ( .A(s4[2]), .B(p4[2]), .Y(n2) );
  XNOR2X1 U45 ( .A(s4[4]), .B(p4[4]), .Y(n8) );
  XNOR2X1 U46 ( .A(s4[1]), .B(p4[1]), .Y(n3) );
  XNOR2X1 U47 ( .A(s0[2]), .B(p0[2]), .Y(n104) );
  OAI21XL U48 ( .A0(n112), .A1(n111), .B0(check[0]), .Y(n146) );
  NAND4X1 U49 ( .A(n110), .B(n109), .C(n108), .D(n107), .Y(n111) );
  NAND4X1 U50 ( .A(n106), .B(n105), .C(n104), .D(n103), .Y(n112) );
  XNOR2X1 U51 ( .A(s0[4]), .B(p0[4]), .Y(n110) );
  XNOR2X1 U52 ( .A(s7[4]), .B(p7[4]), .Y(n120) );
  XNOR2X1 U53 ( .A(s0[1]), .B(p0[1]), .Y(n105) );
  XNOR2X1 U54 ( .A(s5[7]), .B(p5[7]), .Y(n137) );
  XNOR2X1 U55 ( .A(s0[0]), .B(p0[0]), .Y(n106) );
  XNOR2X1 U56 ( .A(s1[7]), .B(p1[7]), .Y(n93) );
  OAI21XL U57 ( .A0(n98), .A1(n97), .B0(check[1]), .Y(n99) );
  NAND4X1 U58 ( .A(n92), .B(n91), .C(n32), .D(n31), .Y(n98) );
  NAND4X1 U59 ( .A(n96), .B(n95), .C(n94), .D(n93), .Y(n97) );
  XNOR2X1 U60 ( .A(s1[0]), .B(p1[0]), .Y(n92) );
  XNOR2X1 U61 ( .A(s6[6]), .B(p6[6]), .Y(n128) );
  XNOR2X1 U62 ( .A(s2[7]), .B(p2[7]), .Y(n25) );
  XNOR2X1 U63 ( .A(s1[6]), .B(p1[6]), .Y(n94) );
  NAND4X1 U64 ( .A(n28), .B(n27), .C(n26), .D(n25), .Y(n29) );
  XNOR2X1 U65 ( .A(s2[4]), .B(p2[4]), .Y(n28) );
  XNOR2X1 U66 ( .A(s2[5]), .B(p2[5]), .Y(n27) );
  XNOR2X1 U67 ( .A(s2[6]), .B(p2[6]), .Y(n26) );
  XNOR2X1 U68 ( .A(s6[3]), .B(p6[3]), .Y(n123) );
  XNOR2X1 U69 ( .A(s1[3]), .B(p1[3]), .Y(n31) );
  XNOR2X1 U70 ( .A(s6[5]), .B(p6[5]), .Y(n129) );
  XNOR2X1 U71 ( .A(s0[7]), .B(p0[7]), .Y(n107) );
  XNOR2X1 U72 ( .A(s1[5]), .B(p1[5]), .Y(n95) );
  XNOR2X1 U73 ( .A(s6[2]), .B(p6[2]), .Y(n124) );
  XNOR2X1 U74 ( .A(s2[3]), .B(p2[3]), .Y(n21) );
  XNOR2X1 U75 ( .A(s1[2]), .B(p1[2]), .Y(n32) );
  NAND4X1 U76 ( .A(n24), .B(n23), .C(n22), .D(n21), .Y(n30) );
  XNOR2X1 U77 ( .A(s2[0]), .B(p2[0]), .Y(n24) );
  XNOR2X1 U78 ( .A(s2[1]), .B(p2[1]), .Y(n23) );
  XNOR2X1 U79 ( .A(s2[2]), .B(p2[2]), .Y(n22) );
  XNOR2X1 U80 ( .A(s6[4]), .B(p6[4]), .Y(n130) );
  XNOR2X1 U81 ( .A(s0[6]), .B(p0[6]), .Y(n108) );
  XNOR2X1 U82 ( .A(s1[4]), .B(p1[4]), .Y(n96) );
  XNOR2X1 U83 ( .A(s3[6]), .B(p3[6]), .Y(n16) );
  XNOR2X1 U84 ( .A(s6[1]), .B(p6[1]), .Y(n125) );
  XNOR2X1 U85 ( .A(s0[5]), .B(p0[5]), .Y(n109) );
  XNOR2X1 U86 ( .A(s0[3]), .B(p0[3]), .Y(n103) );
  XNOR2X1 U87 ( .A(s1[1]), .B(p1[1]), .Y(n91) );
  XNOR2X1 U88 ( .A(s3[3]), .B(p3[3]), .Y(n11) );
  XNOR2X1 U89 ( .A(s3[5]), .B(p3[5]), .Y(n17) );
  XNOR2X1 U90 ( .A(s3[2]), .B(p3[2]), .Y(n12) );
  XNOR2X1 U91 ( .A(s3[4]), .B(p3[4]), .Y(n18) );
  XNOR2X1 U92 ( .A(s3[1]), .B(p3[1]), .Y(n13) );
endmodule


module Pattern_String_Comparator_Cell_13 ( s7, s6, s5, s4, s3, s2, s1, s0, p7, 
        p6, p5, p4, p3, p2, p1, p0, check, match );
  input [7:0] s7;
  input [7:0] s6;
  input [7:0] s5;
  input [7:0] s4;
  input [7:0] s3;
  input [7:0] s2;
  input [7:0] s1;
  input [7:0] s0;
  input [7:0] p7;
  input [7:0] p6;
  input [7:0] p5;
  input [7:0] p4;
  input [7:0] p3;
  input [7:0] p2;
  input [7:0] p1;
  input [7:0] p0;
  input [7:0] check;
  output match;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30,
         n31, n32, n91, n92, n93, n94, n95, n96, n97, n98, n99, n100, n101,
         n102, n103, n104, n105, n106, n107, n108, n109, n110, n111, n112,
         n113, n114, n115, n116, n117, n118, n119, n120, n121, n122, n123,
         n124, n125, n126, n127, n128, n129, n130, n131, n132, n133, n134,
         n135, n136, n137, n138, n139, n140, n141, n142, n143, n144, n145,
         n146, n147, n148;

  NOR2X1 U2 ( .A(n148), .B(n147), .Y(match) );
  NAND4X1 U3 ( .A(n102), .B(n101), .C(n100), .D(n99), .Y(n148) );
  NAND4X1 U4 ( .A(n146), .B(n145), .C(n144), .D(n143), .Y(n147) );
  OAI21XL U5 ( .A0(n30), .A1(n29), .B0(check[2]), .Y(n100) );
  XNOR2X1 U6 ( .A(s7[7]), .B(p7[7]), .Y(n117) );
  OAI21XL U7 ( .A0(n122), .A1(n121), .B0(check[7]), .Y(n145) );
  NAND4X1 U8 ( .A(n116), .B(n115), .C(n114), .D(n113), .Y(n122) );
  NAND4X1 U9 ( .A(n120), .B(n119), .C(n118), .D(n117), .Y(n121) );
  XNOR2X1 U10 ( .A(s7[3]), .B(p7[3]), .Y(n113) );
  XNOR2X1 U11 ( .A(s7[6]), .B(p7[6]), .Y(n118) );
  XNOR2X1 U12 ( .A(s7[2]), .B(p7[2]), .Y(n114) );
  XNOR2X1 U13 ( .A(s7[5]), .B(p7[5]), .Y(n119) );
  XNOR2X1 U14 ( .A(s7[1]), .B(p7[1]), .Y(n115) );
  XNOR2X1 U15 ( .A(s7[0]), .B(p7[0]), .Y(n116) );
  XNOR2X1 U16 ( .A(s5[6]), .B(p5[6]), .Y(n138) );
  OAI21XL U17 ( .A0(n142), .A1(n141), .B0(check[5]), .Y(n143) );
  NAND4X1 U18 ( .A(n136), .B(n135), .C(n134), .D(n133), .Y(n142) );
  NAND4X1 U19 ( .A(n140), .B(n139), .C(n138), .D(n137), .Y(n141) );
  XNOR2X1 U20 ( .A(s5[0]), .B(p5[0]), .Y(n136) );
  XNOR2X1 U21 ( .A(s6[7]), .B(p6[7]), .Y(n127) );
  OAI21XL U22 ( .A0(n132), .A1(n131), .B0(check[6]), .Y(n144) );
  NAND4X1 U23 ( .A(n126), .B(n125), .C(n124), .D(n123), .Y(n132) );
  NAND4X1 U24 ( .A(n130), .B(n129), .C(n128), .D(n127), .Y(n131) );
  XNOR2X1 U25 ( .A(s6[0]), .B(p6[0]), .Y(n126) );
  XNOR2X1 U26 ( .A(s5[3]), .B(p5[3]), .Y(n133) );
  XNOR2X1 U27 ( .A(s5[5]), .B(p5[5]), .Y(n139) );
  XNOR2X1 U28 ( .A(s5[2]), .B(p5[2]), .Y(n134) );
  XNOR2X1 U29 ( .A(s5[4]), .B(p5[4]), .Y(n140) );
  XNOR2X1 U30 ( .A(s5[1]), .B(p5[1]), .Y(n135) );
  XNOR2X1 U31 ( .A(s3[7]), .B(p3[7]), .Y(n15) );
  OAI21XL U32 ( .A0(n20), .A1(n19), .B0(check[3]), .Y(n101) );
  NAND4X1 U33 ( .A(n14), .B(n13), .C(n12), .D(n11), .Y(n20) );
  NAND4X1 U34 ( .A(n18), .B(n17), .C(n16), .D(n15), .Y(n19) );
  XNOR2X1 U35 ( .A(s3[0]), .B(p3[0]), .Y(n14) );
  XNOR2X1 U36 ( .A(s4[7]), .B(p4[7]), .Y(n5) );
  OAI21XL U37 ( .A0(n10), .A1(n9), .B0(check[4]), .Y(n102) );
  NAND4X1 U38 ( .A(n4), .B(n3), .C(n2), .D(n1), .Y(n10) );
  NAND4X1 U39 ( .A(n8), .B(n7), .C(n6), .D(n5), .Y(n9) );
  XNOR2X1 U40 ( .A(s4[0]), .B(p4[0]), .Y(n4) );
  XNOR2X1 U41 ( .A(s4[6]), .B(p4[6]), .Y(n6) );
  XNOR2X1 U42 ( .A(s4[3]), .B(p4[3]), .Y(n1) );
  XNOR2X1 U43 ( .A(s4[5]), .B(p4[5]), .Y(n7) );
  XNOR2X1 U44 ( .A(s4[2]), .B(p4[2]), .Y(n2) );
  XNOR2X1 U45 ( .A(s4[4]), .B(p4[4]), .Y(n8) );
  XNOR2X1 U46 ( .A(s4[1]), .B(p4[1]), .Y(n3) );
  XNOR2X1 U47 ( .A(s0[2]), .B(p0[2]), .Y(n104) );
  OAI21XL U48 ( .A0(n112), .A1(n111), .B0(check[0]), .Y(n146) );
  NAND4X1 U49 ( .A(n110), .B(n109), .C(n108), .D(n107), .Y(n111) );
  NAND4X1 U50 ( .A(n106), .B(n105), .C(n104), .D(n103), .Y(n112) );
  XNOR2X1 U51 ( .A(s0[4]), .B(p0[4]), .Y(n110) );
  XNOR2X1 U52 ( .A(s7[4]), .B(p7[4]), .Y(n120) );
  XNOR2X1 U53 ( .A(s0[1]), .B(p0[1]), .Y(n105) );
  XNOR2X1 U54 ( .A(s5[7]), .B(p5[7]), .Y(n137) );
  XNOR2X1 U55 ( .A(s0[0]), .B(p0[0]), .Y(n106) );
  XNOR2X1 U56 ( .A(s1[7]), .B(p1[7]), .Y(n93) );
  OAI21XL U57 ( .A0(n98), .A1(n97), .B0(check[1]), .Y(n99) );
  NAND4X1 U58 ( .A(n92), .B(n91), .C(n32), .D(n31), .Y(n98) );
  NAND4X1 U59 ( .A(n96), .B(n95), .C(n94), .D(n93), .Y(n97) );
  XNOR2X1 U60 ( .A(s1[0]), .B(p1[0]), .Y(n92) );
  XNOR2X1 U61 ( .A(s6[6]), .B(p6[6]), .Y(n128) );
  XNOR2X1 U62 ( .A(s2[7]), .B(p2[7]), .Y(n25) );
  XNOR2X1 U63 ( .A(s1[6]), .B(p1[6]), .Y(n94) );
  NAND4X1 U64 ( .A(n28), .B(n27), .C(n26), .D(n25), .Y(n29) );
  XNOR2X1 U65 ( .A(s2[4]), .B(p2[4]), .Y(n28) );
  XNOR2X1 U66 ( .A(s2[5]), .B(p2[5]), .Y(n27) );
  XNOR2X1 U67 ( .A(s2[6]), .B(p2[6]), .Y(n26) );
  XNOR2X1 U68 ( .A(s6[3]), .B(p6[3]), .Y(n123) );
  XNOR2X1 U69 ( .A(s1[3]), .B(p1[3]), .Y(n31) );
  XNOR2X1 U70 ( .A(s6[5]), .B(p6[5]), .Y(n129) );
  XNOR2X1 U71 ( .A(s0[7]), .B(p0[7]), .Y(n107) );
  XNOR2X1 U72 ( .A(s1[5]), .B(p1[5]), .Y(n95) );
  XNOR2X1 U73 ( .A(s6[2]), .B(p6[2]), .Y(n124) );
  XNOR2X1 U74 ( .A(s2[3]), .B(p2[3]), .Y(n21) );
  XNOR2X1 U75 ( .A(s1[2]), .B(p1[2]), .Y(n32) );
  NAND4X1 U76 ( .A(n24), .B(n23), .C(n22), .D(n21), .Y(n30) );
  XNOR2X1 U77 ( .A(s2[0]), .B(p2[0]), .Y(n24) );
  XNOR2X1 U78 ( .A(s2[1]), .B(p2[1]), .Y(n23) );
  XNOR2X1 U79 ( .A(s2[2]), .B(p2[2]), .Y(n22) );
  XNOR2X1 U80 ( .A(s6[4]), .B(p6[4]), .Y(n130) );
  XNOR2X1 U81 ( .A(s0[6]), .B(p0[6]), .Y(n108) );
  XNOR2X1 U82 ( .A(s1[4]), .B(p1[4]), .Y(n96) );
  XNOR2X1 U83 ( .A(s3[6]), .B(p3[6]), .Y(n16) );
  XNOR2X1 U84 ( .A(s6[1]), .B(p6[1]), .Y(n125) );
  XNOR2X1 U85 ( .A(s0[5]), .B(p0[5]), .Y(n109) );
  XNOR2X1 U86 ( .A(s0[3]), .B(p0[3]), .Y(n103) );
  XNOR2X1 U87 ( .A(s1[1]), .B(p1[1]), .Y(n91) );
  XNOR2X1 U88 ( .A(s3[3]), .B(p3[3]), .Y(n11) );
  XNOR2X1 U89 ( .A(s3[5]), .B(p3[5]), .Y(n17) );
  XNOR2X1 U90 ( .A(s3[2]), .B(p3[2]), .Y(n12) );
  XNOR2X1 U91 ( .A(s3[4]), .B(p3[4]), .Y(n18) );
  XNOR2X1 U92 ( .A(s3[1]), .B(p3[1]), .Y(n13) );
endmodule


module Pattern_String_Comparator_Cell_12 ( s7, s6, s5, s4, s3, s2, s1, s0, p7, 
        p6, p5, p4, p3, p2, p1, p0, check, match );
  input [7:0] s7;
  input [7:0] s6;
  input [7:0] s5;
  input [7:0] s4;
  input [7:0] s3;
  input [7:0] s2;
  input [7:0] s1;
  input [7:0] s0;
  input [7:0] p7;
  input [7:0] p6;
  input [7:0] p5;
  input [7:0] p4;
  input [7:0] p3;
  input [7:0] p2;
  input [7:0] p1;
  input [7:0] p0;
  input [7:0] check;
  output match;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30,
         n31, n32, n91, n92, n93, n94, n95, n96, n97, n98, n99, n100, n101,
         n102, n103, n104, n105, n106, n107, n108, n109, n110, n111, n112,
         n113, n114, n115, n116, n117, n118, n119, n120, n121, n122, n123,
         n124, n125, n126, n127, n128, n129, n130, n131, n132, n133, n134,
         n135, n136, n137, n138, n139, n140, n141, n142, n143, n144, n145,
         n146, n147, n148;

  NOR2X1 U2 ( .A(n148), .B(n147), .Y(match) );
  NAND4X1 U3 ( .A(n102), .B(n101), .C(n100), .D(n99), .Y(n148) );
  NAND4X1 U4 ( .A(n146), .B(n145), .C(n144), .D(n143), .Y(n147) );
  OAI21XL U5 ( .A0(n30), .A1(n29), .B0(check[2]), .Y(n100) );
  XNOR2X1 U6 ( .A(s7[7]), .B(p7[7]), .Y(n117) );
  OAI21XL U7 ( .A0(n122), .A1(n121), .B0(check[7]), .Y(n145) );
  NAND4X1 U8 ( .A(n116), .B(n115), .C(n114), .D(n113), .Y(n122) );
  NAND4X1 U9 ( .A(n120), .B(n119), .C(n118), .D(n117), .Y(n121) );
  XNOR2X1 U10 ( .A(s7[3]), .B(p7[3]), .Y(n113) );
  XNOR2X1 U11 ( .A(s7[6]), .B(p7[6]), .Y(n118) );
  XNOR2X1 U12 ( .A(s7[2]), .B(p7[2]), .Y(n114) );
  XNOR2X1 U13 ( .A(s7[5]), .B(p7[5]), .Y(n119) );
  XNOR2X1 U14 ( .A(s7[1]), .B(p7[1]), .Y(n115) );
  XNOR2X1 U15 ( .A(s7[0]), .B(p7[0]), .Y(n116) );
  XNOR2X1 U16 ( .A(s5[6]), .B(p5[6]), .Y(n138) );
  OAI21XL U17 ( .A0(n142), .A1(n141), .B0(check[5]), .Y(n143) );
  NAND4X1 U18 ( .A(n136), .B(n135), .C(n134), .D(n133), .Y(n142) );
  NAND4X1 U19 ( .A(n140), .B(n139), .C(n138), .D(n137), .Y(n141) );
  XNOR2X1 U20 ( .A(s5[0]), .B(p5[0]), .Y(n136) );
  XNOR2X1 U21 ( .A(s6[7]), .B(p6[7]), .Y(n127) );
  OAI21XL U22 ( .A0(n132), .A1(n131), .B0(check[6]), .Y(n144) );
  NAND4X1 U23 ( .A(n126), .B(n125), .C(n124), .D(n123), .Y(n132) );
  NAND4X1 U24 ( .A(n130), .B(n129), .C(n128), .D(n127), .Y(n131) );
  XNOR2X1 U25 ( .A(s6[0]), .B(p6[0]), .Y(n126) );
  XNOR2X1 U26 ( .A(s5[3]), .B(p5[3]), .Y(n133) );
  XNOR2X1 U27 ( .A(s5[5]), .B(p5[5]), .Y(n139) );
  XNOR2X1 U28 ( .A(s5[2]), .B(p5[2]), .Y(n134) );
  XNOR2X1 U29 ( .A(s5[4]), .B(p5[4]), .Y(n140) );
  XNOR2X1 U30 ( .A(s5[1]), .B(p5[1]), .Y(n135) );
  XNOR2X1 U31 ( .A(s3[7]), .B(p3[7]), .Y(n15) );
  OAI21XL U32 ( .A0(n20), .A1(n19), .B0(check[3]), .Y(n101) );
  NAND4X1 U33 ( .A(n14), .B(n13), .C(n12), .D(n11), .Y(n20) );
  NAND4X1 U34 ( .A(n18), .B(n17), .C(n16), .D(n15), .Y(n19) );
  XNOR2X1 U35 ( .A(s3[0]), .B(p3[0]), .Y(n14) );
  XNOR2X1 U36 ( .A(s4[7]), .B(p4[7]), .Y(n5) );
  OAI21XL U37 ( .A0(n10), .A1(n9), .B0(check[4]), .Y(n102) );
  NAND4X1 U38 ( .A(n4), .B(n3), .C(n2), .D(n1), .Y(n10) );
  NAND4X1 U39 ( .A(n8), .B(n7), .C(n6), .D(n5), .Y(n9) );
  XNOR2X1 U40 ( .A(s4[0]), .B(p4[0]), .Y(n4) );
  XNOR2X1 U41 ( .A(s4[6]), .B(p4[6]), .Y(n6) );
  XNOR2X1 U42 ( .A(s4[3]), .B(p4[3]), .Y(n1) );
  XNOR2X1 U43 ( .A(s4[5]), .B(p4[5]), .Y(n7) );
  XNOR2X1 U44 ( .A(s4[2]), .B(p4[2]), .Y(n2) );
  XNOR2X1 U45 ( .A(s4[4]), .B(p4[4]), .Y(n8) );
  XNOR2X1 U46 ( .A(s4[1]), .B(p4[1]), .Y(n3) );
  XNOR2X1 U47 ( .A(s0[2]), .B(p0[2]), .Y(n104) );
  OAI21XL U48 ( .A0(n112), .A1(n111), .B0(check[0]), .Y(n146) );
  NAND4X1 U49 ( .A(n110), .B(n109), .C(n108), .D(n107), .Y(n111) );
  NAND4X1 U50 ( .A(n106), .B(n105), .C(n104), .D(n103), .Y(n112) );
  XNOR2X1 U51 ( .A(s0[4]), .B(p0[4]), .Y(n110) );
  XNOR2X1 U52 ( .A(s7[4]), .B(p7[4]), .Y(n120) );
  XNOR2X1 U53 ( .A(s0[1]), .B(p0[1]), .Y(n105) );
  XNOR2X1 U54 ( .A(s5[7]), .B(p5[7]), .Y(n137) );
  XNOR2X1 U55 ( .A(s0[0]), .B(p0[0]), .Y(n106) );
  XNOR2X1 U56 ( .A(s1[7]), .B(p1[7]), .Y(n93) );
  OAI21XL U57 ( .A0(n98), .A1(n97), .B0(check[1]), .Y(n99) );
  NAND4X1 U58 ( .A(n92), .B(n91), .C(n32), .D(n31), .Y(n98) );
  NAND4X1 U59 ( .A(n96), .B(n95), .C(n94), .D(n93), .Y(n97) );
  XNOR2X1 U60 ( .A(s1[0]), .B(p1[0]), .Y(n92) );
  XNOR2X1 U61 ( .A(s6[6]), .B(p6[6]), .Y(n128) );
  XNOR2X1 U62 ( .A(s2[7]), .B(p2[7]), .Y(n25) );
  XNOR2X1 U63 ( .A(s1[6]), .B(p1[6]), .Y(n94) );
  NAND4X1 U64 ( .A(n28), .B(n27), .C(n26), .D(n25), .Y(n29) );
  XNOR2X1 U65 ( .A(s2[4]), .B(p2[4]), .Y(n28) );
  XNOR2X1 U66 ( .A(s2[5]), .B(p2[5]), .Y(n27) );
  XNOR2X1 U67 ( .A(s2[6]), .B(p2[6]), .Y(n26) );
  XNOR2X1 U68 ( .A(s6[3]), .B(p6[3]), .Y(n123) );
  XNOR2X1 U69 ( .A(s1[3]), .B(p1[3]), .Y(n31) );
  XNOR2X1 U70 ( .A(s6[5]), .B(p6[5]), .Y(n129) );
  XNOR2X1 U71 ( .A(s0[7]), .B(p0[7]), .Y(n107) );
  XNOR2X1 U72 ( .A(s1[5]), .B(p1[5]), .Y(n95) );
  XNOR2X1 U73 ( .A(s6[2]), .B(p6[2]), .Y(n124) );
  XNOR2X1 U74 ( .A(s2[3]), .B(p2[3]), .Y(n21) );
  XNOR2X1 U75 ( .A(s1[2]), .B(p1[2]), .Y(n32) );
  NAND4X1 U76 ( .A(n24), .B(n23), .C(n22), .D(n21), .Y(n30) );
  XNOR2X1 U77 ( .A(s2[0]), .B(p2[0]), .Y(n24) );
  XNOR2X1 U78 ( .A(s2[1]), .B(p2[1]), .Y(n23) );
  XNOR2X1 U79 ( .A(s2[2]), .B(p2[2]), .Y(n22) );
  XNOR2X1 U80 ( .A(s6[4]), .B(p6[4]), .Y(n130) );
  XNOR2X1 U81 ( .A(s0[6]), .B(p0[6]), .Y(n108) );
  XNOR2X1 U82 ( .A(s1[4]), .B(p1[4]), .Y(n96) );
  XNOR2X1 U83 ( .A(s3[6]), .B(p3[6]), .Y(n16) );
  XNOR2X1 U84 ( .A(s6[1]), .B(p6[1]), .Y(n125) );
  XNOR2X1 U85 ( .A(s0[5]), .B(p0[5]), .Y(n109) );
  XNOR2X1 U86 ( .A(s0[3]), .B(p0[3]), .Y(n103) );
  XNOR2X1 U87 ( .A(s1[1]), .B(p1[1]), .Y(n91) );
  XNOR2X1 U88 ( .A(s3[3]), .B(p3[3]), .Y(n11) );
  XNOR2X1 U89 ( .A(s3[5]), .B(p3[5]), .Y(n17) );
  XNOR2X1 U90 ( .A(s3[2]), .B(p3[2]), .Y(n12) );
  XNOR2X1 U91 ( .A(s3[4]), .B(p3[4]), .Y(n18) );
  XNOR2X1 U92 ( .A(s3[1]), .B(p3[1]), .Y(n13) );
endmodule


module Pattern_String_Comparator_Cell_11 ( s7, s6, s5, s4, s3, s2, s1, s0, p7, 
        p6, p5, p4, p3, p2, p1, p0, check, match );
  input [7:0] s7;
  input [7:0] s6;
  input [7:0] s5;
  input [7:0] s4;
  input [7:0] s3;
  input [7:0] s2;
  input [7:0] s1;
  input [7:0] s0;
  input [7:0] p7;
  input [7:0] p6;
  input [7:0] p5;
  input [7:0] p4;
  input [7:0] p3;
  input [7:0] p2;
  input [7:0] p1;
  input [7:0] p0;
  input [7:0] check;
  output match;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30,
         n31, n32, n91, n92, n93, n94, n95, n96, n97, n98, n99, n100, n101,
         n102, n103, n104, n105, n106, n107, n108, n109, n110, n111, n112,
         n113, n114, n115, n116, n117, n118, n119, n120, n121, n122, n123,
         n124, n125, n126, n127, n128, n129, n130, n131, n132, n133, n134,
         n135, n136, n137, n138, n139, n140, n141, n142, n143, n144, n145,
         n146, n147, n148;

  NOR2X1 U2 ( .A(n148), .B(n147), .Y(match) );
  NAND4X1 U3 ( .A(n102), .B(n101), .C(n100), .D(n99), .Y(n148) );
  NAND4X1 U4 ( .A(n146), .B(n145), .C(n144), .D(n143), .Y(n147) );
  OAI21XL U5 ( .A0(n30), .A1(n29), .B0(check[2]), .Y(n100) );
  XNOR2X1 U6 ( .A(s7[7]), .B(p7[7]), .Y(n117) );
  OAI21XL U7 ( .A0(n122), .A1(n121), .B0(check[7]), .Y(n145) );
  NAND4X1 U8 ( .A(n116), .B(n115), .C(n114), .D(n113), .Y(n122) );
  NAND4X1 U9 ( .A(n120), .B(n119), .C(n118), .D(n117), .Y(n121) );
  XNOR2X1 U10 ( .A(s7[3]), .B(p7[3]), .Y(n113) );
  XNOR2X1 U11 ( .A(s7[6]), .B(p7[6]), .Y(n118) );
  XNOR2X1 U12 ( .A(s7[2]), .B(p7[2]), .Y(n114) );
  XNOR2X1 U13 ( .A(s7[5]), .B(p7[5]), .Y(n119) );
  XNOR2X1 U14 ( .A(s7[1]), .B(p7[1]), .Y(n115) );
  XNOR2X1 U15 ( .A(s7[0]), .B(p7[0]), .Y(n116) );
  XNOR2X1 U16 ( .A(s5[6]), .B(p5[6]), .Y(n138) );
  OAI21XL U17 ( .A0(n142), .A1(n141), .B0(check[5]), .Y(n143) );
  NAND4X1 U18 ( .A(n136), .B(n135), .C(n134), .D(n133), .Y(n142) );
  NAND4X1 U19 ( .A(n140), .B(n139), .C(n138), .D(n137), .Y(n141) );
  XNOR2X1 U20 ( .A(s5[0]), .B(p5[0]), .Y(n136) );
  XNOR2X1 U21 ( .A(s6[7]), .B(p6[7]), .Y(n127) );
  OAI21XL U22 ( .A0(n132), .A1(n131), .B0(check[6]), .Y(n144) );
  NAND4X1 U23 ( .A(n126), .B(n125), .C(n124), .D(n123), .Y(n132) );
  NAND4X1 U24 ( .A(n130), .B(n129), .C(n128), .D(n127), .Y(n131) );
  XNOR2X1 U25 ( .A(s6[0]), .B(p6[0]), .Y(n126) );
  XNOR2X1 U26 ( .A(s5[3]), .B(p5[3]), .Y(n133) );
  XNOR2X1 U27 ( .A(s5[5]), .B(p5[5]), .Y(n139) );
  XNOR2X1 U28 ( .A(s5[2]), .B(p5[2]), .Y(n134) );
  XNOR2X1 U29 ( .A(s5[4]), .B(p5[4]), .Y(n140) );
  XNOR2X1 U30 ( .A(s5[1]), .B(p5[1]), .Y(n135) );
  XNOR2X1 U31 ( .A(s3[7]), .B(p3[7]), .Y(n15) );
  OAI21XL U32 ( .A0(n20), .A1(n19), .B0(check[3]), .Y(n101) );
  NAND4X1 U33 ( .A(n14), .B(n13), .C(n12), .D(n11), .Y(n20) );
  NAND4X1 U34 ( .A(n18), .B(n17), .C(n16), .D(n15), .Y(n19) );
  XNOR2X1 U35 ( .A(s3[0]), .B(p3[0]), .Y(n14) );
  XNOR2X1 U36 ( .A(s4[7]), .B(p4[7]), .Y(n5) );
  OAI21XL U37 ( .A0(n10), .A1(n9), .B0(check[4]), .Y(n102) );
  NAND4X1 U38 ( .A(n4), .B(n3), .C(n2), .D(n1), .Y(n10) );
  NAND4X1 U39 ( .A(n8), .B(n7), .C(n6), .D(n5), .Y(n9) );
  XNOR2X1 U40 ( .A(s4[0]), .B(p4[0]), .Y(n4) );
  XNOR2X1 U41 ( .A(s4[6]), .B(p4[6]), .Y(n6) );
  XNOR2X1 U42 ( .A(s4[3]), .B(p4[3]), .Y(n1) );
  XNOR2X1 U43 ( .A(s4[5]), .B(p4[5]), .Y(n7) );
  XNOR2X1 U44 ( .A(s4[2]), .B(p4[2]), .Y(n2) );
  XNOR2X1 U45 ( .A(s4[4]), .B(p4[4]), .Y(n8) );
  XNOR2X1 U46 ( .A(s4[1]), .B(p4[1]), .Y(n3) );
  XNOR2X1 U47 ( .A(s0[2]), .B(p0[2]), .Y(n104) );
  OAI21XL U48 ( .A0(n112), .A1(n111), .B0(check[0]), .Y(n146) );
  NAND4X1 U49 ( .A(n110), .B(n109), .C(n108), .D(n107), .Y(n111) );
  NAND4X1 U50 ( .A(n106), .B(n105), .C(n104), .D(n103), .Y(n112) );
  XNOR2X1 U51 ( .A(s0[4]), .B(p0[4]), .Y(n110) );
  XNOR2X1 U52 ( .A(s7[4]), .B(p7[4]), .Y(n120) );
  XNOR2X1 U53 ( .A(s0[1]), .B(p0[1]), .Y(n105) );
  XNOR2X1 U54 ( .A(s5[7]), .B(p5[7]), .Y(n137) );
  XNOR2X1 U55 ( .A(s0[0]), .B(p0[0]), .Y(n106) );
  XNOR2X1 U56 ( .A(s1[7]), .B(p1[7]), .Y(n93) );
  OAI21XL U57 ( .A0(n98), .A1(n97), .B0(check[1]), .Y(n99) );
  NAND4X1 U58 ( .A(n92), .B(n91), .C(n32), .D(n31), .Y(n98) );
  NAND4X1 U59 ( .A(n96), .B(n95), .C(n94), .D(n93), .Y(n97) );
  XNOR2X1 U60 ( .A(s1[0]), .B(p1[0]), .Y(n92) );
  XNOR2X1 U61 ( .A(s6[6]), .B(p6[6]), .Y(n128) );
  XNOR2X1 U62 ( .A(s2[7]), .B(p2[7]), .Y(n25) );
  XNOR2X1 U63 ( .A(s1[6]), .B(p1[6]), .Y(n94) );
  NAND4X1 U64 ( .A(n28), .B(n27), .C(n26), .D(n25), .Y(n29) );
  XNOR2X1 U65 ( .A(s2[4]), .B(p2[4]), .Y(n28) );
  XNOR2X1 U66 ( .A(s2[5]), .B(p2[5]), .Y(n27) );
  XNOR2X1 U67 ( .A(s2[6]), .B(p2[6]), .Y(n26) );
  XNOR2X1 U68 ( .A(s6[3]), .B(p6[3]), .Y(n123) );
  XNOR2X1 U69 ( .A(s1[3]), .B(p1[3]), .Y(n31) );
  XNOR2X1 U70 ( .A(s6[5]), .B(p6[5]), .Y(n129) );
  XNOR2X1 U71 ( .A(s0[7]), .B(p0[7]), .Y(n107) );
  XNOR2X1 U72 ( .A(s1[5]), .B(p1[5]), .Y(n95) );
  XNOR2X1 U73 ( .A(s6[2]), .B(p6[2]), .Y(n124) );
  XNOR2X1 U74 ( .A(s2[3]), .B(p2[3]), .Y(n21) );
  XNOR2X1 U75 ( .A(s1[2]), .B(p1[2]), .Y(n32) );
  NAND4X1 U76 ( .A(n24), .B(n23), .C(n22), .D(n21), .Y(n30) );
  XNOR2X1 U77 ( .A(s2[0]), .B(p2[0]), .Y(n24) );
  XNOR2X1 U78 ( .A(s2[1]), .B(p2[1]), .Y(n23) );
  XNOR2X1 U79 ( .A(s2[2]), .B(p2[2]), .Y(n22) );
  XNOR2X1 U80 ( .A(s6[4]), .B(p6[4]), .Y(n130) );
  XNOR2X1 U81 ( .A(s0[6]), .B(p0[6]), .Y(n108) );
  XNOR2X1 U82 ( .A(s1[4]), .B(p1[4]), .Y(n96) );
  XNOR2X1 U83 ( .A(s3[6]), .B(p3[6]), .Y(n16) );
  XNOR2X1 U84 ( .A(s6[1]), .B(p6[1]), .Y(n125) );
  XNOR2X1 U85 ( .A(s0[5]), .B(p0[5]), .Y(n109) );
  XNOR2X1 U86 ( .A(s0[3]), .B(p0[3]), .Y(n103) );
  XNOR2X1 U87 ( .A(s1[1]), .B(p1[1]), .Y(n91) );
  XNOR2X1 U88 ( .A(s3[3]), .B(p3[3]), .Y(n11) );
  XNOR2X1 U89 ( .A(s3[5]), .B(p3[5]), .Y(n17) );
  XNOR2X1 U90 ( .A(s3[2]), .B(p3[2]), .Y(n12) );
  XNOR2X1 U91 ( .A(s3[4]), .B(p3[4]), .Y(n18) );
  XNOR2X1 U92 ( .A(s3[1]), .B(p3[1]), .Y(n13) );
endmodule


module Pattern_String_Comparator_Cell_10 ( s7, s6, s5, s4, s3, s2, s1, s0, p7, 
        p6, p5, p4, p3, p2, p1, p0, check, match );
  input [7:0] s7;
  input [7:0] s6;
  input [7:0] s5;
  input [7:0] s4;
  input [7:0] s3;
  input [7:0] s2;
  input [7:0] s1;
  input [7:0] s0;
  input [7:0] p7;
  input [7:0] p6;
  input [7:0] p5;
  input [7:0] p4;
  input [7:0] p3;
  input [7:0] p2;
  input [7:0] p1;
  input [7:0] p0;
  input [7:0] check;
  output match;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30,
         n31, n32, n91, n92, n93, n94, n95, n96, n97, n98, n99, n100, n101,
         n102, n103, n104, n105, n106, n107, n108, n109, n110, n111, n112,
         n113, n114, n115, n116, n117, n118, n119, n120, n121, n122, n123,
         n124, n125, n126, n127, n128, n129, n130, n131, n132, n133, n134,
         n135, n136, n137, n138, n139, n140, n141, n142, n143, n144, n145,
         n146, n147, n148;

  NOR2X1 U2 ( .A(n148), .B(n147), .Y(match) );
  NAND4X1 U3 ( .A(n102), .B(n101), .C(n100), .D(n99), .Y(n148) );
  NAND4X1 U4 ( .A(n146), .B(n145), .C(n144), .D(n143), .Y(n147) );
  OAI21XL U5 ( .A0(n30), .A1(n29), .B0(check[2]), .Y(n100) );
  XNOR2X1 U6 ( .A(s7[7]), .B(p7[7]), .Y(n117) );
  OAI21XL U7 ( .A0(n122), .A1(n121), .B0(check[7]), .Y(n145) );
  NAND4X1 U8 ( .A(n116), .B(n115), .C(n114), .D(n113), .Y(n122) );
  NAND4X1 U9 ( .A(n120), .B(n119), .C(n118), .D(n117), .Y(n121) );
  XNOR2X1 U10 ( .A(s7[3]), .B(p7[3]), .Y(n113) );
  XNOR2X1 U11 ( .A(s7[6]), .B(p7[6]), .Y(n118) );
  XNOR2X1 U12 ( .A(s7[2]), .B(p7[2]), .Y(n114) );
  XNOR2X1 U13 ( .A(s7[5]), .B(p7[5]), .Y(n119) );
  XNOR2X1 U14 ( .A(s7[1]), .B(p7[1]), .Y(n115) );
  XNOR2X1 U15 ( .A(s7[0]), .B(p7[0]), .Y(n116) );
  XNOR2X1 U16 ( .A(s5[6]), .B(p5[6]), .Y(n138) );
  OAI21XL U17 ( .A0(n142), .A1(n141), .B0(check[5]), .Y(n143) );
  NAND4X1 U18 ( .A(n136), .B(n135), .C(n134), .D(n133), .Y(n142) );
  NAND4X1 U19 ( .A(n140), .B(n139), .C(n138), .D(n137), .Y(n141) );
  XNOR2X1 U20 ( .A(s5[0]), .B(p5[0]), .Y(n136) );
  XNOR2X1 U21 ( .A(s6[7]), .B(p6[7]), .Y(n127) );
  OAI21XL U22 ( .A0(n132), .A1(n131), .B0(check[6]), .Y(n144) );
  NAND4X1 U23 ( .A(n126), .B(n125), .C(n124), .D(n123), .Y(n132) );
  NAND4X1 U24 ( .A(n130), .B(n129), .C(n128), .D(n127), .Y(n131) );
  XNOR2X1 U25 ( .A(s6[0]), .B(p6[0]), .Y(n126) );
  XNOR2X1 U26 ( .A(s5[3]), .B(p5[3]), .Y(n133) );
  XNOR2X1 U27 ( .A(s5[5]), .B(p5[5]), .Y(n139) );
  XNOR2X1 U28 ( .A(s5[2]), .B(p5[2]), .Y(n134) );
  XNOR2X1 U29 ( .A(s5[4]), .B(p5[4]), .Y(n140) );
  XNOR2X1 U30 ( .A(s5[1]), .B(p5[1]), .Y(n135) );
  XNOR2X1 U31 ( .A(s3[7]), .B(p3[7]), .Y(n15) );
  OAI21XL U32 ( .A0(n20), .A1(n19), .B0(check[3]), .Y(n101) );
  NAND4X1 U33 ( .A(n14), .B(n13), .C(n12), .D(n11), .Y(n20) );
  NAND4X1 U34 ( .A(n18), .B(n17), .C(n16), .D(n15), .Y(n19) );
  XNOR2X1 U35 ( .A(s3[0]), .B(p3[0]), .Y(n14) );
  XNOR2X1 U36 ( .A(s4[7]), .B(p4[7]), .Y(n5) );
  OAI21XL U37 ( .A0(n10), .A1(n9), .B0(check[4]), .Y(n102) );
  NAND4X1 U38 ( .A(n4), .B(n3), .C(n2), .D(n1), .Y(n10) );
  NAND4X1 U39 ( .A(n8), .B(n7), .C(n6), .D(n5), .Y(n9) );
  XNOR2X1 U40 ( .A(s4[0]), .B(p4[0]), .Y(n4) );
  XNOR2X1 U41 ( .A(s4[6]), .B(p4[6]), .Y(n6) );
  XNOR2X1 U42 ( .A(s4[3]), .B(p4[3]), .Y(n1) );
  XNOR2X1 U43 ( .A(s4[5]), .B(p4[5]), .Y(n7) );
  XNOR2X1 U44 ( .A(s4[2]), .B(p4[2]), .Y(n2) );
  XNOR2X1 U45 ( .A(s4[4]), .B(p4[4]), .Y(n8) );
  XNOR2X1 U46 ( .A(s4[1]), .B(p4[1]), .Y(n3) );
  XNOR2X1 U47 ( .A(s0[2]), .B(p0[2]), .Y(n104) );
  OAI21XL U48 ( .A0(n112), .A1(n111), .B0(check[0]), .Y(n146) );
  NAND4X1 U49 ( .A(n110), .B(n109), .C(n108), .D(n107), .Y(n111) );
  NAND4X1 U50 ( .A(n106), .B(n105), .C(n104), .D(n103), .Y(n112) );
  XNOR2X1 U51 ( .A(s0[4]), .B(p0[4]), .Y(n110) );
  XNOR2X1 U52 ( .A(s7[4]), .B(p7[4]), .Y(n120) );
  XNOR2X1 U53 ( .A(s0[1]), .B(p0[1]), .Y(n105) );
  XNOR2X1 U54 ( .A(s5[7]), .B(p5[7]), .Y(n137) );
  XNOR2X1 U55 ( .A(s0[0]), .B(p0[0]), .Y(n106) );
  XNOR2X1 U56 ( .A(s1[7]), .B(p1[7]), .Y(n93) );
  OAI21XL U57 ( .A0(n98), .A1(n97), .B0(check[1]), .Y(n99) );
  NAND4X1 U58 ( .A(n92), .B(n91), .C(n32), .D(n31), .Y(n98) );
  NAND4X1 U59 ( .A(n96), .B(n95), .C(n94), .D(n93), .Y(n97) );
  XNOR2X1 U60 ( .A(s1[0]), .B(p1[0]), .Y(n92) );
  XNOR2X1 U61 ( .A(s6[6]), .B(p6[6]), .Y(n128) );
  XNOR2X1 U62 ( .A(s2[7]), .B(p2[7]), .Y(n25) );
  XNOR2X1 U63 ( .A(s1[6]), .B(p1[6]), .Y(n94) );
  NAND4X1 U64 ( .A(n28), .B(n27), .C(n26), .D(n25), .Y(n29) );
  XNOR2X1 U65 ( .A(s2[4]), .B(p2[4]), .Y(n28) );
  XNOR2X1 U66 ( .A(s2[5]), .B(p2[5]), .Y(n27) );
  XNOR2X1 U67 ( .A(s2[6]), .B(p2[6]), .Y(n26) );
  XNOR2X1 U68 ( .A(s6[3]), .B(p6[3]), .Y(n123) );
  XNOR2X1 U69 ( .A(s1[3]), .B(p1[3]), .Y(n31) );
  XNOR2X1 U70 ( .A(s6[5]), .B(p6[5]), .Y(n129) );
  XNOR2X1 U71 ( .A(s0[7]), .B(p0[7]), .Y(n107) );
  XNOR2X1 U72 ( .A(s1[5]), .B(p1[5]), .Y(n95) );
  XNOR2X1 U73 ( .A(s6[2]), .B(p6[2]), .Y(n124) );
  XNOR2X1 U74 ( .A(s2[3]), .B(p2[3]), .Y(n21) );
  XNOR2X1 U75 ( .A(s1[2]), .B(p1[2]), .Y(n32) );
  NAND4X1 U76 ( .A(n24), .B(n23), .C(n22), .D(n21), .Y(n30) );
  XNOR2X1 U77 ( .A(s2[0]), .B(p2[0]), .Y(n24) );
  XNOR2X1 U78 ( .A(s2[1]), .B(p2[1]), .Y(n23) );
  XNOR2X1 U79 ( .A(s2[2]), .B(p2[2]), .Y(n22) );
  XNOR2X1 U80 ( .A(s6[4]), .B(p6[4]), .Y(n130) );
  XNOR2X1 U81 ( .A(s0[6]), .B(p0[6]), .Y(n108) );
  XNOR2X1 U82 ( .A(s1[4]), .B(p1[4]), .Y(n96) );
  XNOR2X1 U83 ( .A(s3[6]), .B(p3[6]), .Y(n16) );
  XNOR2X1 U84 ( .A(s6[1]), .B(p6[1]), .Y(n125) );
  XNOR2X1 U85 ( .A(s0[5]), .B(p0[5]), .Y(n109) );
  XNOR2X1 U86 ( .A(s0[3]), .B(p0[3]), .Y(n103) );
  XNOR2X1 U87 ( .A(s1[1]), .B(p1[1]), .Y(n91) );
  XNOR2X1 U88 ( .A(s3[3]), .B(p3[3]), .Y(n11) );
  XNOR2X1 U89 ( .A(s3[5]), .B(p3[5]), .Y(n17) );
  XNOR2X1 U90 ( .A(s3[2]), .B(p3[2]), .Y(n12) );
  XNOR2X1 U91 ( .A(s3[4]), .B(p3[4]), .Y(n18) );
  XNOR2X1 U92 ( .A(s3[1]), .B(p3[1]), .Y(n13) );
endmodule


module Pattern_String_Comparator_Cell_9 ( s7, s6, s5, s4, s3, s2, s1, s0, p7, 
        p6, p5, p4, p3, p2, p1, p0, check, match );
  input [7:0] s7;
  input [7:0] s6;
  input [7:0] s5;
  input [7:0] s4;
  input [7:0] s3;
  input [7:0] s2;
  input [7:0] s1;
  input [7:0] s0;
  input [7:0] p7;
  input [7:0] p6;
  input [7:0] p5;
  input [7:0] p4;
  input [7:0] p3;
  input [7:0] p2;
  input [7:0] p1;
  input [7:0] p0;
  input [7:0] check;
  output match;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30,
         n31, n32, n91, n92, n93, n94, n95, n96, n97, n98, n99, n100, n101,
         n102, n103, n104, n105, n106, n107, n108, n109, n110, n111, n112,
         n113, n114, n115, n116, n117, n118, n119, n120, n121, n122, n123,
         n124, n125, n126, n127, n128, n129, n130, n131, n132, n133, n134,
         n135, n136, n137, n138, n139, n140, n141, n142, n143, n144, n145,
         n146, n147, n148;

  NOR2X1 U2 ( .A(n148), .B(n147), .Y(match) );
  NAND4X1 U3 ( .A(n102), .B(n101), .C(n100), .D(n99), .Y(n148) );
  NAND4X1 U4 ( .A(n146), .B(n145), .C(n144), .D(n143), .Y(n147) );
  OAI21XL U5 ( .A0(n30), .A1(n29), .B0(check[2]), .Y(n100) );
  XNOR2X1 U6 ( .A(s7[7]), .B(p7[7]), .Y(n117) );
  OAI21XL U7 ( .A0(n122), .A1(n121), .B0(check[7]), .Y(n145) );
  NAND4X1 U8 ( .A(n116), .B(n115), .C(n114), .D(n113), .Y(n122) );
  NAND4X1 U9 ( .A(n120), .B(n119), .C(n118), .D(n117), .Y(n121) );
  XNOR2X1 U10 ( .A(s7[3]), .B(p7[3]), .Y(n113) );
  XNOR2X1 U11 ( .A(s7[6]), .B(p7[6]), .Y(n118) );
  XNOR2X1 U12 ( .A(s7[2]), .B(p7[2]), .Y(n114) );
  XNOR2X1 U13 ( .A(s7[5]), .B(p7[5]), .Y(n119) );
  XNOR2X1 U14 ( .A(s7[1]), .B(p7[1]), .Y(n115) );
  XNOR2X1 U15 ( .A(s7[0]), .B(p7[0]), .Y(n116) );
  XNOR2X1 U16 ( .A(s5[6]), .B(p5[6]), .Y(n138) );
  OAI21XL U17 ( .A0(n142), .A1(n141), .B0(check[5]), .Y(n143) );
  NAND4X1 U18 ( .A(n136), .B(n135), .C(n134), .D(n133), .Y(n142) );
  NAND4X1 U19 ( .A(n140), .B(n139), .C(n138), .D(n137), .Y(n141) );
  XNOR2X1 U20 ( .A(s5[0]), .B(p5[0]), .Y(n136) );
  XNOR2X1 U21 ( .A(s6[7]), .B(p6[7]), .Y(n127) );
  OAI21XL U22 ( .A0(n132), .A1(n131), .B0(check[6]), .Y(n144) );
  NAND4X1 U23 ( .A(n126), .B(n125), .C(n124), .D(n123), .Y(n132) );
  NAND4X1 U24 ( .A(n130), .B(n129), .C(n128), .D(n127), .Y(n131) );
  XNOR2X1 U25 ( .A(s6[0]), .B(p6[0]), .Y(n126) );
  XNOR2X1 U26 ( .A(s5[3]), .B(p5[3]), .Y(n133) );
  XNOR2X1 U27 ( .A(s5[5]), .B(p5[5]), .Y(n139) );
  XNOR2X1 U28 ( .A(s5[2]), .B(p5[2]), .Y(n134) );
  XNOR2X1 U29 ( .A(s5[4]), .B(p5[4]), .Y(n140) );
  XNOR2X1 U30 ( .A(s5[1]), .B(p5[1]), .Y(n135) );
  XNOR2X1 U31 ( .A(s3[7]), .B(p3[7]), .Y(n15) );
  OAI21XL U32 ( .A0(n20), .A1(n19), .B0(check[3]), .Y(n101) );
  NAND4X1 U33 ( .A(n14), .B(n13), .C(n12), .D(n11), .Y(n20) );
  NAND4X1 U34 ( .A(n18), .B(n17), .C(n16), .D(n15), .Y(n19) );
  XNOR2X1 U35 ( .A(s3[0]), .B(p3[0]), .Y(n14) );
  XNOR2X1 U36 ( .A(s4[7]), .B(p4[7]), .Y(n5) );
  OAI21XL U37 ( .A0(n10), .A1(n9), .B0(check[4]), .Y(n102) );
  NAND4X1 U38 ( .A(n4), .B(n3), .C(n2), .D(n1), .Y(n10) );
  NAND4X1 U39 ( .A(n8), .B(n7), .C(n6), .D(n5), .Y(n9) );
  XNOR2X1 U40 ( .A(s4[0]), .B(p4[0]), .Y(n4) );
  XNOR2X1 U41 ( .A(s4[6]), .B(p4[6]), .Y(n6) );
  XNOR2X1 U42 ( .A(s4[3]), .B(p4[3]), .Y(n1) );
  XNOR2X1 U43 ( .A(s4[5]), .B(p4[5]), .Y(n7) );
  XNOR2X1 U44 ( .A(s4[2]), .B(p4[2]), .Y(n2) );
  XNOR2X1 U45 ( .A(s4[4]), .B(p4[4]), .Y(n8) );
  XNOR2X1 U46 ( .A(s4[1]), .B(p4[1]), .Y(n3) );
  XNOR2X1 U47 ( .A(s0[2]), .B(p0[2]), .Y(n104) );
  OAI21XL U48 ( .A0(n112), .A1(n111), .B0(check[0]), .Y(n146) );
  NAND4X1 U49 ( .A(n110), .B(n109), .C(n108), .D(n107), .Y(n111) );
  NAND4X1 U50 ( .A(n106), .B(n105), .C(n104), .D(n103), .Y(n112) );
  XNOR2X1 U51 ( .A(s0[4]), .B(p0[4]), .Y(n110) );
  XNOR2X1 U52 ( .A(s7[4]), .B(p7[4]), .Y(n120) );
  XNOR2X1 U53 ( .A(s0[1]), .B(p0[1]), .Y(n105) );
  XNOR2X1 U54 ( .A(s5[7]), .B(p5[7]), .Y(n137) );
  XNOR2X1 U55 ( .A(s0[0]), .B(p0[0]), .Y(n106) );
  XNOR2X1 U56 ( .A(s1[7]), .B(p1[7]), .Y(n93) );
  OAI21XL U57 ( .A0(n98), .A1(n97), .B0(check[1]), .Y(n99) );
  NAND4X1 U58 ( .A(n92), .B(n91), .C(n32), .D(n31), .Y(n98) );
  NAND4X1 U59 ( .A(n96), .B(n95), .C(n94), .D(n93), .Y(n97) );
  XNOR2X1 U60 ( .A(s1[0]), .B(p1[0]), .Y(n92) );
  XNOR2X1 U61 ( .A(s6[6]), .B(p6[6]), .Y(n128) );
  XNOR2X1 U62 ( .A(s2[7]), .B(p2[7]), .Y(n25) );
  XNOR2X1 U63 ( .A(s1[6]), .B(p1[6]), .Y(n94) );
  NAND4X1 U64 ( .A(n28), .B(n27), .C(n26), .D(n25), .Y(n29) );
  XNOR2X1 U65 ( .A(s2[4]), .B(p2[4]), .Y(n28) );
  XNOR2X1 U66 ( .A(s2[5]), .B(p2[5]), .Y(n27) );
  XNOR2X1 U67 ( .A(s2[6]), .B(p2[6]), .Y(n26) );
  XNOR2X1 U68 ( .A(s6[3]), .B(p6[3]), .Y(n123) );
  XNOR2X1 U69 ( .A(s1[3]), .B(p1[3]), .Y(n31) );
  XNOR2X1 U70 ( .A(s6[5]), .B(p6[5]), .Y(n129) );
  XNOR2X1 U71 ( .A(s0[7]), .B(p0[7]), .Y(n107) );
  XNOR2X1 U72 ( .A(s1[5]), .B(p1[5]), .Y(n95) );
  XNOR2X1 U73 ( .A(s6[2]), .B(p6[2]), .Y(n124) );
  XNOR2X1 U74 ( .A(s2[3]), .B(p2[3]), .Y(n21) );
  XNOR2X1 U75 ( .A(s1[2]), .B(p1[2]), .Y(n32) );
  NAND4X1 U76 ( .A(n24), .B(n23), .C(n22), .D(n21), .Y(n30) );
  XNOR2X1 U77 ( .A(s2[0]), .B(p2[0]), .Y(n24) );
  XNOR2X1 U78 ( .A(s2[1]), .B(p2[1]), .Y(n23) );
  XNOR2X1 U79 ( .A(s2[2]), .B(p2[2]), .Y(n22) );
  XNOR2X1 U80 ( .A(s6[4]), .B(p6[4]), .Y(n130) );
  XNOR2X1 U81 ( .A(s0[6]), .B(p0[6]), .Y(n108) );
  XNOR2X1 U82 ( .A(s1[4]), .B(p1[4]), .Y(n96) );
  XNOR2X1 U83 ( .A(s3[6]), .B(p3[6]), .Y(n16) );
  XNOR2X1 U84 ( .A(s6[1]), .B(p6[1]), .Y(n125) );
  XNOR2X1 U85 ( .A(s0[5]), .B(p0[5]), .Y(n109) );
  XNOR2X1 U86 ( .A(s0[3]), .B(p0[3]), .Y(n103) );
  XNOR2X1 U87 ( .A(s1[1]), .B(p1[1]), .Y(n91) );
  XNOR2X1 U88 ( .A(s3[3]), .B(p3[3]), .Y(n11) );
  XNOR2X1 U89 ( .A(s3[5]), .B(p3[5]), .Y(n17) );
  XNOR2X1 U90 ( .A(s3[2]), .B(p3[2]), .Y(n12) );
  XNOR2X1 U91 ( .A(s3[4]), .B(p3[4]), .Y(n18) );
  XNOR2X1 U92 ( .A(s3[1]), .B(p3[1]), .Y(n13) );
endmodule


module Pattern_String_Comparator_Cell_8 ( s7, s6, s5, s4, s3, s2, s1, s0, p7, 
        p6, p5, p4, p3, p2, p1, p0, check, match );
  input [7:0] s7;
  input [7:0] s6;
  input [7:0] s5;
  input [7:0] s4;
  input [7:0] s3;
  input [7:0] s2;
  input [7:0] s1;
  input [7:0] s0;
  input [7:0] p7;
  input [7:0] p6;
  input [7:0] p5;
  input [7:0] p4;
  input [7:0] p3;
  input [7:0] p2;
  input [7:0] p1;
  input [7:0] p0;
  input [7:0] check;
  output match;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30,
         n31, n32, n91, n92, n93, n94, n95, n96, n97, n98, n99, n100, n101,
         n102, n103, n104, n105, n106, n107, n108, n109, n110, n111, n112,
         n113, n114, n115, n116, n117, n118, n119, n120, n121, n122, n123,
         n124, n125, n126, n127, n128, n129, n130, n131, n132, n133, n134,
         n135, n136, n137, n138, n139, n140, n141, n142, n143, n144, n145,
         n146, n147, n148;

  NOR2X1 U2 ( .A(n148), .B(n147), .Y(match) );
  NAND4X1 U3 ( .A(n102), .B(n101), .C(n100), .D(n99), .Y(n148) );
  NAND4X1 U4 ( .A(n146), .B(n145), .C(n144), .D(n143), .Y(n147) );
  OAI21XL U5 ( .A0(n30), .A1(n29), .B0(check[2]), .Y(n100) );
  XNOR2X1 U6 ( .A(s7[7]), .B(p7[7]), .Y(n117) );
  OAI21XL U7 ( .A0(n122), .A1(n121), .B0(check[7]), .Y(n145) );
  NAND4X1 U8 ( .A(n116), .B(n115), .C(n114), .D(n113), .Y(n122) );
  NAND4X1 U9 ( .A(n120), .B(n119), .C(n118), .D(n117), .Y(n121) );
  XNOR2X1 U10 ( .A(s7[3]), .B(p7[3]), .Y(n113) );
  XNOR2X1 U11 ( .A(s7[6]), .B(p7[6]), .Y(n118) );
  XNOR2X1 U12 ( .A(s7[2]), .B(p7[2]), .Y(n114) );
  XNOR2X1 U13 ( .A(s7[5]), .B(p7[5]), .Y(n119) );
  XNOR2X1 U14 ( .A(s7[1]), .B(p7[1]), .Y(n115) );
  XNOR2X1 U15 ( .A(s7[0]), .B(p7[0]), .Y(n116) );
  XNOR2X1 U16 ( .A(s5[6]), .B(p5[6]), .Y(n138) );
  OAI21XL U17 ( .A0(n142), .A1(n141), .B0(check[5]), .Y(n143) );
  NAND4X1 U18 ( .A(n136), .B(n135), .C(n134), .D(n133), .Y(n142) );
  NAND4X1 U19 ( .A(n140), .B(n139), .C(n138), .D(n137), .Y(n141) );
  XNOR2X1 U20 ( .A(s5[0]), .B(p5[0]), .Y(n136) );
  XNOR2X1 U21 ( .A(s6[7]), .B(p6[7]), .Y(n127) );
  OAI21XL U22 ( .A0(n132), .A1(n131), .B0(check[6]), .Y(n144) );
  NAND4X1 U23 ( .A(n126), .B(n125), .C(n124), .D(n123), .Y(n132) );
  NAND4X1 U24 ( .A(n130), .B(n129), .C(n128), .D(n127), .Y(n131) );
  XNOR2X1 U25 ( .A(s6[0]), .B(p6[0]), .Y(n126) );
  XNOR2X1 U26 ( .A(s5[3]), .B(p5[3]), .Y(n133) );
  XNOR2X1 U27 ( .A(s5[5]), .B(p5[5]), .Y(n139) );
  XNOR2X1 U28 ( .A(s5[2]), .B(p5[2]), .Y(n134) );
  XNOR2X1 U29 ( .A(s5[4]), .B(p5[4]), .Y(n140) );
  XNOR2X1 U30 ( .A(s5[1]), .B(p5[1]), .Y(n135) );
  XNOR2X1 U31 ( .A(s3[7]), .B(p3[7]), .Y(n15) );
  OAI21XL U32 ( .A0(n20), .A1(n19), .B0(check[3]), .Y(n101) );
  NAND4X1 U33 ( .A(n14), .B(n13), .C(n12), .D(n11), .Y(n20) );
  NAND4X1 U34 ( .A(n18), .B(n17), .C(n16), .D(n15), .Y(n19) );
  XNOR2X1 U35 ( .A(s3[0]), .B(p3[0]), .Y(n14) );
  XNOR2X1 U36 ( .A(s4[7]), .B(p4[7]), .Y(n5) );
  OAI21XL U37 ( .A0(n10), .A1(n9), .B0(check[4]), .Y(n102) );
  NAND4X1 U38 ( .A(n4), .B(n3), .C(n2), .D(n1), .Y(n10) );
  NAND4X1 U39 ( .A(n8), .B(n7), .C(n6), .D(n5), .Y(n9) );
  XNOR2X1 U40 ( .A(s4[0]), .B(p4[0]), .Y(n4) );
  XNOR2X1 U41 ( .A(s4[6]), .B(p4[6]), .Y(n6) );
  XNOR2X1 U42 ( .A(s4[3]), .B(p4[3]), .Y(n1) );
  XNOR2X1 U43 ( .A(s4[5]), .B(p4[5]), .Y(n7) );
  XNOR2X1 U44 ( .A(s4[2]), .B(p4[2]), .Y(n2) );
  XNOR2X1 U45 ( .A(s4[4]), .B(p4[4]), .Y(n8) );
  XNOR2X1 U46 ( .A(s4[1]), .B(p4[1]), .Y(n3) );
  XNOR2X1 U47 ( .A(s0[2]), .B(p0[2]), .Y(n104) );
  OAI21XL U48 ( .A0(n112), .A1(n111), .B0(check[0]), .Y(n146) );
  NAND4X1 U49 ( .A(n110), .B(n109), .C(n108), .D(n107), .Y(n111) );
  NAND4X1 U50 ( .A(n106), .B(n105), .C(n104), .D(n103), .Y(n112) );
  XNOR2X1 U51 ( .A(s0[4]), .B(p0[4]), .Y(n110) );
  XNOR2X1 U52 ( .A(s7[4]), .B(p7[4]), .Y(n120) );
  XNOR2X1 U53 ( .A(s0[1]), .B(p0[1]), .Y(n105) );
  XNOR2X1 U54 ( .A(s5[7]), .B(p5[7]), .Y(n137) );
  XNOR2X1 U55 ( .A(s0[0]), .B(p0[0]), .Y(n106) );
  XNOR2X1 U56 ( .A(s1[7]), .B(p1[7]), .Y(n93) );
  OAI21XL U57 ( .A0(n98), .A1(n97), .B0(check[1]), .Y(n99) );
  NAND4X1 U58 ( .A(n92), .B(n91), .C(n32), .D(n31), .Y(n98) );
  NAND4X1 U59 ( .A(n96), .B(n95), .C(n94), .D(n93), .Y(n97) );
  XNOR2X1 U60 ( .A(s1[0]), .B(p1[0]), .Y(n92) );
  XNOR2X1 U61 ( .A(s6[6]), .B(p6[6]), .Y(n128) );
  XNOR2X1 U62 ( .A(s2[7]), .B(p2[7]), .Y(n25) );
  XNOR2X1 U63 ( .A(s1[6]), .B(p1[6]), .Y(n94) );
  NAND4X1 U64 ( .A(n28), .B(n27), .C(n26), .D(n25), .Y(n29) );
  XNOR2X1 U65 ( .A(s2[4]), .B(p2[4]), .Y(n28) );
  XNOR2X1 U66 ( .A(s2[5]), .B(p2[5]), .Y(n27) );
  XNOR2X1 U67 ( .A(s2[6]), .B(p2[6]), .Y(n26) );
  XNOR2X1 U68 ( .A(s6[3]), .B(p6[3]), .Y(n123) );
  XNOR2X1 U69 ( .A(s1[3]), .B(p1[3]), .Y(n31) );
  XNOR2X1 U70 ( .A(s6[5]), .B(p6[5]), .Y(n129) );
  XNOR2X1 U71 ( .A(s0[7]), .B(p0[7]), .Y(n107) );
  XNOR2X1 U72 ( .A(s1[5]), .B(p1[5]), .Y(n95) );
  XNOR2X1 U73 ( .A(s6[2]), .B(p6[2]), .Y(n124) );
  XNOR2X1 U74 ( .A(s2[3]), .B(p2[3]), .Y(n21) );
  XNOR2X1 U75 ( .A(s1[2]), .B(p1[2]), .Y(n32) );
  NAND4X1 U76 ( .A(n24), .B(n23), .C(n22), .D(n21), .Y(n30) );
  XNOR2X1 U77 ( .A(s2[0]), .B(p2[0]), .Y(n24) );
  XNOR2X1 U78 ( .A(s2[1]), .B(p2[1]), .Y(n23) );
  XNOR2X1 U79 ( .A(s2[2]), .B(p2[2]), .Y(n22) );
  XNOR2X1 U80 ( .A(s6[4]), .B(p6[4]), .Y(n130) );
  XNOR2X1 U81 ( .A(s0[6]), .B(p0[6]), .Y(n108) );
  XNOR2X1 U82 ( .A(s1[4]), .B(p1[4]), .Y(n96) );
  XNOR2X1 U83 ( .A(s3[6]), .B(p3[6]), .Y(n16) );
  XNOR2X1 U84 ( .A(s6[1]), .B(p6[1]), .Y(n125) );
  XNOR2X1 U85 ( .A(s0[5]), .B(p0[5]), .Y(n109) );
  XNOR2X1 U86 ( .A(s0[3]), .B(p0[3]), .Y(n103) );
  XNOR2X1 U87 ( .A(s1[1]), .B(p1[1]), .Y(n91) );
  XNOR2X1 U88 ( .A(s3[3]), .B(p3[3]), .Y(n11) );
  XNOR2X1 U89 ( .A(s3[5]), .B(p3[5]), .Y(n17) );
  XNOR2X1 U90 ( .A(s3[2]), .B(p3[2]), .Y(n12) );
  XNOR2X1 U91 ( .A(s3[4]), .B(p3[4]), .Y(n18) );
  XNOR2X1 U92 ( .A(s3[1]), .B(p3[1]), .Y(n13) );
endmodule


module Pattern_String_Comparator_Cell_7 ( s7, s6, s5, s4, s3, s2, s1, s0, p7, 
        p6, p5, p4, p3, p2, p1, p0, check, match );
  input [7:0] s7;
  input [7:0] s6;
  input [7:0] s5;
  input [7:0] s4;
  input [7:0] s3;
  input [7:0] s2;
  input [7:0] s1;
  input [7:0] s0;
  input [7:0] p7;
  input [7:0] p6;
  input [7:0] p5;
  input [7:0] p4;
  input [7:0] p3;
  input [7:0] p2;
  input [7:0] p1;
  input [7:0] p0;
  input [7:0] check;
  output match;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30,
         n31, n32, n91, n92, n93, n94, n95, n96, n97, n98, n99, n100, n101,
         n102, n103, n104, n105, n106, n107, n108, n109, n110, n111, n112,
         n113, n114, n115, n116, n117, n118, n119, n120, n121, n122, n123,
         n124, n125, n126, n127, n128, n129, n130, n131, n132, n133, n134,
         n135, n136, n137, n138, n139, n140, n141, n142, n143, n144, n145,
         n146, n147, n148;

  NOR2X1 U2 ( .A(n148), .B(n147), .Y(match) );
  NAND4X1 U3 ( .A(n102), .B(n101), .C(n100), .D(n99), .Y(n148) );
  NAND4X1 U4 ( .A(n146), .B(n145), .C(n144), .D(n143), .Y(n147) );
  OAI21XL U5 ( .A0(n30), .A1(n29), .B0(check[2]), .Y(n100) );
  XNOR2X1 U6 ( .A(s7[7]), .B(p7[7]), .Y(n117) );
  OAI21XL U7 ( .A0(n122), .A1(n121), .B0(check[7]), .Y(n145) );
  NAND4X1 U8 ( .A(n116), .B(n115), .C(n114), .D(n113), .Y(n122) );
  NAND4X1 U9 ( .A(n120), .B(n119), .C(n118), .D(n117), .Y(n121) );
  XNOR2X1 U10 ( .A(s7[3]), .B(p7[3]), .Y(n113) );
  XNOR2X1 U11 ( .A(s7[6]), .B(p7[6]), .Y(n118) );
  XNOR2X1 U12 ( .A(s7[2]), .B(p7[2]), .Y(n114) );
  XNOR2X1 U13 ( .A(s7[5]), .B(p7[5]), .Y(n119) );
  XNOR2X1 U14 ( .A(s7[1]), .B(p7[1]), .Y(n115) );
  XNOR2X1 U15 ( .A(s7[0]), .B(p7[0]), .Y(n116) );
  XNOR2X1 U16 ( .A(s5[6]), .B(p5[6]), .Y(n138) );
  OAI21XL U17 ( .A0(n142), .A1(n141), .B0(check[5]), .Y(n143) );
  NAND4X1 U18 ( .A(n136), .B(n135), .C(n134), .D(n133), .Y(n142) );
  NAND4X1 U19 ( .A(n140), .B(n139), .C(n138), .D(n137), .Y(n141) );
  XNOR2X1 U20 ( .A(s5[0]), .B(p5[0]), .Y(n136) );
  XNOR2X1 U21 ( .A(s6[7]), .B(p6[7]), .Y(n127) );
  OAI21XL U22 ( .A0(n132), .A1(n131), .B0(check[6]), .Y(n144) );
  NAND4X1 U23 ( .A(n126), .B(n125), .C(n124), .D(n123), .Y(n132) );
  NAND4X1 U24 ( .A(n130), .B(n129), .C(n128), .D(n127), .Y(n131) );
  XNOR2X1 U25 ( .A(s6[0]), .B(p6[0]), .Y(n126) );
  XNOR2X1 U26 ( .A(s5[3]), .B(p5[3]), .Y(n133) );
  XNOR2X1 U27 ( .A(s5[5]), .B(p5[5]), .Y(n139) );
  XNOR2X1 U28 ( .A(s5[2]), .B(p5[2]), .Y(n134) );
  XNOR2X1 U29 ( .A(s5[4]), .B(p5[4]), .Y(n140) );
  XNOR2X1 U30 ( .A(s5[1]), .B(p5[1]), .Y(n135) );
  XNOR2X1 U31 ( .A(s3[7]), .B(p3[7]), .Y(n15) );
  OAI21XL U32 ( .A0(n20), .A1(n19), .B0(check[3]), .Y(n101) );
  NAND4X1 U33 ( .A(n14), .B(n13), .C(n12), .D(n11), .Y(n20) );
  NAND4X1 U34 ( .A(n18), .B(n17), .C(n16), .D(n15), .Y(n19) );
  XNOR2X1 U35 ( .A(s3[0]), .B(p3[0]), .Y(n14) );
  XNOR2X1 U36 ( .A(s4[7]), .B(p4[7]), .Y(n5) );
  OAI21XL U37 ( .A0(n10), .A1(n9), .B0(check[4]), .Y(n102) );
  NAND4X1 U38 ( .A(n4), .B(n3), .C(n2), .D(n1), .Y(n10) );
  NAND4X1 U39 ( .A(n8), .B(n7), .C(n6), .D(n5), .Y(n9) );
  XNOR2X1 U40 ( .A(s4[0]), .B(p4[0]), .Y(n4) );
  XNOR2X1 U41 ( .A(s4[6]), .B(p4[6]), .Y(n6) );
  XNOR2X1 U42 ( .A(s4[3]), .B(p4[3]), .Y(n1) );
  XNOR2X1 U43 ( .A(s4[5]), .B(p4[5]), .Y(n7) );
  XNOR2X1 U44 ( .A(s4[2]), .B(p4[2]), .Y(n2) );
  XNOR2X1 U45 ( .A(s4[4]), .B(p4[4]), .Y(n8) );
  XNOR2X1 U46 ( .A(s4[1]), .B(p4[1]), .Y(n3) );
  XNOR2X1 U47 ( .A(s0[2]), .B(p0[2]), .Y(n104) );
  OAI21XL U48 ( .A0(n112), .A1(n111), .B0(check[0]), .Y(n146) );
  NAND4X1 U49 ( .A(n110), .B(n109), .C(n108), .D(n107), .Y(n111) );
  NAND4X1 U50 ( .A(n106), .B(n105), .C(n104), .D(n103), .Y(n112) );
  XNOR2X1 U51 ( .A(s0[4]), .B(p0[4]), .Y(n110) );
  XNOR2X1 U52 ( .A(s7[4]), .B(p7[4]), .Y(n120) );
  XNOR2X1 U53 ( .A(s0[1]), .B(p0[1]), .Y(n105) );
  XNOR2X1 U54 ( .A(s5[7]), .B(p5[7]), .Y(n137) );
  XNOR2X1 U55 ( .A(s0[0]), .B(p0[0]), .Y(n106) );
  XNOR2X1 U56 ( .A(s1[7]), .B(p1[7]), .Y(n93) );
  OAI21XL U57 ( .A0(n98), .A1(n97), .B0(check[1]), .Y(n99) );
  NAND4X1 U58 ( .A(n92), .B(n91), .C(n32), .D(n31), .Y(n98) );
  NAND4X1 U59 ( .A(n96), .B(n95), .C(n94), .D(n93), .Y(n97) );
  XNOR2X1 U60 ( .A(s1[0]), .B(p1[0]), .Y(n92) );
  XNOR2X1 U61 ( .A(s6[6]), .B(p6[6]), .Y(n128) );
  XNOR2X1 U62 ( .A(s2[7]), .B(p2[7]), .Y(n25) );
  XNOR2X1 U63 ( .A(s1[6]), .B(p1[6]), .Y(n94) );
  NAND4X1 U64 ( .A(n28), .B(n27), .C(n26), .D(n25), .Y(n29) );
  XNOR2X1 U65 ( .A(s2[4]), .B(p2[4]), .Y(n28) );
  XNOR2X1 U66 ( .A(s2[5]), .B(p2[5]), .Y(n27) );
  XNOR2X1 U67 ( .A(s2[6]), .B(p2[6]), .Y(n26) );
  XNOR2X1 U68 ( .A(s6[3]), .B(p6[3]), .Y(n123) );
  XNOR2X1 U69 ( .A(s1[3]), .B(p1[3]), .Y(n31) );
  XNOR2X1 U70 ( .A(s6[5]), .B(p6[5]), .Y(n129) );
  XNOR2X1 U71 ( .A(s0[7]), .B(p0[7]), .Y(n107) );
  XNOR2X1 U72 ( .A(s1[5]), .B(p1[5]), .Y(n95) );
  XNOR2X1 U73 ( .A(s6[2]), .B(p6[2]), .Y(n124) );
  XNOR2X1 U74 ( .A(s2[3]), .B(p2[3]), .Y(n21) );
  XNOR2X1 U75 ( .A(s1[2]), .B(p1[2]), .Y(n32) );
  NAND4X1 U76 ( .A(n24), .B(n23), .C(n22), .D(n21), .Y(n30) );
  XNOR2X1 U77 ( .A(s2[0]), .B(p2[0]), .Y(n24) );
  XNOR2X1 U78 ( .A(s2[1]), .B(p2[1]), .Y(n23) );
  XNOR2X1 U79 ( .A(s2[2]), .B(p2[2]), .Y(n22) );
  XNOR2X1 U80 ( .A(s6[4]), .B(p6[4]), .Y(n130) );
  XNOR2X1 U81 ( .A(s0[6]), .B(p0[6]), .Y(n108) );
  XNOR2X1 U82 ( .A(s1[4]), .B(p1[4]), .Y(n96) );
  XNOR2X1 U83 ( .A(s3[6]), .B(p3[6]), .Y(n16) );
  XNOR2X1 U84 ( .A(s6[1]), .B(p6[1]), .Y(n125) );
  XNOR2X1 U85 ( .A(s0[5]), .B(p0[5]), .Y(n109) );
  XNOR2X1 U86 ( .A(s0[3]), .B(p0[3]), .Y(n103) );
  XNOR2X1 U87 ( .A(s1[1]), .B(p1[1]), .Y(n91) );
  XNOR2X1 U88 ( .A(s3[3]), .B(p3[3]), .Y(n11) );
  XNOR2X1 U89 ( .A(s3[5]), .B(p3[5]), .Y(n17) );
  XNOR2X1 U90 ( .A(s3[2]), .B(p3[2]), .Y(n12) );
  XNOR2X1 U91 ( .A(s3[4]), .B(p3[4]), .Y(n18) );
  XNOR2X1 U92 ( .A(s3[1]), .B(p3[1]), .Y(n13) );
endmodule


module Pattern_String_Comparator_Cell_6 ( s7, s6, s5, s4, s3, s2, s1, s0, p7, 
        p6, p5, p4, p3, p2, p1, p0, check, match );
  input [7:0] s7;
  input [7:0] s6;
  input [7:0] s5;
  input [7:0] s4;
  input [7:0] s3;
  input [7:0] s2;
  input [7:0] s1;
  input [7:0] s0;
  input [7:0] p7;
  input [7:0] p6;
  input [7:0] p5;
  input [7:0] p4;
  input [7:0] p3;
  input [7:0] p2;
  input [7:0] p1;
  input [7:0] p0;
  input [7:0] check;
  output match;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30,
         n31, n32, n91, n92, n93, n94, n95, n96, n97, n98, n99, n100, n101,
         n102, n103, n104, n105, n106, n107, n108, n109, n110, n111, n112,
         n113, n114, n115, n116, n117, n118, n119, n120, n121, n122, n123,
         n124, n125, n126, n127, n128, n129, n130, n131, n132, n133, n134,
         n135, n136, n137, n138, n139, n140, n141, n142, n143, n144, n145,
         n146, n147, n148;

  NOR2X1 U2 ( .A(n148), .B(n147), .Y(match) );
  NAND4X1 U3 ( .A(n102), .B(n101), .C(n100), .D(n99), .Y(n148) );
  NAND4X1 U4 ( .A(n146), .B(n145), .C(n144), .D(n143), .Y(n147) );
  OAI21XL U5 ( .A0(n30), .A1(n29), .B0(check[2]), .Y(n100) );
  XNOR2X1 U6 ( .A(s7[7]), .B(p7[7]), .Y(n117) );
  OAI21XL U7 ( .A0(n122), .A1(n121), .B0(check[7]), .Y(n145) );
  NAND4X1 U8 ( .A(n116), .B(n115), .C(n114), .D(n113), .Y(n122) );
  NAND4X1 U9 ( .A(n120), .B(n119), .C(n118), .D(n117), .Y(n121) );
  XNOR2X1 U10 ( .A(s7[3]), .B(p7[3]), .Y(n113) );
  XNOR2X1 U11 ( .A(s7[6]), .B(p7[6]), .Y(n118) );
  XNOR2X1 U12 ( .A(s7[2]), .B(p7[2]), .Y(n114) );
  XNOR2X1 U13 ( .A(s7[5]), .B(p7[5]), .Y(n119) );
  XNOR2X1 U14 ( .A(s7[1]), .B(p7[1]), .Y(n115) );
  XNOR2X1 U15 ( .A(s7[0]), .B(p7[0]), .Y(n116) );
  XNOR2X1 U16 ( .A(s5[6]), .B(p5[6]), .Y(n138) );
  OAI21XL U17 ( .A0(n142), .A1(n141), .B0(check[5]), .Y(n143) );
  NAND4X1 U18 ( .A(n136), .B(n135), .C(n134), .D(n133), .Y(n142) );
  NAND4X1 U19 ( .A(n140), .B(n139), .C(n138), .D(n137), .Y(n141) );
  XNOR2X1 U20 ( .A(s5[0]), .B(p5[0]), .Y(n136) );
  XNOR2X1 U21 ( .A(s6[7]), .B(p6[7]), .Y(n127) );
  OAI21XL U22 ( .A0(n132), .A1(n131), .B0(check[6]), .Y(n144) );
  NAND4X1 U23 ( .A(n126), .B(n125), .C(n124), .D(n123), .Y(n132) );
  NAND4X1 U24 ( .A(n130), .B(n129), .C(n128), .D(n127), .Y(n131) );
  XNOR2X1 U25 ( .A(s6[0]), .B(p6[0]), .Y(n126) );
  XNOR2X1 U26 ( .A(s5[3]), .B(p5[3]), .Y(n133) );
  XNOR2X1 U27 ( .A(s5[5]), .B(p5[5]), .Y(n139) );
  XNOR2X1 U28 ( .A(s5[2]), .B(p5[2]), .Y(n134) );
  XNOR2X1 U29 ( .A(s5[4]), .B(p5[4]), .Y(n140) );
  XNOR2X1 U30 ( .A(s5[1]), .B(p5[1]), .Y(n135) );
  XNOR2X1 U31 ( .A(s3[7]), .B(p3[7]), .Y(n15) );
  OAI21XL U32 ( .A0(n20), .A1(n19), .B0(check[3]), .Y(n101) );
  NAND4X1 U33 ( .A(n14), .B(n13), .C(n12), .D(n11), .Y(n20) );
  NAND4X1 U34 ( .A(n18), .B(n17), .C(n16), .D(n15), .Y(n19) );
  XNOR2X1 U35 ( .A(s3[0]), .B(p3[0]), .Y(n14) );
  XNOR2X1 U36 ( .A(s4[7]), .B(p4[7]), .Y(n5) );
  OAI21XL U37 ( .A0(n10), .A1(n9), .B0(check[4]), .Y(n102) );
  NAND4X1 U38 ( .A(n4), .B(n3), .C(n2), .D(n1), .Y(n10) );
  NAND4X1 U39 ( .A(n8), .B(n7), .C(n6), .D(n5), .Y(n9) );
  XNOR2X1 U40 ( .A(s4[0]), .B(p4[0]), .Y(n4) );
  XNOR2X1 U41 ( .A(s4[6]), .B(p4[6]), .Y(n6) );
  XNOR2X1 U42 ( .A(s4[3]), .B(p4[3]), .Y(n1) );
  XNOR2X1 U43 ( .A(s4[5]), .B(p4[5]), .Y(n7) );
  XNOR2X1 U44 ( .A(s4[2]), .B(p4[2]), .Y(n2) );
  XNOR2X1 U45 ( .A(s4[4]), .B(p4[4]), .Y(n8) );
  XNOR2X1 U46 ( .A(s4[1]), .B(p4[1]), .Y(n3) );
  XNOR2X1 U47 ( .A(s7[4]), .B(p7[4]), .Y(n120) );
  XNOR2X1 U48 ( .A(s5[7]), .B(p5[7]), .Y(n137) );
  XNOR2X1 U49 ( .A(s0[2]), .B(p0[2]), .Y(n104) );
  OAI21XL U50 ( .A0(n112), .A1(n111), .B0(check[0]), .Y(n146) );
  NAND4X1 U51 ( .A(n110), .B(n109), .C(n108), .D(n107), .Y(n111) );
  NAND4X1 U52 ( .A(n106), .B(n105), .C(n104), .D(n103), .Y(n112) );
  XNOR2X1 U53 ( .A(s0[5]), .B(p0[5]), .Y(n109) );
  XNOR2X1 U54 ( .A(s1[7]), .B(p1[7]), .Y(n93) );
  OAI21XL U55 ( .A0(n98), .A1(n97), .B0(check[1]), .Y(n99) );
  NAND4X1 U56 ( .A(n92), .B(n91), .C(n32), .D(n31), .Y(n98) );
  NAND4X1 U57 ( .A(n96), .B(n95), .C(n94), .D(n93), .Y(n97) );
  XNOR2X1 U58 ( .A(s1[0]), .B(p1[0]), .Y(n92) );
  XNOR2X1 U59 ( .A(s0[1]), .B(p0[1]), .Y(n105) );
  XNOR2X1 U60 ( .A(s6[6]), .B(p6[6]), .Y(n128) );
  XNOR2X1 U61 ( .A(s2[7]), .B(p2[7]), .Y(n25) );
  XNOR2X1 U62 ( .A(s1[6]), .B(p1[6]), .Y(n94) );
  NAND4X1 U63 ( .A(n28), .B(n27), .C(n26), .D(n25), .Y(n29) );
  XNOR2X1 U64 ( .A(s2[4]), .B(p2[4]), .Y(n28) );
  XNOR2X1 U65 ( .A(s2[5]), .B(p2[5]), .Y(n27) );
  XNOR2X1 U66 ( .A(s2[6]), .B(p2[6]), .Y(n26) );
  XNOR2X1 U67 ( .A(s6[3]), .B(p6[3]), .Y(n123) );
  XNOR2X1 U68 ( .A(s1[3]), .B(p1[3]), .Y(n31) );
  XNOR2X1 U69 ( .A(s0[0]), .B(p0[0]), .Y(n106) );
  XNOR2X1 U70 ( .A(s6[5]), .B(p6[5]), .Y(n129) );
  XNOR2X1 U71 ( .A(s1[5]), .B(p1[5]), .Y(n95) );
  XNOR2X1 U72 ( .A(s6[2]), .B(p6[2]), .Y(n124) );
  XNOR2X1 U73 ( .A(s2[3]), .B(p2[3]), .Y(n21) );
  XNOR2X1 U74 ( .A(s1[2]), .B(p1[2]), .Y(n32) );
  NAND4X1 U75 ( .A(n24), .B(n23), .C(n22), .D(n21), .Y(n30) );
  XNOR2X1 U76 ( .A(s2[0]), .B(p2[0]), .Y(n24) );
  XNOR2X1 U77 ( .A(s2[1]), .B(p2[1]), .Y(n23) );
  XNOR2X1 U78 ( .A(s2[2]), .B(p2[2]), .Y(n22) );
  XNOR2X1 U79 ( .A(s6[4]), .B(p6[4]), .Y(n130) );
  XNOR2X1 U80 ( .A(s1[4]), .B(p1[4]), .Y(n96) );
  XNOR2X1 U81 ( .A(s3[6]), .B(p3[6]), .Y(n16) );
  XNOR2X1 U82 ( .A(s6[1]), .B(p6[1]), .Y(n125) );
  XNOR2X1 U83 ( .A(s1[1]), .B(p1[1]), .Y(n91) );
  XNOR2X1 U84 ( .A(s3[3]), .B(p3[3]), .Y(n11) );
  XNOR2X1 U85 ( .A(s3[5]), .B(p3[5]), .Y(n17) );
  XNOR2X1 U86 ( .A(s3[2]), .B(p3[2]), .Y(n12) );
  XNOR2X1 U87 ( .A(s0[7]), .B(p0[7]), .Y(n107) );
  XNOR2X1 U88 ( .A(s3[4]), .B(p3[4]), .Y(n18) );
  XNOR2X1 U89 ( .A(s0[6]), .B(p0[6]), .Y(n108) );
  XNOR2X1 U90 ( .A(s3[1]), .B(p3[1]), .Y(n13) );
  XNOR2X1 U91 ( .A(s0[3]), .B(p0[3]), .Y(n103) );
  XNOR2X1 U92 ( .A(s0[4]), .B(p0[4]), .Y(n110) );
endmodule


module Pattern_String_Comparator_Cell_5 ( s7, s6, s5, s4, s3, s2, s1, s0, p7, 
        p6, p5, p4, p3, p2, p1, p0, check, match );
  input [7:0] s7;
  input [7:0] s6;
  input [7:0] s5;
  input [7:0] s4;
  input [7:0] s3;
  input [7:0] s2;
  input [7:0] s1;
  input [7:0] s0;
  input [7:0] p7;
  input [7:0] p6;
  input [7:0] p5;
  input [7:0] p4;
  input [7:0] p3;
  input [7:0] p2;
  input [7:0] p1;
  input [7:0] p0;
  input [7:0] check;
  output match;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30,
         n31, n32, n91, n92, n93, n94, n95, n96, n97, n98, n99, n100, n101,
         n102, n103, n104, n105, n106, n107, n108, n109, n110, n111, n112,
         n113, n114, n115, n116, n117, n118, n119, n120, n121, n122, n123,
         n124, n125, n126, n127, n128, n129, n130, n131, n132, n133, n134,
         n135, n136, n137, n138, n139, n140, n141, n142, n143, n144, n145,
         n146, n147, n148;

  NOR2X1 U2 ( .A(n148), .B(n147), .Y(match) );
  NAND4X1 U3 ( .A(n102), .B(n101), .C(n100), .D(n99), .Y(n148) );
  NAND4X1 U4 ( .A(n146), .B(n145), .C(n144), .D(n143), .Y(n147) );
  OAI21XL U5 ( .A0(n98), .A1(n97), .B0(check[1]), .Y(n99) );
  XNOR2X1 U6 ( .A(s7[7]), .B(p7[7]), .Y(n117) );
  OAI21XL U7 ( .A0(n122), .A1(n121), .B0(check[7]), .Y(n145) );
  NAND4X1 U8 ( .A(n116), .B(n115), .C(n114), .D(n113), .Y(n122) );
  NAND4X1 U9 ( .A(n120), .B(n119), .C(n118), .D(n117), .Y(n121) );
  XNOR2X1 U10 ( .A(s7[3]), .B(p7[3]), .Y(n113) );
  XNOR2X1 U11 ( .A(s7[6]), .B(p7[6]), .Y(n118) );
  XNOR2X1 U12 ( .A(s7[2]), .B(p7[2]), .Y(n114) );
  XNOR2X1 U13 ( .A(s7[5]), .B(p7[5]), .Y(n119) );
  XNOR2X1 U14 ( .A(s7[1]), .B(p7[1]), .Y(n115) );
  XNOR2X1 U15 ( .A(s7[0]), .B(p7[0]), .Y(n116) );
  XNOR2X1 U16 ( .A(s5[6]), .B(p5[6]), .Y(n138) );
  OAI21XL U17 ( .A0(n142), .A1(n141), .B0(check[5]), .Y(n143) );
  NAND4X1 U18 ( .A(n136), .B(n135), .C(n134), .D(n133), .Y(n142) );
  NAND4X1 U19 ( .A(n140), .B(n139), .C(n138), .D(n137), .Y(n141) );
  XNOR2X1 U20 ( .A(s5[0]), .B(p5[0]), .Y(n136) );
  XNOR2X1 U21 ( .A(s6[7]), .B(p6[7]), .Y(n127) );
  OAI21XL U22 ( .A0(n132), .A1(n131), .B0(check[6]), .Y(n144) );
  NAND4X1 U23 ( .A(n126), .B(n125), .C(n124), .D(n123), .Y(n132) );
  NAND4X1 U24 ( .A(n130), .B(n129), .C(n128), .D(n127), .Y(n131) );
  XNOR2X1 U25 ( .A(s6[0]), .B(p6[0]), .Y(n126) );
  XNOR2X1 U26 ( .A(s5[3]), .B(p5[3]), .Y(n133) );
  XNOR2X1 U27 ( .A(s5[5]), .B(p5[5]), .Y(n139) );
  XNOR2X1 U28 ( .A(s5[2]), .B(p5[2]), .Y(n134) );
  XNOR2X1 U29 ( .A(s5[4]), .B(p5[4]), .Y(n140) );
  XNOR2X1 U30 ( .A(s5[1]), .B(p5[1]), .Y(n135) );
  XNOR2X1 U31 ( .A(s3[7]), .B(p3[7]), .Y(n15) );
  OAI21XL U32 ( .A0(n20), .A1(n19), .B0(check[3]), .Y(n101) );
  NAND4X1 U33 ( .A(n14), .B(n13), .C(n12), .D(n11), .Y(n20) );
  NAND4X1 U34 ( .A(n18), .B(n17), .C(n16), .D(n15), .Y(n19) );
  XNOR2X1 U35 ( .A(s3[0]), .B(p3[0]), .Y(n14) );
  XNOR2X1 U36 ( .A(s4[7]), .B(p4[7]), .Y(n5) );
  OAI21XL U37 ( .A0(n10), .A1(n9), .B0(check[4]), .Y(n102) );
  NAND4X1 U38 ( .A(n4), .B(n3), .C(n2), .D(n1), .Y(n10) );
  NAND4X1 U39 ( .A(n8), .B(n7), .C(n6), .D(n5), .Y(n9) );
  XNOR2X1 U40 ( .A(s4[0]), .B(p4[0]), .Y(n4) );
  XNOR2X1 U41 ( .A(s4[6]), .B(p4[6]), .Y(n6) );
  XNOR2X1 U42 ( .A(s4[3]), .B(p4[3]), .Y(n1) );
  XNOR2X1 U43 ( .A(s4[5]), .B(p4[5]), .Y(n7) );
  XNOR2X1 U44 ( .A(s4[2]), .B(p4[2]), .Y(n2) );
  XNOR2X1 U45 ( .A(s4[4]), .B(p4[4]), .Y(n8) );
  XNOR2X1 U46 ( .A(s4[1]), .B(p4[1]), .Y(n3) );
  XNOR2X1 U47 ( .A(s7[4]), .B(p7[4]), .Y(n120) );
  XNOR2X1 U48 ( .A(s5[7]), .B(p5[7]), .Y(n137) );
  XNOR2X1 U49 ( .A(s0[2]), .B(p0[2]), .Y(n104) );
  OAI21XL U50 ( .A0(n112), .A1(n111), .B0(check[0]), .Y(n146) );
  NAND4X1 U51 ( .A(n110), .B(n109), .C(n108), .D(n107), .Y(n111) );
  NAND4X1 U52 ( .A(n106), .B(n105), .C(n104), .D(n103), .Y(n112) );
  XNOR2X1 U53 ( .A(s0[4]), .B(p0[4]), .Y(n110) );
  XNOR2X1 U54 ( .A(s0[1]), .B(p0[1]), .Y(n105) );
  XNOR2X1 U55 ( .A(s6[6]), .B(p6[6]), .Y(n128) );
  XNOR2X1 U56 ( .A(s2[7]), .B(p2[7]), .Y(n25) );
  OAI21XL U57 ( .A0(n30), .A1(n29), .B0(check[2]), .Y(n100) );
  NAND4X1 U58 ( .A(n24), .B(n23), .C(n22), .D(n21), .Y(n30) );
  NAND4X1 U59 ( .A(n28), .B(n27), .C(n26), .D(n25), .Y(n29) );
  XNOR2X1 U60 ( .A(s2[0]), .B(p2[0]), .Y(n24) );
  XNOR2X1 U61 ( .A(s6[3]), .B(p6[3]), .Y(n123) );
  XNOR2X1 U62 ( .A(s0[0]), .B(p0[0]), .Y(n106) );
  XNOR2X1 U63 ( .A(s2[6]), .B(p2[6]), .Y(n26) );
  XNOR2X1 U64 ( .A(s6[5]), .B(p6[5]), .Y(n129) );
  XNOR2X1 U65 ( .A(s6[2]), .B(p6[2]), .Y(n124) );
  XNOR2X1 U66 ( .A(s2[3]), .B(p2[3]), .Y(n21) );
  XNOR2X1 U67 ( .A(s1[7]), .B(p1[7]), .Y(n93) );
  NAND4X1 U68 ( .A(n96), .B(n95), .C(n94), .D(n93), .Y(n97) );
  XNOR2X1 U69 ( .A(s1[5]), .B(p1[5]), .Y(n95) );
  XNOR2X1 U70 ( .A(s1[4]), .B(p1[4]), .Y(n96) );
  XNOR2X1 U71 ( .A(s1[6]), .B(p1[6]), .Y(n94) );
  XNOR2X1 U72 ( .A(s6[4]), .B(p6[4]), .Y(n130) );
  XNOR2X1 U73 ( .A(s2[5]), .B(p2[5]), .Y(n27) );
  XNOR2X1 U74 ( .A(s3[6]), .B(p3[6]), .Y(n16) );
  XNOR2X1 U75 ( .A(s2[2]), .B(p2[2]), .Y(n22) );
  XNOR2X1 U76 ( .A(s6[1]), .B(p6[1]), .Y(n125) );
  XNOR2X1 U77 ( .A(s3[3]), .B(p3[3]), .Y(n11) );
  XNOR2X1 U78 ( .A(s1[3]), .B(p1[3]), .Y(n31) );
  NAND4X1 U79 ( .A(n92), .B(n91), .C(n32), .D(n31), .Y(n98) );
  XNOR2X1 U80 ( .A(s1[0]), .B(p1[0]), .Y(n92) );
  XNOR2X1 U81 ( .A(s1[1]), .B(p1[1]), .Y(n91) );
  XNOR2X1 U82 ( .A(s1[2]), .B(p1[2]), .Y(n32) );
  XNOR2X1 U83 ( .A(s2[4]), .B(p2[4]), .Y(n28) );
  XNOR2X1 U84 ( .A(s3[5]), .B(p3[5]), .Y(n17) );
  XNOR2X1 U85 ( .A(s2[1]), .B(p2[1]), .Y(n23) );
  XNOR2X1 U86 ( .A(s3[2]), .B(p3[2]), .Y(n12) );
  XNOR2X1 U87 ( .A(s0[7]), .B(p0[7]), .Y(n107) );
  XNOR2X1 U88 ( .A(s3[4]), .B(p3[4]), .Y(n18) );
  XNOR2X1 U89 ( .A(s0[6]), .B(p0[6]), .Y(n108) );
  XNOR2X1 U90 ( .A(s3[1]), .B(p3[1]), .Y(n13) );
  XNOR2X1 U91 ( .A(s0[3]), .B(p0[3]), .Y(n103) );
  XNOR2X1 U92 ( .A(s0[5]), .B(p0[5]), .Y(n109) );
endmodule


module Pattern_String_Comparator_Cell_4 ( s7, s6, s5, s4, s3, s2, s1, s0, p7, 
        p6, p5, p4, p3, p2, p1, p0, check, match );
  input [7:0] s7;
  input [7:0] s6;
  input [7:0] s5;
  input [7:0] s4;
  input [7:0] s3;
  input [7:0] s2;
  input [7:0] s1;
  input [7:0] s0;
  input [7:0] p7;
  input [7:0] p6;
  input [7:0] p5;
  input [7:0] p4;
  input [7:0] p3;
  input [7:0] p2;
  input [7:0] p1;
  input [7:0] p0;
  input [7:0] check;
  output match;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30,
         n31, n32, n91, n92, n93, n94, n95, n96, n97, n98, n99, n100, n101,
         n102, n103, n104, n105, n106, n107, n108, n109, n110, n111, n112,
         n113, n114, n115, n116, n117, n118, n119, n120, n121, n122, n123,
         n124, n125, n126, n127, n128, n129, n130, n131, n132, n133, n134,
         n135, n136, n137, n138, n139, n140, n141, n142, n143, n144, n145,
         n146, n147, n148;

  NOR2X1 U2 ( .A(n148), .B(n147), .Y(match) );
  NAND4X1 U3 ( .A(n102), .B(n101), .C(n100), .D(n99), .Y(n148) );
  NAND4X1 U4 ( .A(n146), .B(n145), .C(n144), .D(n143), .Y(n147) );
  OAI21XL U5 ( .A0(n30), .A1(n29), .B0(check[2]), .Y(n100) );
  XNOR2X1 U6 ( .A(s7[7]), .B(p7[7]), .Y(n117) );
  OAI21XL U7 ( .A0(n122), .A1(n121), .B0(check[7]), .Y(n145) );
  NAND4X1 U8 ( .A(n116), .B(n115), .C(n114), .D(n113), .Y(n122) );
  NAND4X1 U9 ( .A(n120), .B(n119), .C(n118), .D(n117), .Y(n121) );
  XNOR2X1 U10 ( .A(s7[3]), .B(p7[3]), .Y(n113) );
  XNOR2X1 U11 ( .A(s7[6]), .B(p7[6]), .Y(n118) );
  XNOR2X1 U12 ( .A(s7[2]), .B(p7[2]), .Y(n114) );
  XNOR2X1 U13 ( .A(s7[5]), .B(p7[5]), .Y(n119) );
  XNOR2X1 U14 ( .A(s7[1]), .B(p7[1]), .Y(n115) );
  XNOR2X1 U15 ( .A(s7[0]), .B(p7[0]), .Y(n116) );
  XNOR2X1 U16 ( .A(s5[6]), .B(p5[6]), .Y(n138) );
  OAI21XL U17 ( .A0(n142), .A1(n141), .B0(check[5]), .Y(n143) );
  NAND4X1 U18 ( .A(n136), .B(n135), .C(n134), .D(n133), .Y(n142) );
  NAND4X1 U19 ( .A(n140), .B(n139), .C(n138), .D(n137), .Y(n141) );
  XNOR2X1 U20 ( .A(s5[0]), .B(p5[0]), .Y(n136) );
  XNOR2X1 U21 ( .A(s6[7]), .B(p6[7]), .Y(n127) );
  OAI21XL U22 ( .A0(n132), .A1(n131), .B0(check[6]), .Y(n144) );
  NAND4X1 U23 ( .A(n126), .B(n125), .C(n124), .D(n123), .Y(n132) );
  NAND4X1 U24 ( .A(n130), .B(n129), .C(n128), .D(n127), .Y(n131) );
  XNOR2X1 U25 ( .A(s6[0]), .B(p6[0]), .Y(n126) );
  XNOR2X1 U26 ( .A(s5[3]), .B(p5[3]), .Y(n133) );
  XNOR2X1 U27 ( .A(s5[5]), .B(p5[5]), .Y(n139) );
  XNOR2X1 U28 ( .A(s5[2]), .B(p5[2]), .Y(n134) );
  XNOR2X1 U29 ( .A(s5[4]), .B(p5[4]), .Y(n140) );
  XNOR2X1 U30 ( .A(s5[1]), .B(p5[1]), .Y(n135) );
  XNOR2X1 U31 ( .A(s3[7]), .B(p3[7]), .Y(n15) );
  OAI21XL U32 ( .A0(n20), .A1(n19), .B0(check[3]), .Y(n101) );
  NAND4X1 U33 ( .A(n14), .B(n13), .C(n12), .D(n11), .Y(n20) );
  NAND4X1 U34 ( .A(n18), .B(n17), .C(n16), .D(n15), .Y(n19) );
  XNOR2X1 U35 ( .A(s3[0]), .B(p3[0]), .Y(n14) );
  XNOR2X1 U36 ( .A(s4[7]), .B(p4[7]), .Y(n5) );
  OAI21XL U37 ( .A0(n10), .A1(n9), .B0(check[4]), .Y(n102) );
  NAND4X1 U38 ( .A(n4), .B(n3), .C(n2), .D(n1), .Y(n10) );
  NAND4X1 U39 ( .A(n8), .B(n7), .C(n6), .D(n5), .Y(n9) );
  XNOR2X1 U40 ( .A(s4[0]), .B(p4[0]), .Y(n4) );
  XNOR2X1 U41 ( .A(s4[6]), .B(p4[6]), .Y(n6) );
  XNOR2X1 U42 ( .A(s4[3]), .B(p4[3]), .Y(n1) );
  XNOR2X1 U43 ( .A(s4[5]), .B(p4[5]), .Y(n7) );
  XNOR2X1 U44 ( .A(s4[2]), .B(p4[2]), .Y(n2) );
  XNOR2X1 U45 ( .A(s4[4]), .B(p4[4]), .Y(n8) );
  XNOR2X1 U46 ( .A(s4[1]), .B(p4[1]), .Y(n3) );
  XNOR2X1 U47 ( .A(s7[4]), .B(p7[4]), .Y(n120) );
  XNOR2X1 U48 ( .A(s5[7]), .B(p5[7]), .Y(n137) );
  XNOR2X1 U49 ( .A(s0[2]), .B(p0[2]), .Y(n104) );
  OAI21XL U50 ( .A0(n112), .A1(n111), .B0(check[0]), .Y(n146) );
  NAND4X1 U51 ( .A(n110), .B(n109), .C(n108), .D(n107), .Y(n111) );
  NAND4X1 U52 ( .A(n106), .B(n105), .C(n104), .D(n103), .Y(n112) );
  XNOR2X1 U53 ( .A(s0[4]), .B(p0[4]), .Y(n110) );
  XNOR2X1 U54 ( .A(s0[1]), .B(p0[1]), .Y(n105) );
  XNOR2X1 U55 ( .A(s6[6]), .B(p6[6]), .Y(n128) );
  XNOR2X1 U56 ( .A(s6[3]), .B(p6[3]), .Y(n123) );
  XNOR2X1 U57 ( .A(s0[0]), .B(p0[0]), .Y(n106) );
  XNOR2X1 U58 ( .A(s6[5]), .B(p6[5]), .Y(n129) );
  XNOR2X1 U59 ( .A(s6[2]), .B(p6[2]), .Y(n124) );
  XNOR2X1 U60 ( .A(s1[7]), .B(p1[7]), .Y(n93) );
  OAI21XL U61 ( .A0(n98), .A1(n97), .B0(check[1]), .Y(n99) );
  NAND4X1 U62 ( .A(n92), .B(n91), .C(n32), .D(n31), .Y(n98) );
  NAND4X1 U63 ( .A(n96), .B(n95), .C(n94), .D(n93), .Y(n97) );
  XNOR2X1 U64 ( .A(s1[0]), .B(p1[0]), .Y(n92) );
  XNOR2X1 U65 ( .A(s6[4]), .B(p6[4]), .Y(n130) );
  XNOR2X1 U66 ( .A(s3[6]), .B(p3[6]), .Y(n16) );
  XNOR2X1 U67 ( .A(s6[1]), .B(p6[1]), .Y(n125) );
  XNOR2X1 U68 ( .A(s2[7]), .B(p2[7]), .Y(n25) );
  NAND4X1 U69 ( .A(n28), .B(n27), .C(n26), .D(n25), .Y(n29) );
  XNOR2X1 U70 ( .A(s2[5]), .B(p2[5]), .Y(n27) );
  XNOR2X1 U71 ( .A(s2[4]), .B(p2[4]), .Y(n28) );
  XNOR2X1 U72 ( .A(s2[6]), .B(p2[6]), .Y(n26) );
  XNOR2X1 U73 ( .A(s3[3]), .B(p3[3]), .Y(n11) );
  XNOR2X1 U74 ( .A(s1[6]), .B(p1[6]), .Y(n94) );
  XNOR2X1 U75 ( .A(s1[3]), .B(p1[3]), .Y(n31) );
  XNOR2X1 U76 ( .A(s3[5]), .B(p3[5]), .Y(n17) );
  XNOR2X1 U77 ( .A(s3[2]), .B(p3[2]), .Y(n12) );
  XNOR2X1 U78 ( .A(s0[7]), .B(p0[7]), .Y(n107) );
  XNOR2X1 U79 ( .A(s1[5]), .B(p1[5]), .Y(n95) );
  XNOR2X1 U80 ( .A(s2[3]), .B(p2[3]), .Y(n21) );
  NAND4X1 U81 ( .A(n24), .B(n23), .C(n22), .D(n21), .Y(n30) );
  XNOR2X1 U82 ( .A(s2[0]), .B(p2[0]), .Y(n24) );
  XNOR2X1 U83 ( .A(s2[1]), .B(p2[1]), .Y(n23) );
  XNOR2X1 U84 ( .A(s2[2]), .B(p2[2]), .Y(n22) );
  XNOR2X1 U85 ( .A(s1[2]), .B(p1[2]), .Y(n32) );
  XNOR2X1 U86 ( .A(s3[4]), .B(p3[4]), .Y(n18) );
  XNOR2X1 U87 ( .A(s1[4]), .B(p1[4]), .Y(n96) );
  XNOR2X1 U88 ( .A(s0[6]), .B(p0[6]), .Y(n108) );
  XNOR2X1 U89 ( .A(s3[1]), .B(p3[1]), .Y(n13) );
  XNOR2X1 U90 ( .A(s0[3]), .B(p0[3]), .Y(n103) );
  XNOR2X1 U91 ( .A(s0[5]), .B(p0[5]), .Y(n109) );
  XNOR2X1 U92 ( .A(s1[1]), .B(p1[1]), .Y(n91) );
endmodule


module Pattern_String_Comparator_Cell_3 ( s7, s6, s5, s4, s3, s2, s1, s0, p7, 
        p6, p5, p4, p3, p2, p1, p0, check, match );
  input [7:0] s7;
  input [7:0] s6;
  input [7:0] s5;
  input [7:0] s4;
  input [7:0] s3;
  input [7:0] s2;
  input [7:0] s1;
  input [7:0] s0;
  input [7:0] p7;
  input [7:0] p6;
  input [7:0] p5;
  input [7:0] p4;
  input [7:0] p3;
  input [7:0] p2;
  input [7:0] p1;
  input [7:0] p0;
  input [7:0] check;
  output match;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30,
         n31, n32, n91, n92, n93, n94, n95, n96, n97, n98, n99, n100, n101,
         n102, n103, n104, n105, n106, n107, n108, n109, n110, n111, n112,
         n113, n114, n115, n116, n117, n118, n119, n120, n121, n122, n123,
         n124, n125, n126, n127, n128, n129, n130, n131, n132, n133, n134,
         n135, n136, n137, n138, n139, n140, n141, n142, n143, n144, n145,
         n146, n147, n148;

  NOR2X1 U2 ( .A(n148), .B(n147), .Y(match) );
  NAND4X1 U3 ( .A(n102), .B(n101), .C(n100), .D(n99), .Y(n148) );
  NAND4X1 U4 ( .A(n146), .B(n145), .C(n144), .D(n143), .Y(n147) );
  OAI21XL U5 ( .A0(n30), .A1(n29), .B0(check[2]), .Y(n100) );
  XNOR2X1 U6 ( .A(s7[7]), .B(p7[7]), .Y(n117) );
  OAI21XL U7 ( .A0(n122), .A1(n121), .B0(check[7]), .Y(n145) );
  NAND4X1 U8 ( .A(n116), .B(n115), .C(n114), .D(n113), .Y(n122) );
  NAND4X1 U9 ( .A(n120), .B(n119), .C(n118), .D(n117), .Y(n121) );
  XNOR2X1 U10 ( .A(s7[3]), .B(p7[3]), .Y(n113) );
  XNOR2X1 U11 ( .A(s7[6]), .B(p7[6]), .Y(n118) );
  XNOR2X1 U12 ( .A(s7[2]), .B(p7[2]), .Y(n114) );
  XNOR2X1 U13 ( .A(s7[5]), .B(p7[5]), .Y(n119) );
  XNOR2X1 U14 ( .A(s7[1]), .B(p7[1]), .Y(n115) );
  XNOR2X1 U15 ( .A(s7[0]), .B(p7[0]), .Y(n116) );
  XNOR2X1 U16 ( .A(s5[6]), .B(p5[6]), .Y(n138) );
  OAI21XL U17 ( .A0(n142), .A1(n141), .B0(check[5]), .Y(n143) );
  NAND4X1 U18 ( .A(n136), .B(n135), .C(n134), .D(n133), .Y(n142) );
  NAND4X1 U19 ( .A(n140), .B(n139), .C(n138), .D(n137), .Y(n141) );
  XNOR2X1 U20 ( .A(s5[0]), .B(p5[0]), .Y(n136) );
  XNOR2X1 U21 ( .A(s6[7]), .B(p6[7]), .Y(n127) );
  OAI21XL U22 ( .A0(n132), .A1(n131), .B0(check[6]), .Y(n144) );
  NAND4X1 U23 ( .A(n126), .B(n125), .C(n124), .D(n123), .Y(n132) );
  NAND4X1 U24 ( .A(n130), .B(n129), .C(n128), .D(n127), .Y(n131) );
  XNOR2X1 U25 ( .A(s6[0]), .B(p6[0]), .Y(n126) );
  XNOR2X1 U26 ( .A(s5[3]), .B(p5[3]), .Y(n133) );
  XNOR2X1 U27 ( .A(s5[5]), .B(p5[5]), .Y(n139) );
  XNOR2X1 U28 ( .A(s5[2]), .B(p5[2]), .Y(n134) );
  XNOR2X1 U29 ( .A(s5[4]), .B(p5[4]), .Y(n140) );
  XNOR2X1 U30 ( .A(s5[1]), .B(p5[1]), .Y(n135) );
  XNOR2X1 U31 ( .A(s4[7]), .B(p4[7]), .Y(n5) );
  OAI21XL U32 ( .A0(n10), .A1(n9), .B0(check[4]), .Y(n102) );
  NAND4X1 U33 ( .A(n4), .B(n3), .C(n2), .D(n1), .Y(n10) );
  NAND4X1 U34 ( .A(n8), .B(n7), .C(n6), .D(n5), .Y(n9) );
  XNOR2X1 U35 ( .A(s4[0]), .B(p4[0]), .Y(n4) );
  XNOR2X1 U36 ( .A(s4[6]), .B(p4[6]), .Y(n6) );
  XNOR2X1 U37 ( .A(s4[3]), .B(p4[3]), .Y(n1) );
  XNOR2X1 U38 ( .A(s3[7]), .B(p3[7]), .Y(n15) );
  OAI21XL U39 ( .A0(n20), .A1(n19), .B0(check[3]), .Y(n101) );
  NAND4X1 U40 ( .A(n14), .B(n13), .C(n12), .D(n11), .Y(n20) );
  NAND4X1 U41 ( .A(n18), .B(n17), .C(n16), .D(n15), .Y(n19) );
  XNOR2X1 U42 ( .A(s3[0]), .B(p3[0]), .Y(n14) );
  XNOR2X1 U43 ( .A(s4[5]), .B(p4[5]), .Y(n7) );
  XNOR2X1 U44 ( .A(s4[2]), .B(p4[2]), .Y(n2) );
  XNOR2X1 U45 ( .A(s4[4]), .B(p4[4]), .Y(n8) );
  XNOR2X1 U46 ( .A(s4[1]), .B(p4[1]), .Y(n3) );
  XNOR2X1 U47 ( .A(s7[4]), .B(p7[4]), .Y(n120) );
  XNOR2X1 U48 ( .A(s5[7]), .B(p5[7]), .Y(n137) );
  XNOR2X1 U49 ( .A(s0[2]), .B(p0[2]), .Y(n104) );
  OAI21XL U50 ( .A0(n112), .A1(n111), .B0(check[0]), .Y(n146) );
  NAND4X1 U51 ( .A(n110), .B(n109), .C(n108), .D(n107), .Y(n111) );
  NAND4X1 U52 ( .A(n106), .B(n105), .C(n104), .D(n103), .Y(n112) );
  XNOR2X1 U53 ( .A(s0[4]), .B(p0[4]), .Y(n110) );
  XNOR2X1 U54 ( .A(s0[1]), .B(p0[1]), .Y(n105) );
  XNOR2X1 U55 ( .A(s6[6]), .B(p6[6]), .Y(n128) );
  XNOR2X1 U56 ( .A(s6[3]), .B(p6[3]), .Y(n123) );
  XNOR2X1 U57 ( .A(s0[0]), .B(p0[0]), .Y(n106) );
  XNOR2X1 U58 ( .A(s6[5]), .B(p6[5]), .Y(n129) );
  XNOR2X1 U59 ( .A(s6[2]), .B(p6[2]), .Y(n124) );
  XNOR2X1 U60 ( .A(s1[7]), .B(p1[7]), .Y(n93) );
  OAI21XL U61 ( .A0(n98), .A1(n97), .B0(check[1]), .Y(n99) );
  NAND4X1 U62 ( .A(n92), .B(n91), .C(n32), .D(n31), .Y(n98) );
  NAND4X1 U63 ( .A(n96), .B(n95), .C(n94), .D(n93), .Y(n97) );
  XNOR2X1 U64 ( .A(s1[0]), .B(p1[0]), .Y(n92) );
  XNOR2X1 U65 ( .A(s6[4]), .B(p6[4]), .Y(n130) );
  XNOR2X1 U66 ( .A(s6[1]), .B(p6[1]), .Y(n125) );
  XNOR2X1 U67 ( .A(s2[7]), .B(p2[7]), .Y(n25) );
  NAND4X1 U68 ( .A(n28), .B(n27), .C(n26), .D(n25), .Y(n29) );
  XNOR2X1 U69 ( .A(s2[4]), .B(p2[4]), .Y(n28) );
  XNOR2X1 U70 ( .A(s2[5]), .B(p2[5]), .Y(n27) );
  XNOR2X1 U71 ( .A(s2[6]), .B(p2[6]), .Y(n26) );
  XNOR2X1 U72 ( .A(s1[6]), .B(p1[6]), .Y(n94) );
  XNOR2X1 U73 ( .A(s1[3]), .B(p1[3]), .Y(n31) );
  XNOR2X1 U74 ( .A(s0[7]), .B(p0[7]), .Y(n107) );
  XNOR2X1 U75 ( .A(s1[5]), .B(p1[5]), .Y(n95) );
  XNOR2X1 U76 ( .A(s2[3]), .B(p2[3]), .Y(n21) );
  NAND4X1 U77 ( .A(n24), .B(n23), .C(n22), .D(n21), .Y(n30) );
  XNOR2X1 U78 ( .A(s2[0]), .B(p2[0]), .Y(n24) );
  XNOR2X1 U79 ( .A(s2[1]), .B(p2[1]), .Y(n23) );
  XNOR2X1 U80 ( .A(s2[2]), .B(p2[2]), .Y(n22) );
  XNOR2X1 U81 ( .A(s1[2]), .B(p1[2]), .Y(n32) );
  XNOR2X1 U82 ( .A(s1[4]), .B(p1[4]), .Y(n96) );
  XNOR2X1 U83 ( .A(s0[6]), .B(p0[6]), .Y(n108) );
  XNOR2X1 U84 ( .A(s3[6]), .B(p3[6]), .Y(n16) );
  XNOR2X1 U85 ( .A(s0[3]), .B(p0[3]), .Y(n103) );
  XNOR2X1 U86 ( .A(s0[5]), .B(p0[5]), .Y(n109) );
  XNOR2X1 U87 ( .A(s1[1]), .B(p1[1]), .Y(n91) );
  XNOR2X1 U88 ( .A(s3[3]), .B(p3[3]), .Y(n11) );
  XNOR2X1 U89 ( .A(s3[2]), .B(p3[2]), .Y(n12) );
  XNOR2X1 U90 ( .A(s3[4]), .B(p3[4]), .Y(n18) );
  XNOR2X1 U91 ( .A(s3[1]), .B(p3[1]), .Y(n13) );
  XNOR2X1 U92 ( .A(s3[5]), .B(p3[5]), .Y(n17) );
endmodule


module Pattern_String_Comparator_Cell_2 ( s7, s6, s5, s4, s3, s2, s1, s0, p7, 
        p6, p5, p4, p3, p2, p1, p0, check, match );
  input [7:0] s7;
  input [7:0] s6;
  input [7:0] s5;
  input [7:0] s4;
  input [7:0] s3;
  input [7:0] s2;
  input [7:0] s1;
  input [7:0] s0;
  input [7:0] p7;
  input [7:0] p6;
  input [7:0] p5;
  input [7:0] p4;
  input [7:0] p3;
  input [7:0] p2;
  input [7:0] p1;
  input [7:0] p0;
  input [7:0] check;
  output match;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30,
         n31, n32, n91, n92, n93, n94, n95, n96, n97, n98, n99, n100, n101,
         n102, n103, n104, n105, n106, n107, n108, n109, n110, n111, n112,
         n113, n114, n115, n116, n117, n118, n119, n120, n121, n122, n123,
         n124, n125, n126, n127, n128, n129, n130, n131, n132, n133, n134,
         n135, n136, n137, n138, n139, n140, n141, n142, n143, n144, n145,
         n146, n147, n148;

  NOR2X1 U2 ( .A(n148), .B(n147), .Y(match) );
  NAND4X1 U3 ( .A(n102), .B(n101), .C(n100), .D(n99), .Y(n148) );
  NAND4X1 U4 ( .A(n146), .B(n145), .C(n144), .D(n143), .Y(n147) );
  OAI21XL U5 ( .A0(n30), .A1(n29), .B0(check[2]), .Y(n100) );
  XNOR2X1 U6 ( .A(s7[7]), .B(p7[7]), .Y(n117) );
  OAI21XL U7 ( .A0(n122), .A1(n121), .B0(check[7]), .Y(n145) );
  NAND4X1 U8 ( .A(n116), .B(n115), .C(n114), .D(n113), .Y(n122) );
  NAND4X1 U9 ( .A(n120), .B(n119), .C(n118), .D(n117), .Y(n121) );
  XNOR2X1 U10 ( .A(s7[3]), .B(p7[3]), .Y(n113) );
  XNOR2X1 U11 ( .A(s7[6]), .B(p7[6]), .Y(n118) );
  XNOR2X1 U12 ( .A(s7[2]), .B(p7[2]), .Y(n114) );
  XNOR2X1 U13 ( .A(s7[5]), .B(p7[5]), .Y(n119) );
  XNOR2X1 U14 ( .A(s7[1]), .B(p7[1]), .Y(n115) );
  XNOR2X1 U15 ( .A(s7[0]), .B(p7[0]), .Y(n116) );
  XNOR2X1 U16 ( .A(s5[6]), .B(p5[6]), .Y(n138) );
  OAI21XL U17 ( .A0(n142), .A1(n141), .B0(check[5]), .Y(n143) );
  NAND4X1 U18 ( .A(n136), .B(n135), .C(n134), .D(n133), .Y(n142) );
  NAND4X1 U19 ( .A(n140), .B(n139), .C(n138), .D(n137), .Y(n141) );
  XNOR2X1 U20 ( .A(s5[0]), .B(p5[0]), .Y(n136) );
  XNOR2X1 U21 ( .A(s6[7]), .B(p6[7]), .Y(n127) );
  OAI21XL U22 ( .A0(n132), .A1(n131), .B0(check[6]), .Y(n144) );
  NAND4X1 U23 ( .A(n126), .B(n125), .C(n124), .D(n123), .Y(n132) );
  NAND4X1 U24 ( .A(n130), .B(n129), .C(n128), .D(n127), .Y(n131) );
  XNOR2X1 U25 ( .A(s6[0]), .B(p6[0]), .Y(n126) );
  XNOR2X1 U26 ( .A(s5[3]), .B(p5[3]), .Y(n133) );
  XNOR2X1 U27 ( .A(s5[5]), .B(p5[5]), .Y(n139) );
  XNOR2X1 U28 ( .A(s5[2]), .B(p5[2]), .Y(n134) );
  XNOR2X1 U29 ( .A(s5[4]), .B(p5[4]), .Y(n140) );
  XNOR2X1 U30 ( .A(s5[1]), .B(p5[1]), .Y(n135) );
  XNOR2X1 U31 ( .A(s3[7]), .B(p3[7]), .Y(n15) );
  OAI21XL U32 ( .A0(n20), .A1(n19), .B0(check[3]), .Y(n101) );
  NAND4X1 U33 ( .A(n14), .B(n13), .C(n12), .D(n11), .Y(n20) );
  NAND4X1 U34 ( .A(n18), .B(n17), .C(n16), .D(n15), .Y(n19) );
  XNOR2X1 U35 ( .A(s3[0]), .B(p3[0]), .Y(n14) );
  XNOR2X1 U36 ( .A(s4[7]), .B(p4[7]), .Y(n5) );
  OAI21XL U37 ( .A0(n10), .A1(n9), .B0(check[4]), .Y(n102) );
  NAND4X1 U38 ( .A(n4), .B(n3), .C(n2), .D(n1), .Y(n10) );
  NAND4X1 U39 ( .A(n8), .B(n7), .C(n6), .D(n5), .Y(n9) );
  XNOR2X1 U40 ( .A(s4[0]), .B(p4[0]), .Y(n4) );
  XNOR2X1 U41 ( .A(s4[6]), .B(p4[6]), .Y(n6) );
  XNOR2X1 U42 ( .A(s4[3]), .B(p4[3]), .Y(n1) );
  XNOR2X1 U43 ( .A(s4[2]), .B(p4[2]), .Y(n2) );
  XNOR2X1 U44 ( .A(s7[4]), .B(p7[4]), .Y(n120) );
  XNOR2X1 U45 ( .A(s4[4]), .B(p4[4]), .Y(n8) );
  XNOR2X1 U46 ( .A(s4[1]), .B(p4[1]), .Y(n3) );
  XNOR2X1 U47 ( .A(s5[7]), .B(p5[7]), .Y(n137) );
  XNOR2X1 U48 ( .A(s0[2]), .B(p0[2]), .Y(n104) );
  OAI21XL U49 ( .A0(n112), .A1(n111), .B0(check[0]), .Y(n146) );
  NAND4X1 U50 ( .A(n110), .B(n109), .C(n108), .D(n107), .Y(n111) );
  NAND4X1 U51 ( .A(n106), .B(n105), .C(n104), .D(n103), .Y(n112) );
  XNOR2X1 U52 ( .A(s0[4]), .B(p0[4]), .Y(n110) );
  XNOR2X1 U53 ( .A(s0[1]), .B(p0[1]), .Y(n105) );
  XNOR2X1 U54 ( .A(s6[6]), .B(p6[6]), .Y(n128) );
  XNOR2X1 U55 ( .A(s6[3]), .B(p6[3]), .Y(n123) );
  XNOR2X1 U56 ( .A(s0[0]), .B(p0[0]), .Y(n106) );
  XNOR2X1 U57 ( .A(s6[5]), .B(p6[5]), .Y(n129) );
  XNOR2X1 U58 ( .A(s6[2]), .B(p6[2]), .Y(n124) );
  XNOR2X1 U59 ( .A(s1[7]), .B(p1[7]), .Y(n93) );
  OAI21XL U60 ( .A0(n98), .A1(n97), .B0(check[1]), .Y(n99) );
  NAND4X1 U61 ( .A(n92), .B(n91), .C(n32), .D(n31), .Y(n98) );
  NAND4X1 U62 ( .A(n96), .B(n95), .C(n94), .D(n93), .Y(n97) );
  XNOR2X1 U63 ( .A(s1[0]), .B(p1[0]), .Y(n92) );
  XNOR2X1 U64 ( .A(s6[4]), .B(p6[4]), .Y(n130) );
  XNOR2X1 U65 ( .A(s6[1]), .B(p6[1]), .Y(n125) );
  XNOR2X1 U66 ( .A(s2[7]), .B(p2[7]), .Y(n25) );
  NAND4X1 U67 ( .A(n28), .B(n27), .C(n26), .D(n25), .Y(n29) );
  XNOR2X1 U68 ( .A(s2[4]), .B(p2[4]), .Y(n28) );
  XNOR2X1 U69 ( .A(s2[5]), .B(p2[5]), .Y(n27) );
  XNOR2X1 U70 ( .A(s2[6]), .B(p2[6]), .Y(n26) );
  XNOR2X1 U71 ( .A(s1[6]), .B(p1[6]), .Y(n94) );
  XNOR2X1 U72 ( .A(s1[3]), .B(p1[3]), .Y(n31) );
  XNOR2X1 U73 ( .A(s0[7]), .B(p0[7]), .Y(n107) );
  XNOR2X1 U74 ( .A(s1[5]), .B(p1[5]), .Y(n95) );
  XNOR2X1 U75 ( .A(s2[3]), .B(p2[3]), .Y(n21) );
  NAND4X1 U76 ( .A(n24), .B(n23), .C(n22), .D(n21), .Y(n30) );
  XNOR2X1 U77 ( .A(s2[0]), .B(p2[0]), .Y(n24) );
  XNOR2X1 U78 ( .A(s2[1]), .B(p2[1]), .Y(n23) );
  XNOR2X1 U79 ( .A(s2[2]), .B(p2[2]), .Y(n22) );
  XNOR2X1 U80 ( .A(s1[2]), .B(p1[2]), .Y(n32) );
  XNOR2X1 U81 ( .A(s4[5]), .B(p4[5]), .Y(n7) );
  XNOR2X1 U82 ( .A(s1[4]), .B(p1[4]), .Y(n96) );
  XNOR2X1 U83 ( .A(s0[6]), .B(p0[6]), .Y(n108) );
  XNOR2X1 U84 ( .A(s3[6]), .B(p3[6]), .Y(n16) );
  XNOR2X1 U85 ( .A(s0[3]), .B(p0[3]), .Y(n103) );
  XNOR2X1 U86 ( .A(s0[5]), .B(p0[5]), .Y(n109) );
  XNOR2X1 U87 ( .A(s1[1]), .B(p1[1]), .Y(n91) );
  XNOR2X1 U88 ( .A(s3[3]), .B(p3[3]), .Y(n11) );
  XNOR2X1 U89 ( .A(s3[5]), .B(p3[5]), .Y(n17) );
  XNOR2X1 U90 ( .A(s3[2]), .B(p3[2]), .Y(n12) );
  XNOR2X1 U91 ( .A(s3[4]), .B(p3[4]), .Y(n18) );
  XNOR2X1 U92 ( .A(s3[1]), .B(p3[1]), .Y(n13) );
endmodule


module Pattern_String_Comparator_Cell_1 ( s7, s6, s5, s4, s3, s2, s1, s0, p7, 
        p6, p5, p4, p3, p2, p1, p0, check, match );
  input [7:0] s7;
  input [7:0] s6;
  input [7:0] s5;
  input [7:0] s4;
  input [7:0] s3;
  input [7:0] s2;
  input [7:0] s1;
  input [7:0] s0;
  input [7:0] p7;
  input [7:0] p6;
  input [7:0] p5;
  input [7:0] p4;
  input [7:0] p3;
  input [7:0] p2;
  input [7:0] p1;
  input [7:0] p0;
  input [7:0] check;
  output match;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30,
         n31, n32, n91, n92, n93, n94, n95, n96, n97, n98, n99, n100, n101,
         n102, n103, n104, n105, n106, n107, n108, n109, n110, n111, n112,
         n113, n114, n115, n116, n117, n118, n119, n120, n121, n122, n123,
         n124, n125, n126, n127, n128, n129, n130, n131, n132, n133, n134,
         n135, n136, n137, n138, n139, n140, n141, n142, n143, n144, n145,
         n146, n147, n148;

  NOR2X1 U2 ( .A(n148), .B(n147), .Y(match) );
  NAND4X1 U3 ( .A(n102), .B(n101), .C(n100), .D(n99), .Y(n148) );
  NAND4X1 U4 ( .A(n146), .B(n145), .C(n144), .D(n143), .Y(n147) );
  OAI21XL U5 ( .A0(n30), .A1(n29), .B0(check[2]), .Y(n100) );
  XNOR2X1 U6 ( .A(s7[7]), .B(p7[7]), .Y(n117) );
  OAI21XL U7 ( .A0(n122), .A1(n121), .B0(check[7]), .Y(n145) );
  NAND4X1 U8 ( .A(n116), .B(n115), .C(n114), .D(n113), .Y(n122) );
  NAND4X1 U9 ( .A(n120), .B(n119), .C(n118), .D(n117), .Y(n121) );
  XNOR2X1 U10 ( .A(s7[3]), .B(p7[3]), .Y(n113) );
  XNOR2X1 U11 ( .A(s7[6]), .B(p7[6]), .Y(n118) );
  XNOR2X1 U12 ( .A(s7[2]), .B(p7[2]), .Y(n114) );
  XNOR2X1 U13 ( .A(s7[5]), .B(p7[5]), .Y(n119) );
  XNOR2X1 U14 ( .A(s7[1]), .B(p7[1]), .Y(n115) );
  XNOR2X1 U15 ( .A(s7[0]), .B(p7[0]), .Y(n116) );
  XNOR2X1 U16 ( .A(s6[7]), .B(p6[7]), .Y(n127) );
  OAI21XL U17 ( .A0(n132), .A1(n131), .B0(check[6]), .Y(n144) );
  NAND4X1 U18 ( .A(n126), .B(n125), .C(n124), .D(n123), .Y(n132) );
  NAND4X1 U19 ( .A(n130), .B(n129), .C(n128), .D(n127), .Y(n131) );
  XNOR2X1 U20 ( .A(s6[0]), .B(p6[0]), .Y(n126) );
  XNOR2X1 U21 ( .A(s5[6]), .B(p5[6]), .Y(n138) );
  OAI21XL U22 ( .A0(n142), .A1(n141), .B0(check[5]), .Y(n143) );
  NAND4X1 U23 ( .A(n136), .B(n135), .C(n134), .D(n133), .Y(n142) );
  NAND4X1 U24 ( .A(n140), .B(n139), .C(n138), .D(n137), .Y(n141) );
  XNOR2X1 U25 ( .A(s5[0]), .B(p5[0]), .Y(n136) );
  XNOR2X1 U26 ( .A(s5[3]), .B(p5[3]), .Y(n133) );
  XNOR2X1 U27 ( .A(s5[2]), .B(p5[2]), .Y(n134) );
  XNOR2X1 U28 ( .A(s5[4]), .B(p5[4]), .Y(n140) );
  XNOR2X1 U29 ( .A(s3[7]), .B(p3[7]), .Y(n15) );
  XNOR2X1 U30 ( .A(s5[1]), .B(p5[1]), .Y(n135) );
  OAI21XL U31 ( .A0(n20), .A1(n19), .B0(check[3]), .Y(n101) );
  NAND4X1 U32 ( .A(n14), .B(n13), .C(n12), .D(n11), .Y(n20) );
  NAND4X1 U33 ( .A(n18), .B(n17), .C(n16), .D(n15), .Y(n19) );
  XNOR2X1 U34 ( .A(s3[0]), .B(p3[0]), .Y(n14) );
  XNOR2X1 U35 ( .A(s4[7]), .B(p4[7]), .Y(n5) );
  OAI21XL U36 ( .A0(n10), .A1(n9), .B0(check[4]), .Y(n102) );
  NAND4X1 U37 ( .A(n4), .B(n3), .C(n2), .D(n1), .Y(n10) );
  NAND4X1 U38 ( .A(n8), .B(n7), .C(n6), .D(n5), .Y(n9) );
  XNOR2X1 U39 ( .A(s4[0]), .B(p4[0]), .Y(n4) );
  XNOR2X1 U40 ( .A(s4[6]), .B(p4[6]), .Y(n6) );
  XNOR2X1 U41 ( .A(s4[3]), .B(p4[3]), .Y(n1) );
  XNOR2X1 U42 ( .A(s4[5]), .B(p4[5]), .Y(n7) );
  XNOR2X1 U43 ( .A(s4[2]), .B(p4[2]), .Y(n2) );
  XNOR2X1 U44 ( .A(s7[4]), .B(p7[4]), .Y(n120) );
  XNOR2X1 U45 ( .A(s4[4]), .B(p4[4]), .Y(n8) );
  XNOR2X1 U46 ( .A(s4[1]), .B(p4[1]), .Y(n3) );
  XNOR2X1 U47 ( .A(s0[2]), .B(p0[2]), .Y(n104) );
  OAI21XL U48 ( .A0(n112), .A1(n111), .B0(check[0]), .Y(n146) );
  NAND4X1 U49 ( .A(n110), .B(n109), .C(n108), .D(n107), .Y(n111) );
  NAND4X1 U50 ( .A(n106), .B(n105), .C(n104), .D(n103), .Y(n112) );
  XNOR2X1 U51 ( .A(s0[4]), .B(p0[4]), .Y(n110) );
  XNOR2X1 U52 ( .A(s0[1]), .B(p0[1]), .Y(n105) );
  XNOR2X1 U53 ( .A(s6[6]), .B(p6[6]), .Y(n128) );
  XNOR2X1 U54 ( .A(s5[5]), .B(p5[5]), .Y(n139) );
  XNOR2X1 U55 ( .A(s6[3]), .B(p6[3]), .Y(n123) );
  XNOR2X1 U56 ( .A(s5[7]), .B(p5[7]), .Y(n137) );
  XNOR2X1 U57 ( .A(s0[0]), .B(p0[0]), .Y(n106) );
  XNOR2X1 U58 ( .A(s6[5]), .B(p6[5]), .Y(n129) );
  XNOR2X1 U59 ( .A(s6[2]), .B(p6[2]), .Y(n124) );
  XNOR2X1 U60 ( .A(s1[7]), .B(p1[7]), .Y(n93) );
  OAI21XL U61 ( .A0(n98), .A1(n97), .B0(check[1]), .Y(n99) );
  NAND4X1 U62 ( .A(n92), .B(n91), .C(n32), .D(n31), .Y(n98) );
  NAND4X1 U63 ( .A(n96), .B(n95), .C(n94), .D(n93), .Y(n97) );
  XNOR2X1 U64 ( .A(s1[0]), .B(p1[0]), .Y(n92) );
  XNOR2X1 U65 ( .A(s6[4]), .B(p6[4]), .Y(n130) );
  XNOR2X1 U66 ( .A(s6[1]), .B(p6[1]), .Y(n125) );
  XNOR2X1 U67 ( .A(s2[7]), .B(p2[7]), .Y(n25) );
  NAND4X1 U68 ( .A(n28), .B(n27), .C(n26), .D(n25), .Y(n29) );
  XNOR2X1 U69 ( .A(s2[4]), .B(p2[4]), .Y(n28) );
  XNOR2X1 U70 ( .A(s2[5]), .B(p2[5]), .Y(n27) );
  XNOR2X1 U71 ( .A(s2[6]), .B(p2[6]), .Y(n26) );
  XNOR2X1 U72 ( .A(s1[6]), .B(p1[6]), .Y(n94) );
  XNOR2X1 U73 ( .A(s1[3]), .B(p1[3]), .Y(n31) );
  XNOR2X1 U74 ( .A(s0[7]), .B(p0[7]), .Y(n107) );
  XNOR2X1 U75 ( .A(s1[5]), .B(p1[5]), .Y(n95) );
  XNOR2X1 U76 ( .A(s2[3]), .B(p2[3]), .Y(n21) );
  NAND4X1 U77 ( .A(n24), .B(n23), .C(n22), .D(n21), .Y(n30) );
  XNOR2X1 U78 ( .A(s2[0]), .B(p2[0]), .Y(n24) );
  XNOR2X1 U79 ( .A(s2[1]), .B(p2[1]), .Y(n23) );
  XNOR2X1 U80 ( .A(s2[2]), .B(p2[2]), .Y(n22) );
  XNOR2X1 U81 ( .A(s1[2]), .B(p1[2]), .Y(n32) );
  XNOR2X1 U82 ( .A(s1[4]), .B(p1[4]), .Y(n96) );
  XNOR2X1 U83 ( .A(s0[6]), .B(p0[6]), .Y(n108) );
  XNOR2X1 U84 ( .A(s3[6]), .B(p3[6]), .Y(n16) );
  XNOR2X1 U85 ( .A(s0[3]), .B(p0[3]), .Y(n103) );
  XNOR2X1 U86 ( .A(s0[5]), .B(p0[5]), .Y(n109) );
  XNOR2X1 U87 ( .A(s1[1]), .B(p1[1]), .Y(n91) );
  XNOR2X1 U88 ( .A(s3[3]), .B(p3[3]), .Y(n11) );
  XNOR2X1 U89 ( .A(s3[5]), .B(p3[5]), .Y(n17) );
  XNOR2X1 U90 ( .A(s3[2]), .B(p3[2]), .Y(n12) );
  XNOR2X1 U91 ( .A(s3[4]), .B(p3[4]), .Y(n18) );
  XNOR2X1 U92 ( .A(s3[1]), .B(p3[1]), .Y(n13) );
endmodule


module Pattern_String_Comparator_1 ( s0, s1, s2, s3, s4, s5, s6, s7, s8, s9, 
        s10, s11, s12, s13, s14, s15, s16, s17, s18, s19, s20, s21, s22, s23, 
        s24, s25, s26, s27, s28, s29, s30, s31, s32, p1_0, p1_1, p1_2, p1_3, 
        p1_4, p1_5, p1_6, p1_7, check1, match1, match1_space );
  input [7:0] s0;
  input [7:0] s1;
  input [7:0] s2;
  input [7:0] s3;
  input [7:0] s4;
  input [7:0] s5;
  input [7:0] s6;
  input [7:0] s7;
  input [7:0] s8;
  input [7:0] s9;
  input [7:0] s10;
  input [7:0] s11;
  input [7:0] s12;
  input [7:0] s13;
  input [7:0] s14;
  input [7:0] s15;
  input [7:0] s16;
  input [7:0] s17;
  input [7:0] s18;
  input [7:0] s19;
  input [7:0] s20;
  input [7:0] s21;
  input [7:0] s22;
  input [7:0] s23;
  input [7:0] s24;
  input [7:0] s25;
  input [7:0] s26;
  input [7:0] s27;
  input [7:0] s28;
  input [7:0] s29;
  input [7:0] s30;
  input [7:0] s31;
  input [7:0] s32;
  input [7:0] p1_0;
  input [7:0] p1_1;
  input [7:0] p1_2;
  input [7:0] p1_3;
  input [7:0] p1_4;
  input [7:0] p1_5;
  input [7:0] p1_6;
  input [7:0] p1_7;
  input [7:0] check1;
  output [31:0] match1;
  output match1_space;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
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
         n156, n157, n158, n159, n160, n161, n162, n163, n164, n165, n166,
         n167, n168, n169, n170, n171, n172, n173, n174, n175, n176, n177,
         n178, n179, n180, n181, n182, n183, n184, n185, n186, n187, n188,
         n189, n190, n191, n192, n193, n194, n195, n196, n197, n198, n199,
         n200, n201, n202, n203, n204, n205, n206, n207, n208, n209, n210,
         n211, n212, n213, n214, n215, n216, n217, n218, n219, n220, n221,
         n222, n223, n224, n225, n226, n227, n228, n229, n230, n231, n232,
         n233, n234, n235, n236, n237, n238, n239, n240, n241, n242, n243,
         n244, n245, n246, n247, n248, n249, n250, n251, n252, n253, n254,
         n255, n256, n257, n258, n259, n260, n261, n262, n263, n264, n265;

  Pattern_String_Comparator_Cell_33 PSC_Cell1_space ( .s7({1'b0, 1'b0, 1'b1, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), .s6(s32), .s5(s31), .s4(s30), .s3(s29), 
        .s2(s28), .s1(s27), .s0(s26), .p7({n56, n53, n50, n47, n43, n39, n36, 
        n33}), .p6({n87, n84, n80, n76, n72, n68, n64, n60}), .p5({n112, n108, 
        n105, n102, n99, n96, n93, n90}), .p4({n136, n133, n130, n127, n124, 
        n121, n118, n115}), .p3({n167, n164, n160, n156, n152, n148, n144, 
        n140}), .p2({n199, n195, n191, n187, n183, n179, n175, n171}), .p1({
        n231, n227, n223, n219, n215, n211, n207, n203}), .p0({n263, n259, 
        n255, n251, n247, n243, n239, n235}), .check({n30, n26, n22, n18, n14, 
        n10, n6, n2}), .match(match1_space) );
  Pattern_String_Comparator_Cell_32 PSC_Cell00 ( .s7(s32), .s6(s31), .s5(s30), 
        .s4(s29), .s3(s28), .s2(s27), .s1(s26), .s0(s25), .p7({n56, n53, n50, 
        n47, n43, n39, n36, n33}), .p6({n87, n84, n80, n76, n72, n68, n64, n60}), .p5({n112, n108, n105, n102, n99, n96, n93, n90}), .p4({n136, n133, n130, 
        n127, n124, n121, n118, n115}), .p3({n167, n164, n160, n156, n152, 
        n148, n144, n140}), .p2({n199, n195, n191, n187, n183, n179, n175, 
        n171}), .p1({n231, n227, n223, n219, n215, n211, n207, n203}), .p0({
        n263, n259, n255, n251, n247, n243, n239, n235}), .check({n30, n26, 
        n22, n18, n14, n10, n6, n2}), .match(match1[0]) );
  Pattern_String_Comparator_Cell_31 PSC_Cell0 ( .s7(s31), .s6(s30), .s5(s29), 
        .s4(s28), .s3(s27), .s2(s26), .s1(s25), .s0(s24), .p7({n56, n53, n50, 
        n47, n43, n39, n36, n33}), .p6({n87, n84, n80, n76, n72, n68, n64, n60}), .p5({n112, n108, n105, n102, n99, n96, n93, n90}), .p4({n136, n133, n130, 
        n127, n124, n121, n118, n115}), .p3({n167, n164, n160, n156, n152, 
        n148, n144, n140}), .p2({n199, n195, n191, n187, n183, n179, n175, 
        n171}), .p1({n231, n227, n223, n219, n215, n211, n207, n203}), .p0({
        n263, n259, n255, n251, n247, n243, n239, n235}), .check({n30, n26, 
        n22, n18, n14, n10, n6, n2}), .match(match1[1]) );
  Pattern_String_Comparator_Cell_30 PSC_Cell1 ( .s7(s30), .s6(s29), .s5(s28), 
        .s4(s27), .s3(s26), .s2(s25), .s1(s24), .s0(s23), .p7({n56, n53, n50, 
        n47, n43, n39, n36, n33}), .p6({n87, n84, n80, n76, n72, n68, n64, n60}), .p5({n112, n108, n105, n102, n99, n96, n93, n90}), .p4({n136, n133, n130, 
        n127, n124, n121, n118, n115}), .p3({n167, n164, n160, n156, n152, 
        n148, n144, n140}), .p2({n199, n195, n191, n187, n183, n179, n175, 
        n171}), .p1({n231, n227, n223, n219, n215, n211, n207, n203}), .p0({
        n263, n259, n255, n251, n247, n243, n239, n235}), .check({n30, n26, 
        n22, n18, n14, n10, n6, n2}), .match(match1[2]) );
  Pattern_String_Comparator_Cell_29 PSC_Cell2 ( .s7(s29), .s6(s28), .s5(s27), 
        .s4(s26), .s3(s25), .s2(s24), .s1(s23), .s0(s22), .p7({n56, n53, n50, 
        n47, n43, n39, n36, n33}), .p6({n87, n84, n80, n76, n72, n68, n64, n60}), .p5({n112, n108, n105, n102, n99, n96, n93, n90}), .p4({n136, n133, n130, 
        n127, n124, n121, n118, n115}), .p3({n167, n164, n160, n156, n152, 
        n148, n144, n140}), .p2({n199, n195, n191, n187, n183, n179, n175, 
        n171}), .p1({n231, n227, n223, n219, n215, n211, n207, n203}), .p0({
        n263, n259, n255, n251, n247, n243, n239, n235}), .check({n30, n26, 
        n22, n18, n14, n10, n6, n2}), .match(match1[3]) );
  Pattern_String_Comparator_Cell_28 PSC_Cell3 ( .s7(s28), .s6(s27), .s5(s26), 
        .s4(s25), .s3(s24), .s2(s23), .s1(s22), .s0(s21), .p7({n56, n53, n50, 
        n47, n43, n39, n36, n33}), .p6({n87, n84, n80, n76, n72, n68, n64, n60}), .p5({n112, n108, n105, n102, n99, n96, n93, n90}), .p4({n136, n133, n130, 
        n127, n124, n121, n118, n115}), .p3({n167, n164, n160, n156, n152, 
        n148, n144, n140}), .p2({n199, n195, n191, n187, n183, n179, n175, 
        n171}), .p1({n231, n227, n223, n219, n215, n211, n207, n203}), .p0({
        n263, n259, n255, n251, n247, n243, n239, n235}), .check({n30, n26, 
        n22, n18, n14, n10, n6, n2}), .match(match1[4]) );
  Pattern_String_Comparator_Cell_27 PSC_Cell4 ( .s7(s27), .s6(s26), .s5(s25), 
        .s4(s24), .s3(s23), .s2(s22), .s1(s21), .s0(s20), .p7({n56, n53, n50, 
        n47, n43, n39, n36, n33}), .p6({n87, n84, n80, n76, n72, n68, n64, n60}), .p5({n112, n108, n105, n102, n99, n96, n93, n90}), .p4({n136, n133, n130, 
        n127, n124, n121, n118, n115}), .p3({n167, n164, n160, n156, n152, 
        n148, n144, n140}), .p2({n199, n195, n191, n187, n183, n179, n175, 
        n171}), .p1({n231, n227, n223, n219, n215, n211, n207, n203}), .p0({
        n263, n259, n255, n251, n247, n243, n239, n235}), .check({n30, n26, 
        n22, n18, n14, n10, n6, n2}), .match(match1[5]) );
  Pattern_String_Comparator_Cell_26 PSC_Cell5 ( .s7(s26), .s6(s25), .s5(s24), 
        .s4(s23), .s3(s22), .s2(s21), .s1(s20), .s0(s19), .p7({n56, n53, n50, 
        n47, n43, n39, n36, n33}), .p6({n87, n84, n80, n76, n72, n68, n64, n60}), .p5({n112, n108, n105, n102, n99, n96, n93, n90}), .p4({n136, n133, n130, 
        n127, n124, n121, n118, n115}), .p3({n167, n164, n160, n156, n152, 
        n148, n144, n140}), .p2({n199, n195, n191, n187, n183, n179, n175, 
        n171}), .p1({n231, n227, n223, n219, n215, n211, n207, n203}), .p0({
        n263, n259, n255, n251, n247, n243, n239, n235}), .check({n30, n26, 
        n22, n18, n14, n10, n6, n2}), .match(match1[6]) );
  Pattern_String_Comparator_Cell_25 PSC_Cell6 ( .s7(s25), .s6(s24), .s5(s23), 
        .s4(s22), .s3(s21), .s2(s20), .s1(s19), .s0(s18), .p7({n56, n53, n50, 
        n47, n43, n39, n36, n33}), .p6({n87, n84, n80, n76, n72, n68, n64, n60}), .p5({n112, n108, n105, n102, n99, n96, n93, n90}), .p4({n136, n133, n130, 
        n127, n124, n121, n118, n115}), .p3({n167, n164, n160, n156, n152, 
        n148, n144, n140}), .p2({n199, n195, n191, n187, n183, n179, n175, 
        n171}), .p1({n231, n227, n223, n219, n215, n211, n207, n203}), .p0({
        n263, n259, n255, n251, n247, n243, n239, n235}), .check({n30, n26, 
        n22, n18, n14, n10, n6, n2}), .match(match1[7]) );
  Pattern_String_Comparator_Cell_24 PSC_Cell7 ( .s7(s24), .s6(s23), .s5(s22), 
        .s4(s21), .s3(s20), .s2(s19), .s1(s18), .s0(s17), .p7({n56, n53, n50, 
        n47, n43, n39, n36, n33}), .p6({n87, n84, n80, n76, n72, n68, n64, n60}), .p5({n112, n108, n105, n102, n99, n96, n93, n90}), .p4({n136, n133, n130, 
        n127, n124, n121, n118, n115}), .p3({n167, n164, n160, n156, n152, 
        n148, n144, n140}), .p2({n199, n195, n191, n187, n183, n179, n175, 
        n171}), .p1({n231, n227, n223, n219, n215, n211, n207, n203}), .p0({
        n263, n259, n255, n251, n247, n243, n239, n235}), .check({n30, n26, 
        n22, n18, n14, n10, n6, n2}), .match(match1[8]) );
  Pattern_String_Comparator_Cell_23 PSC_Cell8 ( .s7(s23), .s6(s22), .s5(s21), 
        .s4(s20), .s3(s19), .s2(s18), .s1(s17), .s0(s16), .p7({n56, n53, n50, 
        n47, n43, n39, n36, n33}), .p6({n87, n84, n80, n76, n72, n68, n64, n60}), .p5({n112, n108, n105, n102, n99, n96, n93, n90}), .p4({n136, n133, n130, 
        n127, n124, n121, n118, n115}), .p3({n167, n164, n160, n156, n152, 
        n148, n144, n140}), .p2({n199, n195, n191, n187, n183, n179, n175, 
        n171}), .p1({n231, n227, n223, n219, n215, n211, n207, n203}), .p0({
        n263, n259, n255, n251, n247, n243, n239, n235}), .check({n30, n26, 
        n22, n18, n14, n10, n6, n2}), .match(match1[9]) );
  Pattern_String_Comparator_Cell_22 PSC_Cell9 ( .s7(s22), .s6(s21), .s5(s20), 
        .s4(s19), .s3(s18), .s2(s17), .s1(s16), .s0(s15), .p7({n56, n53, n50, 
        n47, n43, n39, n36, n33}), .p6({n87, n84, n80, n76, n72, n68, n64, n60}), .p5({n112, n108, n105, n102, n99, n96, n93, n90}), .p4({n136, n133, n130, 
        n127, n124, n121, n118, n115}), .p3({n167, n164, n160, n156, n152, 
        n148, n144, n140}), .p2({n199, n195, n191, n187, n183, n179, n175, 
        n171}), .p1({n231, n227, n223, n219, n215, n211, n207, n203}), .p0({
        n263, n259, n255, n251, n247, n243, n239, n235}), .check({n30, n26, 
        n22, n18, n14, n10, n6, n2}), .match(match1[10]) );
  Pattern_String_Comparator_Cell_21 PSC_Cell10 ( .s7(s21), .s6(s20), .s5(s19), 
        .s4(s18), .s3(s17), .s2(s16), .s1(s15), .s0(s14), .p7({n56, n53, n50, 
        n47, n43, n39, n36, n33}), .p6({n87, n84, n80, n76, n72, n68, n64, n60}), .p5({n112, n108, n105, n102, n99, n96, n93, n90}), .p4({n136, n133, n130, 
        n127, n124, n121, n118, n115}), .p3({n167, n164, n160, n156, n152, 
        n148, n144, n140}), .p2({n199, n195, n191, n187, n183, n179, n175, 
        n171}), .p1({n231, n227, n223, n219, n215, n211, n207, n203}), .p0({
        n263, n259, n255, n251, n247, n243, n239, n235}), .check({n30, n26, 
        n22, n18, n14, n10, n6, n2}), .match(match1[11]) );
  Pattern_String_Comparator_Cell_20 PSC_Cell11 ( .s7(s20), .s6(s19), .s5(s18), 
        .s4(s17), .s3(s16), .s2(s15), .s1(s14), .s0(s13), .p7({n57, n54, n51, 
        n48, n44, n40, n37, n34}), .p6({n88, n85, n81, n77, n73, n69, n65, n61}), .p5({n113, n109, n106, n103, n100, n97, n94, n91}), .p4({n137, n134, n131, 
        n128, n125, n122, n119, n116}), .p3({n168, n165, n161, n157, n153, 
        n149, n145, n141}), .p2({n200, n196, n192, n188, n184, n180, n176, 
        n172}), .p1({n232, n228, n224, n220, n216, n212, n208, n204}), .p0({
        n264, n260, n256, n252, n248, n244, n240, n236}), .check({n31, n27, 
        n23, n19, n15, n11, n7, n3}), .match(match1[12]) );
  Pattern_String_Comparator_Cell_19 PSC_Cell12 ( .s7(s19), .s6(s18), .s5(s17), 
        .s4(s16), .s3(s15), .s2(s14), .s1(s13), .s0(s12), .p7({n57, n54, n51, 
        n48, n44, n40, n37, n34}), .p6({n88, n85, n81, n77, n73, n69, n65, n61}), .p5({n113, n109, n106, n103, n100, n97, n94, n91}), .p4({n137, n134, n131, 
        n128, n125, n122, n119, n116}), .p3({n168, n165, n161, n157, n153, 
        n149, n145, n141}), .p2({n200, n196, n192, n188, n184, n180, n176, 
        n172}), .p1({n232, n228, n224, n220, n216, n212, n208, n204}), .p0({
        n264, n260, n256, n252, n248, n244, n240, n236}), .check({n31, n27, 
        n23, n19, n15, n11, n7, n3}), .match(match1[13]) );
  Pattern_String_Comparator_Cell_18 PSC_Cell13 ( .s7(s18), .s6(s17), .s5(s16), 
        .s4(s15), .s3(s14), .s2(s13), .s1(s12), .s0(s11), .p7({n57, n54, n51, 
        n48, n44, n40, n37, n34}), .p6({n88, n85, n81, n77, n73, n69, n65, n61}), .p5({n113, n109, n106, n103, n100, n97, n94, n91}), .p4({n137, n134, n131, 
        n128, n125, n122, n119, n116}), .p3({n168, n165, n161, n157, n153, 
        n149, n145, n141}), .p2({n200, n196, n192, n188, n184, n180, n176, 
        n172}), .p1({n232, n228, n224, n220, n216, n212, n208, n204}), .p0({
        n264, n260, n256, n252, n248, n244, n240, n236}), .check({n31, n27, 
        n23, n19, n15, n11, n7, n3}), .match(match1[14]) );
  Pattern_String_Comparator_Cell_17 PSC_Cell14 ( .s7(s17), .s6(s16), .s5(s15), 
        .s4(s14), .s3(s13), .s2(s12), .s1(s11), .s0(s10), .p7({n57, n54, n51, 
        n48, n44, n40, n37, n34}), .p6({n88, n85, n81, n77, n73, n69, n65, n61}), .p5({n113, n109, n106, n103, n100, n97, n94, n91}), .p4({n137, n134, n131, 
        n128, n125, n122, n119, n116}), .p3({n168, n165, n161, n157, n153, 
        n149, n145, n141}), .p2({n200, n196, n192, n188, n184, n180, n176, 
        n172}), .p1({n232, n228, n224, n220, n216, n212, n208, n204}), .p0({
        n264, n260, n256, n252, n248, n244, n240, n236}), .check({n31, n27, 
        n23, n19, n15, n11, n7, n3}), .match(match1[15]) );
  Pattern_String_Comparator_Cell_16 PSC_Cell15 ( .s7(s16), .s6(s15), .s5(s14), 
        .s4(s13), .s3(s12), .s2(s11), .s1(s10), .s0(s9), .p7({n57, n54, n51, 
        n48, n44, n40, n37, n34}), .p6({n88, n85, n81, n77, n73, n69, n65, n61}), .p5({n113, n109, n106, n103, n100, n97, n94, n91}), .p4({n137, n134, n131, 
        n128, n125, n122, n119, n116}), .p3({n168, n165, n161, n157, n153, 
        n149, n145, n141}), .p2({n200, n196, n192, n188, n184, n180, n176, 
        n172}), .p1({n232, n228, n224, n220, n216, n212, n208, n204}), .p0({
        n264, n260, n256, n252, n248, n244, n240, n236}), .check({n31, n27, 
        n23, n19, n15, n11, n7, n3}), .match(match1[16]) );
  Pattern_String_Comparator_Cell_15 PSC_Cell16 ( .s7(s15), .s6(s14), .s5(s13), 
        .s4(s12), .s3(s11), .s2(s10), .s1(s9), .s0(s8), .p7({n57, n54, n51, 
        n48, n44, n40, n37, n34}), .p6({n88, n85, n81, n77, n73, n69, n65, n61}), .p5({n113, n109, n106, n103, n100, n97, n94, n91}), .p4({n137, n134, n131, 
        n128, n125, n122, n119, n116}), .p3({n168, n165, n161, n157, n153, 
        n149, n145, n141}), .p2({n200, n196, n192, n188, n184, n180, n176, 
        n172}), .p1({n232, n228, n224, n220, n216, n212, n208, n204}), .p0({
        n264, n260, n256, n252, n248, n244, n240, n236}), .check({n31, n27, 
        n23, n19, n15, n11, n7, n3}), .match(match1[17]) );
  Pattern_String_Comparator_Cell_14 PSC_Cell17 ( .s7(s14), .s6(s13), .s5(s12), 
        .s4(s11), .s3(s10), .s2(s9), .s1(s8), .s0(s7), .p7({n57, n54, n51, n48, 
        n44, n40, n37, n34}), .p6({n88, n85, n81, n77, n73, n69, n65, n61}), 
        .p5({n113, n109, n106, n103, n100, n97, n94, n91}), .p4({n137, n134, 
        n131, n128, n125, n122, n119, n116}), .p3({n168, n165, n161, n157, 
        n153, n149, n145, n141}), .p2({n200, n196, n192, n188, n184, n180, 
        n176, n172}), .p1({n232, n228, n224, n220, n216, n212, n208, n204}), 
        .p0({n264, n260, n256, n252, n248, n244, n240, n236}), .check({n31, 
        n27, n23, n19, n15, n11, n7, n3}), .match(match1[18]) );
  Pattern_String_Comparator_Cell_13 PSC_Cell18 ( .s7(s13), .s6(s12), .s5(s11), 
        .s4(s10), .s3(s9), .s2(s8), .s1(s7), .s0(s6), .p7({n57, n54, n51, n48, 
        n44, n40, n37, n34}), .p6({n88, n85, n81, n77, n73, n69, n65, n61}), 
        .p5({n113, n109, n106, n103, n100, n97, n94, n91}), .p4({n137, n134, 
        n131, n128, n125, n122, n119, n116}), .p3({n168, n165, n161, n157, 
        n153, n149, n145, n141}), .p2({n200, n196, n192, n188, n184, n180, 
        n176, n172}), .p1({n232, n228, n224, n220, n216, n212, n208, n204}), 
        .p0({n264, n260, n256, n252, n248, n244, n240, n236}), .check({n31, 
        n27, n23, n19, n15, n11, n7, n3}), .match(match1[19]) );
  Pattern_String_Comparator_Cell_12 PSC_Cell19 ( .s7(s12), .s6(s11), .s5(s10), 
        .s4(s9), .s3(s8), .s2(s7), .s1(s6), .s0(s5), .p7({n57, n54, n51, n48, 
        n44, n40, n37, n34}), .p6({n88, n85, n81, n77, n73, n69, n65, n61}), 
        .p5({n113, n109, n106, n103, n100, n97, n94, n91}), .p4({n137, n134, 
        n131, n128, n125, n122, n119, n116}), .p3({n168, n165, n161, n157, 
        n153, n149, n145, n141}), .p2({n200, n196, n192, n188, n184, n180, 
        n176, n172}), .p1({n232, n228, n224, n220, n216, n212, n208, n204}), 
        .p0({n264, n260, n256, n252, n248, n244, n240, n236}), .check({n31, 
        n27, n23, n19, n15, n11, n7, n3}), .match(match1[20]) );
  Pattern_String_Comparator_Cell_11 PSC_Cell20 ( .s7(s11), .s6(s10), .s5(s9), 
        .s4(s8), .s3(s7), .s2(s6), .s1(s5), .s0(s4), .p7({n57, n54, n51, n48, 
        n44, n40, n37, n34}), .p6({n88, n85, n81, n77, n73, n69, n65, n61}), 
        .p5({n113, n109, n106, n103, n100, n97, n94, n91}), .p4({n137, n134, 
        n131, n128, n125, n122, n119, n116}), .p3({n168, n165, n161, n157, 
        n153, n149, n145, n141}), .p2({n200, n196, n192, n188, n184, n180, 
        n176, n172}), .p1({n232, n228, n224, n220, n216, n212, n208, n204}), 
        .p0({n264, n260, n256, n252, n248, n244, n240, n236}), .check({n31, 
        n27, n23, n19, n15, n11, n7, n3}), .match(match1[21]) );
  Pattern_String_Comparator_Cell_10 PSC_Cell21 ( .s7(s10), .s6(s9), .s5(s8), 
        .s4(s7), .s3(s6), .s2(s5), .s1(s4), .s0(s3), .p7({n57, n54, n51, n48, 
        n44, n40, n37, n34}), .p6({n88, n85, n81, n77, n73, n69, n65, n61}), 
        .p5({n113, n109, n106, n103, n100, n97, n94, n91}), .p4({n137, n134, 
        n131, n128, n125, n122, n119, n116}), .p3({n168, n165, n161, n157, 
        n153, n149, n145, n141}), .p2({n200, n196, n192, n188, n184, n180, 
        n176, n172}), .p1({n232, n228, n224, n220, n216, n212, n208, n204}), 
        .p0({n264, n260, n256, n252, n248, n244, n240, n236}), .check({n31, 
        n27, n23, n19, n15, n11, n7, n3}), .match(match1[22]) );
  Pattern_String_Comparator_Cell_9 PSC_Cell22 ( .s7(s9), .s6(s8), .s5(s7), 
        .s4(s6), .s3(s5), .s2(s4), .s1(s3), .s0(s2), .p7({n57, n54, n51, n48, 
        n44, n40, n37, n34}), .p6({n88, n85, n81, n77, n73, n69, n65, n61}), 
        .p5({n113, n109, n106, n103, n100, n97, n94, n91}), .p4({n137, n134, 
        n131, n128, n125, n122, n119, n116}), .p3({n168, n165, n161, n157, 
        n153, n149, n145, n141}), .p2({n200, n196, n192, n188, n184, n180, 
        n176, n172}), .p1({n232, n228, n224, n220, n216, n212, n208, n204}), 
        .p0({n264, n260, n256, n252, n248, n244, n240, n236}), .check({n31, 
        n27, n23, n19, n15, n11, n7, n3}), .match(match1[23]) );
  Pattern_String_Comparator_Cell_8 PSC_Cell23 ( .s7(s8), .s6(s7), .s5(s6), 
        .s4(s5), .s3(s4), .s2(s3), .s1(s2), .s0(s1), .p7({n57, n54, n51, n48, 
        n44, n40, n37, n34}), .p6({n88, n85, n81, n77, n73, n69, n65, n61}), 
        .p5({n113, n109, n106, n103, n100, n97, n94, n91}), .p4({n137, n134, 
        n131, n128, n125, n122, n119, n116}), .p3({n168, n165, n161, n157, 
        n153, n149, n145, n141}), .p2({n200, n196, n192, n188, n184, n180, 
        n176, n172}), .p1({n232, n228, n224, n220, n216, n212, n208, n204}), 
        .p0({n264, n260, n256, n252, n248, n244, n240, n236}), .check({n31, 
        n27, n23, n19, n15, n11, n7, n3}), .match(match1[24]) );
  Pattern_String_Comparator_Cell_7 PSC_Cell24 ( .s7(s7), .s6(s6), .s5(s5), 
        .s4(s4), .s3(s3), .s2(s2), .s1(s1), .s0(s0), .p7({n58, n55, n52, n49, 
        n45, n41, n38, n35}), .p6({n89, n86, n82, n78, n74, n70, n66, n62}), 
        .p5({n114, n110, n107, n104, n101, n98, n95, n92}), .p4({n138, n135, 
        n132, n129, n126, n123, n120, n117}), .p3({n169, n166, n162, n158, 
        n154, n150, n146, n142}), .p2({n201, n197, n193, n189, n185, n181, 
        n177, n173}), .p1({n233, n229, n225, n221, n217, n213, n209, n205}), 
        .p0({n265, n261, n257, n253, n249, n245, n241, n237}), .check({n32, 
        n28, n24, n20, n16, n12, n8, n4}), .match(match1[25]) );
  Pattern_String_Comparator_Cell_6 PSC_Cell25 ( .s7(s6), .s6(s5), .s5(s4), 
        .s4(s3), .s3(s2), .s2(s1), .s1(s0), .s0({1'b0, 1'b0, 1'b1, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0}), .p7({n58, n55, n52, n49, n45, n41, n38, n35}), 
        .p6({n89, n86, n82, n78, n74, n70, n66, n62}), .p5({n114, n110, n107, 
        n104, n101, n98, n95, n92}), .p4({n138, n135, n132, n129, n126, n123, 
        n120, n117}), .p3({n169, n166, n162, n158, n154, n150, n146, n142}), 
        .p2({n201, n197, n193, n189, n185, n181, n177, n173}), .p1({n233, n229, 
        n225, n221, n217, n213, n209, n205}), .p0({n265, n261, n257, n253, 
        n249, n245, n241, n237}), .check({n32, n28, n24, n20, n16, n12, n8, n4}), .match(match1[26]) );
  Pattern_String_Comparator_Cell_5 PSC_Cell26 ( .s7(s5), .s6(s4), .s5(s3), 
        .s4(s2), .s3(s1), .s2(s0), .s1({1'b0, 1'b0, 1'b1, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0}), .s0({1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), 
        .p7({n58, n55, n52, n49, n45, n41, n38, n35}), .p6({n89, n86, n82, n78, 
        n74, n70, n66, n62}), .p5({n114, n110, n107, n104, n101, n98, n95, n92}), .p4({n138, n135, n132, n129, n126, n123, n120, n117}), .p3({n169, n166, 
        n162, n158, n154, n150, n146, n142}), .p2({n201, n197, n193, n189, 
        n185, n181, n177, n173}), .p1({n233, n229, n225, n221, n217, n213, 
        n209, n205}), .p0({n265, n261, n257, n253, n249, n245, n241, n237}), 
        .check({n32, n28, n24, n20, n16, n12, n8, n4}), .match(match1[27]) );
  Pattern_String_Comparator_Cell_4 PSC_Cell27 ( .s7(s4), .s6(s3), .s5(s2), 
        .s4(s1), .s3(s0), .s2({1'b0, 1'b0, 1'b1, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), .s1({1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), .s0({1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), .p7({n58, n55, n52, n49, n45, n41, n38, 
        n35}), .p6({n89, n86, n82, n78, n74, n70, n66, n62}), .p5({n114, n110, 
        n107, n104, n101, n98, n95, n92}), .p4({n138, n135, n132, n129, n126, 
        n123, n120, n117}), .p3({n169, n166, n162, n158, n154, n150, n146, 
        n142}), .p2({n201, n197, n193, n189, n185, n181, n177, n173}), .p1({
        n233, n229, n225, n221, n217, n213, n209, n205}), .p0({n265, n261, 
        n257, n253, n249, n245, n241, n237}), .check({n32, n28, n24, n20, n16, 
        n12, n8, n4}), .match(match1[28]) );
  Pattern_String_Comparator_Cell_3 PSC_Cell28 ( .s7(s3), .s6(s2), .s5(s1), 
        .s4(s0), .s3({1'b0, 1'b0, 1'b1, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), .s2({
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), .s1({1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), .s0({1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0}), .p7({n58, n55, n52, n49, n45, n41, n38, n35}), .p6({n89, n86, n82, n78, n74, n70, n66, n62}), .p5({n114, n110, n107, n104, 
        n101, n98, n95, n92}), .p4({n138, n135, n132, n129, n126, n123, n120, 
        n117}), .p3({n169, n166, n162, n158, n154, n150, n146, n142}), .p2({
        n201, n197, n193, n189, n185, n181, n177, n173}), .p1({n233, n229, 
        n225, n221, n217, n213, n209, n205}), .p0({n265, n261, n257, n253, 
        n249, n245, n241, n237}), .check({n32, n28, n24, n20, n16, n12, n8, n4}), .match(match1[29]) );
  Pattern_String_Comparator_Cell_2 PSC_Cell29 ( .s7(s2), .s6(s1), .s5(s0), 
        .s4({1'b0, 1'b0, 1'b1, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), .s3({1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), .s2({1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0}), .s1({1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0}), .s0({1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), 
        .p7({n58, n55, n52, n49, n45, n41, n38, n35}), .p6({n89, n86, n82, n78, 
        n74, n70, n66, n62}), .p5({n114, n110, n107, n104, n101, n98, n95, n92}), .p4({n138, n135, n132, n129, n126, n123, n120, n117}), .p3({n169, n166, 
        n162, n158, n154, n150, n146, n142}), .p2({n201, n197, n193, n189, 
        n185, n181, n177, n173}), .p1({n233, n229, n225, n221, n217, n213, 
        n209, n205}), .p0({n265, n261, n257, n253, n249, n245, n241, n237}), 
        .check({n32, n28, n24, n20, n16, n12, n8, n4}), .match(match1[30]) );
  Pattern_String_Comparator_Cell_1 PSC_Cell30 ( .s7(s1), .s6(s0), .s5({1'b0, 
        1'b0, 1'b1, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), .s4({1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), .s3({1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0}), .s2({1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0}), .s1({1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), .s0({
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), .p7({n58, n55, n52, 
        n49, n45, n41, n38, n35}), .p6({n89, n86, n82, n78, n74, n70, n66, n62}), .p5({n114, n110, n107, n104, n101, n98, n95, n92}), .p4({n138, n135, n132, 
        n129, n126, n123, n120, n117}), .p3({n169, n166, n162, n158, n154, 
        n150, n146, n142}), .p2({n201, n197, n193, n189, n185, n181, n177, 
        n173}), .p1({n233, n229, n225, n221, n217, n213, n209, n205}), .p0({
        n265, n261, n257, n253, n249, n245, n241, n237}), .check({n32, n28, 
        n24, n20, n16, n12, n8, n4}), .match(match1[31]) );
  CLKBUFX3 U3 ( .A(p1_7[7]), .Y(n58) );
  CLKBUFX3 U4 ( .A(p1_7[6]), .Y(n55) );
  CLKBUFX3 U5 ( .A(p1_7[2]), .Y(n41) );
  CLKBUFX3 U6 ( .A(p1_7[5]), .Y(n52) );
  CLKBUFX3 U7 ( .A(p1_7[1]), .Y(n38) );
  CLKBUFX3 U8 ( .A(p1_7[0]), .Y(n35) );
  CLKBUFX3 U9 ( .A(p1_5[6]), .Y(n110) );
  CLKBUFX3 U10 ( .A(p1_6[7]), .Y(n89) );
  CLKBUFX3 U11 ( .A(p1_5[3]), .Y(n101) );
  CLKBUFX3 U12 ( .A(p1_5[5]), .Y(n107) );
  CLKBUFX3 U13 ( .A(p1_5[2]), .Y(n98) );
  CLKBUFX3 U14 ( .A(p1_7[7]), .Y(n57) );
  CLKBUFX3 U15 ( .A(p1_5[4]), .Y(n104) );
  CLKBUFX3 U16 ( .A(p1_5[1]), .Y(n95) );
  CLKBUFX3 U17 ( .A(p1_3[7]), .Y(n169) );
  CLKBUFX3 U18 ( .A(p1_7[6]), .Y(n54) );
  CLKBUFX3 U19 ( .A(p1_7[2]), .Y(n40) );
  CLKBUFX3 U20 ( .A(p1_5[0]), .Y(n92) );
  CLKBUFX3 U21 ( .A(p1_4[7]), .Y(n138) );
  CLKBUFX3 U22 ( .A(p1_7[5]), .Y(n51) );
  CLKBUFX3 U23 ( .A(p1_4[6]), .Y(n135) );
  CLKBUFX3 U24 ( .A(p1_7[1]), .Y(n37) );
  CLKBUFX3 U25 ( .A(p1_4[3]), .Y(n126) );
  CLKBUFX3 U26 ( .A(p1_7[0]), .Y(n34) );
  CLKBUFX3 U27 ( .A(p1_5[6]), .Y(n109) );
  CLKBUFX3 U28 ( .A(p1_4[5]), .Y(n132) );
  CLKBUFX3 U29 ( .A(p1_6[7]), .Y(n88) );
  CLKBUFX3 U30 ( .A(p1_4[2]), .Y(n123) );
  CLKBUFX3 U31 ( .A(p1_5[3]), .Y(n100) );
  CLKBUFX3 U32 ( .A(p1_4[4]), .Y(n129) );
  CLKBUFX3 U33 ( .A(p1_5[5]), .Y(n106) );
  CLKBUFX3 U34 ( .A(p1_4[1]), .Y(n120) );
  CLKBUFX3 U35 ( .A(p1_5[2]), .Y(n97) );
  CLKBUFX3 U36 ( .A(p1_5[4]), .Y(n103) );
  CLKBUFX3 U37 ( .A(p1_4[0]), .Y(n117) );
  CLKBUFX3 U38 ( .A(p1_5[1]), .Y(n94) );
  CLKBUFX3 U39 ( .A(p1_3[7]), .Y(n168) );
  CLKBUFX3 U40 ( .A(p1_5[0]), .Y(n91) );
  CLKBUFX3 U41 ( .A(p1_4[7]), .Y(n137) );
  CLKBUFX3 U42 ( .A(p1_4[6]), .Y(n134) );
  CLKBUFX3 U43 ( .A(n242), .Y(n245) );
  CLKBUFX3 U44 ( .A(p1_4[3]), .Y(n125) );
  CLKBUFX3 U45 ( .A(p1_4[5]), .Y(n131) );
  CLKBUFX3 U46 ( .A(p1_4[2]), .Y(n122) );
  CLKBUFX3 U47 ( .A(n238), .Y(n241) );
  CLKBUFX3 U48 ( .A(p1_4[4]), .Y(n128) );
  CLKBUFX3 U49 ( .A(p1_4[1]), .Y(n119) );
  CLKBUFX3 U50 ( .A(n234), .Y(n237) );
  CLKBUFX3 U51 ( .A(n242), .Y(n244) );
  CLKBUFX3 U52 ( .A(p1_4[0]), .Y(n116) );
  CLKBUFX3 U53 ( .A(n238), .Y(n240) );
  CLKBUFX3 U54 ( .A(n234), .Y(n236) );
  CLKBUFX3 U55 ( .A(p1_7[7]), .Y(n56) );
  CLKBUFX3 U56 ( .A(p1_7[6]), .Y(n53) );
  CLKBUFX3 U57 ( .A(p1_7[2]), .Y(n39) );
  CLKBUFX3 U58 ( .A(p1_7[5]), .Y(n50) );
  CLKBUFX3 U59 ( .A(p1_7[1]), .Y(n36) );
  CLKBUFX3 U60 ( .A(p1_7[0]), .Y(n33) );
  CLKBUFX3 U61 ( .A(p1_5[6]), .Y(n108) );
  CLKBUFX3 U62 ( .A(p1_6[7]), .Y(n87) );
  CLKBUFX3 U63 ( .A(p1_5[3]), .Y(n99) );
  CLKBUFX3 U64 ( .A(p1_5[5]), .Y(n105) );
  CLKBUFX3 U65 ( .A(p1_5[2]), .Y(n96) );
  CLKBUFX3 U66 ( .A(p1_5[4]), .Y(n102) );
  CLKBUFX3 U67 ( .A(p1_5[1]), .Y(n93) );
  CLKBUFX3 U68 ( .A(p1_3[7]), .Y(n167) );
  CLKBUFX3 U69 ( .A(p1_5[0]), .Y(n90) );
  CLKBUFX3 U70 ( .A(p1_4[7]), .Y(n136) );
  CLKBUFX3 U71 ( .A(p1_4[6]), .Y(n133) );
  CLKBUFX3 U72 ( .A(p1_4[3]), .Y(n124) );
  CLKBUFX3 U73 ( .A(p1_4[5]), .Y(n130) );
  CLKBUFX3 U74 ( .A(p1_4[2]), .Y(n121) );
  CLKBUFX3 U75 ( .A(p1_4[4]), .Y(n127) );
  CLKBUFX3 U76 ( .A(p1_4[1]), .Y(n118) );
  CLKBUFX3 U77 ( .A(n242), .Y(n243) );
  CLKBUFX3 U78 ( .A(p1_4[0]), .Y(n115) );
  CLKBUFX3 U79 ( .A(n238), .Y(n239) );
  CLKBUFX3 U80 ( .A(n234), .Y(n235) );
  CLKBUFX3 U81 ( .A(n42), .Y(n45) );
  CLKBUFX3 U82 ( .A(n46), .Y(n49) );
  CLKBUFX3 U83 ( .A(n111), .Y(n114) );
  CLKBUFX3 U84 ( .A(p1_0[2]), .Y(n242) );
  CLKBUFX3 U85 ( .A(p1_0[1]), .Y(n238) );
  CLKBUFX3 U86 ( .A(n83), .Y(n86) );
  CLKBUFX3 U87 ( .A(n71), .Y(n74) );
  CLKBUFX3 U88 ( .A(n42), .Y(n44) );
  CLKBUFX3 U89 ( .A(p1_0[0]), .Y(n234) );
  CLKBUFX3 U90 ( .A(n79), .Y(n82) );
  CLKBUFX3 U91 ( .A(n67), .Y(n70) );
  CLKBUFX3 U92 ( .A(n230), .Y(n233) );
  CLKBUFX3 U93 ( .A(n75), .Y(n78) );
  CLKBUFX3 U94 ( .A(n163), .Y(n166) );
  CLKBUFX3 U95 ( .A(n46), .Y(n48) );
  CLKBUFX3 U96 ( .A(n63), .Y(n66) );
  CLKBUFX3 U97 ( .A(n198), .Y(n201) );
  CLKBUFX3 U98 ( .A(n151), .Y(n154) );
  CLKBUFX3 U99 ( .A(n226), .Y(n229) );
  CLKBUFX3 U100 ( .A(n214), .Y(n217) );
  CLKBUFX3 U101 ( .A(n59), .Y(n62) );
  CLKBUFX3 U102 ( .A(n159), .Y(n162) );
  CLKBUFX3 U103 ( .A(n111), .Y(n113) );
  CLKBUFX3 U104 ( .A(n147), .Y(n150) );
  CLKBUFX3 U105 ( .A(n194), .Y(n197) );
  CLKBUFX3 U106 ( .A(n262), .Y(n265) );
  CLKBUFX3 U107 ( .A(n222), .Y(n225) );
  CLKBUFX3 U108 ( .A(n182), .Y(n185) );
  CLKBUFX3 U109 ( .A(n210), .Y(n213) );
  CLKBUFX3 U110 ( .A(n155), .Y(n158) );
  CLKBUFX3 U111 ( .A(n230), .Y(n232) );
  CLKBUFX3 U112 ( .A(n258), .Y(n261) );
  CLKBUFX3 U113 ( .A(n218), .Y(n221) );
  CLKBUFX3 U114 ( .A(n143), .Y(n146) );
  CLKBUFX3 U115 ( .A(n190), .Y(n193) );
  CLKBUFX3 U116 ( .A(n178), .Y(n181) );
  CLKBUFX3 U117 ( .A(n246), .Y(n249) );
  CLKBUFX3 U118 ( .A(n254), .Y(n257) );
  CLKBUFX3 U119 ( .A(n206), .Y(n209) );
  CLKBUFX3 U120 ( .A(n83), .Y(n85) );
  CLKBUFX3 U121 ( .A(n226), .Y(n228) );
  CLKBUFX3 U122 ( .A(n198), .Y(n200) );
  CLKBUFX3 U123 ( .A(n186), .Y(n189) );
  CLKBUFX3 U124 ( .A(n139), .Y(n142) );
  CLKBUFX3 U125 ( .A(n71), .Y(n73) );
  CLKBUFX3 U126 ( .A(n214), .Y(n216) );
  CLKBUFX3 U127 ( .A(n202), .Y(n205) );
  CLKBUFX3 U128 ( .A(n174), .Y(n177) );
  CLKBUFX3 U129 ( .A(n194), .Y(n196) );
  CLKBUFX3 U130 ( .A(n79), .Y(n81) );
  CLKBUFX3 U131 ( .A(n262), .Y(n264) );
  CLKBUFX3 U132 ( .A(n222), .Y(n224) );
  CLKBUFX3 U133 ( .A(n67), .Y(n69) );
  CLKBUFX3 U134 ( .A(n250), .Y(n253) );
  CLKBUFX3 U135 ( .A(n210), .Y(n212) );
  CLKBUFX3 U136 ( .A(n182), .Y(n184) );
  CLKBUFX3 U137 ( .A(n170), .Y(n173) );
  CLKBUFX3 U138 ( .A(n75), .Y(n77) );
  CLKBUFX3 U139 ( .A(n258), .Y(n260) );
  CLKBUFX3 U140 ( .A(n218), .Y(n220) );
  CLKBUFX3 U141 ( .A(n190), .Y(n192) );
  CLKBUFX3 U142 ( .A(n163), .Y(n165) );
  CLKBUFX3 U143 ( .A(n178), .Y(n180) );
  CLKBUFX3 U144 ( .A(n63), .Y(n65) );
  CLKBUFX3 U145 ( .A(n254), .Y(n256) );
  CLKBUFX3 U146 ( .A(n246), .Y(n248) );
  CLKBUFX3 U147 ( .A(n206), .Y(n208) );
  CLKBUFX3 U148 ( .A(n151), .Y(n153) );
  CLKBUFX3 U149 ( .A(n186), .Y(n188) );
  CLKBUFX3 U150 ( .A(n59), .Y(n61) );
  CLKBUFX3 U151 ( .A(n159), .Y(n161) );
  CLKBUFX3 U152 ( .A(n202), .Y(n204) );
  CLKBUFX3 U153 ( .A(n174), .Y(n176) );
  CLKBUFX3 U154 ( .A(n147), .Y(n149) );
  CLKBUFX3 U155 ( .A(n250), .Y(n252) );
  CLKBUFX3 U156 ( .A(n155), .Y(n157) );
  CLKBUFX3 U157 ( .A(n170), .Y(n172) );
  CLKBUFX3 U158 ( .A(n143), .Y(n145) );
  CLKBUFX3 U159 ( .A(n139), .Y(n141) );
  CLKBUFX3 U160 ( .A(n42), .Y(n43) );
  CLKBUFX3 U161 ( .A(n21), .Y(n24) );
  CLKBUFX3 U162 ( .A(n46), .Y(n47) );
  CLKBUFX3 U163 ( .A(n25), .Y(n28) );
  CLKBUFX3 U164 ( .A(n5), .Y(n8) );
  CLKBUFX3 U165 ( .A(n29), .Y(n32) );
  CLKBUFX3 U166 ( .A(n111), .Y(n112) );
  CLKBUFX3 U167 ( .A(n9), .Y(n12) );
  CLKBUFX3 U168 ( .A(n230), .Y(n231) );
  CLKBUFX3 U169 ( .A(n1), .Y(n4) );
  CLKBUFX3 U170 ( .A(n13), .Y(n16) );
  CLKBUFX3 U171 ( .A(n83), .Y(n84) );
  CLKBUFX3 U172 ( .A(n226), .Y(n227) );
  CLKBUFX3 U173 ( .A(n198), .Y(n199) );
  CLKBUFX3 U174 ( .A(n71), .Y(n72) );
  CLKBUFX3 U175 ( .A(n214), .Y(n215) );
  CLKBUFX3 U176 ( .A(n17), .Y(n20) );
  CLKBUFX3 U177 ( .A(n194), .Y(n195) );
  CLKBUFX3 U178 ( .A(n79), .Y(n80) );
  CLKBUFX3 U179 ( .A(n262), .Y(n263) );
  CLKBUFX3 U180 ( .A(n222), .Y(n223) );
  CLKBUFX3 U181 ( .A(n67), .Y(n68) );
  CLKBUFX3 U182 ( .A(n210), .Y(n211) );
  CLKBUFX3 U183 ( .A(n182), .Y(n183) );
  CLKBUFX3 U184 ( .A(n75), .Y(n76) );
  CLKBUFX3 U185 ( .A(n21), .Y(n23) );
  CLKBUFX3 U186 ( .A(n258), .Y(n259) );
  CLKBUFX3 U187 ( .A(n218), .Y(n219) );
  CLKBUFX3 U188 ( .A(n190), .Y(n191) );
  CLKBUFX3 U189 ( .A(n163), .Y(n164) );
  CLKBUFX3 U190 ( .A(n178), .Y(n179) );
  CLKBUFX3 U191 ( .A(n63), .Y(n64) );
  CLKBUFX3 U192 ( .A(n254), .Y(n255) );
  CLKBUFX3 U193 ( .A(n246), .Y(n247) );
  CLKBUFX3 U194 ( .A(n206), .Y(n207) );
  CLKBUFX3 U195 ( .A(n151), .Y(n152) );
  CLKBUFX3 U196 ( .A(n25), .Y(n27) );
  CLKBUFX3 U197 ( .A(n186), .Y(n187) );
  CLKBUFX3 U198 ( .A(n5), .Y(n7) );
  CLKBUFX3 U199 ( .A(n29), .Y(n31) );
  CLKBUFX3 U200 ( .A(n59), .Y(n60) );
  CLKBUFX3 U201 ( .A(n159), .Y(n160) );
  CLKBUFX3 U202 ( .A(n202), .Y(n203) );
  CLKBUFX3 U203 ( .A(n174), .Y(n175) );
  CLKBUFX3 U204 ( .A(n147), .Y(n148) );
  CLKBUFX3 U205 ( .A(n9), .Y(n11) );
  CLKBUFX3 U206 ( .A(n250), .Y(n251) );
  CLKBUFX3 U207 ( .A(n155), .Y(n156) );
  CLKBUFX3 U208 ( .A(n170), .Y(n171) );
  CLKBUFX3 U209 ( .A(n143), .Y(n144) );
  CLKBUFX3 U210 ( .A(n1), .Y(n3) );
  CLKBUFX3 U211 ( .A(n13), .Y(n15) );
  CLKBUFX3 U212 ( .A(n139), .Y(n140) );
  CLKBUFX3 U213 ( .A(n17), .Y(n19) );
  CLKBUFX3 U214 ( .A(n21), .Y(n22) );
  CLKBUFX3 U215 ( .A(n25), .Y(n26) );
  CLKBUFX3 U216 ( .A(n5), .Y(n6) );
  CLKBUFX3 U217 ( .A(n29), .Y(n30) );
  CLKBUFX3 U218 ( .A(n9), .Y(n10) );
  CLKBUFX3 U219 ( .A(n1), .Y(n2) );
  CLKBUFX3 U220 ( .A(n13), .Y(n14) );
  CLKBUFX3 U221 ( .A(n17), .Y(n18) );
  CLKBUFX3 U222 ( .A(p1_7[3]), .Y(n42) );
  CLKBUFX3 U223 ( .A(p1_7[4]), .Y(n46) );
  CLKBUFX3 U224 ( .A(p1_5[7]), .Y(n111) );
  CLKBUFX3 U225 ( .A(p1_6[6]), .Y(n83) );
  CLKBUFX3 U226 ( .A(p1_6[3]), .Y(n71) );
  CLKBUFX3 U227 ( .A(p1_6[5]), .Y(n79) );
  CLKBUFX3 U228 ( .A(p1_6[2]), .Y(n67) );
  CLKBUFX3 U229 ( .A(p1_1[7]), .Y(n230) );
  CLKBUFX3 U230 ( .A(p1_6[4]), .Y(n75) );
  CLKBUFX3 U231 ( .A(p1_3[6]), .Y(n163) );
  CLKBUFX3 U232 ( .A(p1_6[1]), .Y(n63) );
  CLKBUFX3 U233 ( .A(p1_2[7]), .Y(n198) );
  CLKBUFX3 U234 ( .A(p1_3[3]), .Y(n151) );
  CLKBUFX3 U235 ( .A(p1_1[6]), .Y(n226) );
  CLKBUFX3 U236 ( .A(p1_1[3]), .Y(n214) );
  CLKBUFX3 U237 ( .A(p1_6[0]), .Y(n59) );
  CLKBUFX3 U238 ( .A(p1_3[5]), .Y(n159) );
  CLKBUFX3 U239 ( .A(p1_3[2]), .Y(n147) );
  CLKBUFX3 U240 ( .A(p1_2[6]), .Y(n194) );
  CLKBUFX3 U241 ( .A(p1_0[7]), .Y(n262) );
  CLKBUFX3 U242 ( .A(p1_1[5]), .Y(n222) );
  CLKBUFX3 U243 ( .A(p1_2[3]), .Y(n182) );
  CLKBUFX3 U244 ( .A(p1_1[2]), .Y(n210) );
  CLKBUFX3 U245 ( .A(p1_3[4]), .Y(n155) );
  CLKBUFX3 U246 ( .A(p1_0[6]), .Y(n258) );
  CLKBUFX3 U247 ( .A(p1_1[4]), .Y(n218) );
  CLKBUFX3 U248 ( .A(p1_3[1]), .Y(n143) );
  CLKBUFX3 U249 ( .A(p1_2[5]), .Y(n190) );
  CLKBUFX3 U250 ( .A(p1_2[2]), .Y(n178) );
  CLKBUFX3 U251 ( .A(p1_0[5]), .Y(n254) );
  CLKBUFX3 U252 ( .A(p1_0[3]), .Y(n246) );
  CLKBUFX3 U253 ( .A(p1_1[1]), .Y(n206) );
  CLKBUFX3 U254 ( .A(p1_2[4]), .Y(n186) );
  CLKBUFX3 U255 ( .A(p1_3[0]), .Y(n139) );
  CLKBUFX3 U256 ( .A(p1_1[0]), .Y(n202) );
  CLKBUFX3 U257 ( .A(p1_2[1]), .Y(n174) );
  CLKBUFX3 U258 ( .A(p1_0[4]), .Y(n250) );
  CLKBUFX3 U259 ( .A(p1_2[0]), .Y(n170) );
  CLKBUFX3 U260 ( .A(check1[5]), .Y(n21) );
  CLKBUFX3 U261 ( .A(check1[6]), .Y(n25) );
  CLKBUFX3 U262 ( .A(check1[1]), .Y(n5) );
  CLKBUFX3 U263 ( .A(check1[7]), .Y(n29) );
  CLKBUFX3 U264 ( .A(check1[2]), .Y(n9) );
  CLKBUFX3 U265 ( .A(check1[0]), .Y(n1) );
  CLKBUFX3 U266 ( .A(check1[3]), .Y(n13) );
  CLKBUFX3 U267 ( .A(check1[4]), .Y(n17) );
endmodule


module priority_encoder_Cell_0 ( din0, din1, din2, din3, dout, trigger );
  output [1:0] dout;
  input din0, din1, din2, din3;
  output trigger;
  wire   n4, n1, n2, n3;

  CLKINVX1 U3 ( .A(din1), .Y(n3) );
  NAND4X1 U4 ( .A(n4), .B(n1), .C(n3), .D(n2), .Y(trigger) );
  CLKINVX1 U5 ( .A(din0), .Y(n1) );
  OAI31XL U6 ( .A0(n2), .A1(din1), .A2(din0), .B0(n4), .Y(dout[1]) );
  OAI21XL U7 ( .A0(din0), .A1(n3), .B0(n4), .Y(dout[0]) );
  NAND4X1 U8 ( .A(din3), .B(n1), .C(n3), .D(n2), .Y(n4) );
  CLKINVX1 U9 ( .A(din2), .Y(n2) );
endmodule


module priority_encoder_Cell_15 ( din0, din1, din2, din3, dout, trigger );
  output [1:0] dout;
  input din0, din1, din2, din3;
  output trigger;
  wire   n1, n2, n3, n5;

  OAI31XL U3 ( .A0(n1), .A1(din1), .A2(din0), .B0(n5), .Y(dout[1]) );
  NAND4X1 U4 ( .A(n5), .B(n3), .C(n2), .D(n1), .Y(trigger) );
  CLKINVX1 U5 ( .A(din0), .Y(n3) );
  CLKINVX1 U6 ( .A(din1), .Y(n2) );
  OAI21XL U7 ( .A0(din0), .A1(n2), .B0(n5), .Y(dout[0]) );
  NAND4X1 U8 ( .A(din3), .B(n3), .C(n2), .D(n1), .Y(n5) );
  CLKINVX1 U9 ( .A(din2), .Y(n1) );
endmodule


module priority_encoder_Cell_14 ( din0, din1, din2, din3, dout, trigger );
  output [1:0] dout;
  input din0, din1, din2, din3;
  output trigger;
  wire   n1, n2, n3, n5;

  CLKINVX1 U3 ( .A(din1), .Y(n1) );
  OAI31XL U4 ( .A0(n3), .A1(din1), .A2(din0), .B0(n5), .Y(dout[1]) );
  NAND4X1 U5 ( .A(n5), .B(n2), .C(n1), .D(n3), .Y(trigger) );
  CLKINVX1 U6 ( .A(din2), .Y(n3) );
  CLKINVX1 U7 ( .A(din0), .Y(n2) );
  OAI21XL U8 ( .A0(din0), .A1(n1), .B0(n5), .Y(dout[0]) );
  NAND4X1 U9 ( .A(din3), .B(n2), .C(n1), .D(n3), .Y(n5) );
endmodule


module priority_encoder_Cell_13 ( din0, din1, din2, din3, dout, trigger );
  output [1:0] dout;
  input din0, din1, din2, din3;
  output trigger;
  wire   n1, n2, n3, n5;

  NAND4X1 U3 ( .A(n5), .B(n3), .C(n2), .D(n1), .Y(trigger) );
  CLKINVX1 U4 ( .A(din0), .Y(n3) );
  CLKINVX1 U5 ( .A(din1), .Y(n2) );
  OAI31XL U6 ( .A0(n1), .A1(din1), .A2(din0), .B0(n5), .Y(dout[1]) );
  OAI21XL U7 ( .A0(din0), .A1(n2), .B0(n5), .Y(dout[0]) );
  NAND4X1 U8 ( .A(din3), .B(n3), .C(n2), .D(n1), .Y(n5) );
  CLKINVX1 U9 ( .A(din2), .Y(n1) );
endmodule


module priority_encoder_Cell_12 ( din0, din1, din2, din3, dout, trigger );
  output [1:0] dout;
  input din0, din1, din2, din3;
  output trigger;
  wire   n1, n2, n3, n5;

  NAND4X1 U3 ( .A(n5), .B(n3), .C(n2), .D(n1), .Y(trigger) );
  CLKINVX1 U4 ( .A(din0), .Y(n3) );
  CLKINVX1 U5 ( .A(din1), .Y(n2) );
  OAI31XL U6 ( .A0(n1), .A1(din1), .A2(din0), .B0(n5), .Y(dout[1]) );
  OAI21XL U7 ( .A0(din0), .A1(n2), .B0(n5), .Y(dout[0]) );
  NAND4X1 U8 ( .A(din3), .B(n3), .C(n2), .D(n1), .Y(n5) );
  CLKINVX1 U9 ( .A(din2), .Y(n1) );
endmodule


module priority_encoder_Cell_11 ( din0, din1, din2, din3, dout, trigger );
  output [1:0] dout;
  input din0, din1, din2, din3;
  output trigger;
  wire   n1, n2, n3, n5;

  CLKINVX1 U3 ( .A(din0), .Y(n3) );
  CLKINVX1 U4 ( .A(din1), .Y(n2) );
  NAND4X1 U5 ( .A(n5), .B(n3), .C(n2), .D(n1), .Y(trigger) );
  OAI31XL U6 ( .A0(n1), .A1(din1), .A2(din0), .B0(n5), .Y(dout[1]) );
  OAI21XL U7 ( .A0(din0), .A1(n2), .B0(n5), .Y(dout[0]) );
  NAND4X1 U8 ( .A(din3), .B(n3), .C(n2), .D(n1), .Y(n5) );
  CLKINVX1 U9 ( .A(din2), .Y(n1) );
endmodule


module priority_encoder_Cell_10 ( din0, din1, din2, din3, dout, trigger );
  output [1:0] dout;
  input din0, din1, din2, din3;
  output trigger;
  wire   n1, n2, n3, n5;

  NAND4X1 U3 ( .A(n5), .B(n3), .C(n2), .D(n1), .Y(trigger) );
  CLKINVX1 U4 ( .A(din0), .Y(n3) );
  CLKINVX1 U5 ( .A(din1), .Y(n2) );
  OAI31XL U6 ( .A0(n1), .A1(din1), .A2(din0), .B0(n5), .Y(dout[1]) );
  OAI21XL U7 ( .A0(din0), .A1(n2), .B0(n5), .Y(dout[0]) );
  NAND4X1 U8 ( .A(din3), .B(n3), .C(n2), .D(n1), .Y(n5) );
  CLKINVX1 U9 ( .A(din2), .Y(n1) );
endmodule


module priority_encoder_Cell_9 ( din0, din1, din2, din3, dout, trigger );
  output [1:0] dout;
  input din0, din1, din2, din3;
  output trigger;
  wire   n1, n2, n3, n5;

  NAND4X1 U3 ( .A(n5), .B(n1), .C(n2), .D(n3), .Y(trigger) );
  CLKINVX1 U4 ( .A(din0), .Y(n1) );
  CLKINVX1 U5 ( .A(din1), .Y(n2) );
  OAI31XL U6 ( .A0(n3), .A1(din1), .A2(din0), .B0(n5), .Y(dout[1]) );
  OAI21XL U7 ( .A0(din0), .A1(n2), .B0(n5), .Y(dout[0]) );
  NAND4X1 U8 ( .A(din3), .B(n1), .C(n2), .D(n3), .Y(n5) );
  CLKINVX1 U9 ( .A(din2), .Y(n3) );
endmodule


module priority_encoder_pattern1 ( din, dout );
  input [31:0] din;
  output [5:0] dout;
  wire   n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20,
         n21, n22, n23, n24, n1, n2, n3, n4, n5;
  wire   [15:0] pri;
  wire   [7:0] trigger;

  priority_encoder_Cell_0 PEC0 ( .din0(din[0]), .din1(din[1]), .din2(din[2]), 
        .din3(din[3]), .dout(pri[1:0]), .trigger(trigger[0]) );
  priority_encoder_Cell_15 PEC4 ( .din0(din[4]), .din1(din[5]), .din2(din[6]), 
        .din3(din[7]), .dout(pri[3:2]), .trigger(trigger[1]) );
  priority_encoder_Cell_14 PEC8 ( .din0(din[8]), .din1(din[9]), .din2(din[10]), 
        .din3(din[11]), .dout(pri[5:4]), .trigger(trigger[2]) );
  priority_encoder_Cell_13 PEC12 ( .din0(din[12]), .din1(din[13]), .din2(
        din[14]), .din3(din[15]), .dout(pri[7:6]), .trigger(trigger[3]) );
  priority_encoder_Cell_12 PEC16 ( .din0(din[16]), .din1(din[17]), .din2(
        din[18]), .din3(din[19]), .dout(pri[9:8]), .trigger(trigger[4]) );
  priority_encoder_Cell_11 PEC20 ( .din0(din[20]), .din1(din[21]), .din2(
        din[22]), .din3(din[23]), .dout(pri[11:10]), .trigger(trigger[5]) );
  priority_encoder_Cell_10 PEC24 ( .din0(din[24]), .din1(din[25]), .din2(
        din[26]), .din3(din[27]), .dout(pri[13:12]), .trigger(trigger[6]) );
  priority_encoder_Cell_9 PEC28 ( .din0(din[28]), .din1(din[29]), .din2(
        din[30]), .din3(din[31]), .dout(pri[15:14]), .trigger(trigger[7]) );
  NOR3BXL U3 ( .AN(n23), .B(trigger[5]), .C(trigger[6]), .Y(n12) );
  CLKINVX1 U4 ( .A(n7), .Y(n4) );
  NOR2BX1 U5 ( .AN(n24), .B(trigger[4]), .Y(n23) );
  CLKINVX1 U6 ( .A(n12), .Y(n1) );
  CLKINVX1 U7 ( .A(n6), .Y(n2) );
  NAND3BX1 U8 ( .AN(n11), .B(n10), .C(n8), .Y(dout[2]) );
  NOR2X1 U9 ( .A(n12), .B(n13), .Y(n8) );
  NAND2X1 U10 ( .A(trigger[4]), .B(n24), .Y(n7) );
  NAND4X1 U11 ( .A(n1), .B(n9), .C(n6), .D(n10), .Y(dout[3]) );
  CLKINVX1 U12 ( .A(n9), .Y(n5) );
  NAND3X1 U13 ( .A(n6), .B(n7), .C(n8), .Y(dout[4]) );
  CLKINVX1 U14 ( .A(n10), .Y(n3) );
  NOR3BXL U15 ( .AN(n22), .B(trigger[2]), .C(trigger[3]), .Y(n24) );
  NAND4X1 U16 ( .A(n14), .B(n15), .C(n16), .D(n17), .Y(dout[1]) );
  AOI22X1 U17 ( .A0(pri[7]), .A1(n3), .B0(trigger[0]), .B1(pri[1]), .Y(n14) );
  AOI22X1 U18 ( .A0(pri[11]), .A1(n13), .B0(pri[9]), .B1(n4), .Y(n15) );
  AOI22X1 U19 ( .A0(pri[15]), .A1(n12), .B0(pri[13]), .B1(n2), .Y(n16) );
  NOR2X1 U20 ( .A(trigger[0]), .B(trigger[1]), .Y(n22) );
  NAND4X1 U21 ( .A(n18), .B(n19), .C(n20), .D(n21), .Y(dout[0]) );
  AOI22X1 U22 ( .A0(pri[6]), .A1(n3), .B0(pri[0]), .B1(trigger[0]), .Y(n18) );
  AOI22X1 U23 ( .A0(pri[10]), .A1(n13), .B0(pri[8]), .B1(n4), .Y(n19) );
  AOI22X1 U24 ( .A0(pri[14]), .A1(n12), .B0(pri[12]), .B1(n2), .Y(n20) );
  NAND3BX1 U25 ( .AN(trigger[5]), .B(n23), .C(trigger[6]), .Y(n6) );
  AND2X2 U26 ( .A(trigger[5]), .B(n23), .Y(n13) );
  NAND2X1 U27 ( .A(trigger[2]), .B(n22), .Y(n9) );
  NAND3BX1 U28 ( .AN(trigger[2]), .B(n22), .C(trigger[3]), .Y(n10) );
  NOR2BX1 U29 ( .AN(trigger[1]), .B(trigger[0]), .Y(n11) );
  AOI221XL U30 ( .A0(pri[5]), .A1(n5), .B0(pri[3]), .B1(n11), .C0(dout[5]), 
        .Y(n17) );
  NOR2X1 U31 ( .A(trigger[7]), .B(n1), .Y(dout[5]) );
  AOI221XL U32 ( .A0(pri[4]), .A1(n5), .B0(pri[2]), .B1(n11), .C0(dout[5]), 
        .Y(n21) );
endmodule


module priority_encoder_Cell_8 ( din0, din1, din2, din3, dout, trigger );
  output [1:0] dout;
  input din0, din1, din2, din3;
  output trigger;
  wire   n1, n2, n3, n5;

  NAND4X1 U3 ( .A(n5), .B(n1), .C(n2), .D(n3), .Y(trigger) );
  OAI31XL U4 ( .A0(n3), .A1(din1), .A2(din0), .B0(n5), .Y(dout[1]) );
  OAI21XL U5 ( .A0(din0), .A1(n2), .B0(n5), .Y(dout[0]) );
  NAND4X1 U6 ( .A(din3), .B(n1), .C(n2), .D(n3), .Y(n5) );
  CLKINVX1 U7 ( .A(din0), .Y(n1) );
  CLKINVX1 U8 ( .A(din2), .Y(n3) );
  CLKINVX1 U9 ( .A(din1), .Y(n2) );
endmodule


module priority_encoder_Cell_7 ( din0, din1, din2, din3, dout, trigger );
  output [1:0] dout;
  input din0, din1, din2, din3;
  output trigger;
  wire   n1, n2, n3, n5;

  NAND4X1 U3 ( .A(n5), .B(n1), .C(n2), .D(n3), .Y(trigger) );
  NAND4X1 U4 ( .A(din3), .B(n1), .C(n2), .D(n3), .Y(n5) );
  CLKINVX1 U5 ( .A(din2), .Y(n3) );
  CLKINVX1 U6 ( .A(din0), .Y(n1) );
  CLKINVX1 U7 ( .A(din1), .Y(n2) );
  OAI31XL U8 ( .A0(n3), .A1(din1), .A2(din0), .B0(n5), .Y(dout[1]) );
  OAI21XL U9 ( .A0(din0), .A1(n2), .B0(n5), .Y(dout[0]) );
endmodule


module priority_encoder_Cell_6 ( din0, din1, din2, din3, dout, trigger );
  output [1:0] dout;
  input din0, din1, din2, din3;
  output trigger;
  wire   n1, n2, n3, n5;

  NAND4X1 U3 ( .A(n5), .B(n1), .C(n2), .D(n3), .Y(trigger) );
  NAND4X1 U4 ( .A(din3), .B(n1), .C(n2), .D(n3), .Y(n5) );
  CLKINVX1 U5 ( .A(din2), .Y(n3) );
  CLKINVX1 U6 ( .A(din0), .Y(n1) );
  CLKINVX1 U7 ( .A(din1), .Y(n2) );
  OAI31XL U8 ( .A0(n3), .A1(din1), .A2(din0), .B0(n5), .Y(dout[1]) );
  OAI21XL U9 ( .A0(din0), .A1(n2), .B0(n5), .Y(dout[0]) );
endmodule


module priority_encoder_Cell_5 ( din0, din1, din2, din3, dout, trigger );
  output [1:0] dout;
  input din0, din1, din2, din3;
  output trigger;
  wire   n1, n2, n3, n5;

  NAND4X1 U3 ( .A(n5), .B(n1), .C(n2), .D(n3), .Y(trigger) );
  NAND4X1 U4 ( .A(din3), .B(n1), .C(n2), .D(n3), .Y(n5) );
  CLKINVX1 U5 ( .A(din1), .Y(n2) );
  CLKINVX1 U6 ( .A(din2), .Y(n3) );
  CLKINVX1 U7 ( .A(din0), .Y(n1) );
  OAI31XL U8 ( .A0(n3), .A1(din1), .A2(din0), .B0(n5), .Y(dout[1]) );
  OAI21XL U9 ( .A0(din0), .A1(n2), .B0(n5), .Y(dout[0]) );
endmodule


module priority_encoder_Cell_4 ( din0, din1, din2, din3, dout, trigger );
  output [1:0] dout;
  input din0, din1, din2, din3;
  output trigger;
  wire   n1, n2, n3, n5;

  NAND4X1 U3 ( .A(n5), .B(n1), .C(n2), .D(n3), .Y(trigger) );
  NAND4X1 U4 ( .A(din3), .B(n1), .C(n2), .D(n3), .Y(n5) );
  CLKINVX1 U5 ( .A(din1), .Y(n2) );
  CLKINVX1 U6 ( .A(din2), .Y(n3) );
  CLKINVX1 U7 ( .A(din0), .Y(n1) );
  OAI31XL U8 ( .A0(n3), .A1(din1), .A2(din0), .B0(n5), .Y(dout[1]) );
  OAI21XL U9 ( .A0(din0), .A1(n2), .B0(n5), .Y(dout[0]) );
endmodule


module priority_encoder_Cell_3 ( din0, din1, din2, din3, dout, trigger );
  output [1:0] dout;
  input din0, din1, din2, din3;
  output trigger;
  wire   n1, n2, n3, n5;

  NAND4X1 U3 ( .A(n5), .B(n1), .C(n2), .D(n3), .Y(trigger) );
  NAND4X1 U4 ( .A(din3), .B(n1), .C(n2), .D(n3), .Y(n5) );
  CLKINVX1 U5 ( .A(din0), .Y(n1) );
  CLKINVX1 U6 ( .A(din2), .Y(n3) );
  CLKINVX1 U7 ( .A(din1), .Y(n2) );
  OAI31XL U8 ( .A0(n3), .A1(din1), .A2(din0), .B0(n5), .Y(dout[1]) );
  OAI21XL U9 ( .A0(din0), .A1(n2), .B0(n5), .Y(dout[0]) );
endmodule


module priority_encoder_Cell_2 ( din0, din1, din2, din3, dout, trigger );
  output [1:0] dout;
  input din0, din1, din2, din3;
  output trigger;
  wire   n1, n2, n3, n5;

  NAND4X1 U3 ( .A(n5), .B(n2), .C(n3), .D(n1), .Y(trigger) );
  OAI31XL U4 ( .A0(n1), .A1(din1), .A2(din0), .B0(n5), .Y(dout[1]) );
  NAND4X1 U5 ( .A(din3), .B(n2), .C(n3), .D(n1), .Y(n5) );
  CLKINVX1 U6 ( .A(din0), .Y(n2) );
  CLKINVX1 U7 ( .A(din2), .Y(n1) );
  CLKINVX1 U8 ( .A(din1), .Y(n3) );
  OAI21XL U9 ( .A0(din0), .A1(n3), .B0(n5), .Y(dout[0]) );
endmodule


module priority_encoder_Cell_1 ( din0, din1, din2, din3, dout, trigger );
  output [1:0] dout;
  input din0, din1, din2, din3;
  output trigger;
  wire   n1, n2, n3, n5;

  NAND4X1 U3 ( .A(n5), .B(n1), .C(n2), .D(n3), .Y(trigger) );
  NAND4X1 U4 ( .A(din3), .B(n1), .C(n2), .D(n3), .Y(n5) );
  CLKINVX1 U5 ( .A(din0), .Y(n1) );
  CLKINVX1 U6 ( .A(din2), .Y(n3) );
  CLKINVX1 U7 ( .A(din1), .Y(n2) );
  OAI31XL U8 ( .A0(n3), .A1(din1), .A2(din0), .B0(n5), .Y(dout[1]) );
  OAI21XL U9 ( .A0(din0), .A1(n2), .B0(n5), .Y(dout[0]) );
endmodule


module priority_encoder_pattern2 ( din, dout );
  input [31:0] din;
  output [5:0] dout;
  wire   n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20,
         n21, n22, n23, n24, n25, n26, n1, n2, n3, n4, n5, n6;
  wire   [15:0] pri;
  wire   [7:0] trigger;

  priority_encoder_Cell_8 PEC0 ( .din0(din[0]), .din1(din[1]), .din2(din[2]), 
        .din3(din[3]), .dout(pri[1:0]), .trigger(trigger[0]) );
  priority_encoder_Cell_7 PEC4 ( .din0(din[4]), .din1(din[5]), .din2(din[6]), 
        .din3(din[7]), .dout(pri[3:2]), .trigger(trigger[1]) );
  priority_encoder_Cell_6 PEC8 ( .din0(din[8]), .din1(din[9]), .din2(din[10]), 
        .din3(din[11]), .dout(pri[5:4]), .trigger(trigger[2]) );
  priority_encoder_Cell_5 PEC12 ( .din0(din[12]), .din1(din[13]), .din2(
        din[14]), .din3(din[15]), .dout(pri[7:6]), .trigger(trigger[3]) );
  priority_encoder_Cell_4 PEC16 ( .din0(din[16]), .din1(din[17]), .din2(
        din[18]), .din3(din[19]), .dout(pri[9:8]), .trigger(trigger[4]) );
  priority_encoder_Cell_3 PEC20 ( .din0(din[20]), .din1(din[21]), .din2(
        din[22]), .din3(din[23]), .dout(pri[11:10]), .trigger(trigger[5]) );
  priority_encoder_Cell_2 PEC24 ( .din0(din[24]), .din1(din[25]), .din2(
        din[26]), .din3(din[27]), .dout(pri[13:12]), .trigger(trigger[6]) );
  priority_encoder_Cell_1 PEC28 ( .din0(din[28]), .din1(din[29]), .din2(
        din[30]), .din3(din[31]), .dout(pri[15:14]), .trigger(trigger[7]) );
  NOR2X1 U3 ( .A(trigger[7]), .B(dout[5]), .Y(n7) );
  NOR3BXL U4 ( .AN(n24), .B(trigger[0]), .C(trigger[1]), .Y(dout[5]) );
  NAND4X1 U5 ( .A(n7), .B(n12), .C(n11), .D(n9), .Y(dout[2]) );
  NAND4X1 U6 ( .A(n7), .B(n8), .C(n9), .D(n1), .Y(dout[4]) );
  NAND4X1 U7 ( .A(n7), .B(n10), .C(n11), .D(n1), .Y(dout[3]) );
  CLKINVX1 U8 ( .A(n12), .Y(n4) );
  CLKINVX1 U9 ( .A(n10), .Y(n5) );
  CLKINVX1 U10 ( .A(n11), .Y(n3) );
  CLKINVX1 U11 ( .A(n8), .Y(n6) );
  CLKINVX1 U12 ( .A(n9), .Y(n2) );
  NOR3BXL U13 ( .AN(n26), .B(trigger[4]), .C(trigger[5]), .Y(n25) );
  NOR3BXL U14 ( .AN(n25), .B(trigger[2]), .C(trigger[3]), .Y(n24) );
  NOR2X1 U15 ( .A(trigger[6]), .B(trigger[7]), .Y(n26) );
  NOR2BX1 U16 ( .AN(n24), .B(trigger[1]), .Y(n17) );
  NAND2X1 U17 ( .A(trigger[1]), .B(n24), .Y(n12) );
  NAND3BX1 U18 ( .AN(trigger[3]), .B(n25), .C(trigger[2]), .Y(n10) );
  CLKINVX1 U19 ( .A(trigger[6]), .Y(n1) );
  NAND2X1 U20 ( .A(trigger[3]), .B(n25), .Y(n11) );
  NAND3BX1 U21 ( .AN(trigger[5]), .B(n26), .C(trigger[4]), .Y(n8) );
  NAND2X1 U22 ( .A(trigger[5]), .B(n26), .Y(n9) );
  NAND4X1 U23 ( .A(n13), .B(n14), .C(n15), .D(n16), .Y(dout[1]) );
  AOI22X1 U24 ( .A0(pri[11]), .A1(n2), .B0(trigger[7]), .B1(pri[15]), .Y(n13)
         );
  AOI22X1 U25 ( .A0(pri[7]), .A1(n3), .B0(pri[9]), .B1(n6), .Y(n14) );
  AOI22X1 U26 ( .A0(pri[3]), .A1(n4), .B0(pri[5]), .B1(n5), .Y(n15) );
  NAND4X1 U27 ( .A(n19), .B(n20), .C(n21), .D(n22), .Y(dout[0]) );
  AOI22X1 U28 ( .A0(pri[10]), .A1(n2), .B0(pri[14]), .B1(trigger[7]), .Y(n19)
         );
  AOI22X1 U29 ( .A0(pri[6]), .A1(n3), .B0(pri[8]), .B1(n6), .Y(n20) );
  AOI22X1 U30 ( .A0(pri[2]), .A1(n4), .B0(pri[4]), .B1(n5), .Y(n21) );
  AOI211X1 U31 ( .A0(pri[1]), .A1(n17), .B0(dout[5]), .C0(n18), .Y(n16) );
  NOR3BXL U32 ( .AN(pri[13]), .B(trigger[7]), .C(n1), .Y(n18) );
  AOI211X1 U33 ( .A0(pri[0]), .A1(n17), .B0(dout[5]), .C0(n23), .Y(n22) );
  NOR3BXL U34 ( .AN(pri[12]), .B(n1), .C(trigger[7]), .Y(n23) );
endmodule


module FF5 ( clk, reset, din, dout );
  input [4:0] din;
  output [4:0] dout;
  input clk, reset;
  wire   n1;

  DFFRX1 \dout_reg[4]  ( .D(din[4]), .CK(clk), .RN(n1), .Q(dout[4]) );
  DFFRX1 \dout_reg[3]  ( .D(din[3]), .CK(clk), .RN(n1), .Q(dout[3]) );
  DFFRX1 \dout_reg[2]  ( .D(din[2]), .CK(clk), .RN(n1), .Q(dout[2]) );
  DFFRX1 \dout_reg[1]  ( .D(din[1]), .CK(clk), .RN(n1), .Q(dout[1]) );
  DFFRX1 \dout_reg[0]  ( .D(din[0]), .CK(clk), .RN(n1), .Q(dout[0]) );
  CLKINVX1 U3 ( .A(reset), .Y(n1) );
endmodule


module FF ( clk, reset, din, dout );
  input clk, reset, din;
  output dout;
  wire   n1;

  DFFRX1 dout_reg ( .D(din), .CK(clk), .RN(n1), .Q(dout) );
  CLKINVX1 U3 ( .A(reset), .Y(n1) );
endmodule


module SME ( clk, reset, chardata, isstring, ispattern, valid, match, 
        match_index );
  input [7:0] chardata;
  output [4:0] match_index;
  input clk, reset, isstring, ispattern;
  output valid, match;
  wire   pattern_reset_en, PSR1_en1, push_completePSR1, PSR1_en2,
         push_completePSR2, string_shift_en, star_detected, opening_detected,
         counter_reset, string_full, push_complete_ok1, push_complete_ok2,
         Pattern_right_shift_en1, Pattern_right_shift_en2, fill_space,
         match1_space, match_next, N14, n101, n102, n103, n104, n105, n106,
         n107, n108, n109, n110, n111, n112, n113, n114, n115, n116, n117,
         n118, n119, n120, n121, n122, n123, n124, n125, n126, n127, n128,
         n129, n130, n131, n132, n133, n134, n135, n136, n137, n138, n139,
         n140, n141, n142, n143, n144, n145, n146, n147, n148, n149, n150,
         n151, n152, n153, n154, n155, n156, n157, n158, n159, n160, n161,
         n162, n163, n164, n165, n166, n167, n168, n169, n170, n171, n172,
         n173, n174, n175, n176, n177, n178, n179, n180, n181, n182, n183,
         n184, n185, n186, n187, n188, n189, n190, n191, n192, n193, n194,
         n195, n196, n197, n198, n199, n200, n201, n202, n203, n204, n205,
         n206, n207, n208, n209, n210, n211, n212, n213, n214, n215, n216,
         n217, n218, n219, n220, n221, n222, n223, n224, n225, n226, n227,
         n228, n229, n230, n231, n232, n233, n234, n235, n236, n237, n238,
         n239, n240, n241, n242, n243, n244, n245, n246, n247, n248, n249,
         n250, n251, n252, n253, n254, n255, n256, n257, n258, n259, n260,
         n261, n262, n263, n264, n265, n266, n267, n268, n269, n270, n271,
         n272, n273, n274, n275, n276, n277, n278, n279, n280, n281, n282,
         n283, n284, n285, n286, n287, n288, n289, n290, n291, n292, n293,
         n294, n295, n296, n297, n298, n299, n300, n301, n302, n303;
  wire   [7:0] dinPSR1;
  wire   [7:0] p1_0;
  wire   [7:0] p1_1;
  wire   [7:0] p1_2;
  wire   [7:0] p1_3;
  wire   [7:0] p1_4;
  wire   [7:0] p1_5;
  wire   [7:0] p1_6;
  wire   [7:0] p1_7;
  wire   [7:0] checkPSR1;
  wire   [7:0] dinPSR2;
  wire   [7:0] p2_0;
  wire   [7:0] p2_1;
  wire   [7:0] p2_2;
  wire   [7:0] p2_3;
  wire   [7:0] p2_4;
  wire   [7:0] p2_5;
  wire   [7:0] p2_6;
  wire   [7:0] p2_7;
  wire   [7:0] checkPSR2;
  wire   [7:0] string_din;
  wire   [7:0] s0;
  wire   [7:0] s1;
  wire   [7:0] s2;
  wire   [7:0] s3;
  wire   [7:0] s4;
  wire   [7:0] s5;
  wire   [7:0] s6;
  wire   [7:0] s7;
  wire   [7:0] s8;
  wire   [7:0] s9;
  wire   [7:0] s10;
  wire   [7:0] s11;
  wire   [7:0] s12;
  wire   [7:0] s13;
  wire   [7:0] s14;
  wire   [7:0] s15;
  wire   [7:0] s16;
  wire   [7:0] s17;
  wire   [7:0] s18;
  wire   [7:0] s19;
  wire   [7:0] s20;
  wire   [7:0] s21;
  wire   [7:0] s22;
  wire   [7:0] s23;
  wire   [7:0] s24;
  wire   [7:0] s25;
  wire   [7:0] s26;
  wire   [7:0] s27;
  wire   [7:0] s28;
  wire   [7:0] s29;
  wire   [7:0] s30;
  wire   [7:0] s31;
  wire   [7:0] s32;
  wire   [31:0] match1;
  wire   [31:0] match2;
  wire   [31:0] match_in1;
  wire   [5:0] match_out1;
  wire   [5:0] match_out2;

  Pattern_Shift_RegisterG_0 PSR1 ( .clk(clk), .reset(reset), .ispattern(
        ispattern), .reset_en(pattern_reset_en), .right_shift_en(PSR1_en1), 
        .din(dinPSR1), .s0(p1_0), .s1(p1_1), .s2(p1_2), .s3(p1_3), .s4(p1_4), 
        .s5(p1_5), .s6(p1_6), .s7(p1_7), .check(checkPSR1), .push_complete(
        push_completePSR1) );
  Pattern_Shift_RegisterG_1 PSR2 ( .clk(clk), .reset(reset), .ispattern(
        ispattern), .reset_en(pattern_reset_en), .right_shift_en(PSR1_en2), 
        .din(dinPSR2), .s0(p2_0), .s1(p2_1), .s2(p2_2), .s3(p2_3), .s4(p2_4), 
        .s5(p2_5), .s6(p2_6), .s7(p2_7), .check(checkPSR2), .push_complete(
        push_completePSR2) );
  String_Shift_Register SSR1 ( .clk(clk), .reset(reset), .right_shift_en(
        string_shift_en), .isstring(isstring), .din(string_din), .s0(s0), .s1(
        s1), .s2(s2), .s3(s3), .s4(s4), .s5(s5), .s6(s6), .s7(s7), .s8(s8), 
        .s9(s9), .s10(s10), .s11(s11), .s12(s12), .s13(s13), .s14(s14), .s15(
        s15), .s16(s16), .s17(s17), .s18(s18), .s19(s19), .s20(s20), .s21(s21), 
        .s22(s22), .s23(s23), .s24(s24), .s25(s25), .s26(s26), .s27(s27), 
        .s28(s28), .s29(s29), .s30(s30), .s31(s31), .s32(s32) );
  is_star IS ( .clk(clk), .reset(reset), .rst(pattern_reset_en), .chardata(
        chardata), .star_detected(star_detected) );
  is_openning IP ( .clk(clk), .reset(reset), .rst(pattern_reset_en), 
        .chardata(chardata), .opening_detected(opening_detected) );
  counter ctr ( .clk(clk), .reset(reset), .counter_reset(counter_reset), 
        .full(string_full) );
  FSM FSM1 ( .clk(clk), .reset(reset), .isstring(isstring), .ispattern(
        ispattern), .push_complete_ok1(push_complete_ok1), .push_complete_ok2(
        push_complete_ok2), .string_full(string_full), .string_shift_en(
        string_shift_en), .Pattern_right_shift_en1(Pattern_right_shift_en1), 
        .Pattern_right_shift_en2(Pattern_right_shift_en2), .pattern_reset_en(
        pattern_reset_en), .counter_reset(counter_reset), .valid(valid), 
        .fill_space(fill_space) );
  Pattern_String_Comparator_0 PSC1 ( .s0(s0), .s1(s1), .s2(s2), .s3(s3), .s4(
        s4), .s5(s5), .s6(s6), .s7(s7), .s8(s8), .s9(s9), .s10(s10), .s11(s11), 
        .s12(s12), .s13(s13), .s14(s14), .s15(s15), .s16(s16), .s17(s17), 
        .s18(s18), .s19(s19), .s20(s20), .s21(s21), .s22(s22), .s23(s23), 
        .s24(s24), .s25(s25), .s26(s26), .s27(s27), .s28(s28), .s29(s29), 
        .s30(s30), .s31(s31), .s32(s32), .p1_0({p1_0[7:3], n241, n240, n239}), 
        .p1_1(p1_1), .p1_2(p1_2), .p1_3(p1_3), .p1_4(p1_4), .p1_5(p1_5), 
        .p1_6(p1_6), .p1_7(p1_7), .check1(checkPSR1), .match1(match1), 
        .match1_space(match1_space) );
  Pattern_String_Comparator_1 PSC2 ( .s0(s0), .s1(s1), .s2(s2), .s3(s3), .s4(
        s4), .s5(s5), .s6(s6), .s7(s7), .s8(s8), .s9(s9), .s10(s10), .s11(s11), 
        .s12(s12), .s13(s13), .s14(s14), .s15(s15), .s16(s16), .s17(s17), 
        .s18(s18), .s19(s19), .s20(s20), .s21(s21), .s22(s22), .s23(s23), 
        .s24(s24), .s25(s25), .s26(s26), .s27(s27), .s28(s28), .s29(s29), 
        .s30(s30), .s31(s31), .s32(s32), .p1_0({p2_0[7:3], n215, n214, n213}), 
        .p1_1(p2_1), .p1_2(p2_2), .p1_3(p2_3), .p1_4(p2_4), .p1_5(p2_5), 
        .p1_6(p2_6), .p1_7(p2_7), .check1(checkPSR2), .match1(match2) );
  priority_encoder_pattern1 PEP1 ( .din(match_in1), .dout(match_out1) );
  priority_encoder_pattern2 PEP2 ( .din(match2), .dout(match_out2) );
  FF5 FF5_1 ( .clk(clk), .reset(reset), .din(match_out1[4:0]), .dout(
        match_index) );
  FF FF_1 ( .clk(clk), .reset(reset), .din(match_next), .dout(match) );
  OAI22XL U240 ( .A0(opening_detected), .A1(n277), .B0(n187), .B1(n278), .Y(
        match_in1[16]) );
  OAI22XL U241 ( .A0(opening_detected), .A1(n273), .B0(n186), .B1(n274), .Y(
        match_in1[20]) );
  OAI22XL U242 ( .A0(n264), .A1(n182), .B0(n180), .B1(n293), .Y(match_in1[0])
         );
  OAI22XL U243 ( .A0(opening_detected), .A1(n289), .B0(n184), .B1(n290), .Y(
        match_in1[4]) );
  OAI22XL U244 ( .A0(n180), .A1(n285), .B0(n184), .B1(n286), .Y(match_in1[8])
         );
  OAI22XL U245 ( .A0(opening_detected), .A1(n281), .B0(n188), .B1(n282), .Y(
        match_in1[12]) );
  OAI22XL U246 ( .A0(opening_detected), .A1(n269), .B0(n186), .B1(n270), .Y(
        match_in1[24]) );
  OAI22XL U247 ( .A0(opening_detected), .A1(n260), .B0(n185), .B1(n259), .Y(
        match_in1[28]) );
  CLKINVX1 U248 ( .A(p1_7[2]), .Y(n218) );
  CLKINVX1 U249 ( .A(p1_7[1]), .Y(n217) );
  CLKINVX1 U250 ( .A(p1_6[7]), .Y(n222) );
  CLKINVX1 U251 ( .A(p1_7[0]), .Y(n216) );
  CLKINVX1 U252 ( .A(p1_5[6]), .Y(n229) );
  CLKINVX1 U253 ( .A(p1_3[7]), .Y(n238) );
  CLKINVX1 U254 ( .A(p1_5[5]), .Y(n228) );
  CLKINVX1 U255 ( .A(p1_5[3]), .Y(n226) );
  CLKINVX1 U256 ( .A(p1_5[2]), .Y(n225) );
  CLKINVX1 U257 ( .A(p1_4[7]), .Y(n237) );
  CLKINVX1 U258 ( .A(p1_5[4]), .Y(n227) );
  CLKINVX1 U259 ( .A(p1_4[6]), .Y(n236) );
  CLKINVX1 U260 ( .A(p1_5[1]), .Y(n224) );
  CLKINVX1 U261 ( .A(p1_4[5]), .Y(n235) );
  CLKINVX1 U262 ( .A(p1_4[3]), .Y(n233) );
  CLKINVX1 U263 ( .A(p1_5[0]), .Y(n223) );
  CLKINVX1 U264 ( .A(p1_4[2]), .Y(n232) );
  CLKINVX1 U265 ( .A(p1_4[4]), .Y(n234) );
  CLKINVX1 U266 ( .A(p1_4[1]), .Y(n231) );
  CLKINVX1 U267 ( .A(p1_4[0]), .Y(n230) );
  CLKINVX1 U268 ( .A(p2_7[2]), .Y(n192) );
  CLKINVX1 U269 ( .A(p2_7[1]), .Y(n191) );
  CLKINVX1 U270 ( .A(p2_6[7]), .Y(n196) );
  CLKINVX1 U271 ( .A(p2_7[0]), .Y(n190) );
  CLKINVX1 U272 ( .A(p2_5[6]), .Y(n203) );
  CLKINVX1 U273 ( .A(p2_5[5]), .Y(n202) );
  CLKINVX1 U274 ( .A(p2_5[3]), .Y(n200) );
  CLKINVX1 U275 ( .A(p2_5[2]), .Y(n199) );
  CLKINVX1 U276 ( .A(p2_3[7]), .Y(n212) );
  CLKINVX1 U277 ( .A(p2_4[7]), .Y(n211) );
  CLKINVX1 U278 ( .A(p2_5[4]), .Y(n201) );
  CLKINVX1 U279 ( .A(p2_5[1]), .Y(n198) );
  CLKINVX1 U280 ( .A(p2_4[6]), .Y(n210) );
  CLKINVX1 U281 ( .A(p2_4[5]), .Y(n209) );
  CLKINVX1 U282 ( .A(p2_4[3]), .Y(n207) );
  CLKINVX1 U283 ( .A(p2_5[0]), .Y(n197) );
  CLKINVX1 U284 ( .A(p2_4[2]), .Y(n206) );
  CLKINVX1 U285 ( .A(p2_4[4]), .Y(n208) );
  CLKINVX1 U286 ( .A(p2_4[1]), .Y(n205) );
  CLKINVX1 U287 ( .A(p2_4[0]), .Y(n204) );
  CLKINVX1 U288 ( .A(n245), .Y(n255) );
  CLKINVX1 U289 ( .A(match_out2[3]), .Y(n256) );
  CLKINVX1 U290 ( .A(match_out1[1]), .Y(n253) );
  NAND4BX1 U291 ( .AN(n164), .B(match_out1[3]), .C(match_out1[5]), .D(
        match_out1[4]), .Y(n117) );
  NAND3X1 U292 ( .A(match_out1[1]), .B(match_out1[0]), .C(match_out1[2]), .Y(
        n164) );
  CLKINVX1 U293 ( .A(match_out2[5]), .Y(n254) );
  NAND3X1 U294 ( .A(match_out2[1]), .B(match_out2[0]), .C(match_out2[2]), .Y(
        n163) );
  OAI22XL U295 ( .A0(n180), .A1(n292), .B0(n187), .B1(n293), .Y(match_in1[1])
         );
  OAI22XL U296 ( .A0(n181), .A1(n284), .B0(opening_detected), .B1(n283), .Y(
        match_in1[10]) );
  OAI22XL U297 ( .A0(n180), .A1(n284), .B0(n184), .B1(n285), .Y(match_in1[9])
         );
  OAI22XL U298 ( .A0(opening_detected), .A1(n274), .B0(n187), .B1(n275), .Y(
        match_in1[19]) );
  OAI22XL U299 ( .A0(opening_detected), .A1(n276), .B0(n187), .B1(n277), .Y(
        match_in1[17]) );
  OAI22XL U300 ( .A0(opening_detected), .A1(n275), .B0(n187), .B1(n276), .Y(
        match_in1[18]) );
  OAI22XL U301 ( .A0(opening_detected), .A1(n272), .B0(n186), .B1(n273), .Y(
        match_in1[21]) );
  OAI22XL U302 ( .A0(opening_detected), .A1(n290), .B0(n184), .B1(n291), .Y(
        match_in1[3]) );
  CLKINVX1 U303 ( .A(match1[0]), .Y(n293) );
  OAI22XL U304 ( .A0(n180), .A1(n291), .B0(n185), .B1(n292), .Y(match_in1[2])
         );
  CLKINVX1 U305 ( .A(match1[1]), .Y(n292) );
  OAI22XL U306 ( .A0(opening_detected), .A1(n286), .B0(n184), .B1(n287), .Y(
        match_in1[7]) );
  OAI22XL U307 ( .A0(opening_detected), .A1(n288), .B0(n185), .B1(n289), .Y(
        match_in1[5]) );
  OAI22XL U308 ( .A0(opening_detected), .A1(n287), .B0(n184), .B1(n288), .Y(
        match_in1[6]) );
  OAI22XL U309 ( .A0(opening_detected), .A1(n282), .B0(n184), .B1(n283), .Y(
        match_in1[11]) );
  CLKINVX1 U310 ( .A(match1[10]), .Y(n283) );
  CLKINVX1 U311 ( .A(match1[8]), .Y(n285) );
  OAI22XL U312 ( .A0(opening_detected), .A1(n278), .B0(n187), .B1(n279), .Y(
        match_in1[15]) );
  OAI22XL U313 ( .A0(opening_detected), .A1(n280), .B0(n188), .B1(n281), .Y(
        match_in1[13]) );
  OAI22XL U314 ( .A0(opening_detected), .A1(n279), .B0(n187), .B1(n280), .Y(
        match_in1[14]) );
  CLKINVX1 U315 ( .A(match1[9]), .Y(n284) );
  CLKINVX1 U316 ( .A(match1[15]), .Y(n278) );
  CLKINVX1 U317 ( .A(match1[16]), .Y(n277) );
  CLKINVX1 U318 ( .A(match1[17]), .Y(n276) );
  CLKINVX1 U319 ( .A(match1[18]), .Y(n275) );
  OAI22XL U320 ( .A0(opening_detected), .A1(n270), .B0(n186), .B1(n271), .Y(
        match_in1[23]) );
  CLKINVX1 U321 ( .A(match1[19]), .Y(n274) );
  CLKINVX1 U322 ( .A(match1[20]), .Y(n273) );
  OAI22XL U323 ( .A0(opening_detected), .A1(n259), .B0(n185), .B1(n258), .Y(
        match_in1[27]) );
  OAI22XL U324 ( .A0(opening_detected), .A1(n271), .B0(n186), .B1(n272), .Y(
        match_in1[22]) );
  CLKINVX1 U325 ( .A(match1[21]), .Y(n272) );
  OAI22XL U326 ( .A0(opening_detected), .A1(n268), .B0(n186), .B1(n269), .Y(
        match_in1[25]) );
  OAI22XL U327 ( .A0(opening_detected), .A1(n258), .B0(n185), .B1(n268), .Y(
        match_in1[26]) );
  CLKBUFX3 U328 ( .A(n189), .Y(n181) );
  CLKBUFX3 U329 ( .A(n189), .Y(n183) );
  CLKBUFX3 U330 ( .A(n189), .Y(n182) );
  OAI22XL U331 ( .A0(opening_detected), .A1(n263), .B0(n186), .B1(n262), .Y(
        match_in1[31]) );
  OAI22XL U332 ( .A0(opening_detected), .A1(n261), .B0(n185), .B1(n260), .Y(
        match_in1[29]) );
  CLKBUFX3 U333 ( .A(n182), .Y(n187) );
  OAI22XL U334 ( .A0(opening_detected), .A1(n262), .B0(n185), .B1(n261), .Y(
        match_in1[30]) );
  CLKBUFX3 U335 ( .A(n182), .Y(n185) );
  CLKBUFX3 U336 ( .A(n182), .Y(n184) );
  CLKBUFX3 U337 ( .A(n184), .Y(n188) );
  CLKBUFX3 U338 ( .A(n184), .Y(n186) );
  NOR4X1 U339 ( .A(n174), .B(n175), .C(match1[10]), .D(match1[0]), .Y(n167) );
  NAND4X1 U340 ( .A(n282), .B(n281), .C(n280), .D(n279), .Y(n174) );
  OAI22XL U341 ( .A0(n264), .A1(n183), .B0(opening_detected), .B1(n263), .Y(
        n175) );
  AND4X1 U342 ( .A(n165), .B(n166), .C(n167), .D(n168), .Y(n115) );
  NOR4X1 U343 ( .A(match1[18]), .B(match1[17]), .C(match1[16]), .D(match1[15]), 
        .Y(n165) );
  NOR4X1 U344 ( .A(match1[21]), .B(match1[20]), .C(match1[1]), .D(match1[19]), 
        .Y(n166) );
  NOR4X1 U345 ( .A(n169), .B(n170), .C(n171), .D(n172), .Y(n168) );
  NAND4X1 U346 ( .A(n288), .B(n287), .C(n173), .D(n286), .Y(n169) );
  NOR2X1 U347 ( .A(match1[9]), .B(match1[8]), .Y(n173) );
  NAND4X1 U348 ( .A(n271), .B(n270), .C(n269), .D(n268), .Y(n172) );
  NAND4X1 U349 ( .A(n291), .B(n262), .C(n290), .D(n289), .Y(n170) );
  NOR4X1 U350 ( .A(match2[23]), .B(match2[22]), .C(match2[21]), .D(match2[20]), 
        .Y(n129) );
  NAND4X1 U351 ( .A(n126), .B(n127), .C(n128), .D(n129), .Y(n125) );
  NOR4X1 U352 ( .A(match2[16]), .B(match2[15]), .C(match2[14]), .D(match2[13]), 
        .Y(n127) );
  NOR4X1 U353 ( .A(match2[12]), .B(match2[11]), .C(match2[10]), .D(match2[0]), 
        .Y(n126) );
  NOR4X1 U354 ( .A(match2[1]), .B(match2[19]), .C(match2[18]), .D(match2[17]), 
        .Y(n128) );
  NAND4X1 U355 ( .A(n258), .B(n259), .C(n260), .D(n261), .Y(n171) );
  NOR4X1 U356 ( .A(match2[9]), .B(match2[8]), .C(match2[7]), .D(match2[6]), 
        .Y(n133) );
  NOR4X1 U357 ( .A(match2[5]), .B(match2[4]), .C(match2[3]), .D(match2[31]), 
        .Y(n132) );
  NOR4X1 U358 ( .A(match2[27]), .B(match2[26]), .C(match2[25]), .D(match2[24]), 
        .Y(n130) );
  NOR4X1 U359 ( .A(match2[30]), .B(match2[2]), .C(match2[29]), .D(match2[28]), 
        .Y(n131) );
  OAI22XL U360 ( .A0(n179), .A1(n115), .B0(n116), .B1(n267), .Y(match_next) );
  AOI31X1 U361 ( .A0(n117), .A1(n118), .A2(N14), .B0(n119), .Y(n116) );
  OAI33X1 U362 ( .A0(n101), .A1(n102), .A2(n120), .B0(n108), .B1(n109), .B2(
        n121), .Y(n119) );
  NAND4BX1 U363 ( .AN(n163), .B(match_out2[3]), .C(match_out2[5]), .D(
        match_out2[4]), .Y(n118) );
  CLKINVX1 U364 ( .A(match1[3]), .Y(n290) );
  CLKINVX1 U365 ( .A(match1[4]), .Y(n289) );
  CLKINVX1 U366 ( .A(match1[5]), .Y(n288) );
  CLKINVX1 U367 ( .A(match1[2]), .Y(n291) );
  CLKINVX1 U368 ( .A(match1[6]), .Y(n287) );
  CLKINVX1 U369 ( .A(match1_space), .Y(n264) );
  CLKINVX1 U370 ( .A(match1[7]), .Y(n286) );
  CLKINVX1 U371 ( .A(match1[11]), .Y(n282) );
  CLKINVX1 U372 ( .A(match1[12]), .Y(n281) );
  CLKINVX1 U373 ( .A(match1[13]), .Y(n280) );
  CLKINVX1 U374 ( .A(match1[14]), .Y(n279) );
  CLKINVX1 U375 ( .A(match1[23]), .Y(n270) );
  CLKINVX1 U376 ( .A(match1[24]), .Y(n269) );
  CLKINVX1 U377 ( .A(match1[25]), .Y(n268) );
  CLKINVX1 U378 ( .A(match1[22]), .Y(n271) );
  CLKINVX1 U379 ( .A(match1[26]), .Y(n258) );
  CLKINVX1 U380 ( .A(n180), .Y(n189) );
  CLKINVX1 U381 ( .A(match1[27]), .Y(n259) );
  CLKINVX1 U382 ( .A(match1[28]), .Y(n260) );
  CLKINVX1 U383 ( .A(match1[29]), .Y(n261) );
  CLKINVX1 U384 ( .A(match1[30]), .Y(n262) );
  CLKINVX1 U385 ( .A(match1[31]), .Y(n263) );
  NAND4X1 U386 ( .A(n148), .B(n105), .C(n106), .D(n107), .Y(n120) );
  NOR4X1 U387 ( .A(n215), .B(n214), .C(n213), .D(n115), .Y(n148) );
  NAND4X1 U388 ( .A(n122), .B(n112), .C(n113), .D(n114), .Y(n121) );
  NOR4X1 U389 ( .A(n241), .B(n240), .C(n239), .D(n123), .Y(n122) );
  NOR2X1 U390 ( .A(n124), .B(n125), .Y(n123) );
  NAND4X1 U391 ( .A(n130), .B(n131), .C(n132), .D(n133), .Y(n124) );
  AOI211X1 U392 ( .A0(n303), .A1(n266), .B0(push_completePSR2), .C0(n176), .Y(
        PSR1_en2) );
  CLKINVX1 U393 ( .A(Pattern_right_shift_en2), .Y(n266) );
  NOR2X1 U394 ( .A(n299), .B(n267), .Y(dinPSR2[3]) );
  CLKINVX1 U395 ( .A(n179), .Y(n267) );
  NOR2X1 U396 ( .A(n296), .B(n267), .Y(dinPSR2[6]) );
  NOR2X1 U397 ( .A(n298), .B(n267), .Y(dinPSR2[4]) );
  NOR2X1 U398 ( .A(n301), .B(n267), .Y(dinPSR2[1]) );
  NOR2X1 U399 ( .A(n179), .B(n297), .Y(dinPSR1[5]) );
  NOR2X1 U400 ( .A(n179), .B(n299), .Y(dinPSR1[3]) );
  NOR2X1 U401 ( .A(n267), .B(n297), .Y(dinPSR2[5]) );
  NOR4X1 U402 ( .A(n142), .B(n143), .C(n144), .D(n145), .Y(n141) );
  NAND4X1 U403 ( .A(n226), .B(n227), .C(n228), .D(n229), .Y(n142) );
  NAND4X1 U404 ( .A(n237), .B(n223), .C(n224), .D(n225), .Y(n143) );
  NAND4X1 U405 ( .A(n233), .B(n234), .C(n235), .D(n236), .Y(n144) );
  NAND4X1 U406 ( .A(n238), .B(n230), .C(n231), .D(n232), .Y(n145) );
  NOR2X1 U407 ( .A(n179), .B(n296), .Y(dinPSR1[6]) );
  NOR2X1 U408 ( .A(n179), .B(n298), .Y(dinPSR1[4]) );
  NAND3X1 U409 ( .A(n220), .B(n221), .C(n219), .Y(n147) );
  NOR2X1 U410 ( .A(n179), .B(n301), .Y(dinPSR1[1]) );
  NAND4X1 U411 ( .A(n222), .B(n216), .C(n217), .D(n218), .Y(n146) );
  NOR4X1 U412 ( .A(n157), .B(n158), .C(n159), .D(n160), .Y(n156) );
  NAND4X1 U413 ( .A(n200), .B(n201), .C(n202), .D(n203), .Y(n157) );
  NAND4X1 U414 ( .A(n211), .B(n197), .C(n198), .D(n199), .Y(n158) );
  NAND4X1 U415 ( .A(n207), .B(n208), .C(n209), .D(n210), .Y(n159) );
  NAND4X1 U416 ( .A(n212), .B(n204), .C(n205), .D(n206), .Y(n160) );
  OAI31XL U417 ( .A0(n101), .A1(n102), .A2(n103), .B0(n257), .Y(
        push_complete_ok2) );
  CLKINVX1 U418 ( .A(push_completePSR2), .Y(n257) );
  NAND4X1 U419 ( .A(n104), .B(n105), .C(n106), .D(n107), .Y(n103) );
  NAND3X1 U420 ( .A(n194), .B(n195), .C(n193), .Y(n162) );
  NAND4X1 U421 ( .A(n196), .B(n190), .C(n191), .D(n192), .Y(n161) );
  NOR2X1 U422 ( .A(fill_space), .B(n295), .Y(string_din[7]) );
  NOR2X1 U423 ( .A(fill_space), .B(n296), .Y(string_din[6]) );
  NOR2X1 U424 ( .A(fill_space), .B(n298), .Y(string_din[4]) );
  NOR2X1 U425 ( .A(n295), .B(n267), .Y(dinPSR2[7]) );
  NOR2X1 U426 ( .A(n300), .B(n267), .Y(dinPSR2[2]) );
  NOR2X1 U427 ( .A(n179), .B(n295), .Y(dinPSR1[7]) );
  NOR2X1 U428 ( .A(fill_space), .B(n299), .Y(string_din[3]) );
  NOR2X1 U429 ( .A(n179), .B(n302), .Y(dinPSR1[0]) );
  NOR2X1 U430 ( .A(fill_space), .B(n301), .Y(string_din[1]) );
  NOR2X1 U431 ( .A(n302), .B(n267), .Y(dinPSR2[0]) );
  NOR2X1 U432 ( .A(fill_space), .B(n300), .Y(string_din[2]) );
  NOR2X1 U433 ( .A(n179), .B(n300), .Y(dinPSR1[2]) );
  NOR2X1 U434 ( .A(fill_space), .B(n302), .Y(string_din[0]) );
  CLKINVX1 U435 ( .A(p1_7[7]), .Y(n221) );
  CLKINVX1 U436 ( .A(p1_7[6]), .Y(n220) );
  CLKINVX1 U437 ( .A(p1_7[5]), .Y(n219) );
  CLKBUFX3 U438 ( .A(p1_0[2]), .Y(n241) );
  CLKBUFX3 U439 ( .A(p1_0[1]), .Y(n240) );
  CLKBUFX3 U440 ( .A(p1_0[0]), .Y(n239) );
  CLKINVX1 U441 ( .A(p2_7[7]), .Y(n195) );
  CLKINVX1 U442 ( .A(p2_7[6]), .Y(n194) );
  CLKINVX1 U443 ( .A(p2_7[5]), .Y(n193) );
  CLKBUFX3 U444 ( .A(p2_0[2]), .Y(n215) );
  CLKBUFX3 U445 ( .A(p2_0[1]), .Y(n214) );
  CLKBUFX3 U446 ( .A(p2_0[0]), .Y(n213) );
  CLKBUFX3 U447 ( .A(opening_detected), .Y(n180) );
  AOI211X1 U448 ( .A0(n303), .A1(n265), .B0(push_completePSR1), .C0(n176), .Y(
        PSR1_en1) );
  CLKINVX1 U449 ( .A(Pattern_right_shift_en1), .Y(n265) );
  CLKBUFX3 U450 ( .A(star_detected), .Y(n179) );
  NAND4X1 U451 ( .A(n138), .B(n139), .C(n140), .D(n141), .Y(n108) );
  NOR4X1 U452 ( .A(p1_6[2]), .B(p1_6[1]), .C(p1_6[0]), .D(p1_5[7]), .Y(n138)
         );
  NOR4X1 U453 ( .A(p1_6[6]), .B(p1_6[5]), .C(p1_6[4]), .D(p1_6[3]), .Y(n139)
         );
  NOR4X1 U454 ( .A(n146), .B(n147), .C(p1_7[4]), .D(p1_7[3]), .Y(n140) );
  OAI31XL U455 ( .A0(n108), .A1(n109), .A2(n110), .B0(n294), .Y(
        push_complete_ok1) );
  CLKINVX1 U456 ( .A(push_completePSR1), .Y(n294) );
  NAND4X1 U457 ( .A(n111), .B(n112), .C(n113), .D(n114), .Y(n110) );
  NOR4X1 U458 ( .A(p1_1[6]), .B(p1_1[5]), .C(p1_1[4]), .D(p1_1[3]), .Y(n114)
         );
  NOR4X1 U459 ( .A(p1_1[2]), .B(p1_1[1]), .C(p1_1[0]), .D(p1_0[7]), .Y(n113)
         );
  NAND4X1 U460 ( .A(n153), .B(n154), .C(n155), .D(n156), .Y(n101) );
  NOR4X1 U461 ( .A(p2_6[2]), .B(p2_6[1]), .C(p2_6[0]), .D(p2_5[7]), .Y(n153)
         );
  NOR4X1 U462 ( .A(p2_6[6]), .B(p2_6[5]), .C(p2_6[4]), .D(p2_6[3]), .Y(n154)
         );
  NOR4X1 U463 ( .A(n161), .B(n162), .C(p2_7[4]), .D(p2_7[3]), .Y(n155) );
  NOR4X1 U464 ( .A(p1_0[6]), .B(p1_0[5]), .C(p1_0[4]), .D(p1_0[3]), .Y(n112)
         );
  NOR4X1 U465 ( .A(n241), .B(n240), .C(n239), .D(ispattern), .Y(n111) );
  NOR4X1 U466 ( .A(p1_3[6]), .B(p1_3[5]), .C(p1_3[4]), .D(p1_3[3]), .Y(n137)
         );
  NAND4X1 U467 ( .A(n134), .B(n135), .C(n136), .D(n137), .Y(n109) );
  NOR4X1 U468 ( .A(p1_2[2]), .B(p1_2[1]), .C(p1_2[0]), .D(p1_1[7]), .Y(n134)
         );
  NOR4X1 U469 ( .A(p1_2[6]), .B(p1_2[5]), .C(p1_2[4]), .D(p1_2[3]), .Y(n135)
         );
  NOR4X1 U470 ( .A(p1_3[2]), .B(p1_3[1]), .C(p1_3[0]), .D(p1_2[7]), .Y(n136)
         );
  NOR4X1 U471 ( .A(p2_1[6]), .B(p2_1[5]), .C(p2_1[4]), .D(p2_1[3]), .Y(n107)
         );
  NOR4X1 U472 ( .A(p2_1[2]), .B(p2_1[1]), .C(p2_1[0]), .D(p2_0[7]), .Y(n106)
         );
  NOR4X1 U473 ( .A(p2_0[6]), .B(p2_0[5]), .C(p2_0[4]), .D(p2_0[3]), .Y(n105)
         );
  NOR4X1 U474 ( .A(n215), .B(n214), .C(n213), .D(ispattern), .Y(n104) );
  NAND2BX1 U475 ( .AN(fill_space), .B(n297), .Y(string_din[5]) );
  NOR4X1 U476 ( .A(p2_3[6]), .B(p2_3[5]), .C(p2_3[4]), .D(p2_3[3]), .Y(n152)
         );
  NAND4X1 U477 ( .A(n149), .B(n150), .C(n151), .D(n152), .Y(n102) );
  NOR4X1 U478 ( .A(p2_2[2]), .B(p2_2[1]), .C(p2_2[0]), .D(p2_1[7]), .Y(n149)
         );
  NOR4X1 U479 ( .A(p2_2[6]), .B(p2_2[5]), .C(p2_2[4]), .D(p2_2[3]), .Y(n150)
         );
  NOR4X1 U480 ( .A(p2_3[2]), .B(p2_3[1]), .C(p2_3[0]), .D(p2_2[7]), .Y(n151)
         );
  CLKINVX1 U481 ( .A(chardata[3]), .Y(n299) );
  CLKINVX1 U482 ( .A(chardata[1]), .Y(n301) );
  CLKINVX1 U483 ( .A(chardata[5]), .Y(n297) );
  CLKINVX1 U484 ( .A(chardata[0]), .Y(n302) );
  CLKINVX1 U485 ( .A(chardata[2]), .Y(n300) );
  CLKINVX1 U486 ( .A(chardata[6]), .Y(n296) );
  CLKINVX1 U487 ( .A(chardata[4]), .Y(n298) );
  CLKINVX1 U488 ( .A(chardata[7]), .Y(n295) );
  AND4X1 U489 ( .A(n302), .B(n300), .C(n177), .D(n178), .Y(n176) );
  NOR3X1 U490 ( .A(chardata[4]), .B(chardata[7]), .C(chardata[6]), .Y(n177) );
  NOR4X1 U491 ( .A(n299), .B(n301), .C(n297), .D(n303), .Y(n178) );
  CLKINVX1 U492 ( .A(ispattern), .Y(n303) );
  NAND2BX1 U493 ( .AN(match_out1[4]), .B(match_out2[4]), .Y(n252) );
  NOR2BX1 U494 ( .AN(match_out1[4]), .B(match_out2[4]), .Y(n242) );
  OA22X1 U495 ( .A0(n242), .A1(n254), .B0(n242), .B1(match_out1[5]), .Y(n251)
         );
  NAND2BX1 U496 ( .AN(match_out1[2]), .B(match_out2[2]), .Y(n245) );
  AOI2BB1X1 U497 ( .A0N(n253), .A1N(match_out2[1]), .B0(match_out1[0]), .Y(
        n243) );
  AO22X1 U498 ( .A0(n243), .A1(match_out2[0]), .B0(match_out2[1]), .B1(n253), 
        .Y(n248) );
  NOR2BX1 U499 ( .AN(match_out1[2]), .B(match_out2[2]), .Y(n244) );
  OAI22XL U500 ( .A0(n244), .A1(n256), .B0(match_out1[3]), .B1(n244), .Y(n247)
         );
  OAI22XL U501 ( .A0(match_out1[3]), .A1(n256), .B0(match_out1[3]), .B1(n245), 
        .Y(n246) );
  AOI221XL U502 ( .A0(match_out2[3]), .A1(n255), .B0(n248), .B1(n247), .C0(
        n246), .Y(n250) );
  OA22X1 U503 ( .A0(match_out1[5]), .A1(n254), .B0(n252), .B1(match_out1[5]), 
        .Y(n249) );
  OAI221XL U504 ( .A0(n252), .A1(n254), .B0(n251), .B1(n250), .C0(n249), .Y(
        N14) );
endmodule

