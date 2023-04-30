/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : T-2022.03
// Date      : Tue Jun 28 00:53:03 2022
/////////////////////////////////////////////////////////////


module din_FF ( clk, reset, en, central_next, radius_next, mode_next, central, 
        radius, mode );
  output [23:0] central_next;
  output [11:0] radius_next;
  output [1:0] mode_next;
  input [23:0] central;
  input [11:0] radius;
  input [1:0] mode;
  input clk, reset, en;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30,
         n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44,
         n45, n46, n47, n48, n49, n50, n51, n52, n53, n54, n55, n56, n57, n58,
         n59, n60, n61, n62, n63, n64, n65, n66, n67, n68, n69, n70, n71, n72,
         n73, n74, n75, n77, n76, n78, n79, n80, n81, n82, n83;

  DFFRX1 \mode_next_reg[1]  ( .D(n40), .CK(clk), .RN(n83), .Q(mode_next[1]), 
        .QN(n2) );
  DFFRX1 \mode_next_reg[0]  ( .D(n39), .CK(clk), .RN(n83), .Q(mode_next[0]), 
        .QN(n1) );
  DFFRX1 \radius_next_reg[3]  ( .D(n44), .CK(clk), .RN(n83), .Q(radius_next[3]), .QN(n35) );
  DFFRX1 \radius_next_reg[1]  ( .D(n42), .CK(clk), .RN(n83), .Q(radius_next[1]), .QN(n37) );
  DFFRX1 \radius_next_reg[5]  ( .D(n46), .CK(clk), .RN(n83), .Q(radius_next[5]), .QN(n33) );
  DFFRX1 \radius_next_reg[9]  ( .D(n50), .CK(clk), .RN(n83), .Q(radius_next[9]), .QN(n29) );
  DFFRX1 \radius_next_reg[7]  ( .D(n48), .CK(clk), .RN(n83), .Q(radius_next[7]), .QN(n31) );
  DFFRX1 \radius_next_reg[11]  ( .D(n52), .CK(clk), .RN(n83), .Q(
        radius_next[11]), .QN(n27) );
  DFFRX1 \central_next_reg[3]  ( .D(n56), .CK(clk), .RN(n83), .Q(
        central_next[3]), .QN(n6) );
  DFFRX1 \central_next_reg[7]  ( .D(n60), .CK(clk), .RN(n83), .Q(
        central_next[7]), .QN(n10) );
  DFFRX1 \central_next_reg[1]  ( .D(n54), .CK(clk), .RN(n83), .Q(
        central_next[1]), .QN(n4) );
  DFFRX1 \central_next_reg[5]  ( .D(n58), .CK(clk), .RN(n83), .Q(
        central_next[5]), .QN(n8) );
  DFFRX1 \central_next_reg[2]  ( .D(n55), .CK(clk), .RN(n83), .Q(
        central_next[2]), .QN(n5) );
  DFFRX1 \central_next_reg[6]  ( .D(n59), .CK(clk), .RN(n83), .Q(
        central_next[6]), .QN(n9) );
  DFFRX1 \central_next_reg[0]  ( .D(n53), .CK(clk), .RN(n83), .Q(
        central_next[0]), .QN(n3) );
  DFFRX1 \central_next_reg[4]  ( .D(n57), .CK(clk), .RN(n83), .Q(
        central_next[4]), .QN(n7) );
  DFFRX1 \central_next_reg[11]  ( .D(n64), .CK(clk), .RN(n83), .Q(
        central_next[11]), .QN(n14) );
  DFFRX1 \central_next_reg[15]  ( .D(n68), .CK(clk), .RN(n83), .Q(
        central_next[15]), .QN(n18) );
  DFFRX1 \central_next_reg[19]  ( .D(n72), .CK(clk), .RN(n83), .Q(
        central_next[19]), .QN(n22) );
  DFFRX1 \central_next_reg[23]  ( .D(n77), .CK(clk), .RN(n83), .Q(
        central_next[23]), .QN(n26) );
  DFFRX1 \central_next_reg[9]  ( .D(n62), .CK(clk), .RN(n83), .Q(
        central_next[9]), .QN(n12) );
  DFFRX1 \central_next_reg[13]  ( .D(n66), .CK(clk), .RN(n83), .Q(
        central_next[13]), .QN(n16) );
  DFFRX1 \central_next_reg[10]  ( .D(n63), .CK(clk), .RN(n83), .Q(
        central_next[10]), .QN(n13) );
  DFFRX1 \central_next_reg[17]  ( .D(n70), .CK(clk), .RN(n83), .Q(
        central_next[17]), .QN(n20) );
  DFFRX1 \central_next_reg[14]  ( .D(n67), .CK(clk), .RN(n83), .Q(
        central_next[14]), .QN(n17) );
  DFFRX1 \central_next_reg[18]  ( .D(n71), .CK(clk), .RN(n83), .Q(
        central_next[18]), .QN(n21) );
  DFFRX1 \central_next_reg[21]  ( .D(n74), .CK(clk), .RN(n83), .Q(
        central_next[21]), .QN(n24) );
  DFFRX1 \central_next_reg[22]  ( .D(n75), .CK(clk), .RN(n83), .Q(
        central_next[22]), .QN(n25) );
  DFFRX1 \central_next_reg[8]  ( .D(n61), .CK(clk), .RN(n83), .Q(
        central_next[8]), .QN(n11) );
  DFFRX1 \central_next_reg[12]  ( .D(n65), .CK(clk), .RN(n83), .Q(
        central_next[12]), .QN(n15) );
  DFFRX1 \central_next_reg[16]  ( .D(n69), .CK(clk), .RN(n83), .Q(
        central_next[16]), .QN(n19) );
  DFFRX1 \central_next_reg[20]  ( .D(n73), .CK(clk), .RN(n83), .Q(
        central_next[20]), .QN(n23) );
  DFFRX1 \radius_next_reg[2]  ( .D(n43), .CK(clk), .RN(n83), .Q(radius_next[2]), .QN(n36) );
  DFFRX1 \radius_next_reg[0]  ( .D(n41), .CK(clk), .RN(n83), .Q(radius_next[0]), .QN(n38) );
  DFFRX1 \radius_next_reg[4]  ( .D(n45), .CK(clk), .RN(n83), .Q(radius_next[4]), .QN(n34) );
  DFFRX1 \radius_next_reg[6]  ( .D(n47), .CK(clk), .RN(n83), .Q(radius_next[6]), .QN(n32) );
  DFFRX1 \radius_next_reg[8]  ( .D(n49), .CK(clk), .RN(n83), .Q(radius_next[8]), .QN(n30) );
  DFFRX1 \radius_next_reg[10]  ( .D(n51), .CK(clk), .RN(n83), .Q(
        radius_next[10]), .QN(n28) );
  CLKBUFX3 U2 ( .A(n78), .Y(n82) );
  CLKBUFX3 U3 ( .A(n76), .Y(n80) );
  CLKBUFX3 U4 ( .A(n76), .Y(n81) );
  CLKBUFX3 U5 ( .A(n76), .Y(n79) );
  OAI2BB2XL U6 ( .B0(n79), .B1(n38), .A0N(radius[0]), .A1N(n82), .Y(n41) );
  OAI2BB2XL U7 ( .B0(n79), .B1(n37), .A0N(radius[1]), .A1N(n82), .Y(n42) );
  OAI2BB2XL U8 ( .B0(n79), .B1(n36), .A0N(radius[2]), .A1N(n82), .Y(n43) );
  OAI2BB2XL U9 ( .B0(n79), .B1(n35), .A0N(radius[3]), .A1N(n82), .Y(n44) );
  OAI2BB2XL U10 ( .B0(n79), .B1(n34), .A0N(radius[4]), .A1N(n82), .Y(n45) );
  OAI2BB2XL U11 ( .B0(n79), .B1(n33), .A0N(radius[5]), .A1N(n82), .Y(n46) );
  OAI2BB2XL U12 ( .B0(n79), .B1(n32), .A0N(radius[6]), .A1N(n82), .Y(n47) );
  OAI2BB2XL U13 ( .B0(n79), .B1(n31), .A0N(radius[7]), .A1N(n82), .Y(n48) );
  OAI2BB2XL U14 ( .B0(n79), .B1(n30), .A0N(radius[8]), .A1N(n82), .Y(n49) );
  OAI2BB2XL U15 ( .B0(n79), .B1(n29), .A0N(radius[9]), .A1N(n82), .Y(n50) );
  OAI2BB2XL U16 ( .B0(n79), .B1(n28), .A0N(radius[10]), .A1N(n82), .Y(n51) );
  OAI2BB2XL U17 ( .B0(n79), .B1(n27), .A0N(radius[11]), .A1N(n82), .Y(n52) );
  OAI2BB2XL U18 ( .B0(n1), .B1(n81), .A0N(mode[0]), .A1N(n82), .Y(n39) );
  OAI2BB2XL U19 ( .B0(n2), .B1(n81), .A0N(mode[1]), .A1N(n82), .Y(n40) );
  OAI2BB2XL U20 ( .B0(n3), .B1(n80), .A0N(central[0]), .A1N(n82), .Y(n53) );
  OAI2BB2XL U21 ( .B0(n4), .B1(n80), .A0N(central[1]), .A1N(n82), .Y(n54) );
  OAI2BB2XL U22 ( .B0(n5), .B1(n80), .A0N(central[2]), .A1N(n82), .Y(n55) );
  OAI2BB2XL U23 ( .B0(n6), .B1(n80), .A0N(central[3]), .A1N(n82), .Y(n56) );
  OAI2BB2XL U24 ( .B0(n7), .B1(n80), .A0N(central[4]), .A1N(n82), .Y(n57) );
  OAI2BB2XL U25 ( .B0(n8), .B1(n80), .A0N(central[5]), .A1N(n82), .Y(n58) );
  OAI2BB2XL U26 ( .B0(n9), .B1(n80), .A0N(n78), .A1N(central[6]), .Y(n59) );
  OAI2BB2XL U27 ( .B0(n10), .B1(n80), .A0N(central[7]), .A1N(n82), .Y(n60) );
  OAI2BB2XL U28 ( .B0(n11), .B1(n81), .A0N(central[8]), .A1N(n82), .Y(n61) );
  OAI2BB2XL U29 ( .B0(n12), .B1(n80), .A0N(central[9]), .A1N(n82), .Y(n62) );
  OAI2BB2XL U30 ( .B0(n13), .B1(n80), .A0N(central[10]), .A1N(n82), .Y(n63) );
  OAI2BB2XL U31 ( .B0(n14), .B1(n80), .A0N(central[11]), .A1N(n82), .Y(n64) );
  OAI2BB2XL U32 ( .B0(n15), .B1(n81), .A0N(central[12]), .A1N(n82), .Y(n65) );
  OAI2BB2XL U33 ( .B0(n16), .B1(n80), .A0N(central[13]), .A1N(n82), .Y(n66) );
  OAI2BB2XL U34 ( .B0(n17), .B1(n81), .A0N(central[14]), .A1N(n82), .Y(n67) );
  OAI2BB2XL U35 ( .B0(n18), .B1(n80), .A0N(central[15]), .A1N(n82), .Y(n68) );
  OAI2BB2XL U36 ( .B0(n19), .B1(n81), .A0N(central[16]), .A1N(n82), .Y(n69) );
  OAI2BB2XL U37 ( .B0(n20), .B1(n81), .A0N(central[17]), .A1N(n82), .Y(n70) );
  OAI2BB2XL U38 ( .B0(n21), .B1(n81), .A0N(central[18]), .A1N(n82), .Y(n71) );
  OAI2BB2XL U39 ( .B0(n22), .B1(n81), .A0N(central[19]), .A1N(n82), .Y(n72) );
  OAI2BB2XL U40 ( .B0(n23), .B1(n81), .A0N(central[20]), .A1N(n82), .Y(n73) );
  OAI2BB2XL U41 ( .B0(n24), .B1(n81), .A0N(central[21]), .A1N(n82), .Y(n74) );
  OAI2BB2XL U42 ( .B0(n25), .B1(n81), .A0N(central[22]), .A1N(n82), .Y(n75) );
  OAI2BB2XL U43 ( .B0(n26), .B1(n81), .A0N(central[23]), .A1N(n82), .Y(n77) );
  INVX3 U44 ( .A(reset), .Y(n83) );
  CLKBUFX3 U45 ( .A(en), .Y(n76) );
  CLKBUFX3 U46 ( .A(en), .Y(n78) );
endmodule


module FF ( clk, reset, counting_reset_x_next, counting_reset_y_next, 
        counting_en_y_next, counting_reset_x, counting_reset_y, counting_en_y
 );
  input clk, reset, counting_reset_x_next, counting_reset_y_next,
         counting_en_y_next;
  output counting_reset_x, counting_reset_y, counting_en_y;
  wire   n1;

  DFFRX1 counting_en_y_reg ( .D(counting_en_y_next), .CK(clk), .RN(n1), .Q(
        counting_en_y) );
  DFFRX1 counting_reset_y_reg ( .D(counting_reset_y_next), .CK(clk), .RN(n1), 
        .Q(counting_reset_y) );
  DFFRX1 counting_reset_x_reg ( .D(counting_reset_x_next), .CK(clk), .RN(n1), 
        .Q(counting_reset_x) );
  CLKINVX1 U3 ( .A(reset), .Y(n1) );
endmodule


module set_counting_enable ( xy_sqr1, xy_sqr2, xy_sqr3, r1_sqr, r2_sqr, r3_sqr, 
        mode, count_en );
  input [7:0] xy_sqr1;
  input [7:0] xy_sqr2;
  input [7:0] xy_sqr3;
  input [7:0] r1_sqr;
  input [7:0] r2_sqr;
  input [7:0] r3_sqr;
  input [1:0] mode;
  output count_en;
  wire   N4, N5, N6, n13, n14, n15, n16, n1, n2, n3, n4, n5, n6, n7, n8, n9,
         n10, n11, n12, n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27,
         n28, n29, n30, n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41,
         n42, n43, n44, n45, n46, n47, n48, n49, n50, n51, n52, n53, n54, n55,
         n56, n57, n58, n59, n60, n61, n62, n63, n64, n65, n66, n67, n68, n69,
         n70;

  CLKINVX1 U1 ( .A(xy_sqr1[1]), .Y(n22) );
  CLKINVX1 U2 ( .A(xy_sqr2[1]), .Y(n43) );
  CLKINVX1 U3 ( .A(xy_sqr3[1]), .Y(n64) );
  CLKINVX1 U4 ( .A(xy_sqr1[4]), .Y(n23) );
  CLKINVX1 U5 ( .A(xy_sqr2[4]), .Y(n44) );
  CLKINVX1 U6 ( .A(xy_sqr3[4]), .Y(n65) );
  CLKINVX1 U7 ( .A(n6), .Y(n25) );
  CLKINVX1 U8 ( .A(n31), .Y(n46) );
  CLKINVX1 U9 ( .A(N4), .Y(n68) );
  CLKINVX1 U10 ( .A(N5), .Y(n69) );
  CLKINVX1 U11 ( .A(r1_sqr[3]), .Y(n19) );
  CLKINVX1 U12 ( .A(r2_sqr[3]), .Y(n40) );
  CLKINVX1 U13 ( .A(xy_sqr1[5]), .Y(n24) );
  CLKINVX1 U14 ( .A(xy_sqr2[5]), .Y(n45) );
  CLKINVX1 U15 ( .A(n52), .Y(n67) );
  CLKINVX1 U16 ( .A(xy_sqr3[5]), .Y(n66) );
  CLKINVX1 U17 ( .A(r3_sqr[3]), .Y(n61) );
  CLKINVX1 U18 ( .A(r1_sqr[2]), .Y(n17) );
  CLKINVX1 U19 ( .A(r2_sqr[2]), .Y(n38) );
  CLKINVX1 U20 ( .A(r3_sqr[2]), .Y(n59) );
  OAI21XL U21 ( .A0(n13), .A1(n69), .B0(n14), .Y(count_en) );
  AOI32XL U22 ( .A0(n68), .A1(n70), .A2(mode[1]), .B0(N4), .B1(n16), .Y(n13)
         );
  AOI33XL U23 ( .A0(N6), .A1(n15), .A2(mode[1]), .B0(n69), .B1(n70), .B2(N4), 
        .Y(n14) );
  XOR2XL U24 ( .A(N5), .B(N4), .Y(n15) );
  OAI21XL U25 ( .A0(N6), .A1(n70), .B0(mode[1]), .Y(n16) );
  CLKINVX1 U26 ( .A(r1_sqr[0]), .Y(n18) );
  CLKINVX1 U27 ( .A(r2_sqr[0]), .Y(n39) );
  CLKINVX1 U28 ( .A(r1_sqr[6]), .Y(n20) );
  CLKINVX1 U29 ( .A(r2_sqr[6]), .Y(n41) );
  CLKINVX1 U30 ( .A(r3_sqr[0]), .Y(n60) );
  CLKINVX1 U31 ( .A(r3_sqr[6]), .Y(n62) );
  CLKINVX1 U32 ( .A(mode[0]), .Y(n70) );
  CLKINVX1 U33 ( .A(r2_sqr[7]), .Y(n42) );
  CLKINVX1 U34 ( .A(r3_sqr[7]), .Y(n63) );
  CLKINVX1 U35 ( .A(r1_sqr[7]), .Y(n21) );
  NOR2BX1 U36 ( .AN(xy_sqr1[3]), .B(r1_sqr[3]), .Y(n1) );
  AOI21X1 U37 ( .A0(xy_sqr1[2]), .A1(n17), .B0(n1), .Y(n2) );
  OAI32X1 U38 ( .A0(n17), .A1(xy_sqr1[2]), .A2(n1), .B0(xy_sqr1[3]), .B1(n19), 
        .Y(n4) );
  NAND2BX1 U39 ( .AN(r1_sqr[5]), .B(xy_sqr1[5]), .Y(n7) );
  OAI221XL U40 ( .A0(r1_sqr[4]), .A1(n23), .B0(n2), .B1(n4), .C0(n7), .Y(n12)
         );
  AOI2BB2X1 U41 ( .B0(xy_sqr1[0]), .B1(n18), .A0N(n22), .A1N(r1_sqr[1]), .Y(n3) );
  AOI211X1 U42 ( .A0(r1_sqr[1]), .A1(n22), .B0(n4), .C0(n3), .Y(n11) );
  AND2X1 U43 ( .A(xy_sqr1[7]), .B(n21), .Y(n5) );
  AO21X1 U44 ( .A0(n20), .A1(xy_sqr1[6]), .B0(n5), .Y(n10) );
  OAI32X1 U45 ( .A0(n20), .A1(xy_sqr1[6]), .A2(n5), .B0(xy_sqr1[7]), .B1(n21), 
        .Y(n6) );
  AOI32X1 U46 ( .A0(r1_sqr[4]), .A1(n23), .A2(n7), .B0(n24), .B1(r1_sqr[5]), 
        .Y(n8) );
  AO22X1 U47 ( .A0(n25), .A1(n8), .B0(n10), .B1(n25), .Y(n9) );
  OAI31XL U48 ( .A0(n12), .A1(n11), .A2(n10), .B0(n9), .Y(N4) );
  NOR2BX1 U49 ( .AN(xy_sqr2[3]), .B(r2_sqr[3]), .Y(n26) );
  AOI21X1 U50 ( .A0(xy_sqr2[2]), .A1(n38), .B0(n26), .Y(n27) );
  OAI32X1 U51 ( .A0(n38), .A1(xy_sqr2[2]), .A2(n26), .B0(xy_sqr2[3]), .B1(n40), 
        .Y(n29) );
  NAND2BX1 U52 ( .AN(r2_sqr[5]), .B(xy_sqr2[5]), .Y(n32) );
  OAI221XL U53 ( .A0(r2_sqr[4]), .A1(n44), .B0(n27), .B1(n29), .C0(n32), .Y(
        n37) );
  AOI2BB2X1 U54 ( .B0(xy_sqr2[0]), .B1(n39), .A0N(n43), .A1N(r2_sqr[1]), .Y(
        n28) );
  AOI211X1 U55 ( .A0(r2_sqr[1]), .A1(n43), .B0(n29), .C0(n28), .Y(n36) );
  AND2X1 U56 ( .A(xy_sqr2[7]), .B(n42), .Y(n30) );
  AO21X1 U57 ( .A0(n41), .A1(xy_sqr2[6]), .B0(n30), .Y(n35) );
  OAI32X1 U58 ( .A0(n41), .A1(xy_sqr2[6]), .A2(n30), .B0(xy_sqr2[7]), .B1(n42), 
        .Y(n31) );
  AOI32X1 U59 ( .A0(r2_sqr[4]), .A1(n44), .A2(n32), .B0(n45), .B1(r2_sqr[5]), 
        .Y(n33) );
  AO22X1 U60 ( .A0(n46), .A1(n33), .B0(n35), .B1(n46), .Y(n34) );
  OAI31XL U61 ( .A0(n37), .A1(n36), .A2(n35), .B0(n34), .Y(N5) );
  NOR2BX1 U62 ( .AN(xy_sqr3[3]), .B(r3_sqr[3]), .Y(n47) );
  AOI21X1 U63 ( .A0(xy_sqr3[2]), .A1(n59), .B0(n47), .Y(n48) );
  OAI32X1 U64 ( .A0(n59), .A1(xy_sqr3[2]), .A2(n47), .B0(xy_sqr3[3]), .B1(n61), 
        .Y(n50) );
  NAND2BX1 U65 ( .AN(r3_sqr[5]), .B(xy_sqr3[5]), .Y(n53) );
  OAI221XL U66 ( .A0(r3_sqr[4]), .A1(n65), .B0(n48), .B1(n50), .C0(n53), .Y(
        n58) );
  AOI2BB2X1 U67 ( .B0(xy_sqr3[0]), .B1(n60), .A0N(n64), .A1N(r3_sqr[1]), .Y(
        n49) );
  AOI211X1 U68 ( .A0(r3_sqr[1]), .A1(n64), .B0(n50), .C0(n49), .Y(n57) );
  AND2X1 U69 ( .A(xy_sqr3[7]), .B(n63), .Y(n51) );
  AO21X1 U70 ( .A0(n62), .A1(xy_sqr3[6]), .B0(n51), .Y(n56) );
  OAI32X1 U71 ( .A0(n62), .A1(xy_sqr3[6]), .A2(n51), .B0(xy_sqr3[7]), .B1(n63), 
        .Y(n52) );
  AOI32X1 U72 ( .A0(r3_sqr[4]), .A1(n65), .A2(n53), .B0(n66), .B1(r3_sqr[5]), 
        .Y(n54) );
  AO22X1 U73 ( .A0(n67), .A1(n54), .B0(n56), .B1(n67), .Y(n55) );
  OAI31XL U74 ( .A0(n58), .A1(n57), .A2(n56), .B0(n55), .Y(N6) );
endmodule


module FSM ( clk, reset, finish_trigger, en, state );
  output [1:0] state;
  input clk, reset, finish_trigger, en;
  wire   N7, N8, n3, n4, n5, n1, n2;

  DFFQX1 \state_reg[0]  ( .D(N7), .CK(clk), .Q(state[0]) );
  DFFQX1 \state_reg[1]  ( .D(N8), .CK(clk), .Q(state[1]) );
  OAI31XL U3 ( .A0(n1), .A1(state[1]), .A2(reset), .B0(n5), .Y(N7) );
  NAND2X1 U4 ( .A(finish_trigger), .B(n3), .Y(n5) );
  NOR3X1 U5 ( .A(reset), .B(state[0]), .C(n2), .Y(n3) );
  CLKINVX1 U6 ( .A(state[1]), .Y(n2) );
  NAND2BX1 U7 ( .AN(n3), .B(n4), .Y(N8) );
  NAND4BX1 U8 ( .AN(reset), .B(state[0]), .C(n1), .D(n2), .Y(n4) );
  CLKINVX1 U9 ( .A(en), .Y(n1) );
endmodule


module multi_table_0 ( in, out );
  input [3:0] in;
  output [7:0] out;
  wire   out_0, n5, n6, n7, n8, n9, n10, n1, n2, n3, n4;
  assign out[1] = 1'b0;
  assign out[7] = 1'b0;
  assign out[0] = out_0;

  NAND2X1 U3 ( .A(n5), .B(n6), .Y(out_0) );
  OAI222XL U4 ( .A0(in[1]), .A1(n7), .B0(n4), .B1(n8), .C0(n9), .C1(n3), .Y(
        out[5]) );
  CLKINVX1 U5 ( .A(out[2]), .Y(n3) );
  NOR4X1 U6 ( .A(in[2]), .B(in[0]), .C(out[2]), .D(n1), .Y(out[6]) );
  NAND3X1 U7 ( .A(in[0]), .B(n1), .C(in[2]), .Y(n8) );
  CLKINVX1 U8 ( .A(in[3]), .Y(n1) );
  OAI22XL U9 ( .A0(in[1]), .A1(n6), .B0(n4), .B1(n5), .Y(out[3]) );
  NAND3X1 U10 ( .A(n7), .B(n8), .C(n10), .Y(out[4]) );
  NAND3BX1 U11 ( .AN(in[0]), .B(n4), .C(in[2]), .Y(n10) );
  NAND2X1 U12 ( .A(in[0]), .B(n2), .Y(n5) );
  CLKINVX1 U13 ( .A(in[2]), .Y(n2) );
  NAND3X1 U14 ( .A(in[0]), .B(n2), .C(in[3]), .Y(n7) );
  XNOR2X1 U15 ( .A(in[3]), .B(in[2]), .Y(n9) );
  NAND2X1 U16 ( .A(in[2]), .B(in[0]), .Y(n6) );
  NOR2X1 U17 ( .A(n4), .B(in[0]), .Y(out[2]) );
  CLKINVX1 U18 ( .A(in[1]), .Y(n4) );
endmodule


module multi_table_8 ( in, out );
  input [3:0] in;
  output [7:0] out;
  wire   out_0, n1, n2, n3, n4, n11, n12, n13, n14, n15, n16;
  assign out[1] = 1'b0;
  assign out[7] = 1'b0;
  assign out[0] = out_0;

  CLKINVX1 U3 ( .A(out[2]), .Y(n1) );
  NAND2X1 U4 ( .A(n16), .B(n15), .Y(out_0) );
  NAND3X1 U5 ( .A(in[0]), .B(n3), .C(in[2]), .Y(n13) );
  CLKINVX1 U6 ( .A(in[3]), .Y(n3) );
  OAI222XL U7 ( .A0(in[1]), .A1(n14), .B0(n4), .B1(n13), .C0(n12), .C1(n1), 
        .Y(out[5]) );
  NOR4X1 U8 ( .A(in[2]), .B(in[0]), .C(out[2]), .D(n3), .Y(out[6]) );
  NAND2X1 U9 ( .A(in[0]), .B(n2), .Y(n16) );
  CLKINVX1 U10 ( .A(in[2]), .Y(n2) );
  OAI22XL U11 ( .A0(in[1]), .A1(n15), .B0(n4), .B1(n16), .Y(out[3]) );
  NAND3X1 U12 ( .A(n14), .B(n13), .C(n11), .Y(out[4]) );
  NAND3X1 U13 ( .A(in[0]), .B(n2), .C(in[3]), .Y(n14) );
  XNOR2X1 U14 ( .A(in[3]), .B(in[2]), .Y(n12) );
  NAND2X1 U15 ( .A(in[2]), .B(in[0]), .Y(n15) );
  NOR2X1 U16 ( .A(n4), .B(in[0]), .Y(out[2]) );
  CLKINVX1 U17 ( .A(in[1]), .Y(n4) );
  NAND3BX1 U18 ( .AN(in[0]), .B(n4), .C(in[2]), .Y(n11) );
endmodule


module multi_table_7 ( in, out );
  input [3:0] in;
  output [7:0] out;
  wire   out_0, n1, n2, n3, n4, n11, n12, n13, n14, n15, n16;
  assign out[1] = 1'b0;
  assign out[7] = 1'b0;
  assign out[0] = out_0;

  NAND2X1 U3 ( .A(n16), .B(n15), .Y(out_0) );
  OAI222XL U4 ( .A0(in[1]), .A1(n14), .B0(n4), .B1(n13), .C0(n12), .C1(n3), 
        .Y(out[5]) );
  CLKINVX1 U5 ( .A(out[2]), .Y(n3) );
  NOR4X1 U6 ( .A(in[2]), .B(in[0]), .C(out[2]), .D(n1), .Y(out[6]) );
  OAI22XL U7 ( .A0(in[1]), .A1(n15), .B0(n4), .B1(n16), .Y(out[3]) );
  NAND3X1 U8 ( .A(n14), .B(n13), .C(n11), .Y(out[4]) );
  NAND3BX1 U9 ( .AN(in[0]), .B(n4), .C(in[2]), .Y(n11) );
  NAND3X1 U10 ( .A(in[0]), .B(n1), .C(in[2]), .Y(n13) );
  CLKINVX1 U11 ( .A(in[3]), .Y(n1) );
  NAND2X1 U12 ( .A(in[0]), .B(n2), .Y(n16) );
  CLKINVX1 U13 ( .A(in[2]), .Y(n2) );
  NAND3X1 U14 ( .A(in[0]), .B(n2), .C(in[3]), .Y(n14) );
  XNOR2X1 U15 ( .A(in[3]), .B(in[2]), .Y(n12) );
  NAND2X1 U16 ( .A(in[2]), .B(in[0]), .Y(n15) );
  NOR2X1 U17 ( .A(n4), .B(in[0]), .Y(out[2]) );
  CLKINVX1 U18 ( .A(in[1]), .Y(n4) );
endmodule


module multi_table_6 ( in, out );
  input [3:0] in;
  output [7:0] out;
  wire   out_0, n1, n2, n3, n4, n11, n12, n13, n14, n15, n16;
  assign out[1] = 1'b0;
  assign out[7] = 1'b0;
  assign out[0] = out_0;

  CLKINVX1 U3 ( .A(out[2]), .Y(n1) );
  NAND2X1 U4 ( .A(n16), .B(n15), .Y(out_0) );
  NAND3X1 U5 ( .A(in[0]), .B(n3), .C(in[2]), .Y(n13) );
  CLKINVX1 U6 ( .A(in[3]), .Y(n3) );
  OAI222XL U7 ( .A0(in[1]), .A1(n14), .B0(n4), .B1(n13), .C0(n12), .C1(n1), 
        .Y(out[5]) );
  NOR4X1 U8 ( .A(in[2]), .B(in[0]), .C(out[2]), .D(n3), .Y(out[6]) );
  NAND2X1 U9 ( .A(in[0]), .B(n2), .Y(n16) );
  CLKINVX1 U10 ( .A(in[2]), .Y(n2) );
  OAI22XL U11 ( .A0(in[1]), .A1(n15), .B0(n4), .B1(n16), .Y(out[3]) );
  NAND3X1 U12 ( .A(n14), .B(n13), .C(n11), .Y(out[4]) );
  NAND3X1 U13 ( .A(in[0]), .B(n2), .C(in[3]), .Y(n14) );
  XNOR2X1 U14 ( .A(in[3]), .B(in[2]), .Y(n12) );
  NAND2X1 U15 ( .A(in[2]), .B(in[0]), .Y(n15) );
  NOR2X1 U16 ( .A(n4), .B(in[0]), .Y(out[2]) );
  CLKINVX1 U17 ( .A(in[1]), .Y(n4) );
  NAND3BX1 U18 ( .AN(in[0]), .B(n4), .C(in[2]), .Y(n11) );
endmodule


module multi_table_5 ( in, out );
  input [3:0] in;
  output [7:0] out;
  wire   out_0, n1, n2, n3, n4, n11, n12, n13, n14, n15, n16;
  assign out[1] = 1'b0;
  assign out[7] = 1'b0;
  assign out[0] = out_0;

  NAND2X1 U3 ( .A(n16), .B(n15), .Y(out_0) );
  OAI22XL U4 ( .A0(in[1]), .A1(n15), .B0(n4), .B1(n16), .Y(out[3]) );
  NAND3X1 U5 ( .A(n14), .B(n13), .C(n11), .Y(out[4]) );
  NAND3BX1 U6 ( .AN(in[0]), .B(n4), .C(in[2]), .Y(n11) );
  OAI222XL U7 ( .A0(in[1]), .A1(n14), .B0(n4), .B1(n13), .C0(n12), .C1(n3), 
        .Y(out[5]) );
  CLKINVX1 U8 ( .A(out[2]), .Y(n3) );
  NOR4X1 U9 ( .A(in[2]), .B(in[0]), .C(out[2]), .D(n1), .Y(out[6]) );
  NAND2X1 U10 ( .A(in[0]), .B(n2), .Y(n16) );
  CLKINVX1 U11 ( .A(in[2]), .Y(n2) );
  NAND3X1 U12 ( .A(in[0]), .B(n1), .C(in[2]), .Y(n13) );
  CLKINVX1 U13 ( .A(in[3]), .Y(n1) );
  NAND3X1 U14 ( .A(in[0]), .B(n2), .C(in[3]), .Y(n14) );
  XNOR2X1 U15 ( .A(in[3]), .B(in[2]), .Y(n12) );
  NAND2X1 U16 ( .A(in[2]), .B(in[0]), .Y(n15) );
  NOR2X1 U17 ( .A(n4), .B(in[0]), .Y(out[2]) );
  CLKINVX1 U18 ( .A(in[1]), .Y(n4) );
endmodule


module multi_table_4 ( in, out );
  input [3:0] in;
  output [7:0] out;
  wire   out_0, n1, n2, n3, n4, n11, n12, n13, n14, n15, n16;
  assign out[1] = 1'b0;
  assign out[7] = 1'b0;
  assign out[0] = out_0;

  CLKINVX1 U3 ( .A(out[2]), .Y(n1) );
  NAND2X1 U4 ( .A(n16), .B(n15), .Y(out_0) );
  NAND3X1 U5 ( .A(in[0]), .B(n3), .C(in[2]), .Y(n13) );
  NAND2X1 U6 ( .A(in[0]), .B(n2), .Y(n16) );
  CLKINVX1 U7 ( .A(in[2]), .Y(n2) );
  CLKINVX1 U8 ( .A(in[3]), .Y(n3) );
  OAI22XL U9 ( .A0(in[1]), .A1(n15), .B0(n4), .B1(n16), .Y(out[3]) );
  NAND3X1 U10 ( .A(n14), .B(n13), .C(n11), .Y(out[4]) );
  OAI222XL U11 ( .A0(in[1]), .A1(n14), .B0(n4), .B1(n13), .C0(n12), .C1(n1), 
        .Y(out[5]) );
  NOR4X1 U12 ( .A(in[2]), .B(in[0]), .C(out[2]), .D(n3), .Y(out[6]) );
  NAND3X1 U13 ( .A(in[0]), .B(n2), .C(in[3]), .Y(n14) );
  XNOR2X1 U14 ( .A(in[3]), .B(in[2]), .Y(n12) );
  NAND2X1 U15 ( .A(in[2]), .B(in[0]), .Y(n15) );
  NOR2X1 U16 ( .A(n4), .B(in[0]), .Y(out[2]) );
  CLKINVX1 U17 ( .A(in[1]), .Y(n4) );
  NAND3BX1 U18 ( .AN(in[0]), .B(n4), .C(in[2]), .Y(n11) );
endmodule


module multi_table_3 ( in, out );
  input [3:0] in;
  output [7:0] out;
  wire   out_0, n1, n2, n3, n4, n11, n12, n13, n14, n15, n16;
  assign out[1] = 1'b0;
  assign out[7] = 1'b0;
  assign out[0] = out_0;

  NAND2X1 U3 ( .A(n16), .B(n15), .Y(out_0) );
  OAI22XL U4 ( .A0(in[1]), .A1(n15), .B0(n4), .B1(n16), .Y(out[3]) );
  NAND2X1 U5 ( .A(in[0]), .B(n2), .Y(n16) );
  CLKINVX1 U6 ( .A(in[2]), .Y(n2) );
  NAND3X1 U7 ( .A(in[0]), .B(n2), .C(in[3]), .Y(n14) );
  OAI222XL U8 ( .A0(in[1]), .A1(n14), .B0(n4), .B1(n13), .C0(n12), .C1(n3), 
        .Y(out[5]) );
  XNOR2X1 U9 ( .A(in[3]), .B(in[2]), .Y(n12) );
  CLKINVX1 U10 ( .A(out[2]), .Y(n3) );
  NOR2X1 U11 ( .A(n4), .B(in[0]), .Y(out[2]) );
  NAND3X1 U12 ( .A(in[0]), .B(n1), .C(in[2]), .Y(n13) );
  CLKINVX1 U13 ( .A(in[3]), .Y(n1) );
  NAND2X1 U14 ( .A(in[2]), .B(in[0]), .Y(n15) );
  CLKINVX1 U15 ( .A(in[1]), .Y(n4) );
  NOR4X1 U16 ( .A(in[2]), .B(in[0]), .C(out[2]), .D(n1), .Y(out[6]) );
  NAND3X1 U17 ( .A(n14), .B(n13), .C(n11), .Y(out[4]) );
  NAND3BX1 U18 ( .AN(in[0]), .B(n4), .C(in[2]), .Y(n11) );
endmodule


module multi_table_2 ( in, out );
  input [3:0] in;
  output [7:0] out;
  wire   out_0, n1, n2, n3, n4, n11, n12, n13, n14, n15, n16;
  assign out[1] = 1'b0;
  assign out[7] = 1'b0;
  assign out[0] = out_0;

  NAND2X1 U3 ( .A(n16), .B(n15), .Y(out_0) );
  OAI22XL U4 ( .A0(in[1]), .A1(n15), .B0(n4), .B1(n16), .Y(out[3]) );
  NAND2X1 U5 ( .A(in[0]), .B(n2), .Y(n16) );
  CLKINVX1 U6 ( .A(in[2]), .Y(n2) );
  NAND3X1 U7 ( .A(in[0]), .B(n2), .C(in[3]), .Y(n14) );
  OAI222XL U8 ( .A0(in[1]), .A1(n14), .B0(n4), .B1(n13), .C0(n12), .C1(n3), 
        .Y(out[5]) );
  XNOR2X1 U9 ( .A(in[3]), .B(in[2]), .Y(n12) );
  CLKINVX1 U10 ( .A(out[2]), .Y(n3) );
  NOR2X1 U11 ( .A(n4), .B(in[0]), .Y(out[2]) );
  NAND3X1 U12 ( .A(in[0]), .B(n1), .C(in[2]), .Y(n13) );
  CLKINVX1 U13 ( .A(in[3]), .Y(n1) );
  NAND2X1 U14 ( .A(in[2]), .B(in[0]), .Y(n15) );
  CLKINVX1 U15 ( .A(in[1]), .Y(n4) );
  NOR4X1 U16 ( .A(in[2]), .B(in[0]), .C(out[2]), .D(n1), .Y(out[6]) );
  NAND3X1 U17 ( .A(n14), .B(n13), .C(n11), .Y(out[4]) );
  NAND3BX1 U18 ( .AN(in[0]), .B(n4), .C(in[2]), .Y(n11) );
endmodule


module multi_table_1 ( in, out );
  input [3:0] in;
  output [7:0] out;
  wire   out_0, n1, n2, n3, n4, n11, n12, n13, n14, n15, n16;
  assign out[1] = 1'b0;
  assign out[7] = 1'b0;
  assign out[0] = out_0;

  NAND2X1 U3 ( .A(n16), .B(n15), .Y(out_0) );
  NOR2X1 U4 ( .A(n4), .B(in[0]), .Y(out[2]) );
  NOR4X1 U5 ( .A(in[2]), .B(in[0]), .C(out[2]), .D(n1), .Y(out[6]) );
  OAI22XL U6 ( .A0(in[1]), .A1(n15), .B0(n4), .B1(n16), .Y(out[3]) );
  NAND2X1 U7 ( .A(in[0]), .B(n2), .Y(n16) );
  CLKINVX1 U8 ( .A(in[2]), .Y(n2) );
  NAND3X1 U9 ( .A(in[0]), .B(n2), .C(in[3]), .Y(n14) );
  OAI222XL U10 ( .A0(in[1]), .A1(n14), .B0(n4), .B1(n13), .C0(n12), .C1(n3), 
        .Y(out[5]) );
  XNOR2X1 U11 ( .A(in[3]), .B(in[2]), .Y(n12) );
  CLKINVX1 U12 ( .A(out[2]), .Y(n3) );
  CLKINVX1 U13 ( .A(in[1]), .Y(n4) );
  NAND3X1 U14 ( .A(in[0]), .B(n1), .C(in[2]), .Y(n13) );
  CLKINVX1 U15 ( .A(in[3]), .Y(n1) );
  NAND2X1 U16 ( .A(in[2]), .B(in[0]), .Y(n15) );
  NAND3X1 U17 ( .A(n14), .B(n13), .C(n11), .Y(out[4]) );
  NAND3BX1 U18 ( .AN(in[0]), .B(n4), .C(in[2]), .Y(n11) );
endmodule


module counter ( clk, reset, counting_reset, cout );
  output [3:0] cout;
  input clk, reset, counting_reset;
  wire   N5, N6, N7, N9, N8, N11, N10, \mult_add_241_aco/b , n1, n2, n3, n4;

  DFFRX1 \cout_reg[3]  ( .D(N7), .CK(clk), .RN(n2), .Q(cout[3]) );
  DFFRX1 \cout_reg[1]  ( .D(N5), .CK(clk), .RN(n2), .Q(cout[1]) );
  DFFRX1 \cout_reg[2]  ( .D(N6), .CK(clk), .RN(n2), .Q(cout[2]) );
  DFFSX1 \cout_reg[0]  ( .D(n1), .CK(clk), .SN(n2), .Q(cout[0]) );
  NAND2X1 U3 ( .A(N9), .B(N8), .Y(n4) );
  XNOR2X1 U4 ( .A(N10), .B(n4), .Y(N6) );
  XNOR2X1 U5 ( .A(N9), .B(n1), .Y(N5) );
  CLKINVX1 U6 ( .A(N8), .Y(n1) );
  CLKINVX1 U7 ( .A(counting_reset), .Y(\mult_add_241_aco/b ) );
  XOR2X1 U8 ( .A(N11), .B(n3), .Y(N7) );
  NOR2BX1 U9 ( .AN(N10), .B(n4), .Y(n3) );
  CLKINVX1 U10 ( .A(reset), .Y(n2) );
  AND2X1 U11 ( .A(cout[0]), .B(\mult_add_241_aco/b ), .Y(N8) );
  AND2X1 U12 ( .A(cout[1]), .B(\mult_add_241_aco/b ), .Y(N9) );
  AND2X1 U13 ( .A(cout[2]), .B(\mult_add_241_aco/b ), .Y(N10) );
  AND2X1 U14 ( .A(\mult_add_241_aco/b ), .B(cout[3]), .Y(N11) );
endmodule


module counter2 ( clk, reset, counting_reset, counting_en, cout );
  output [3:0] cout;
  input clk, reset, counting_reset, counting_en;
  wire   n2, n3, n4, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n1, n5
;

  DFFRX1 \cout_reg[3]  ( .D(n13), .CK(clk), .RN(n5), .Q(cout[3]) );
  DFFRX1 \cout_reg[1]  ( .D(n15), .CK(clk), .RN(n5), .Q(cout[1]), .QN(n3) );
  DFFRX1 \cout_reg[0]  ( .D(n16), .CK(clk), .RN(n5), .Q(cout[0]), .QN(n4) );
  DFFRX1 \cout_reg[2]  ( .D(n14), .CK(clk), .RN(n5), .Q(cout[2]), .QN(n2) );
  NAND2X1 U3 ( .A(n1), .B(n9), .Y(n12) );
  NAND2X1 U4 ( .A(counting_en), .B(n1), .Y(n9) );
  OA21XL U5 ( .A0(cout[0]), .A1(n9), .B0(n12), .Y(n11) );
  OA21XL U6 ( .A0(cout[1]), .A1(n9), .B0(n11), .Y(n10) );
  OAI32X1 U7 ( .A0(n3), .A1(cout[2]), .A2(n8), .B0(n10), .B1(n2), .Y(n14) );
  OR2X1 U8 ( .A(n9), .B(n4), .Y(n8) );
  OAI2BB1X1 U9 ( .A0N(cout[3]), .A1N(n6), .B0(n7), .Y(n13) );
  OR4X1 U10 ( .A(cout[3]), .B(n2), .C(n3), .D(n8), .Y(n7) );
  OAI21XL U11 ( .A0(cout[2]), .A1(n9), .B0(n10), .Y(n6) );
  OAI22XL U12 ( .A0(n11), .A1(n3), .B0(cout[1]), .B1(n8), .Y(n15) );
  CLKINVX1 U13 ( .A(counting_reset), .Y(n1) );
  OAI22XL U14 ( .A0(n4), .A1(n12), .B0(cout[0]), .B1(n9), .Y(n16) );
  CLKINVX1 U15 ( .A(reset), .Y(n5) );
endmodule


module set_counter_DW01_inc_0_DW01_inc_1 ( A, SUM );
  input [7:0] A;
  output [7:0] SUM;

  wire   [7:2] carry;

  ADDHXL U1_1_6 ( .A(A[6]), .B(carry[6]), .CO(carry[7]), .S(SUM[6]) );
  ADDHXL U1_1_5 ( .A(A[5]), .B(carry[5]), .CO(carry[6]), .S(SUM[5]) );
  ADDHXL U1_1_4 ( .A(A[4]), .B(carry[4]), .CO(carry[5]), .S(SUM[4]) );
  ADDHXL U1_1_3 ( .A(A[3]), .B(carry[3]), .CO(carry[4]), .S(SUM[3]) );
  ADDHXL U1_1_2 ( .A(A[2]), .B(carry[2]), .CO(carry[3]), .S(SUM[2]) );
  ADDHXL U1_1_1 ( .A(A[1]), .B(A[0]), .CO(carry[2]), .S(SUM[1]) );
  CLKINVX1 U1 ( .A(A[0]), .Y(SUM[0]) );
  XOR2X1 U2 ( .A(carry[7]), .B(A[7]), .Y(SUM[7]) );
endmodule


module set_counter ( clk, reset, counting_reset, counting_en, cout );
  output [7:0] cout;
  input clk, reset, counting_reset, counting_en;
  wire   N6, N7, N8, N9, N10, N11, N12, N13, n2, n3, n4, n5, n6, n7, n8, n9,
         n10, n11, n1;

  set_counter_DW01_inc_0_DW01_inc_1 add_275 ( .A(cout), .SUM({N13, N12, N11, 
        N10, N9, N8, N7, N6}) );
  DFFRX1 \cout_reg[7]  ( .D(n4), .CK(clk), .RN(n1), .Q(cout[7]) );
  DFFRX1 \cout_reg[6]  ( .D(n5), .CK(clk), .RN(n1), .Q(cout[6]) );
  DFFRX1 \cout_reg[5]  ( .D(n6), .CK(clk), .RN(n1), .Q(cout[5]) );
  DFFRX1 \cout_reg[4]  ( .D(n7), .CK(clk), .RN(n1), .Q(cout[4]) );
  DFFRX1 \cout_reg[3]  ( .D(n8), .CK(clk), .RN(n1), .Q(cout[3]) );
  DFFRX1 \cout_reg[2]  ( .D(n9), .CK(clk), .RN(n1), .Q(cout[2]) );
  DFFRX1 \cout_reg[1]  ( .D(n10), .CK(clk), .RN(n1), .Q(cout[1]) );
  DFFRX1 \cout_reg[0]  ( .D(n11), .CK(clk), .RN(n1), .Q(cout[0]) );
  NOR2X1 U3 ( .A(counting_reset), .B(n3), .Y(n2) );
  NOR2BX1 U4 ( .AN(counting_en), .B(counting_reset), .Y(n3) );
  AO22X1 U5 ( .A0(cout[7]), .A1(n2), .B0(N13), .B1(n3), .Y(n4) );
  AO22X1 U6 ( .A0(cout[6]), .A1(n2), .B0(N12), .B1(n3), .Y(n5) );
  AO22X1 U7 ( .A0(cout[5]), .A1(n2), .B0(N11), .B1(n3), .Y(n6) );
  AO22X1 U8 ( .A0(cout[4]), .A1(n2), .B0(N10), .B1(n3), .Y(n7) );
  AO22X1 U9 ( .A0(cout[3]), .A1(n2), .B0(N9), .B1(n3), .Y(n8) );
  AO22X1 U10 ( .A0(cout[2]), .A1(n2), .B0(N8), .B1(n3), .Y(n9) );
  AO22X1 U11 ( .A0(cout[1]), .A1(n2), .B0(N7), .B1(n3), .Y(n10) );
  AO22X1 U12 ( .A0(cout[0]), .A1(n2), .B0(N6), .B1(n3), .Y(n11) );
  CLKINVX1 U13 ( .A(reset), .Y(n1) );
endmodule


module SET ( clk, rst, en, central, radius, mode, busy, valid, candidate );
  input [23:0] central;
  input [11:0] radius;
  input [1:0] mode;
  output [7:0] candidate;
  input clk, rst, en;
  output busy, valid;
  wire   counting_reset_x, counting_reset_y, counting_en_y, counting_en,
         \state[0] , N0, N1, N2, N3, N4, N5, n15, n16, n17, n18, n19, n20, n21,
         n22, n23, n24, n25, n26, n27, n28, n29, n30, n31, n32, n33, n34, n35,
         n36, n37, n38, n39, n40, n41, n42, n43, n44, n45, n46, n47, n48, n49,
         n50, n51, n52, n53, n54, n55, n56, n57, n58, n59, n60, n61, n62, n63,
         n64, n65, n69, n70, n71, n72, n73, n74, n75, n76, n77, n78, n79, n80,
         n81, n82;
  wire   [23:0] central_next;
  wire   [11:0] radius_next;
  wire   [1:0] mode_next;
  wire   [7:0] xy_sqr1;
  wire   [7:0] xy_sqr2;
  wire   [7:0] xy_sqr3;
  wire   [7:0] r1_sqr;
  wire   [7:0] r2_sqr;
  wire   [7:0] r3_sqr;
  wire   [3:0] x_diff1;
  wire   [7:0] x_diff1_out;
  wire   [3:0] y_diff1;
  wire   [7:0] y_diff1_out;
  wire   [3:0] x_diff2;
  wire   [7:0] x_diff2_out;
  wire   [3:0] y_diff2;
  wire   [7:0] y_diff2_out;
  wire   [3:0] x_diff3;
  wire   [7:0] x_diff3_out;
  wire   [3:0] y_diff3;
  wire   [7:0] y_diff3_out;
  wire   [3:0] cout_x;
  wire   [3:0] cout_y;
  wire   [7:1] \add_59/carry ;
  wire   [7:1] \add_58/carry ;
  wire   [7:1] \add_57/carry ;
  wire   SYNOPSYS_UNCONNECTED__0, SYNOPSYS_UNCONNECTED__1, 
        SYNOPSYS_UNCONNECTED__2, SYNOPSYS_UNCONNECTED__3, 
        SYNOPSYS_UNCONNECTED__4, SYNOPSYS_UNCONNECTED__5, 
        SYNOPSYS_UNCONNECTED__6, SYNOPSYS_UNCONNECTED__7, 
        SYNOPSYS_UNCONNECTED__8, SYNOPSYS_UNCONNECTED__9, 
        SYNOPSYS_UNCONNECTED__10, SYNOPSYS_UNCONNECTED__11, 
        SYNOPSYS_UNCONNECTED__12, SYNOPSYS_UNCONNECTED__13, 
        SYNOPSYS_UNCONNECTED__14, SYNOPSYS_UNCONNECTED__15, 
        SYNOPSYS_UNCONNECTED__16, SYNOPSYS_UNCONNECTED__17;
  assign busy = N3;
  assign valid = N5;

  din_FF din_FF1 ( .clk(clk), .reset(rst), .en(en), .central_next(central_next), .radius_next(radius_next), .mode_next(mode_next), .central(central), 
        .radius(radius), .mode(mode) );
  FF FF1 ( .clk(clk), .reset(rst), .counting_reset_x_next(1'b0), 
        .counting_reset_y_next(1'b0), .counting_en_y_next(1'b0), 
        .counting_reset_x(n82), .counting_reset_y(n81), .counting_en_y(n80) );
  set_counting_enable SCE ( .xy_sqr1(xy_sqr1), .xy_sqr2(xy_sqr2), .xy_sqr3(
        xy_sqr3), .r1_sqr({1'b0, r1_sqr[6:2], 1'b0, r1_sqr[0]}), .r2_sqr({1'b0, 
        r2_sqr[6:2], 1'b0, r2_sqr[0]}), .r3_sqr({1'b0, r3_sqr[6:2], 1'b0, 
        r3_sqr[0]}), .mode(mode_next), .count_en(counting_en) );
  FSM FSM1 ( .clk(clk), .reset(rst), .finish_trigger(N2), .en(en), .state({N3, 
        \state[0] }) );
  multi_table_0 MT1 ( .in(x_diff1), .out({SYNOPSYS_UNCONNECTED__0, 
        x_diff1_out[6:2], SYNOPSYS_UNCONNECTED__1, x_diff1_out[0]}) );
  multi_table_8 MT2 ( .in(y_diff1), .out({SYNOPSYS_UNCONNECTED__2, 
        y_diff1_out[6:2], SYNOPSYS_UNCONNECTED__3, y_diff1_out[0]}) );
  multi_table_7 MT3 ( .in(x_diff2), .out({SYNOPSYS_UNCONNECTED__4, 
        x_diff2_out[6:2], SYNOPSYS_UNCONNECTED__5, x_diff2_out[0]}) );
  multi_table_6 MT4 ( .in(y_diff2), .out({SYNOPSYS_UNCONNECTED__6, 
        y_diff2_out[6:2], SYNOPSYS_UNCONNECTED__7, y_diff2_out[0]}) );
  multi_table_5 MT5 ( .in(x_diff3), .out({SYNOPSYS_UNCONNECTED__8, 
        x_diff3_out[6:2], SYNOPSYS_UNCONNECTED__9, x_diff3_out[0]}) );
  multi_table_4 MT6 ( .in(y_diff3), .out({SYNOPSYS_UNCONNECTED__10, 
        y_diff3_out[6:2], SYNOPSYS_UNCONNECTED__11, y_diff3_out[0]}) );
  multi_table_3 MT7 ( .in(radius_next[11:8]), .out({SYNOPSYS_UNCONNECTED__12, 
        r1_sqr[6:2], SYNOPSYS_UNCONNECTED__13, r1_sqr[0]}) );
  multi_table_2 MT8 ( .in(radius_next[7:4]), .out({SYNOPSYS_UNCONNECTED__14, 
        r2_sqr[6:2], SYNOPSYS_UNCONNECTED__15, r2_sqr[0]}) );
  multi_table_1 MT9 ( .in(radius_next[3:0]), .out({SYNOPSYS_UNCONNECTED__16, 
        r3_sqr[6:2], SYNOPSYS_UNCONNECTED__17, r3_sqr[0]}) );
  counter counter_x ( .clk(clk), .reset(rst), .counting_reset(counting_reset_x), .cout(cout_x) );
  counter2 counter_y ( .clk(clk), .reset(rst), .counting_reset(
        counting_reset_y), .counting_en(counting_en_y), .cout(cout_y) );
  set_counter SC ( .clk(clk), .reset(rst), .counting_reset(n65), .counting_en(
        N4), .cout(candidate) );
  XNOR2X1 U98 ( .A(n34), .B(n35), .Y(y_diff1[2]) );
  XNOR2X1 U99 ( .A(n58), .B(n59), .Y(x_diff1[2]) );
  XNOR2X1 U100 ( .A(n26), .B(n27), .Y(y_diff2[2]) );
  XNOR2X1 U101 ( .A(n50), .B(n51), .Y(x_diff2[2]) );
  XNOR2X1 U102 ( .A(n18), .B(n19), .Y(y_diff3[2]) );
  AO21X1 U103 ( .A0(n72), .A1(central_next[16]), .B0(n38), .Y(y_diff1[0]) );
  XNOR2X1 U104 ( .A(n42), .B(n43), .Y(x_diff3[2]) );
  AO21X1 U105 ( .A0(n72), .A1(central_next[8]), .B0(n30), .Y(y_diff2[0]) );
  AO21X1 U106 ( .A0(n78), .A1(central_next[20]), .B0(n62), .Y(x_diff1[0]) );
  AO21X1 U107 ( .A0(n78), .A1(central_next[12]), .B0(n54), .Y(x_diff2[0]) );
  AO21X1 U108 ( .A0(n72), .A1(central_next[0]), .B0(n22), .Y(y_diff3[0]) );
  AO21X1 U109 ( .A0(n78), .A1(central_next[4]), .B0(n46), .Y(x_diff3[0]) );
  ADDFXL U110 ( .A(x_diff1_out[5]), .B(y_diff1_out[5]), .CI(\add_57/carry [5]), 
        .CO(\add_57/carry [6]), .S(xy_sqr1[5]) );
  ADDFXL U111 ( .A(x_diff1_out[6]), .B(y_diff1_out[6]), .CI(\add_57/carry [6]), 
        .CO(xy_sqr1[7]), .S(xy_sqr1[6]) );
  CLKINVX1 U112 ( .A(n38), .Y(n71) );
  CLKINVX1 U113 ( .A(n62), .Y(n77) );
  ADDFXL U114 ( .A(x_diff1_out[3]), .B(y_diff1_out[3]), .CI(\add_57/carry [3]), 
        .CO(\add_57/carry [4]), .S(xy_sqr1[3]) );
  ADDFXL U115 ( .A(x_diff1_out[4]), .B(y_diff1_out[4]), .CI(\add_57/carry [4]), 
        .CO(\add_57/carry [5]), .S(xy_sqr1[4]) );
  ADDFXL U116 ( .A(x_diff2_out[5]), .B(y_diff2_out[5]), .CI(\add_58/carry [5]), 
        .CO(\add_58/carry [6]), .S(xy_sqr2[5]) );
  ADDFXL U117 ( .A(x_diff2_out[6]), .B(y_diff2_out[6]), .CI(\add_58/carry [6]), 
        .CO(xy_sqr2[7]), .S(xy_sqr2[6]) );
  CLKINVX1 U118 ( .A(n30), .Y(n70) );
  ADDFXL U119 ( .A(x_diff2_out[3]), .B(y_diff2_out[3]), .CI(\add_58/carry [3]), 
        .CO(\add_58/carry [4]), .S(xy_sqr2[3]) );
  ADDFXL U120 ( .A(x_diff2_out[4]), .B(y_diff2_out[4]), .CI(\add_58/carry [4]), 
        .CO(\add_58/carry [5]), .S(xy_sqr2[4]) );
  CLKINVX1 U121 ( .A(n54), .Y(n76) );
  ADDFXL U122 ( .A(x_diff3_out[3]), .B(y_diff3_out[3]), .CI(\add_59/carry [3]), 
        .CO(\add_59/carry [4]), .S(xy_sqr3[3]) );
  ADDFXL U123 ( .A(x_diff3_out[4]), .B(y_diff3_out[4]), .CI(\add_59/carry [4]), 
        .CO(\add_59/carry [5]), .S(xy_sqr3[4]) );
  ADDFXL U124 ( .A(x_diff3_out[5]), .B(y_diff3_out[5]), .CI(\add_59/carry [5]), 
        .CO(\add_59/carry [6]), .S(xy_sqr3[5]) );
  ADDFXL U125 ( .A(x_diff3_out[6]), .B(y_diff3_out[6]), .CI(\add_59/carry [6]), 
        .CO(xy_sqr3[7]), .S(xy_sqr3[6]) );
  CLKINVX1 U126 ( .A(n22), .Y(n69) );
  CLKINVX1 U127 ( .A(n46), .Y(n75) );
  AND3X2 U128 ( .A(N3), .B(n79), .C(counting_en), .Y(N4) );
  XOR2X1 U129 ( .A(n31), .B(n32), .Y(y_diff1[3]) );
  XNOR2X1 U130 ( .A(cout_y[3]), .B(central_next[19]), .Y(n32) );
  OAI2BB2XL U131 ( .B0(cout_y[2]), .B1(n33), .A0N(n34), .A1N(central_next[18]), 
        .Y(n31) );
  NOR2X1 U132 ( .A(central_next[18]), .B(n34), .Y(n33) );
  OAI2BB1X1 U133 ( .A0N(n71), .A1N(central_next[17]), .B0(n36), .Y(n34) );
  OAI21XL U134 ( .A0(central_next[17]), .A1(n71), .B0(n73), .Y(n36) );
  NOR2X1 U135 ( .A(n72), .B(central_next[16]), .Y(n38) );
  CLKINVX1 U136 ( .A(cout_y[0]), .Y(n72) );
  OAI2BB1X1 U137 ( .A0N(n77), .A1N(central_next[21]), .B0(n60), .Y(n58) );
  OAI21XL U138 ( .A0(central_next[21]), .A1(n77), .B0(n74), .Y(n60) );
  XOR2X1 U139 ( .A(n55), .B(n56), .Y(x_diff1[3]) );
  XNOR2X1 U140 ( .A(cout_x[3]), .B(central_next[23]), .Y(n56) );
  OAI2BB2XL U141 ( .B0(cout_x[2]), .B1(n57), .A0N(n58), .A1N(central_next[22]), 
        .Y(n55) );
  NOR2X1 U142 ( .A(central_next[22]), .B(n58), .Y(n57) );
  NOR2X1 U143 ( .A(n78), .B(central_next[20]), .Y(n62) );
  XOR2X1 U144 ( .A(cout_y[2]), .B(central_next[18]), .Y(n35) );
  XOR2X1 U145 ( .A(cout_x[2]), .B(central_next[22]), .Y(n59) );
  CLKINVX1 U146 ( .A(cout_x[0]), .Y(n78) );
  XOR2X1 U147 ( .A(n23), .B(n24), .Y(y_diff2[3]) );
  XNOR2X1 U148 ( .A(cout_y[3]), .B(central_next[11]), .Y(n24) );
  OAI2BB2XL U149 ( .B0(cout_y[2]), .B1(n25), .A0N(n26), .A1N(central_next[10]), 
        .Y(n23) );
  NOR2X1 U150 ( .A(central_next[10]), .B(n26), .Y(n25) );
  OAI2BB1X1 U151 ( .A0N(n70), .A1N(central_next[9]), .B0(n28), .Y(n26) );
  OAI21XL U152 ( .A0(central_next[9]), .A1(n70), .B0(n73), .Y(n28) );
  NOR2X1 U153 ( .A(n72), .B(central_next[8]), .Y(n30) );
  XOR2X1 U154 ( .A(cout_y[2]), .B(central_next[10]), .Y(n27) );
  OAI2BB1X1 U155 ( .A0N(n76), .A1N(central_next[13]), .B0(n52), .Y(n50) );
  OAI21XL U156 ( .A0(central_next[13]), .A1(n76), .B0(n74), .Y(n52) );
  XOR2X1 U157 ( .A(n47), .B(n48), .Y(x_diff2[3]) );
  XNOR2X1 U158 ( .A(cout_x[3]), .B(central_next[15]), .Y(n48) );
  OAI2BB2XL U159 ( .B0(cout_x[2]), .B1(n49), .A0N(n50), .A1N(central_next[14]), 
        .Y(n47) );
  NOR2X1 U160 ( .A(central_next[14]), .B(n50), .Y(n49) );
  NOR2X1 U161 ( .A(n78), .B(central_next[12]), .Y(n54) );
  XOR2X1 U162 ( .A(cout_x[2]), .B(central_next[14]), .Y(n51) );
  CLKINVX1 U163 ( .A(cout_x[1]), .Y(n74) );
  CLKINVX1 U164 ( .A(cout_y[1]), .Y(n73) );
  XOR2X1 U165 ( .A(n71), .B(n37), .Y(y_diff1[1]) );
  XOR2X1 U166 ( .A(central_next[17]), .B(n73), .Y(n37) );
  XOR2X1 U167 ( .A(n77), .B(n61), .Y(x_diff1[1]) );
  XOR2X1 U168 ( .A(central_next[21]), .B(n74), .Y(n61) );
  XOR2X1 U169 ( .A(n70), .B(n29), .Y(y_diff2[1]) );
  XOR2X1 U170 ( .A(central_next[9]), .B(n73), .Y(n29) );
  XOR2X1 U171 ( .A(n76), .B(n53), .Y(x_diff2[1]) );
  XOR2X1 U172 ( .A(central_next[13]), .B(n74), .Y(n53) );
  XOR2X1 U173 ( .A(cout_y[2]), .B(central_next[2]), .Y(n19) );
  OAI2BB1X1 U174 ( .A0N(n69), .A1N(central_next[1]), .B0(n20), .Y(n18) );
  OAI21XL U175 ( .A0(central_next[1]), .A1(n69), .B0(n73), .Y(n20) );
  XOR2X1 U176 ( .A(n15), .B(n16), .Y(y_diff3[3]) );
  XNOR2X1 U177 ( .A(cout_y[3]), .B(central_next[3]), .Y(n16) );
  OAI2BB2XL U178 ( .B0(cout_y[2]), .B1(n17), .A0N(n18), .A1N(central_next[2]), 
        .Y(n15) );
  NOR2X1 U179 ( .A(central_next[2]), .B(n18), .Y(n17) );
  NOR2X1 U180 ( .A(n72), .B(central_next[0]), .Y(n22) );
  XOR2X1 U181 ( .A(cout_x[2]), .B(central_next[6]), .Y(n43) );
  OAI2BB1X1 U182 ( .A0N(n75), .A1N(central_next[5]), .B0(n44), .Y(n42) );
  OAI21XL U183 ( .A0(central_next[5]), .A1(n75), .B0(n74), .Y(n44) );
  NOR2X1 U184 ( .A(n78), .B(central_next[4]), .Y(n46) );
  XOR2X1 U185 ( .A(n39), .B(n40), .Y(x_diff3[3]) );
  XNOR2X1 U186 ( .A(cout_x[3]), .B(central_next[7]), .Y(n40) );
  OAI2BB2XL U187 ( .B0(cout_x[2]), .B1(n41), .A0N(n42), .A1N(central_next[6]), 
        .Y(n39) );
  NOR2X1 U188 ( .A(central_next[6]), .B(n42), .Y(n41) );
  XOR2X1 U189 ( .A(n69), .B(n21), .Y(y_diff3[1]) );
  XOR2X1 U190 ( .A(central_next[1]), .B(n73), .Y(n21) );
  XOR2X1 U191 ( .A(n75), .B(n45), .Y(x_diff3[1]) );
  XOR2X1 U192 ( .A(central_next[5]), .B(n74), .Y(n45) );
  NAND4BX1 U193 ( .AN(cout_x[2]), .B(cout_x[3]), .C(n78), .D(n74), .Y(n64) );
  NAND2X1 U194 ( .A(N3), .B(n64), .Y(N0) );
  OAI21XL U195 ( .A0(N3), .A1(n79), .B0(n64), .Y(N1) );
  NOR2X1 U196 ( .A(\state[0] ), .B(N3), .Y(n65) );
  CLKINVX1 U197 ( .A(\state[0] ), .Y(n79) );
  NOR3BXL U198 ( .AN(cout_y[3]), .B(n63), .C(n64), .Y(N2) );
  NAND3BX1 U199 ( .AN(cout_y[2]), .B(n73), .C(n72), .Y(n63) );
  NOR2BX1 U200 ( .AN(N3), .B(n79), .Y(N5) );
  AND2X1 U201 ( .A(y_diff2_out[0]), .B(x_diff2_out[0]), .Y(xy_sqr2[1]) );
  XOR2X1 U202 ( .A(y_diff2_out[0]), .B(x_diff2_out[0]), .Y(xy_sqr2[0]) );
  AND2X1 U203 ( .A(y_diff2_out[2]), .B(x_diff2_out[2]), .Y(\add_58/carry [3])
         );
  XOR2X1 U204 ( .A(y_diff2_out[2]), .B(x_diff2_out[2]), .Y(xy_sqr2[2]) );
  AND2X1 U205 ( .A(y_diff3_out[0]), .B(x_diff3_out[0]), .Y(xy_sqr3[1]) );
  XOR2X1 U206 ( .A(y_diff3_out[0]), .B(x_diff3_out[0]), .Y(xy_sqr3[0]) );
  AND2X1 U207 ( .A(y_diff3_out[2]), .B(x_diff3_out[2]), .Y(\add_59/carry [3])
         );
  XOR2X1 U208 ( .A(y_diff3_out[2]), .B(x_diff3_out[2]), .Y(xy_sqr3[2]) );
  AND2X1 U209 ( .A(y_diff1_out[0]), .B(x_diff1_out[0]), .Y(xy_sqr1[1]) );
  XOR2X1 U210 ( .A(y_diff1_out[0]), .B(x_diff1_out[0]), .Y(xy_sqr1[0]) );
  AND2X1 U211 ( .A(y_diff1_out[2]), .B(x_diff1_out[2]), .Y(\add_57/carry [3])
         );
  XOR2X1 U212 ( .A(y_diff1_out[2]), .B(x_diff1_out[2]), .Y(xy_sqr1[2]) );
  AND2X1 U213 ( .A(N0), .B(n82), .Y(counting_reset_x) );
  AND2X1 U214 ( .A(n65), .B(n81), .Y(counting_reset_y) );
  AND2X1 U215 ( .A(N1), .B(n80), .Y(counting_en_y) );
endmodule

