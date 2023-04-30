/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : T-2022.03
// Date      : Thu Mar  2 17:16:34 2023
/////////////////////////////////////////////////////////////


module sorting_machine ( clk, reset, sorting_start, data_1, data_2, data_3, 
        data_4, data_5, data_6, data_min_1st, data_min_2nd, sorting_finish );
  input [14:0] data_1;
  input [14:0] data_2;
  input [14:0] data_3;
  input [14:0] data_4;
  input [14:0] data_5;
  input [14:0] data_6;
  output [14:0] data_min_1st;
  output [14:0] data_min_2nd;
  input clk, reset, sorting_start;
  output sorting_finish;
  wire   N28, N29, n76, n77, n78, n79, n80, n81, n82, n83, n93, n94, n95, n96,
         n97, n98, n99, n103, n104, n105, n106, n107, n108, n109, n485, n486,
         n487, n488, n489, n490, n491, n492, n493, n494, n495, n496, n497,
         n498, n499, n500, n501, n502, n503, n504, n505, n506, n507, n508,
         n509, n510, n511, n512, n513, n514, n515, n516, n517, n1, n2, n3, n4,
         n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19,
         n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30, n31, n32, n33,
         n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44, n45, n46, n47,
         n48, n49, n50, n51, n52, n53, n54, n55, n56, n57, n58, n59, n60, n61,
         n62, n63, n64, n65, n66, n67, n68, n69, n70, n71, n72, n73, n74, n75,
         n84, n85, n86, n87, n88, n89, n90, n91, n92, n100, n101, n102, n110,
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
         n254, n255, n256, n257, n258, n259, n260, n261, n262, n263, n264,
         n265, n266, n267, n268, n269, n270, n271, n272, n273, n274, n275,
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
         n518, n519, n520, n521, n522, n523;
  wire   [31:0] state;
  wire   [2:0] cnt;

  DFFX1 \data_min_2nd_reg[14]  ( .D(n485), .CK(clk), .Q(data_min_2nd[14]), 
        .QN(n76) );
  DFFX1 \data_min_2nd_reg[13]  ( .D(n486), .CK(clk), .Q(data_min_2nd[13]), 
        .QN(n77) );
  DFFX1 \data_min_2nd_reg[12]  ( .D(n487), .CK(clk), .Q(data_min_2nd[12]), 
        .QN(n78) );
  DFFX1 \data_min_2nd_reg[11]  ( .D(n488), .CK(clk), .Q(data_min_2nd[11]), 
        .QN(n79) );
  DFFX1 \data_min_2nd_reg[10]  ( .D(n489), .CK(clk), .Q(data_min_2nd[10]), 
        .QN(n80) );
  DFFX1 \data_min_2nd_reg[9]  ( .D(n490), .CK(clk), .Q(data_min_2nd[9]), .QN(
        n81) );
  DFFX1 \data_min_2nd_reg[8]  ( .D(n491), .CK(clk), .Q(data_min_2nd[8]), .QN(
        n82) );
  DFFX1 \data_min_1st_reg[13]  ( .D(n493), .CK(clk), .Q(data_min_1st[13]), 
        .QN(n104) );
  DFFX1 \data_min_1st_reg[12]  ( .D(n494), .CK(clk), .Q(data_min_1st[12]), 
        .QN(n105) );
  DFFX1 \data_min_1st_reg[11]  ( .D(n495), .CK(clk), .Q(data_min_1st[11]), 
        .QN(n106) );
  DFFX1 \data_min_1st_reg[10]  ( .D(n496), .CK(clk), .Q(data_min_1st[10]), 
        .QN(n107) );
  DFFX1 \data_min_1st_reg[9]  ( .D(n497), .CK(clk), .Q(data_min_1st[9]), .QN(
        n108) );
  DFFX1 \data_min_1st_reg[8]  ( .D(n498), .CK(clk), .Q(data_min_1st[8]), .QN(
        n109) );
  DFFX1 \data_min_2nd_reg[2]  ( .D(n512), .CK(clk), .Q(data_min_2nd[2]), .QN(
        n97) );
  DFFX1 \data_min_2nd_reg[0]  ( .D(n514), .CK(clk), .Q(data_min_2nd[0]), .QN(
        n99) );
  DFFX1 \data_min_2nd_reg[1]  ( .D(n513), .CK(clk), .Q(data_min_2nd[1]), .QN(
        n98) );
  DFFXL \state_reg[1]  ( .D(N29), .CK(clk), .Q(state[1]), .QN(n523) );
  DFFX1 \data_min_2nd_reg[5]  ( .D(n509), .CK(clk), .Q(data_min_2nd[5]), .QN(
        n94) );
  DFFX1 \data_min_2nd_reg[3]  ( .D(n511), .CK(clk), .Q(data_min_2nd[3]), .QN(
        n96) );
  DFFX4 \data_min_1st_reg[7]  ( .D(n499), .CK(clk), .Q(data_min_1st[7]), .QN(
        n138) );
  DFFX2 \data_min_2nd_reg[6]  ( .D(n508), .CK(clk), .Q(data_min_2nd[6]), .QN(
        n93) );
  DFFX2 \data_min_1st_reg[5]  ( .D(n501), .CK(clk), .Q(data_min_1st[5]), .QN(
        n116) );
  DFFX2 \data_min_1st_reg[0]  ( .D(n506), .CK(clk), .Q(data_min_1st[0]), .QN(
        n32) );
  DFFX2 \data_min_1st_reg[1]  ( .D(n505), .CK(clk), .Q(data_min_1st[1]), .QN(
        n50) );
  DFFX2 \data_min_1st_reg[2]  ( .D(n504), .CK(clk), .Q(data_min_1st[2]), .QN(
        n61) );
  DFFX2 \data_min_1st_reg[14]  ( .D(n492), .CK(clk), .Q(data_min_1st[14]), 
        .QN(n103) );
  DFFX1 \cnt_reg[1]  ( .D(n515), .CK(clk), .Q(cnt[1]), .QN(n394) );
  DFFX2 \data_min_1st_reg[6]  ( .D(n500), .CK(clk), .Q(data_min_1st[6]), .QN(
        n127) );
  DFFX2 \data_min_2nd_reg[4]  ( .D(n510), .CK(clk), .Q(data_min_2nd[4]), .QN(
        n95) );
  DFFX2 \data_min_1st_reg[3]  ( .D(n503), .CK(clk), .Q(data_min_1st[3]), .QN(
        n72) );
  DFFX2 \data_min_2nd_reg[7]  ( .D(n507), .CK(clk), .Q(data_min_2nd[7]), .QN(
        n83) );
  DFFX2 \data_min_1st_reg[4]  ( .D(n502), .CK(clk), .Q(data_min_1st[4]), .QN(
        n91) );
  DFFX1 \cnt_reg[2]  ( .D(n516), .CK(clk), .Q(cnt[2]), .QN(n17) );
  DFFX2 \cnt_reg[0]  ( .D(n517), .CK(clk), .Q(cnt[0]), .QN(n395) );
  NAND2XL U3 ( .A(n386), .B(data_4[6]), .Y(n384) );
  NAND2XL U4 ( .A(n445), .B(data_3[6]), .Y(n443) );
  NAND2XL U5 ( .A(n472), .B(data_6[6]), .Y(n470) );
  INVXL U6 ( .A(data_5[6]), .Y(n129) );
  NAND2XL U7 ( .A(n431), .B(data_5[6]), .Y(n429) );
  AOI22XL U8 ( .A0(data_1[6]), .A1(n93), .B0(data_1[4]), .B1(n95), .Y(n400) );
  NAND2XL U9 ( .A(n403), .B(data_1[6]), .Y(n401) );
  AOI22XL U10 ( .A0(n93), .A1(data_2[6]), .B0(n95), .B1(data_2[4]), .Y(n415)
         );
  NAND2XL U11 ( .A(n418), .B(data_2[6]), .Y(n416) );
  NOR2XL U12 ( .A(data_6[7]), .B(n138), .Y(n463) );
  NOR2XL U13 ( .A(data_4[7]), .B(n138), .Y(n310) );
  NOR2XL U14 ( .A(data_3[7]), .B(n138), .Y(n436) );
  INVXL U15 ( .A(data_2[7]), .Y(n139) );
  NOR2XL U16 ( .A(data_2[7]), .B(n138), .Y(n348) );
  INVXL U17 ( .A(data_1[7]), .Y(n137) );
  NOR2XL U18 ( .A(data_1[7]), .B(n138), .Y(n338) );
  INVXL U19 ( .A(data_5[7]), .Y(n140) );
  NOR2XL U20 ( .A(data_5[7]), .B(n138), .Y(n363) );
  NOR3X1 U21 ( .A(cnt[1]), .B(cnt[2]), .C(n395), .Y(n329) );
  NAND2XL U22 ( .A(data_1[5]), .B(n94), .Y(n398) );
  NAND2XL U23 ( .A(n94), .B(data_2[5]), .Y(n413) );
  NAND2XL U24 ( .A(data_5[5]), .B(n94), .Y(n426) );
  OAI21X1 U25 ( .A0(cnt[1]), .A1(cnt[0]), .B0(cnt[2]), .Y(n307) );
  NOR3X1 U26 ( .A(cnt[0]), .B(cnt[1]), .C(n17), .Y(n304) );
  NOR2XL U27 ( .A(data_min_2nd[3]), .B(n71), .Y(n404) );
  NOR2XL U28 ( .A(n73), .B(data_min_2nd[3]), .Y(n419) );
  NOR2XL U29 ( .A(data_min_2nd[3]), .B(n74), .Y(n432) );
  NOR2XL U30 ( .A(data_min_2nd[3]), .B(n75), .Y(n473) );
  AOI22XL U31 ( .A0(data_4[6]), .A1(n93), .B0(data_4[4]), .B1(n95), .Y(n383)
         );
  AOI22XL U32 ( .A0(data_3[6]), .A1(n93), .B0(data_3[4]), .B1(n95), .Y(n442)
         );
  INVX3 U33 ( .A(n97), .Y(n389) );
  OAI22X1 U34 ( .A0(n424), .A1(n425), .B0(n83), .B1(data_5[7]), .Y(n362) );
  OAI222XL U35 ( .A0(n295), .A1(n297), .B0(n378), .B1(n307), .C0(n300), .C1(
        n18), .Y(n377) );
  OAI22X1 U36 ( .A0(n396), .A1(n397), .B0(n83), .B1(data_1[7]), .Y(n295) );
  OAI22X1 U37 ( .A0(n465), .A1(n466), .B0(n83), .B1(data_6[7]), .Y(n378) );
  OAI22X1 U38 ( .A0(n379), .A1(n380), .B0(n83), .B1(data_4[7]), .Y(n300) );
  OAI22X1 U39 ( .A0(n438), .A1(n439), .B0(n83), .B1(data_3[7]), .Y(n423) );
  OAI22X1 U40 ( .A0(n411), .A1(n412), .B0(n83), .B1(data_2[7]), .Y(n347) );
  OAI211XL U41 ( .A0(n298), .A1(n299), .B0(n300), .C0(n301), .Y(n249) );
  OAI211XL U42 ( .A0(n327), .A1(n328), .B0(n423), .C0(n326), .Y(n250) );
  OAI211XL U43 ( .A0(n308), .A1(n309), .B0(n378), .C0(n462), .Y(n251) );
  INVXL U44 ( .A(n307), .Y(n462) );
  OAI211XL U45 ( .A0(n305), .A1(n306), .B0(n362), .C0(n304), .Y(n252) );
  INVXL U46 ( .A(n362), .Y(n408) );
  OAI211XL U47 ( .A0(n330), .A1(n331), .B0(n347), .C0(n329), .Y(n346) );
  OAI211XL U48 ( .A0(n293), .A1(n294), .B0(n295), .C0(n296), .Y(n292) );
  NOR3XL U49 ( .A(n307), .B(n308), .C(n309), .Y(n258) );
  AOI32XL U50 ( .A0(n440), .A1(data_min_2nd[4]), .A2(n102), .B0(
        data_min_2nd[5]), .B1(n120), .Y(n445) );
  AOI32XL U51 ( .A0(n381), .A1(data_min_2nd[4]), .A2(n89), .B0(data_min_2nd[5]), .B1(n114), .Y(n386) );
  AOI32XL U52 ( .A0(n467), .A1(data_min_2nd[4]), .A2(n101), .B0(
        data_min_2nd[5]), .B1(n119), .Y(n472) );
  AOI32XL U53 ( .A0(n413), .A1(data_min_2nd[4]), .A2(n92), .B0(data_min_2nd[5]), .B1(n117), .Y(n418) );
  AOI32XL U54 ( .A0(n398), .A1(data_min_2nd[4]), .A2(n90), .B0(data_min_2nd[5]), .B1(n115), .Y(n403) );
  AOI211XL U55 ( .A0(n38), .A1(data_min_2nd[1]), .B0(n391), .C0(n435), .Y(n434) );
  AOI211XL U56 ( .A0(n42), .A1(data_min_2nd[1]), .B0(n391), .C0(n449), .Y(n448) );
  AOI211XL U57 ( .A0(n28), .A1(data_min_2nd[1]), .B0(n391), .C0(n392), .Y(n390) );
  AOI211XL U58 ( .A0(n40), .A1(data_min_2nd[1]), .B0(n391), .C0(n476), .Y(n475) );
  AOI2BB2XL U59 ( .B0(data_6[6]), .B1(n93), .A0N(n101), .A1N(data_min_2nd[4]), 
        .Y(n469) );
  AOI211XL U60 ( .A0(n34), .A1(data_min_2nd[1]), .B0(n391), .C0(n422), .Y(n421) );
  AOI211XL U61 ( .A0(n30), .A1(data_min_2nd[1]), .B0(n391), .C0(n407), .Y(n406) );
  AOI2BB2XL U62 ( .B0(n118), .B1(data_min_1st[5]), .A0N(data_5[4]), .A1N(n91), 
        .Y(n367) );
  AOI2BB2XL U63 ( .B0(n120), .B1(data_min_1st[5]), .A0N(data_3[4]), .A1N(n91), 
        .Y(n452) );
  AOI2BB2XL U64 ( .B0(n117), .B1(data_min_1st[5]), .A0N(data_2[4]), .A1N(n91), 
        .Y(n352) );
  AOI2BB2XL U65 ( .B0(n119), .B1(data_min_1st[5]), .A0N(data_6[4]), .A1N(n91), 
        .Y(n479) );
  AOI2BB2XL U66 ( .B0(n114), .B1(data_min_1st[5]), .A0N(data_4[4]), .A1N(n91), 
        .Y(n314) );
  AOI2BB2XL U67 ( .B0(n115), .B1(data_min_1st[5]), .A0N(data_1[4]), .A1N(n91), 
        .Y(n336) );
  CLKBUFX3 U68 ( .A(n37), .Y(n12) );
  OA21XL U69 ( .A0(n245), .A1(n244), .B0(n183), .Y(n37) );
  CLKBUFX3 U70 ( .A(n150), .Y(n2) );
  OA21XL U71 ( .A0(n243), .A1(n244), .B0(n183), .Y(n150) );
  OR2X4 U72 ( .A(n249), .B(n244), .Y(n29) );
  OR2X4 U73 ( .A(n252), .B(n244), .Y(n39) );
  OR2X4 U74 ( .A(n250), .B(n244), .Y(n43) );
  OR2X4 U75 ( .A(n251), .B(n244), .Y(n41) );
  CLKBUFX3 U76 ( .A(n36), .Y(n1) );
  CLKBUFX3 U77 ( .A(n33), .Y(n10) );
  OAI21XL U78 ( .A0(n302), .A1(n303), .B0(n13), .Y(n33) );
  CLKBUFX3 U79 ( .A(n151), .Y(n4) );
  NAND2X1 U80 ( .A(n255), .B(n13), .Y(n151) );
  CLKBUFX3 U81 ( .A(n153), .Y(n6) );
  NAND2X1 U82 ( .A(n259), .B(n13), .Y(n153) );
  CLKBUFX3 U83 ( .A(n149), .Y(n7) );
  NAND2X1 U84 ( .A(n262), .B(n13), .Y(n149) );
  CLKBUFX3 U85 ( .A(n35), .Y(n11) );
  NAND2X1 U86 ( .A(n248), .B(n13), .Y(n35) );
  CLKBUFX3 U87 ( .A(n31), .Y(n9) );
  NAND2X1 U88 ( .A(n247), .B(n13), .Y(n31) );
  CLKBUFX3 U89 ( .A(n148), .Y(n8) );
  NAND2X1 U90 ( .A(n263), .B(n13), .Y(n148) );
  CLKBUFX3 U91 ( .A(n152), .Y(n3) );
  NAND2X1 U92 ( .A(n253), .B(n13), .Y(n152) );
  CLKBUFX3 U93 ( .A(n147), .Y(n5) );
  NAND2X1 U94 ( .A(n258), .B(n13), .Y(n147) );
  CLKBUFX3 U95 ( .A(n254), .Y(n13) );
  NOR2X1 U96 ( .A(n523), .B(state[0]), .Y(n254) );
  AND2X1 U97 ( .A(state[0]), .B(state[1]), .Y(sorting_finish) );
  MXI2X1 U98 ( .A(n14), .B(n15), .S0(cnt[0]), .Y(n517) );
  OAI221XL U99 ( .A0(n16), .A1(n17), .B0(n14), .B1(n18), .C0(n19), .Y(n516) );
  MXI2X1 U100 ( .A(n20), .B(n16), .S0(cnt[1]), .Y(n515) );
  OA21XL U101 ( .A0(cnt[0]), .A1(n14), .B0(n15), .Y(n16) );
  NAND3BX1 U102 ( .AN(n21), .B(n14), .C(n22), .Y(n15) );
  NAND2X1 U103 ( .A(cnt[0]), .B(n23), .Y(n20) );
  OR4X1 U104 ( .A(n24), .B(n25), .C(n26), .D(n27), .Y(n514) );
  OAI22XL U105 ( .A0(n28), .A1(n29), .B0(n30), .B1(n9), .Y(n27) );
  OAI221XL U106 ( .A0(n32), .A1(n10), .B0(n34), .B1(n11), .C0(n1), .Y(n26) );
  OAI22XL U107 ( .A0(n99), .A1(n12), .B0(n38), .B1(n39), .Y(n25) );
  OAI22XL U108 ( .A0(n40), .A1(n41), .B0(n42), .B1(n43), .Y(n24) );
  OR4X1 U109 ( .A(n44), .B(n45), .C(n46), .D(n47), .Y(n513) );
  OAI22XL U110 ( .A0(n48), .A1(n29), .B0(n49), .B1(n9), .Y(n47) );
  OAI221XL U111 ( .A0(n50), .A1(n10), .B0(n51), .B1(n11), .C0(n1), .Y(n46) );
  OAI22XL U112 ( .A0(n98), .A1(n12), .B0(n52), .B1(n39), .Y(n45) );
  OAI22XL U113 ( .A0(n53), .A1(n41), .B0(n54), .B1(n43), .Y(n44) );
  OR4X1 U114 ( .A(n55), .B(n56), .C(n57), .D(n58), .Y(n512) );
  OAI22XL U115 ( .A0(n59), .A1(n29), .B0(n60), .B1(n9), .Y(n58) );
  OAI221XL U116 ( .A0(n61), .A1(n10), .B0(n62), .B1(n11), .C0(n1), .Y(n57) );
  OAI22XL U117 ( .A0(n97), .A1(n12), .B0(n63), .B1(n39), .Y(n56) );
  OAI22XL U118 ( .A0(n64), .A1(n41), .B0(n65), .B1(n43), .Y(n55) );
  OR4X1 U119 ( .A(n66), .B(n67), .C(n68), .D(n69), .Y(n511) );
  OAI22XL U120 ( .A0(n70), .A1(n29), .B0(n71), .B1(n9), .Y(n69) );
  OAI221XL U121 ( .A0(n72), .A1(n10), .B0(n73), .B1(n11), .C0(n1), .Y(n68) );
  OAI22XL U122 ( .A0(n96), .A1(n12), .B0(n74), .B1(n39), .Y(n67) );
  OAI22XL U123 ( .A0(n75), .A1(n41), .B0(n84), .B1(n43), .Y(n66) );
  OR4X1 U124 ( .A(n85), .B(n86), .C(n87), .D(n88), .Y(n510) );
  OAI22XL U125 ( .A0(n89), .A1(n29), .B0(n90), .B1(n9), .Y(n88) );
  OAI221XL U126 ( .A0(n91), .A1(n10), .B0(n92), .B1(n11), .C0(n1), .Y(n87) );
  OAI22XL U127 ( .A0(n95), .A1(n12), .B0(n100), .B1(n39), .Y(n86) );
  OAI22XL U128 ( .A0(n101), .A1(n41), .B0(n102), .B1(n43), .Y(n85) );
  OR4X1 U129 ( .A(n110), .B(n111), .C(n112), .D(n113), .Y(n509) );
  OAI22XL U130 ( .A0(n114), .A1(n29), .B0(n115), .B1(n9), .Y(n113) );
  OAI221XL U131 ( .A0(n116), .A1(n10), .B0(n117), .B1(n11), .C0(n1), .Y(n112)
         );
  OAI22XL U132 ( .A0(n94), .A1(n12), .B0(n118), .B1(n39), .Y(n111) );
  OAI22XL U133 ( .A0(n119), .A1(n41), .B0(n120), .B1(n43), .Y(n110) );
  OR4X1 U134 ( .A(n121), .B(n122), .C(n123), .D(n124), .Y(n508) );
  OAI22XL U135 ( .A0(n125), .A1(n29), .B0(n126), .B1(n9), .Y(n124) );
  OAI221XL U136 ( .A0(n127), .A1(n10), .B0(n128), .B1(n11), .C0(n1), .Y(n123)
         );
  OAI22XL U137 ( .A0(n93), .A1(n12), .B0(n129), .B1(n39), .Y(n122) );
  OAI22XL U138 ( .A0(n130), .A1(n41), .B0(n131), .B1(n43), .Y(n121) );
  OR4X1 U139 ( .A(n132), .B(n133), .C(n134), .D(n135), .Y(n507) );
  OAI22XL U140 ( .A0(n136), .A1(n29), .B0(n137), .B1(n9), .Y(n135) );
  OAI221XL U141 ( .A0(n138), .A1(n10), .B0(n139), .B1(n11), .C0(n1), .Y(n134)
         );
  OAI22XL U142 ( .A0(n83), .A1(n12), .B0(n140), .B1(n39), .Y(n133) );
  OAI22XL U143 ( .A0(n141), .A1(n41), .B0(n142), .B1(n43), .Y(n132) );
  OR4X1 U144 ( .A(n143), .B(n144), .C(n145), .D(n146), .Y(n506) );
  OAI22XL U145 ( .A0(n40), .A1(n5), .B0(n28), .B1(n8), .Y(n146) );
  OAI21XL U146 ( .A0(n38), .A1(n7), .B0(n1), .Y(n145) );
  OAI22XL U147 ( .A0(n2), .A1(n32), .B0(n34), .B1(n4), .Y(n144) );
  OAI22XL U148 ( .A0(n30), .A1(n3), .B0(n42), .B1(n6), .Y(n143) );
  OR4X1 U149 ( .A(n154), .B(n155), .C(n156), .D(n157), .Y(n505) );
  OAI22XL U150 ( .A0(n53), .A1(n5), .B0(n48), .B1(n8), .Y(n157) );
  OAI21XL U151 ( .A0(n52), .A1(n7), .B0(n1), .Y(n156) );
  CLKINVX1 U152 ( .A(data_5[1]), .Y(n52) );
  OAI22XL U153 ( .A0(n2), .A1(n50), .B0(n51), .B1(n4), .Y(n155) );
  OAI22XL U154 ( .A0(n49), .A1(n3), .B0(n54), .B1(n6), .Y(n154) );
  OR4X1 U155 ( .A(n158), .B(n159), .C(n160), .D(n161), .Y(n504) );
  OAI22XL U156 ( .A0(n64), .A1(n5), .B0(n59), .B1(n8), .Y(n161) );
  OAI21XL U157 ( .A0(n63), .A1(n7), .B0(n1), .Y(n160) );
  CLKINVX1 U158 ( .A(data_5[2]), .Y(n63) );
  OAI22XL U159 ( .A0(n2), .A1(n61), .B0(n62), .B1(n4), .Y(n159) );
  OAI22XL U160 ( .A0(n60), .A1(n3), .B0(n65), .B1(n6), .Y(n158) );
  OR4X1 U161 ( .A(n162), .B(n163), .C(n164), .D(n165), .Y(n503) );
  OAI22XL U162 ( .A0(n75), .A1(n5), .B0(n70), .B1(n8), .Y(n165) );
  OAI21XL U163 ( .A0(n74), .A1(n7), .B0(n1), .Y(n164) );
  OAI22XL U164 ( .A0(n2), .A1(n72), .B0(n73), .B1(n4), .Y(n163) );
  OAI22XL U165 ( .A0(n71), .A1(n3), .B0(n84), .B1(n6), .Y(n162) );
  OR4X1 U166 ( .A(n166), .B(n167), .C(n168), .D(n169), .Y(n502) );
  OAI22XL U167 ( .A0(n101), .A1(n5), .B0(n89), .B1(n8), .Y(n169) );
  OAI21XL U168 ( .A0(n100), .A1(n7), .B0(n1), .Y(n168) );
  OAI22XL U169 ( .A0(n2), .A1(n91), .B0(n92), .B1(n4), .Y(n167) );
  OAI22XL U170 ( .A0(n90), .A1(n3), .B0(n102), .B1(n6), .Y(n166) );
  OR4X1 U171 ( .A(n170), .B(n171), .C(n172), .D(n173), .Y(n501) );
  OAI22XL U172 ( .A0(n119), .A1(n5), .B0(n114), .B1(n8), .Y(n173) );
  OAI21XL U173 ( .A0(n118), .A1(n7), .B0(n1), .Y(n172) );
  OAI22XL U174 ( .A0(n2), .A1(n116), .B0(n117), .B1(n4), .Y(n171) );
  OAI22XL U175 ( .A0(n115), .A1(n3), .B0(n120), .B1(n6), .Y(n170) );
  OR4X1 U176 ( .A(n174), .B(n175), .C(n176), .D(n177), .Y(n500) );
  OAI22XL U177 ( .A0(n130), .A1(n5), .B0(n125), .B1(n8), .Y(n177) );
  OAI21XL U178 ( .A0(n129), .A1(n7), .B0(n1), .Y(n176) );
  OAI22XL U179 ( .A0(n2), .A1(n127), .B0(n128), .B1(n4), .Y(n175) );
  OAI22XL U180 ( .A0(n126), .A1(n3), .B0(n131), .B1(n6), .Y(n174) );
  OR4X1 U181 ( .A(n178), .B(n179), .C(n180), .D(n181), .Y(n499) );
  OAI22XL U182 ( .A0(n141), .A1(n5), .B0(n136), .B1(n8), .Y(n181) );
  OAI21XL U183 ( .A0(n140), .A1(n7), .B0(n1), .Y(n180) );
  OAI21XL U184 ( .A0(n182), .A1(n21), .B0(n183), .Y(n36) );
  OAI22XL U185 ( .A0(n2), .A1(n138), .B0(n139), .B1(n4), .Y(n179) );
  OAI22XL U186 ( .A0(n137), .A1(n3), .B0(n142), .B1(n6), .Y(n178) );
  OR3X1 U187 ( .A(n184), .B(n185), .C(n186), .Y(n498) );
  OAI222XL U188 ( .A0(n4), .A1(n187), .B0(n3), .B1(n188), .C0(n109), .C1(n2), 
        .Y(n186) );
  OAI22XL U189 ( .A0(n6), .A1(n189), .B0(n5), .B1(n190), .Y(n185) );
  OAI22XL U190 ( .A0(n8), .A1(n191), .B0(n7), .B1(n192), .Y(n184) );
  OR3X1 U191 ( .A(n193), .B(n194), .C(n195), .Y(n497) );
  OAI222XL U192 ( .A0(n4), .A1(n196), .B0(n3), .B1(n197), .C0(n108), .C1(n2), 
        .Y(n195) );
  OAI22XL U193 ( .A0(n6), .A1(n198), .B0(n5), .B1(n199), .Y(n194) );
  OAI22XL U194 ( .A0(n8), .A1(n200), .B0(n7), .B1(n201), .Y(n193) );
  OR3X1 U195 ( .A(n202), .B(n203), .C(n204), .Y(n496) );
  OAI222XL U196 ( .A0(n4), .A1(n205), .B0(n3), .B1(n206), .C0(n107), .C1(n2), 
        .Y(n204) );
  OAI22XL U197 ( .A0(n6), .A1(n207), .B0(n5), .B1(n208), .Y(n203) );
  OAI22XL U198 ( .A0(n8), .A1(n209), .B0(n7), .B1(n210), .Y(n202) );
  OR3X1 U199 ( .A(n211), .B(n212), .C(n213), .Y(n495) );
  OAI222XL U200 ( .A0(n4), .A1(n214), .B0(n3), .B1(n215), .C0(n106), .C1(n2), 
        .Y(n213) );
  OAI22XL U201 ( .A0(n6), .A1(n216), .B0(n5), .B1(n217), .Y(n212) );
  OAI22XL U202 ( .A0(n8), .A1(n218), .B0(n7), .B1(n219), .Y(n211) );
  OR3X1 U203 ( .A(n220), .B(n221), .C(n222), .Y(n494) );
  OAI222XL U204 ( .A0(n4), .A1(n223), .B0(n3), .B1(n224), .C0(n105), .C1(n2), 
        .Y(n222) );
  OAI22XL U205 ( .A0(n6), .A1(n225), .B0(n5), .B1(n226), .Y(n221) );
  OAI22XL U206 ( .A0(n8), .A1(n227), .B0(n7), .B1(n228), .Y(n220) );
  OR3X1 U207 ( .A(n229), .B(n230), .C(n231), .Y(n493) );
  OAI222XL U208 ( .A0(n4), .A1(n232), .B0(n3), .B1(n233), .C0(n104), .C1(n2), 
        .Y(n231) );
  OAI22XL U209 ( .A0(n6), .A1(n234), .B0(n5), .B1(n235), .Y(n230) );
  OAI22XL U210 ( .A0(n8), .A1(n236), .B0(n7), .B1(n237), .Y(n229) );
  OR3X1 U211 ( .A(n238), .B(n239), .C(n240), .Y(n492) );
  OAI222XL U212 ( .A0(n4), .A1(n241), .B0(n3), .B1(n242), .C0(n103), .C1(n2), 
        .Y(n240) );
  NOR4BX1 U213 ( .AN(n245), .B(n246), .C(n247), .D(n248), .Y(n243) );
  NAND4X1 U214 ( .A(n249), .B(n250), .C(n251), .D(n252), .Y(n246) );
  OAI22XL U215 ( .A0(n6), .A1(n256), .B0(n5), .B1(n257), .Y(n239) );
  OAI22XL U216 ( .A0(n8), .A1(n260), .B0(n7), .B1(n261), .Y(n238) );
  OR4X1 U217 ( .A(n264), .B(n265), .C(n266), .D(n267), .Y(n491) );
  OAI22XL U218 ( .A0(n29), .A1(n191), .B0(n9), .B1(n188), .Y(n267) );
  CLKINVX1 U219 ( .A(data_1[8]), .Y(n188) );
  CLKINVX1 U220 ( .A(data_4[8]), .Y(n191) );
  OAI22XL U221 ( .A0(n11), .A1(n187), .B0(n109), .B1(n10), .Y(n266) );
  CLKINVX1 U222 ( .A(data_2[8]), .Y(n187) );
  OAI22XL U223 ( .A0(n82), .A1(n12), .B0(n39), .B1(n192), .Y(n265) );
  CLKINVX1 U224 ( .A(data_5[8]), .Y(n192) );
  OAI22XL U225 ( .A0(n41), .A1(n190), .B0(n43), .B1(n189), .Y(n264) );
  CLKINVX1 U226 ( .A(data_3[8]), .Y(n189) );
  CLKINVX1 U227 ( .A(data_6[8]), .Y(n190) );
  OR4X1 U228 ( .A(n268), .B(n269), .C(n270), .D(n271), .Y(n490) );
  OAI22XL U229 ( .A0(n29), .A1(n200), .B0(n9), .B1(n197), .Y(n271) );
  CLKINVX1 U230 ( .A(data_1[9]), .Y(n197) );
  CLKINVX1 U231 ( .A(data_4[9]), .Y(n200) );
  OAI22XL U232 ( .A0(n11), .A1(n196), .B0(n108), .B1(n10), .Y(n270) );
  CLKINVX1 U233 ( .A(data_2[9]), .Y(n196) );
  OAI22XL U234 ( .A0(n81), .A1(n12), .B0(n39), .B1(n201), .Y(n269) );
  CLKINVX1 U235 ( .A(data_5[9]), .Y(n201) );
  OAI22XL U236 ( .A0(n41), .A1(n199), .B0(n43), .B1(n198), .Y(n268) );
  CLKINVX1 U237 ( .A(data_3[9]), .Y(n198) );
  CLKINVX1 U238 ( .A(data_6[9]), .Y(n199) );
  OR4X1 U239 ( .A(n272), .B(n273), .C(n274), .D(n275), .Y(n489) );
  OAI22XL U240 ( .A0(n29), .A1(n209), .B0(n9), .B1(n206), .Y(n275) );
  CLKINVX1 U241 ( .A(data_1[10]), .Y(n206) );
  CLKINVX1 U242 ( .A(data_4[10]), .Y(n209) );
  OAI22XL U243 ( .A0(n11), .A1(n205), .B0(n107), .B1(n10), .Y(n274) );
  CLKINVX1 U244 ( .A(data_2[10]), .Y(n205) );
  OAI22XL U245 ( .A0(n80), .A1(n12), .B0(n39), .B1(n210), .Y(n273) );
  CLKINVX1 U246 ( .A(data_5[10]), .Y(n210) );
  OAI22XL U247 ( .A0(n41), .A1(n208), .B0(n43), .B1(n207), .Y(n272) );
  CLKINVX1 U248 ( .A(data_3[10]), .Y(n207) );
  CLKINVX1 U249 ( .A(data_6[10]), .Y(n208) );
  OR4X1 U250 ( .A(n276), .B(n277), .C(n278), .D(n279), .Y(n488) );
  OAI22XL U251 ( .A0(n29), .A1(n218), .B0(n9), .B1(n215), .Y(n279) );
  CLKINVX1 U252 ( .A(data_1[11]), .Y(n215) );
  CLKINVX1 U253 ( .A(data_4[11]), .Y(n218) );
  OAI22XL U254 ( .A0(n11), .A1(n214), .B0(n106), .B1(n10), .Y(n278) );
  CLKINVX1 U255 ( .A(data_2[11]), .Y(n214) );
  OAI22XL U256 ( .A0(n79), .A1(n12), .B0(n39), .B1(n219), .Y(n277) );
  CLKINVX1 U257 ( .A(data_5[11]), .Y(n219) );
  OAI22XL U258 ( .A0(n41), .A1(n217), .B0(n43), .B1(n216), .Y(n276) );
  CLKINVX1 U259 ( .A(data_3[11]), .Y(n216) );
  CLKINVX1 U260 ( .A(data_6[11]), .Y(n217) );
  OR4X1 U261 ( .A(n280), .B(n281), .C(n282), .D(n283), .Y(n487) );
  OAI22XL U262 ( .A0(n29), .A1(n227), .B0(n9), .B1(n224), .Y(n283) );
  CLKINVX1 U263 ( .A(data_1[12]), .Y(n224) );
  CLKINVX1 U264 ( .A(data_4[12]), .Y(n227) );
  OAI22XL U265 ( .A0(n11), .A1(n223), .B0(n105), .B1(n10), .Y(n282) );
  CLKINVX1 U266 ( .A(data_2[12]), .Y(n223) );
  OAI22XL U267 ( .A0(n78), .A1(n12), .B0(n39), .B1(n228), .Y(n281) );
  CLKINVX1 U268 ( .A(data_5[12]), .Y(n228) );
  OAI22XL U269 ( .A0(n41), .A1(n226), .B0(n43), .B1(n225), .Y(n280) );
  CLKINVX1 U270 ( .A(data_3[12]), .Y(n225) );
  CLKINVX1 U271 ( .A(data_6[12]), .Y(n226) );
  OR4X1 U272 ( .A(n284), .B(n285), .C(n286), .D(n287), .Y(n486) );
  OAI22XL U273 ( .A0(n29), .A1(n236), .B0(n9), .B1(n233), .Y(n287) );
  CLKINVX1 U274 ( .A(data_1[13]), .Y(n233) );
  CLKINVX1 U275 ( .A(data_4[13]), .Y(n236) );
  OAI22XL U276 ( .A0(n11), .A1(n232), .B0(n104), .B1(n10), .Y(n286) );
  CLKINVX1 U277 ( .A(data_2[13]), .Y(n232) );
  OAI22XL U278 ( .A0(n77), .A1(n12), .B0(n39), .B1(n237), .Y(n285) );
  CLKINVX1 U279 ( .A(data_5[13]), .Y(n237) );
  OAI22XL U280 ( .A0(n41), .A1(n235), .B0(n43), .B1(n234), .Y(n284) );
  CLKINVX1 U281 ( .A(data_3[13]), .Y(n234) );
  CLKINVX1 U282 ( .A(data_6[13]), .Y(n235) );
  OR4X1 U283 ( .A(n288), .B(n289), .C(n290), .D(n291), .Y(n485) );
  OAI22XL U284 ( .A0(n29), .A1(n260), .B0(n9), .B1(n242), .Y(n291) );
  CLKINVX1 U285 ( .A(data_1[14]), .Y(n242) );
  CLKINVX1 U286 ( .A(n292), .Y(n247) );
  CLKINVX1 U287 ( .A(n297), .Y(n296) );
  CLKINVX1 U288 ( .A(data_4[14]), .Y(n260) );
  CLKINVX1 U289 ( .A(n18), .Y(n301) );
  OAI22XL U290 ( .A0(n11), .A1(n241), .B0(n103), .B1(n10), .Y(n290) );
  OR3X1 U291 ( .A(n263), .B(n258), .C(n262), .Y(n303) );
  NOR3BXL U292 ( .AN(n304), .B(n305), .C(n306), .Y(n262) );
  NOR3X1 U293 ( .A(n18), .B(n298), .C(n299), .Y(n263) );
  OAI21XL U294 ( .A0(n310), .A1(n311), .B0(n300), .Y(n299) );
  AOI222XL U295 ( .A0(n312), .A1(n313), .B0(data_4[6]), .B1(n127), .C0(
        data_4[7]), .C1(n138), .Y(n311) );
  OAI2BB2XL U296 ( .B0(data_min_1st[5]), .B1(n114), .A0N(n314), .A1N(n315), 
        .Y(n312) );
  OAI222XL U297 ( .A0(data_min_1st[4]), .A1(n89), .B0(data_min_1st[3]), .B1(
        n70), .C0(n316), .C1(n317), .Y(n315) );
  AOI32X1 U298 ( .A0(n318), .A1(n319), .A2(n320), .B0(data_4[0]), .B1(n321), 
        .Y(n316) );
  OAI21XL U299 ( .A0(data_min_1st[0]), .A1(n48), .B0(n322), .Y(n321) );
  NAND2X1 U300 ( .A(data_min_1st[2]), .B(n48), .Y(n320) );
  OAI21XL U301 ( .A0(data_min_1st[1]), .A1(n48), .B0(n59), .Y(n318) );
  CLKINVX1 U302 ( .A(data_4[2]), .Y(n59) );
  CLKINVX1 U303 ( .A(data_4[1]), .Y(n48) );
  NOR4BX1 U304 ( .AN(n313), .B(n103), .C(n323), .D(n324), .Y(n298) );
  OAI211X1 U305 ( .A0(data_4[0]), .A1(n32), .B0(n325), .C0(n314), .Y(n324) );
  CLKINVX1 U306 ( .A(n317), .Y(n325) );
  OAI22XL U307 ( .A0(data_4[3]), .A1(n72), .B0(data_4[2]), .B1(n61), .Y(n317)
         );
  OAI22XL U308 ( .A0(data_4[7]), .A1(n138), .B0(data_4[1]), .B1(n50), .Y(n323)
         );
  NAND2X1 U309 ( .A(data_min_1st[6]), .B(n125), .Y(n313) );
  CLKINVX1 U310 ( .A(data_4[6]), .Y(n125) );
  OR3X1 U311 ( .A(n253), .B(n255), .C(n259), .Y(n302) );
  NOR3BXL U312 ( .AN(n326), .B(n327), .C(n328), .Y(n259) );
  NOR3BXL U313 ( .AN(n329), .B(n330), .C(n331), .Y(n255) );
  NOR3X1 U314 ( .A(n294), .B(n293), .C(n297), .Y(n253) );
  NOR4BX1 U315 ( .AN(n332), .B(n103), .C(n333), .D(n334), .Y(n293) );
  OAI211X1 U316 ( .A0(data_1[0]), .A1(n32), .B0(n335), .C0(n336), .Y(n334) );
  CLKINVX1 U317 ( .A(n337), .Y(n335) );
  OAI22XL U318 ( .A0(data_1[7]), .A1(n138), .B0(data_1[1]), .B1(n50), .Y(n333)
         );
  OAI21XL U319 ( .A0(n338), .A1(n339), .B0(n295), .Y(n294) );
  AOI222XL U320 ( .A0(n340), .A1(n332), .B0(data_1[6]), .B1(n127), .C0(
        data_1[7]), .C1(n138), .Y(n339) );
  NAND2X1 U321 ( .A(data_min_1st[6]), .B(n126), .Y(n332) );
  CLKINVX1 U322 ( .A(data_1[6]), .Y(n126) );
  OAI2BB2XL U323 ( .B0(data_min_1st[5]), .B1(n115), .A0N(n336), .A1N(n341), 
        .Y(n340) );
  OAI222XL U324 ( .A0(data_min_1st[4]), .A1(n90), .B0(data_min_1st[3]), .B1(
        n71), .C0(n342), .C1(n337), .Y(n341) );
  OAI22XL U325 ( .A0(data_1[3]), .A1(n72), .B0(data_1[2]), .B1(n61), .Y(n337)
         );
  AOI32X1 U326 ( .A0(n343), .A1(n319), .A2(n344), .B0(data_1[0]), .B1(n345), 
        .Y(n342) );
  OAI21XL U327 ( .A0(data_min_1st[0]), .A1(n49), .B0(n322), .Y(n345) );
  NAND2X1 U328 ( .A(data_min_1st[2]), .B(n49), .Y(n344) );
  OAI21XL U329 ( .A0(data_min_1st[1]), .A1(n49), .B0(n60), .Y(n343) );
  CLKINVX1 U330 ( .A(data_1[2]), .Y(n60) );
  CLKINVX1 U331 ( .A(data_1[1]), .Y(n49) );
  CLKINVX1 U332 ( .A(data_2[14]), .Y(n241) );
  CLKINVX1 U333 ( .A(n346), .Y(n248) );
  OAI21XL U334 ( .A0(n348), .A1(n349), .B0(n347), .Y(n331) );
  AOI222XL U335 ( .A0(n350), .A1(n351), .B0(data_2[6]), .B1(n127), .C0(
        data_2[7]), .C1(n138), .Y(n349) );
  OAI2BB2XL U336 ( .B0(data_min_1st[5]), .B1(n117), .A0N(n352), .A1N(n353), 
        .Y(n350) );
  OAI222XL U337 ( .A0(data_min_1st[4]), .A1(n92), .B0(data_min_1st[3]), .B1(
        n73), .C0(n354), .C1(n355), .Y(n353) );
  AOI32X1 U338 ( .A0(n356), .A1(n319), .A2(n357), .B0(data_2[0]), .B1(n358), 
        .Y(n354) );
  OAI21XL U339 ( .A0(data_min_1st[0]), .A1(n51), .B0(n322), .Y(n358) );
  NAND2X1 U340 ( .A(data_min_1st[2]), .B(n51), .Y(n357) );
  OAI21XL U341 ( .A0(data_min_1st[1]), .A1(n51), .B0(n62), .Y(n356) );
  CLKINVX1 U342 ( .A(data_2[2]), .Y(n62) );
  CLKINVX1 U343 ( .A(data_2[1]), .Y(n51) );
  NOR4BX1 U344 ( .AN(n351), .B(n103), .C(n359), .D(n360), .Y(n330) );
  OAI211X1 U345 ( .A0(data_2[0]), .A1(n32), .B0(n361), .C0(n352), .Y(n360) );
  CLKINVX1 U346 ( .A(n355), .Y(n361) );
  OAI22XL U347 ( .A0(data_2[3]), .A1(n72), .B0(data_2[2]), .B1(n61), .Y(n355)
         );
  OAI22XL U348 ( .A0(data_2[7]), .A1(n138), .B0(data_2[1]), .B1(n50), .Y(n359)
         );
  NAND2X1 U349 ( .A(data_min_1st[6]), .B(n128), .Y(n351) );
  CLKINVX1 U350 ( .A(data_2[6]), .Y(n128) );
  OAI22XL U351 ( .A0(n76), .A1(n12), .B0(n39), .B1(n261), .Y(n289) );
  CLKINVX1 U352 ( .A(data_5[14]), .Y(n261) );
  OAI21XL U353 ( .A0(n363), .A1(n364), .B0(n362), .Y(n306) );
  AOI222XL U354 ( .A0(n365), .A1(n366), .B0(data_5[6]), .B1(n127), .C0(
        data_5[7]), .C1(n138), .Y(n364) );
  OAI2BB2XL U355 ( .B0(data_min_1st[5]), .B1(n118), .A0N(n367), .A1N(n368), 
        .Y(n365) );
  OAI222XL U356 ( .A0(data_min_1st[4]), .A1(n100), .B0(data_min_1st[3]), .B1(
        n74), .C0(n369), .C1(n370), .Y(n368) );
  AOI222XL U357 ( .A0(data_5[2]), .A1(n61), .B0(data_5[1]), .B1(n371), .C0(
        n372), .C1(data_5[0]), .Y(n369) );
  CLKINVX1 U358 ( .A(n322), .Y(n372) );
  OAI21XL U359 ( .A0(data_min_1st[0]), .A1(n38), .B0(data_min_1st[1]), .Y(n371) );
  NOR4BX1 U360 ( .AN(n366), .B(n103), .C(n373), .D(n374), .Y(n305) );
  OAI211X1 U361 ( .A0(data_5[1]), .A1(n50), .B0(n375), .C0(n367), .Y(n374) );
  CLKINVX1 U362 ( .A(n370), .Y(n375) );
  OAI22XL U363 ( .A0(data_5[3]), .A1(n72), .B0(data_5[2]), .B1(n61), .Y(n370)
         );
  OAI22XL U364 ( .A0(data_5[0]), .A1(n32), .B0(data_5[7]), .B1(n138), .Y(n373)
         );
  NAND2X1 U365 ( .A(data_min_1st[6]), .B(n129), .Y(n366) );
  NAND2X1 U366 ( .A(n182), .B(n22), .Y(n183) );
  NOR2X1 U367 ( .A(n21), .B(n13), .Y(n182) );
  NOR2X1 U368 ( .A(state[1]), .B(state[0]), .Y(n21) );
  NOR2BX1 U369 ( .AN(n376), .B(n377), .Y(n245) );
  NAND3X1 U370 ( .A(cnt[0]), .B(n17), .C(cnt[1]), .Y(n18) );
  NOR2X1 U371 ( .A(data_min_2nd[7]), .B(n136), .Y(n380) );
  CLKINVX1 U372 ( .A(data_4[7]), .Y(n136) );
  AOI32X1 U373 ( .A0(n381), .A1(n382), .A2(n383), .B0(n384), .B1(n385), .Y(
        n379) );
  OAI21XL U374 ( .A0(n386), .A1(data_4[6]), .B0(n93), .Y(n385) );
  CLKINVX1 U375 ( .A(data_4[5]), .Y(n114) );
  CLKINVX1 U376 ( .A(data_4[4]), .Y(n89) );
  OAI22XL U377 ( .A0(n96), .A1(data_4[3]), .B0(n387), .B1(n388), .Y(n382) );
  ACHCINX2 U378 ( .CIN(n389), .A(data_4[2]), .B(n390), .CO(n388) );
  AOI2BB1X1 U379 ( .A0N(n393), .A1N(n28), .B0(data_4[1]), .Y(n392) );
  CLKINVX1 U380 ( .A(data_4[0]), .Y(n28) );
  NOR2X1 U381 ( .A(data_min_2nd[3]), .B(n70), .Y(n387) );
  CLKINVX1 U382 ( .A(data_4[3]), .Y(n70) );
  NAND2X1 U383 ( .A(data_4[5]), .B(n94), .Y(n381) );
  NAND3X1 U384 ( .A(n394), .B(n17), .C(n395), .Y(n297) );
  NOR2X1 U385 ( .A(data_min_2nd[7]), .B(n137), .Y(n397) );
  AOI32X1 U386 ( .A0(n398), .A1(n399), .A2(n400), .B0(n401), .B1(n402), .Y(
        n396) );
  OAI21XL U387 ( .A0(n403), .A1(data_1[6]), .B0(n93), .Y(n402) );
  CLKINVX1 U388 ( .A(data_1[5]), .Y(n115) );
  CLKINVX1 U389 ( .A(data_1[4]), .Y(n90) );
  OAI22XL U390 ( .A0(n96), .A1(data_1[3]), .B0(n404), .B1(n405), .Y(n399) );
  ACHCINX2 U391 ( .CIN(n389), .A(data_1[2]), .B(n406), .CO(n405) );
  AOI2BB1X1 U392 ( .A0N(n393), .A1N(n30), .B0(data_1[1]), .Y(n407) );
  CLKINVX1 U393 ( .A(data_1[0]), .Y(n30) );
  CLKINVX1 U394 ( .A(data_1[3]), .Y(n71) );
  AOI222XL U395 ( .A0(n408), .A1(n304), .B0(n409), .B1(n326), .C0(n410), .C1(
        n329), .Y(n376) );
  CLKINVX1 U396 ( .A(n347), .Y(n410) );
  NOR2X1 U397 ( .A(n139), .B(data_min_2nd[7]), .Y(n412) );
  AOI32X1 U398 ( .A0(n413), .A1(n414), .A2(n415), .B0(n416), .B1(n417), .Y(
        n411) );
  OAI21XL U399 ( .A0(n418), .A1(data_2[6]), .B0(n93), .Y(n417) );
  CLKINVX1 U400 ( .A(data_2[5]), .Y(n117) );
  CLKINVX1 U401 ( .A(data_2[4]), .Y(n92) );
  OAI22XL U402 ( .A0(n96), .A1(data_2[3]), .B0(n419), .B1(n420), .Y(n414) );
  ACHCINX2 U403 ( .CIN(n389), .A(data_2[2]), .B(n421), .CO(n420) );
  AOI2BB1X1 U404 ( .A0N(n393), .A1N(n34), .B0(data_2[1]), .Y(n422) );
  CLKINVX1 U405 ( .A(data_2[0]), .Y(n34) );
  CLKINVX1 U406 ( .A(data_2[3]), .Y(n73) );
  CLKINVX1 U407 ( .A(n423), .Y(n409) );
  NOR2X1 U408 ( .A(data_min_2nd[7]), .B(n140), .Y(n425) );
  AOI32X1 U409 ( .A0(n426), .A1(n427), .A2(n428), .B0(n429), .B1(n430), .Y(
        n424) );
  OAI21XL U410 ( .A0(n431), .A1(data_5[6]), .B0(n93), .Y(n430) );
  AOI32X1 U411 ( .A0(n426), .A1(data_min_2nd[4]), .A2(n100), .B0(
        data_min_2nd[5]), .B1(n118), .Y(n431) );
  CLKINVX1 U412 ( .A(data_5[5]), .Y(n118) );
  CLKINVX1 U413 ( .A(data_5[4]), .Y(n100) );
  AOI22X1 U414 ( .A0(data_5[6]), .A1(n93), .B0(data_5[4]), .B1(n95), .Y(n428)
         );
  OAI22XL U415 ( .A0(n96), .A1(data_5[3]), .B0(n432), .B1(n433), .Y(n427) );
  ACHCINX2 U416 ( .CIN(n389), .A(data_5[2]), .B(n434), .CO(n433) );
  AOI2BB1X1 U417 ( .A0N(n393), .A1N(n38), .B0(data_5[1]), .Y(n435) );
  CLKINVX1 U418 ( .A(data_5[0]), .Y(n38) );
  CLKINVX1 U419 ( .A(data_5[3]), .Y(n74) );
  OAI22XL U420 ( .A0(n41), .A1(n257), .B0(n43), .B1(n256), .Y(n288) );
  CLKINVX1 U421 ( .A(data_3[14]), .Y(n256) );
  NOR3X1 U422 ( .A(cnt[0]), .B(cnt[2]), .C(n394), .Y(n326) );
  OAI21XL U423 ( .A0(n436), .A1(n437), .B0(n423), .Y(n328) );
  NOR2X1 U424 ( .A(data_min_2nd[7]), .B(n142), .Y(n439) );
  CLKINVX1 U425 ( .A(data_3[7]), .Y(n142) );
  AOI32X1 U426 ( .A0(n440), .A1(n441), .A2(n442), .B0(n443), .B1(n444), .Y(
        n438) );
  OAI21XL U427 ( .A0(n445), .A1(data_3[6]), .B0(n93), .Y(n444) );
  OAI22XL U428 ( .A0(n96), .A1(data_3[3]), .B0(n446), .B1(n447), .Y(n441) );
  ACHCINX2 U429 ( .CIN(n389), .A(data_3[2]), .B(n448), .CO(n447) );
  AOI2BB1X1 U430 ( .A0N(n393), .A1N(n42), .B0(data_3[1]), .Y(n449) );
  CLKINVX1 U431 ( .A(data_3[0]), .Y(n42) );
  NOR2X1 U432 ( .A(data_min_2nd[3]), .B(n84), .Y(n446) );
  NAND2X1 U433 ( .A(data_3[5]), .B(n94), .Y(n440) );
  AOI222XL U434 ( .A0(n450), .A1(n451), .B0(data_3[6]), .B1(n127), .C0(
        data_3[7]), .C1(n138), .Y(n437) );
  OAI2BB2XL U435 ( .B0(data_min_1st[5]), .B1(n120), .A0N(n452), .A1N(n453), 
        .Y(n450) );
  OAI222XL U436 ( .A0(data_min_1st[4]), .A1(n102), .B0(data_min_1st[3]), .B1(
        n84), .C0(n454), .C1(n455), .Y(n453) );
  AOI32X1 U437 ( .A0(n456), .A1(n319), .A2(n457), .B0(data_3[0]), .B1(n458), 
        .Y(n454) );
  OAI21XL U438 ( .A0(data_min_1st[0]), .A1(n54), .B0(n322), .Y(n458) );
  NAND2X1 U439 ( .A(data_min_1st[2]), .B(n54), .Y(n457) );
  OAI21XL U440 ( .A0(data_min_1st[1]), .A1(n54), .B0(n65), .Y(n456) );
  CLKINVX1 U441 ( .A(data_3[2]), .Y(n65) );
  CLKINVX1 U442 ( .A(data_3[1]), .Y(n54) );
  CLKINVX1 U443 ( .A(data_3[3]), .Y(n84) );
  CLKINVX1 U444 ( .A(data_3[4]), .Y(n102) );
  NOR4BX1 U445 ( .AN(n451), .B(n103), .C(n459), .D(n460), .Y(n327) );
  OAI211X1 U446 ( .A0(data_3[0]), .A1(n32), .B0(n461), .C0(n452), .Y(n460) );
  CLKINVX1 U447 ( .A(data_3[5]), .Y(n120) );
  CLKINVX1 U448 ( .A(n455), .Y(n461) );
  OAI22XL U449 ( .A0(data_3[3]), .A1(n72), .B0(data_3[2]), .B1(n61), .Y(n455)
         );
  OAI22XL U450 ( .A0(data_3[7]), .A1(n138), .B0(data_3[1]), .B1(n50), .Y(n459)
         );
  NAND2X1 U451 ( .A(data_min_1st[6]), .B(n131), .Y(n451) );
  CLKINVX1 U452 ( .A(data_3[6]), .Y(n131) );
  CLKINVX1 U453 ( .A(data_6[14]), .Y(n257) );
  CLKINVX1 U454 ( .A(n13), .Y(n244) );
  OAI21XL U455 ( .A0(n463), .A1(n464), .B0(n378), .Y(n309) );
  NOR2X1 U456 ( .A(data_min_2nd[7]), .B(n141), .Y(n466) );
  CLKINVX1 U457 ( .A(data_6[7]), .Y(n141) );
  AOI32X1 U458 ( .A0(n467), .A1(n468), .A2(n469), .B0(n470), .B1(n471), .Y(
        n465) );
  OAI21XL U459 ( .A0(n472), .A1(data_6[6]), .B0(n93), .Y(n471) );
  OAI22XL U460 ( .A0(n96), .A1(data_6[3]), .B0(n473), .B1(n474), .Y(n468) );
  ACHCINX2 U461 ( .CIN(n389), .A(data_6[2]), .B(n475), .CO(n474) );
  AOI2BB1X1 U462 ( .A0N(n393), .A1N(n40), .B0(data_6[1]), .Y(n476) );
  NAND2X1 U463 ( .A(n99), .B(n98), .Y(n393) );
  NOR2X1 U464 ( .A(n98), .B(n99), .Y(n391) );
  CLKINVX1 U465 ( .A(data_6[0]), .Y(n40) );
  NAND2X1 U466 ( .A(data_6[5]), .B(n94), .Y(n467) );
  AOI222XL U467 ( .A0(n477), .A1(n478), .B0(data_6[6]), .B1(n127), .C0(
        data_6[7]), .C1(n138), .Y(n464) );
  OAI2BB2XL U468 ( .B0(data_min_1st[5]), .B1(n119), .A0N(n479), .A1N(n480), 
        .Y(n477) );
  OAI222XL U469 ( .A0(data_min_1st[4]), .A1(n101), .B0(data_min_1st[3]), .B1(
        n75), .C0(n481), .C1(n482), .Y(n480) );
  AOI32X1 U470 ( .A0(n483), .A1(n319), .A2(n484), .B0(data_6[0]), .B1(n518), 
        .Y(n481) );
  OAI21XL U471 ( .A0(data_min_1st[0]), .A1(n53), .B0(n322), .Y(n518) );
  NAND2X1 U472 ( .A(n32), .B(n50), .Y(n322) );
  NAND2X1 U473 ( .A(data_min_1st[2]), .B(n53), .Y(n484) );
  NAND2X1 U474 ( .A(data_min_1st[1]), .B(data_min_1st[2]), .Y(n319) );
  OAI21XL U475 ( .A0(data_min_1st[1]), .A1(n53), .B0(n64), .Y(n483) );
  CLKINVX1 U476 ( .A(data_6[2]), .Y(n64) );
  CLKINVX1 U477 ( .A(data_6[1]), .Y(n53) );
  CLKINVX1 U478 ( .A(data_6[3]), .Y(n75) );
  CLKINVX1 U479 ( .A(data_6[4]), .Y(n101) );
  NOR4BX1 U480 ( .AN(n478), .B(n103), .C(n519), .D(n520), .Y(n308) );
  OAI211X1 U481 ( .A0(data_6[0]), .A1(n32), .B0(n521), .C0(n479), .Y(n520) );
  CLKINVX1 U482 ( .A(data_6[5]), .Y(n119) );
  CLKINVX1 U483 ( .A(n482), .Y(n521) );
  OAI22XL U484 ( .A0(data_6[3]), .A1(n72), .B0(data_6[2]), .B1(n61), .Y(n482)
         );
  OAI22XL U485 ( .A0(data_6[7]), .A1(n138), .B0(data_6[1]), .B1(n50), .Y(n519)
         );
  NAND2X1 U486 ( .A(data_min_1st[6]), .B(n130), .Y(n478) );
  CLKINVX1 U487 ( .A(data_6[6]), .Y(n130) );
  NAND2X1 U488 ( .A(n14), .B(n522), .Y(N29) );
  OAI211X1 U489 ( .A0(state[0]), .A1(sorting_start), .B0(n22), .C0(n523), .Y(
        n522) );
  NOR2X1 U490 ( .A(n395), .B(n19), .Y(N28) );
  NAND3X1 U491 ( .A(n23), .B(n394), .C(cnt[2]), .Y(n19) );
  CLKINVX1 U492 ( .A(n14), .Y(n23) );
  NAND2X1 U493 ( .A(n13), .B(n22), .Y(n14) );
  CLKINVX1 U494 ( .A(reset), .Y(n22) );
  DFFQX1 \state_reg[0]  ( .D(N28), .CK(clk), .Q(state[0]) );
endmodule


module huffman_DW01_inc_0_DW01_inc_8 ( A, SUM );
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


module huffman_DW01_inc_1_DW01_inc_9 ( A, SUM );
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


module huffman_DW01_inc_2_DW01_inc_10 ( A, SUM );
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


module huffman_DW01_inc_3_DW01_inc_11 ( A, SUM );
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


module huffman_DW01_inc_4_DW01_inc_12 ( A, SUM );
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


module huffman_DW01_inc_5_DW01_inc_13 ( A, SUM );
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


module huffman_DW01_add_0 ( A, B, CI, SUM, CO );
  input [7:0] A;
  input [7:0] B;
  output [7:0] SUM;
  input CI;
  output CO;
  wire   n1;
  wire   [7:1] carry;

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
  ADDFXL U1_1 ( .A(A[1]), .B(B[1]), .CI(n1), .CO(carry[2]), .S(SUM[1]) );
  XOR3X1 U1_7 ( .A(A[7]), .B(B[7]), .C(carry[7]), .Y(SUM[7]) );
  AND2X2 U1 ( .A(B[0]), .B(A[0]), .Y(n1) );
  XOR2X1 U2 ( .A(B[0]), .B(A[0]), .Y(SUM[0]) );
endmodule


module huffman ( clk, reset, gray_valid, gray_data, CNT_valid, CNT1, CNT2, 
        CNT3, CNT4, CNT5, CNT6, code_valid, HC1, HC2, HC3, HC4, HC5, HC6, M1, 
        M2, M3, M4, M5, M6 );
  input [7:0] gray_data;
  output [7:0] CNT1;
  output [7:0] CNT2;
  output [7:0] CNT3;
  output [7:0] CNT4;
  output [7:0] CNT5;
  output [7:0] CNT6;
  output [7:0] HC1;
  output [7:0] HC2;
  output [7:0] HC3;
  output [7:0] HC4;
  output [7:0] HC5;
  output [7:0] HC6;
  output [7:0] M1;
  output [7:0] M2;
  output [7:0] M3;
  output [7:0] M4;
  output [7:0] M5;
  output [7:0] M6;
  input clk, reset, gray_valid;
  output CNT_valid, code_valid;
  wire   sorting_finish, N23, N24, N25, N26, N27, N28, N29, N30, N31, N32, N33,
         N34, N35, N36, N37, N38, N39, N40, N41, N42, N43, N44, N45, N46, N47,
         N48, N49, N50, N51, N52, N53, N54, N55, N56, N57, N58, N59, N60, N61,
         N62, N63, N64, N65, N66, N67, N68, N69, N70, N132, N133, N134, N187,
         N188, N189, N190, N191, N192, N193, N194, N493, N494, N495, N496,
         N497, N498, N499, N500, N509, N510, N511, N512, N513, N514, N515,
         N516, N529, N530, N531, N532, N533, N534, N535, N536, N545, N546,
         N547, N548, N549, N550, N551, N552, N565, N566, N567, N568, N569,
         N570, N571, N572, N581, N582, N583, N584, N585, N586, N587, N588,
         N601, N602, N603, N604, N605, N606, N607, N608, N617, N618, N619,
         N620, N621, N622, N623, N624, N637, N638, N639, N640, N641, N642,
         N643, N644, N653, N654, N655, N656, N657, N658, N659, N660, N673,
         N674, N675, N676, N677, N678, N679, N680, N689, N690, N691, N692,
         N693, N694, N695, N696, n35, n36, n37, n38, n39, n40, n41, n42, n43,
         n44, n45, n46, n47, n48, n49, n50, n51, n52, n53, n54, n55, n56, n57,
         n58, n59, n60, n61, n62, n63, n64, n65, n66, n67, n68, n69, n70, n71,
         n72, n73, n74, n75, n76, n77, n78, n79, n80, n81, n82, n91, n92, n93,
         n94, n95, n96, n98, n99, n100, n102, n103, n104, n105, n106, n107,
         n108, n109, n110, n127, n128, n129, n130, n131, n132, n133, n134,
         n135, n136, n137, n138, n139, n140, n141, n142, n143, n144, n145,
         n146, n147, n148, n149, n150, n151, n152, n153, n154, n155, n156,
         n157, n158, n159, n160, n161, n162, n163, n164, n165, n166, n167,
         n168, n169, n170, n171, n172, n173, n174, n175, n176, n177, n178,
         n179, n180, n181, n182, n183, n184, n185, n186, n187, n188, n189,
         n190, n191, n192, n193, n194, n195, n196, n197, n198, n199, n200,
         n201, n202, n203, n204, n205, n206, n207, n208, n209, n210, n211,
         n212, n213, n214, n215, n216, n217, n218, n219, n220, n221, n222,
         n223, n224, n225, n226, n227, n228, n229, n230, n231, n232, n233,
         n234, n235, n236, n237, n238, n239, n240, n241, n242, n243, n244,
         n245, n246, n247, n248, n249, n250, n251, n252, n253, n254, n255,
         n256, n257, n258, n259, n260, n261, n262, n263, n264, n265, n266,
         n267, n268, n269, n270, n271, n272, n273, n274, n275, n276, n277,
         n278, n279, n280, n281, n282, n283, n284, n285, n286, n287, n288,
         n289, n290, n291, n292, n293, n294, n295, n296, n297, n298, n299,
         n300, n301, n302, n303, n304, n305, n306, n307, n308, n309, n310,
         n311, n312, n313, n314, n315, n316, n317, n318, n319, n320, n321,
         n322, n323, n324, n325, n326, n327, n328, n329, n330, n331, n332,
         n333, n334, n335, n336, n337, n338, n339, n340, n341, n342, n343,
         n344, n345, n346, n347, n348, n349, n350, n351, n352, n353, n354,
         n355, n356, n357, n358, n359, n360, n361, n362, n363, n364, n365,
         n366, n367, n368, n369, n370, n371, n372, n373, n374, n375, n376,
         n377, n378, n379, n380, n381, n382, n383, n384, n385, n386, n387,
         n388, n389, n390, n391, n392, n393, n394, n395, n396, n397, n398,
         n399, n400, n401, n402, n403, n404, n405, n406, n407, n408, n409,
         n410, n411, n412, n413, n414, n415, n416, n417, n418, n419, n420,
         n421, n422, n423, n424, n425, n426, n427, n428, n429, n430, n431,
         n432, n433, n434, n435, n436, n437, n438, n439, n440, n441, n442,
         n443, n444, n445, n446, n447, n448, n449, n450, n451, n452, n453,
         n454, n455, n456, n457, n458, n459, n460, n461, n462, n463, n464,
         n465, n466, n467, n468, n469, n470, n471, n472, n473, n474, n475,
         n476, n477, n478, n479, n480, n481, n482, n483, n484, n485, n486,
         n487, n488, n489, n490, n491, n492, n493, n494, n495, n496, n497,
         n498, n499, n500, n501, n502, n503, n504, n505, n506, n507, n508,
         n509, n510, n511, n512, n513, n514, n515, n516, n517, n518, n519,
         n520, n521, n522, n523, n524, n525, n526, n527, n528, n529, n530,
         n531, n532, n533, n534, n535, n536, n537, n538, n539, n540, n541,
         n542, n543, n544, n545, n546, n547, n548, n549, n550, n551, n552,
         n553, n554, n555, n556, n557, n558, n559, n560, n561, n562, n563,
         n564, n565, n566, n567, n568, n569, n570, n571, n572, n573, n576,
         n577, n578, n579, n580, n581, n582, n583, n584, n585, n586, n587,
         n588, n589, n590, n591, n592, n593, n594, n595, n596, n597, n598,
         n599, n600, n601, n602, n603, n604, n605, n606, n607, n608, n609,
         n610, n611, n612, n613, n614, n615, n616, n617, n618, n619, n620,
         n621, n622, n623, n624, n625, n626, n627, n628, n629, n630, n631,
         n632, n633, n634, n635, n636, n637, n638, n639, n640, n641, n642,
         n643, n644, n645, n646, n647, n648, n649, n650, n651, n652, n653,
         n654, n655, n656, n657, n658, n659, n660, n661, n662, n663, n664,
         n665, n666, n667, n668, n669, n670, n671, n672, n673, n674, n675,
         n676, n677, n678, n679, n680, n681, n682, n683, n684, n685, n686,
         n687, n688, n689, n690, n691, n692, n693, n694, n695, n696, n697,
         n698, n699, n700, n701, n702, n703, n704, n705, n706, n707, n708,
         n709, n710, n711, n712, n713, n714, n715, n716, n717, n718, n719,
         n720, n721, n722, n723, n724, n725;
  wire   [2:0] state;
  wire   [14:0] CNT1_reg;
  wire   [14:0] CNT2_reg;
  wire   [14:0] CNT3_reg;
  wire   [14:0] CNT4_reg;
  wire   [14:0] CNT5_reg;
  wire   [14:0] CNT6_reg;
  wire   [14:0] data_min_1st;
  wire   [14:0] data_min_2nd;
  wire   [2:0] cnt;
  wire   [2:0] HC1_cnt;
  wire   [2:0] HC2_cnt;
  wire   [2:0] HC3_cnt;
  wire   [2:0] HC4_cnt;
  wire   [2:0] HC5_cnt;
  wire   [2:0] HC6_cnt;
  wire   SYNOPSYS_UNCONNECTED__0, SYNOPSYS_UNCONNECTED__1;

  DFFQX1 \cnt_reg[2]  ( .D(n568), .CK(clk), .Q(cnt[2]) );
  DFFQX1 \cnt_reg[1]  ( .D(n570), .CK(clk), .Q(cnt[1]) );
  DFFQX1 \cnt_reg[0]  ( .D(n569), .CK(clk), .Q(cnt[0]) );
  DFFQX1 \HC6_cnt_reg[1]  ( .D(n430), .CK(clk), .Q(HC6_cnt[1]) );
  DFFQX1 \HC1_cnt_reg[1]  ( .D(n411), .CK(clk), .Q(HC1_cnt[1]) );
  DFFQX1 \HC2_cnt_reg[1]  ( .D(n392), .CK(clk), .Q(HC2_cnt[1]) );
  DFFQX1 \HC3_cnt_reg[1]  ( .D(n373), .CK(clk), .Q(HC3_cnt[1]) );
  DFFQX1 \HC4_cnt_reg[1]  ( .D(n354), .CK(clk), .Q(HC4_cnt[1]) );
  DFFQX1 \HC5_cnt_reg[1]  ( .D(n335), .CK(clk), .Q(HC5_cnt[1]) );
  DFFQX1 \HC6_cnt_reg[0]  ( .D(n431), .CK(clk), .Q(HC6_cnt[0]) );
  DFFQX1 \HC1_cnt_reg[0]  ( .D(n412), .CK(clk), .Q(HC1_cnt[0]) );
  DFFQX1 \HC2_cnt_reg[0]  ( .D(n393), .CK(clk), .Q(HC2_cnt[0]) );
  DFFQX1 \HC3_cnt_reg[0]  ( .D(n374), .CK(clk), .Q(HC3_cnt[0]) );
  DFFQX1 \HC4_cnt_reg[0]  ( .D(n355), .CK(clk), .Q(HC4_cnt[0]) );
  DFFQX1 \HC5_cnt_reg[0]  ( .D(n336), .CK(clk), .Q(HC5_cnt[0]) );
  DFFQX1 \CNT6_reg_reg[9]  ( .D(n436), .CK(clk), .Q(CNT6_reg[9]) );
  DFFQX1 \CNT5_reg_reg[9]  ( .D(n511), .CK(clk), .Q(CNT5_reg[9]) );
  DFFQX1 \CNT3_reg_reg[9]  ( .D(n481), .CK(clk), .Q(CNT3_reg[9]) );
  DFFQX1 \CNT4_reg_reg[9]  ( .D(n496), .CK(clk), .Q(CNT4_reg[9]) );
  DFFQX1 \CNT6_reg_reg[8]  ( .D(n437), .CK(clk), .Q(CNT6_reg[8]) );
  DFFQX1 \CNT1_reg_reg[9]  ( .D(n451), .CK(clk), .Q(CNT1_reg[9]) );
  DFFQX1 \CNT6_reg_reg[14]  ( .D(n446), .CK(clk), .Q(CNT6_reg[14]) );
  DFFQX1 \CNT5_reg_reg[8]  ( .D(n512), .CK(clk), .Q(CNT5_reg[8]) );
  DFFQX1 \CNT3_reg_reg[8]  ( .D(n482), .CK(clk), .Q(CNT3_reg[8]) );
  DFFQX1 \CNT4_reg_reg[8]  ( .D(n497), .CK(clk), .Q(CNT4_reg[8]) );
  DFFQX1 \CNT2_reg_reg[9]  ( .D(n466), .CK(clk), .Q(CNT2_reg[9]) );
  DFFQX1 \CNT6_reg_reg[13]  ( .D(n432), .CK(clk), .Q(CNT6_reg[13]) );
  DFFQX1 \CNT5_reg_reg[14]  ( .D(n571), .CK(clk), .Q(CNT5_reg[14]) );
  DFFQX1 \CNT3_reg_reg[14]  ( .D(n491), .CK(clk), .Q(CNT3_reg[14]) );
  DFFQX1 \CNT4_reg_reg[14]  ( .D(n506), .CK(clk), .Q(CNT4_reg[14]) );
  DFFX1 \CNT5_reg_reg[12]  ( .D(n508), .CK(clk), .Q(CNT5_reg[12]), .QN(n108)
         );
  DFFX1 \CNT6_reg_reg[12]  ( .D(n433), .CK(clk), .Q(CNT6_reg[12]), .QN(n91) );
  DFFQX1 \CNT2_reg_reg[8]  ( .D(n467), .CK(clk), .Q(CNT2_reg[8]) );
  DFFX1 \CNT3_reg_reg[12]  ( .D(n478), .CK(clk), .Q(CNT3_reg[12]), .QN(n102)
         );
  DFFX1 \CNT4_reg_reg[12]  ( .D(n493), .CK(clk), .Q(CNT4_reg[12]), .QN(n105)
         );
  DFFQX1 \CNT1_reg_reg[8]  ( .D(n452), .CK(clk), .Q(CNT1_reg[8]) );
  DFFX1 \CNT4_reg_reg[11]  ( .D(n494), .CK(clk), .Q(CNT4_reg[11]), .QN(n106)
         );
  DFFQX1 \CNT3_reg_reg[13]  ( .D(n477), .CK(clk), .Q(CNT3_reg[13]) );
  DFFQX1 \CNT4_reg_reg[13]  ( .D(n492), .CK(clk), .Q(CNT4_reg[13]) );
  DFFQX1 \CNT5_reg_reg[13]  ( .D(n507), .CK(clk), .Q(CNT5_reg[13]) );
  DFFX1 \CNT6_reg_reg[11]  ( .D(n434), .CK(clk), .Q(CNT6_reg[11]), .QN(n92) );
  DFFX1 \CNT3_reg_reg[10]  ( .D(n480), .CK(clk), .Q(CNT3_reg[10]), .QN(n104)
         );
  DFFX1 \CNT5_reg_reg[11]  ( .D(n509), .CK(clk), .Q(CNT5_reg[11]), .QN(n109)
         );
  DFFX1 \CNT3_reg_reg[11]  ( .D(n479), .CK(clk), .Q(CNT3_reg[11]), .QN(n103)
         );
  DFFQX1 \CNT1_reg_reg[14]  ( .D(n461), .CK(clk), .Q(CNT1_reg[14]) );
  DFFQX1 \CNT2_reg_reg[14]  ( .D(n476), .CK(clk), .Q(CNT2_reg[14]) );
  DFFX1 \CNT6_reg_reg[10]  ( .D(n435), .CK(clk), .Q(CNT6_reg[10]), .QN(n93) );
  DFFX1 \CNT5_reg_reg[10]  ( .D(n510), .CK(clk), .Q(CNT5_reg[10]), .QN(n110)
         );
  DFFX1 \CNT4_reg_reg[10]  ( .D(n495), .CK(clk), .Q(CNT4_reg[10]), .QN(n107)
         );
  DFFX1 \CNT1_reg_reg[12]  ( .D(n448), .CK(clk), .Q(CNT1_reg[12]), .QN(n94) );
  DFFX1 \CNT2_reg_reg[12]  ( .D(n463), .CK(clk), .Q(CNT2_reg[12]), .QN(n98) );
  DFFQX1 \CNT1_reg_reg[13]  ( .D(n447), .CK(clk), .Q(CNT1_reg[13]) );
  DFFQX1 \CNT2_reg_reg[13]  ( .D(n462), .CK(clk), .Q(CNT2_reg[13]) );
  DFFX1 \CNT1_reg_reg[11]  ( .D(n449), .CK(clk), .Q(CNT1_reg[11]), .QN(n95) );
  DFFX1 \CNT2_reg_reg[11]  ( .D(n464), .CK(clk), .Q(CNT2_reg[11]), .QN(n99) );
  DFFX1 \CNT1_reg_reg[10]  ( .D(n450), .CK(clk), .Q(CNT1_reg[10]), .QN(n96) );
  DFFX1 \CNT2_reg_reg[10]  ( .D(n465), .CK(clk), .Q(CNT2_reg[10]), .QN(n100)
         );
  DFFQX1 \state_reg[1]  ( .D(N133), .CK(clk), .Q(state[1]) );
  DFFQX1 \CNT1_reg_reg[2]  ( .D(n458), .CK(clk), .Q(CNT1_reg[2]) );
  DFFQX1 \CNT6_reg_reg[2]  ( .D(n443), .CK(clk), .Q(CNT6_reg[2]) );
  DFFQX1 \CNT4_reg_reg[2]  ( .D(n503), .CK(clk), .Q(CNT4_reg[2]) );
  DFFQX1 \CNT2_reg_reg[2]  ( .D(n473), .CK(clk), .Q(CNT2_reg[2]) );
  DFFQX1 \CNT1_reg_reg[3]  ( .D(n457), .CK(clk), .Q(CNT1_reg[3]) );
  DFFQX1 \CNT3_reg_reg[2]  ( .D(n488), .CK(clk), .Q(CNT3_reg[2]) );
  DFFQX1 \CNT1_reg_reg[5]  ( .D(n455), .CK(clk), .Q(CNT1_reg[5]) );
  DFFQX1 \CNT1_reg_reg[4]  ( .D(n456), .CK(clk), .Q(CNT1_reg[4]) );
  DFFQX1 \CNT6_reg_reg[3]  ( .D(n442), .CK(clk), .Q(CNT6_reg[3]) );
  DFFQX1 \CNT4_reg_reg[3]  ( .D(n502), .CK(clk), .Q(CNT4_reg[3]) );
  DFFQX1 \CNT2_reg_reg[3]  ( .D(n472), .CK(clk), .Q(CNT2_reg[3]) );
  DFFQX1 \CNT3_reg_reg[3]  ( .D(n487), .CK(clk), .Q(CNT3_reg[3]) );
  DFFQX1 \CNT5_reg_reg[3]  ( .D(n517), .CK(clk), .Q(CNT5_reg[3]) );
  DFFQX1 \CNT6_reg_reg[5]  ( .D(n440), .CK(clk), .Q(CNT6_reg[5]) );
  DFFQX1 \CNT4_reg_reg[5]  ( .D(n500), .CK(clk), .Q(CNT4_reg[5]) );
  DFFQX1 \CNT4_reg_reg[4]  ( .D(n501), .CK(clk), .Q(CNT4_reg[4]) );
  DFFQX1 \CNT2_reg_reg[5]  ( .D(n470), .CK(clk), .Q(CNT2_reg[5]) );
  DFFQX1 \CNT2_reg_reg[4]  ( .D(n471), .CK(clk), .Q(CNT2_reg[4]) );
  DFFQX1 \CNT1_reg_reg[1]  ( .D(n459), .CK(clk), .Q(CNT1_reg[1]) );
  DFFQX1 \CNT3_reg_reg[5]  ( .D(n485), .CK(clk), .Q(CNT3_reg[5]) );
  DFFQX1 \CNT6_reg_reg[4]  ( .D(n441), .CK(clk), .Q(CNT6_reg[4]) );
  DFFQX1 \CNT5_reg_reg[5]  ( .D(n515), .CK(clk), .Q(CNT5_reg[5]) );
  DFFQX1 \CNT3_reg_reg[4]  ( .D(n486), .CK(clk), .Q(CNT3_reg[4]) );
  DFFQX1 \CNT5_reg_reg[4]  ( .D(n516), .CK(clk), .Q(CNT5_reg[4]) );
  DFFQX1 \CNT6_reg_reg[1]  ( .D(n444), .CK(clk), .Q(CNT6_reg[1]) );
  DFFQX1 \CNT4_reg_reg[1]  ( .D(n504), .CK(clk), .Q(CNT4_reg[1]) );
  DFFQX1 \CNT2_reg_reg[1]  ( .D(n474), .CK(clk), .Q(CNT2_reg[1]) );
  DFFQX1 \CNT3_reg_reg[1]  ( .D(n489), .CK(clk), .Q(CNT3_reg[1]) );
  DFFQX1 \CNT1_reg_reg[0]  ( .D(n460), .CK(clk), .Q(CNT1_reg[0]) );
  DFFQX1 \CNT6_reg_reg[0]  ( .D(n445), .CK(clk), .Q(CNT6_reg[0]) );
  DFFQX1 \CNT4_reg_reg[0]  ( .D(n505), .CK(clk), .Q(CNT4_reg[0]) );
  DFFQX1 \CNT2_reg_reg[0]  ( .D(n475), .CK(clk), .Q(CNT2_reg[0]) );
  DFFQX1 \CNT3_reg_reg[0]  ( .D(n490), .CK(clk), .Q(CNT3_reg[0]) );
  DFFQX1 \CNT5_reg_reg[0]  ( .D(n572), .CK(clk), .Q(CNT5_reg[0]) );
  DFFQX1 \CNT5_reg_reg[2]  ( .D(n518), .CK(clk), .Q(CNT5_reg[2]) );
  DFFQX1 \CNT5_reg_reg[1]  ( .D(n519), .CK(clk), .Q(CNT5_reg[1]) );
  DFFX1 \state_reg[2]  ( .D(N134), .CK(clk), .Q(state[2]), .QN(n674) );
  DFFQX1 \CNT5_reg_reg[6]  ( .D(n514), .CK(clk), .Q(CNT5_reg[6]) );
  DFFQX1 \CNT5_reg_reg[7]  ( .D(n513), .CK(clk), .Q(CNT5_reg[7]) );
  DFFQX1 \CNT4_reg_reg[6]  ( .D(n499), .CK(clk), .Q(CNT4_reg[6]) );
  DFFQX1 \CNT3_reg_reg[6]  ( .D(n484), .CK(clk), .Q(CNT3_reg[6]) );
  DFFQX1 \CNT4_reg_reg[7]  ( .D(n498), .CK(clk), .Q(CNT4_reg[7]) );
  DFFQX1 \CNT3_reg_reg[7]  ( .D(n483), .CK(clk), .Q(CNT3_reg[7]) );
  DFFQX1 \CNT2_reg_reg[6]  ( .D(n469), .CK(clk), .Q(CNT2_reg[6]) );
  DFFQX1 \CNT1_reg_reg[6]  ( .D(n454), .CK(clk), .Q(CNT1_reg[6]) );
  DFFQX1 \CNT2_reg_reg[7]  ( .D(n468), .CK(clk), .Q(CNT2_reg[7]) );
  DFFQX1 \CNT1_reg_reg[7]  ( .D(n453), .CK(clk), .Q(CNT1_reg[7]) );
  DFFQX1 \CNT6_reg_reg[6]  ( .D(n439), .CK(clk), .Q(CNT6_reg[6]) );
  DFFQX1 \CNT6_reg_reg[7]  ( .D(n438), .CK(clk), .Q(CNT6_reg[7]) );
  DFFQX2 \HC1_reg[1]  ( .D(n408), .CK(clk), .Q(HC1[1]) );
  DFFQX2 \HC1_reg[0]  ( .D(n409), .CK(clk), .Q(HC1[0]) );
  DFFQX2 \HC1_reg[3]  ( .D(n406), .CK(clk), .Q(HC1[3]) );
  DFFQX2 \HC1_reg[2]  ( .D(n407), .CK(clk), .Q(HC1[2]) );
  DFFQX2 \HC1_reg[5]  ( .D(n404), .CK(clk), .Q(HC1[5]) );
  DFFQX2 \HC1_reg[4]  ( .D(n405), .CK(clk), .Q(HC1[4]) );
  DFFQX2 \HC1_reg[7]  ( .D(n402), .CK(clk), .Q(HC1[7]) );
  DFFQX2 \HC1_reg[6]  ( .D(n403), .CK(clk), .Q(HC1[6]) );
  DFFQX2 \HC2_reg[1]  ( .D(n389), .CK(clk), .Q(HC2[1]) );
  DFFQX2 \HC2_reg[0]  ( .D(n390), .CK(clk), .Q(HC2[0]) );
  DFFQX2 \HC2_reg[3]  ( .D(n387), .CK(clk), .Q(HC2[3]) );
  DFFQX2 \HC2_reg[2]  ( .D(n388), .CK(clk), .Q(HC2[2]) );
  DFFQX2 \HC2_reg[5]  ( .D(n385), .CK(clk), .Q(HC2[5]) );
  DFFQX2 \HC2_reg[4]  ( .D(n386), .CK(clk), .Q(HC2[4]) );
  DFFQX2 \HC2_reg[7]  ( .D(n383), .CK(clk), .Q(HC2[7]) );
  DFFQX2 \HC2_reg[6]  ( .D(n384), .CK(clk), .Q(HC2[6]) );
  DFFQX2 \HC3_reg[0]  ( .D(n371), .CK(clk), .Q(HC3[0]) );
  DFFQX2 \HC5_reg[4]  ( .D(n329), .CK(clk), .Q(HC5[4]) );
  DFFQX2 \HC5_reg[3]  ( .D(n330), .CK(clk), .Q(HC5[3]) );
  DFFQX2 \HC5_reg[2]  ( .D(n331), .CK(clk), .Q(HC5[2]) );
  DFFQX2 \HC5_reg[1]  ( .D(n332), .CK(clk), .Q(HC5[1]) );
  DFFQX2 \HC5_reg[0]  ( .D(n333), .CK(clk), .Q(HC5[0]) );
  DFFQX2 \HC4_reg[7]  ( .D(n345), .CK(clk), .Q(HC4[7]) );
  DFFQX2 \HC4_reg[6]  ( .D(n346), .CK(clk), .Q(HC4[6]) );
  DFFQX2 \HC4_reg[5]  ( .D(n347), .CK(clk), .Q(HC4[5]) );
  DFFQX2 \HC4_reg[4]  ( .D(n348), .CK(clk), .Q(HC4[4]) );
  DFFQX2 \HC4_reg[3]  ( .D(n349), .CK(clk), .Q(HC4[3]) );
  DFFQX2 \HC4_reg[2]  ( .D(n350), .CK(clk), .Q(HC4[2]) );
  DFFQX2 \HC4_reg[1]  ( .D(n351), .CK(clk), .Q(HC4[1]) );
  DFFQX2 \HC4_reg[0]  ( .D(n352), .CK(clk), .Q(HC4[0]) );
  DFFQX2 \HC3_reg[7]  ( .D(n364), .CK(clk), .Q(HC3[7]) );
  DFFQX2 \HC3_reg[6]  ( .D(n365), .CK(clk), .Q(HC3[6]) );
  DFFQX2 \HC3_reg[5]  ( .D(n366), .CK(clk), .Q(HC3[5]) );
  DFFQX2 \HC3_reg[4]  ( .D(n367), .CK(clk), .Q(HC3[4]) );
  DFFQX2 \HC3_reg[3]  ( .D(n368), .CK(clk), .Q(HC3[3]) );
  DFFQX2 \HC3_reg[2]  ( .D(n369), .CK(clk), .Q(HC3[2]) );
  DFFQX2 \HC3_reg[1]  ( .D(n370), .CK(clk), .Q(HC3[1]) );
  NOR3BX2 U509 ( .AN(n300), .B(reset), .C(n666), .Y(n282) );
  AOI2BB2XL U510 ( .B0(n634), .B1(CNT6_reg[7]), .A0N(n593), .A1N(n620), .Y(
        n179) );
  NAND4BXL U511 ( .AN(n194), .B(CNT6_reg[7]), .C(CNT6_reg[5]), .D(CNT6_reg[6]), 
        .Y(n191) );
  AOI2BB2XL U512 ( .B0(n638), .B1(CNT4_reg[7]), .A0N(n620), .A1N(n589), .Y(
        n253) );
  NAND4BXL U513 ( .AN(n267), .B(CNT4_reg[7]), .C(CNT4_reg[5]), .D(CNT4_reg[6]), 
        .Y(n264) );
  AOI2BB2XL U514 ( .B0(n637), .B1(CNT3_reg[7]), .A0N(n620), .A1N(n590), .Y(
        n235) );
  NAND4BXL U515 ( .AN(n249), .B(CNT3_reg[7]), .C(CNT3_reg[5]), .D(CNT3_reg[6]), 
        .Y(n246) );
  NAND4BXL U516 ( .AN(n231), .B(CNT2_reg[7]), .C(CNT2_reg[5]), .D(CNT2_reg[6]), 
        .Y(n228) );
  NAND4BXL U517 ( .AN(n213), .B(CNT1_reg[7]), .C(CNT1_reg[5]), .D(CNT1_reg[6]), 
        .Y(n210) );
  NAND4BXL U518 ( .AN(n313), .B(CNT5_reg[7]), .C(CNT5_reg[5]), .D(CNT5_reg[6]), 
        .Y(n310) );
  NAND2X1 U519 ( .A(n188), .B(n225), .Y(n215) );
  NAND2X1 U520 ( .A(n188), .B(n207), .Y(n197) );
  NAND2X1 U521 ( .A(n188), .B(n189), .Y(n170) );
  OAI21X1 U522 ( .A0(n134), .A1(n615), .B0(n665), .Y(n130) );
  OAI21X1 U523 ( .A0(n141), .A1(n615), .B0(n665), .Y(n137) );
  OAI21X1 U524 ( .A0(n148), .A1(n615), .B0(n665), .Y(n144) );
  OAI21X1 U525 ( .A0(n155), .A1(n615), .B0(n665), .Y(n151) );
  OAI21X1 U526 ( .A0(n162), .A1(n615), .B0(n665), .Y(n158) );
  OAI21X1 U527 ( .A0(n169), .A1(n615), .B0(n665), .Y(n165) );
  NAND3X1 U528 ( .A(n573), .B(n665), .C(sorting_finish), .Y(n129) );
  CLKINVX1 U529 ( .A(N194), .Y(n620) );
  NAND2X1 U530 ( .A(HC6_cnt[2]), .B(n581), .Y(n723) );
  NAND2X1 U531 ( .A(HC5_cnt[2]), .B(n580), .Y(n718) );
  NAND2X1 U532 ( .A(HC4_cnt[2]), .B(n579), .Y(n713) );
  NAND2X1 U533 ( .A(HC3_cnt[2]), .B(n578), .Y(n708) );
  NAND2X1 U534 ( .A(HC2_cnt[2]), .B(n577), .Y(n703) );
  NAND2X1 U535 ( .A(HC1_cnt[2]), .B(n576), .Y(n698) );
  CLKINVX1 U536 ( .A(N187), .Y(n627) );
  XNOR2X1 U537 ( .A(data_min_2nd[12]), .B(n580), .Y(n173) );
  XNOR2X1 U538 ( .A(data_min_2nd[11]), .B(n579), .Y(n174) );
  XNOR2X1 U539 ( .A(data_min_2nd[10]), .B(n578), .Y(n175) );
  XNOR2X1 U540 ( .A(data_min_2nd[13]), .B(n581), .Y(n195) );
  XNOR2X1 U541 ( .A(data_min_2nd[9]), .B(n577), .Y(n176) );
  XNOR2X1 U542 ( .A(data_min_2nd[8]), .B(n576), .Y(n177) );
  INVX3 U549 ( .A(n618), .Y(n615) );
  INVX3 U550 ( .A(n617), .Y(n616) );
  CLKBUFX3 U551 ( .A(n612), .Y(n613) );
  CLKBUFX3 U552 ( .A(n612), .Y(n614) );
  NAND2X1 U553 ( .A(n644), .B(n645), .Y(n719) );
  NAND2X1 U554 ( .A(n648), .B(n649), .Y(n714) );
  NAND2X1 U555 ( .A(n652), .B(n653), .Y(n709) );
  NAND2X1 U556 ( .A(n656), .B(n657), .Y(n704) );
  NAND2X1 U557 ( .A(n660), .B(n661), .Y(n699) );
  NAND2X1 U558 ( .A(n640), .B(n641), .Y(n724) );
  INVX3 U559 ( .A(n215), .Y(n636) );
  INVX3 U560 ( .A(n197), .Y(n635) );
  INVX3 U561 ( .A(n170), .Y(n634) );
  CLKBUFX3 U562 ( .A(n172), .Y(n612) );
  INVX3 U563 ( .A(n251), .Y(n638) );
  INVX3 U564 ( .A(n233), .Y(n637) );
  INVX3 U565 ( .A(n269), .Y(n639) );
  CLKBUFX3 U566 ( .A(n619), .Y(n618) );
  INVX3 U567 ( .A(n128), .Y(n628) );
  INVX3 U568 ( .A(n136), .Y(n629) );
  INVX3 U569 ( .A(n143), .Y(n630) );
  INVX3 U570 ( .A(n150), .Y(n631) );
  INVX3 U571 ( .A(n157), .Y(n632) );
  INVX3 U572 ( .A(n164), .Y(n633) );
  CLKBUFX3 U573 ( .A(n619), .Y(n617) );
  CLKINVX1 U574 ( .A(n716), .Y(n645) );
  CLKINVX1 U575 ( .A(n711), .Y(n649) );
  CLKINVX1 U576 ( .A(n706), .Y(n653) );
  CLKINVX1 U577 ( .A(n701), .Y(n657) );
  CLKINVX1 U578 ( .A(n696), .Y(n661) );
  CLKINVX1 U579 ( .A(n721), .Y(n641) );
  CLKINVX1 U580 ( .A(n717), .Y(n644) );
  CLKINVX1 U581 ( .A(n712), .Y(n648) );
  CLKINVX1 U582 ( .A(n707), .Y(n652) );
  CLKINVX1 U583 ( .A(n702), .Y(n656) );
  CLKINVX1 U584 ( .A(n697), .Y(n660) );
  CLKINVX1 U585 ( .A(n722), .Y(n640) );
  OAI21XL U586 ( .A0(n659), .A1(n577), .B0(n617), .Y(n225) );
  OAI21XL U587 ( .A0(n663), .A1(n576), .B0(n617), .Y(n207) );
  OAI21XL U588 ( .A0(n187), .A1(n581), .B0(n618), .Y(n189) );
  NAND2X1 U589 ( .A(CNT_valid), .B(n665), .Y(n172) );
  NAND2X1 U590 ( .A(n188), .B(n261), .Y(n251) );
  OAI21XL U591 ( .A0(n651), .A1(n579), .B0(n618), .Y(n261) );
  NAND2X1 U592 ( .A(n188), .B(n243), .Y(n233) );
  OAI21XL U593 ( .A0(n655), .A1(n578), .B0(n617), .Y(n243) );
  NAND2X1 U594 ( .A(n188), .B(n307), .Y(n269) );
  OAI21XL U595 ( .A0(n647), .A1(n580), .B0(n617), .Y(n307) );
  NAND2X1 U596 ( .A(n617), .B(n130), .Y(n128) );
  NAND2X1 U597 ( .A(n617), .B(n137), .Y(n136) );
  NAND2X1 U598 ( .A(n617), .B(n144), .Y(n143) );
  NAND2X1 U599 ( .A(n618), .B(n151), .Y(n150) );
  NAND2X1 U600 ( .A(n617), .B(n158), .Y(n157) );
  NAND2X1 U601 ( .A(n617), .B(n165), .Y(n164) );
  CLKINVX1 U602 ( .A(n129), .Y(n619) );
  CLKBUFX3 U603 ( .A(n295), .Y(n584) );
  NAND2X1 U604 ( .A(n285), .B(n297), .Y(n295) );
  NAND4BX1 U605 ( .AN(n284), .B(n289), .C(n668), .D(n667), .Y(n297) );
  AND2X2 U606 ( .A(n282), .B(n584), .Y(n296) );
  AND2X2 U607 ( .A(n282), .B(n583), .Y(n279) );
  AND2X2 U608 ( .A(n282), .B(n588), .Y(n281) );
  CLKBUFX3 U609 ( .A(n280), .Y(n588) );
  OAI21XL U610 ( .A0(n283), .A1(n284), .B0(n285), .Y(n280) );
  CLKBUFX3 U611 ( .A(n290), .Y(n586) );
  OAI21XL U612 ( .A0(n284), .A1(n292), .B0(n285), .Y(n290) );
  AND2X2 U613 ( .A(n282), .B(n586), .Y(n291) );
  AND2X2 U614 ( .A(n282), .B(n585), .Y(n294) );
  AND2X2 U615 ( .A(n282), .B(n587), .Y(n287) );
  CLKBUFX3 U616 ( .A(n293), .Y(n585) );
  OAI21XL U617 ( .A0(n288), .A1(n292), .B0(n285), .Y(n293) );
  CLKBUFX3 U618 ( .A(n286), .Y(n587) );
  OAI21XL U619 ( .A0(n288), .A1(n283), .B0(n285), .Y(n286) );
  CLKBUFX3 U620 ( .A(n127), .Y(n599) );
  NAND2X1 U621 ( .A(n616), .B(n130), .Y(n127) );
  CLKBUFX3 U622 ( .A(n135), .Y(n598) );
  NAND2X1 U623 ( .A(n616), .B(n137), .Y(n135) );
  CLKBUFX3 U624 ( .A(n142), .Y(n597) );
  NAND2X1 U625 ( .A(n616), .B(n144), .Y(n142) );
  CLKBUFX3 U626 ( .A(n149), .Y(n596) );
  NAND2X1 U627 ( .A(n616), .B(n151), .Y(n149) );
  CLKBUFX3 U628 ( .A(n156), .Y(n595) );
  NAND2X1 U629 ( .A(n616), .B(n158), .Y(n156) );
  CLKBUFX3 U630 ( .A(n163), .Y(n594) );
  NAND2X1 U631 ( .A(n616), .B(n165), .Y(n163) );
  OA21XL U632 ( .A0(n601), .A1(n616), .B0(n130), .Y(n133) );
  OA21XL U633 ( .A0(n603), .A1(n616), .B0(n137), .Y(n140) );
  OA21XL U634 ( .A0(n605), .A1(n616), .B0(n144), .Y(n147) );
  OA21XL U635 ( .A0(n607), .A1(n616), .B0(n151), .Y(n154) );
  OA21XL U636 ( .A0(n609), .A1(n616), .B0(n158), .Y(n161) );
  OA21XL U637 ( .A0(n611), .A1(n616), .B0(n165), .Y(n168) );
  CLKBUFX3 U638 ( .A(n250), .Y(n589) );
  NAND2X1 U639 ( .A(n651), .B(n617), .Y(n250) );
  CLKBUFX3 U640 ( .A(n232), .Y(n590) );
  NAND2X1 U641 ( .A(n655), .B(n618), .Y(n232) );
  CLKBUFX3 U642 ( .A(n214), .Y(n591) );
  NAND2X1 U643 ( .A(n659), .B(n617), .Y(n214) );
  CLKBUFX3 U644 ( .A(n196), .Y(n592) );
  NAND2X1 U645 ( .A(n663), .B(n619), .Y(n196) );
  CLKBUFX3 U646 ( .A(n171), .Y(n593) );
  NAND2X1 U647 ( .A(n187), .B(n617), .Y(n171) );
  CLKBUFX3 U648 ( .A(n268), .Y(n582) );
  NAND2X1 U649 ( .A(n647), .B(n617), .Y(n268) );
  NAND2X2 U650 ( .A(n579), .B(n618), .Y(n252) );
  NAND2X2 U651 ( .A(n578), .B(n617), .Y(n234) );
  NAND2X2 U652 ( .A(n581), .B(n618), .Y(n178) );
  NAND2X2 U653 ( .A(n577), .B(n619), .Y(n216) );
  NAND2X2 U654 ( .A(n576), .B(n617), .Y(n198) );
  NAND2X2 U655 ( .A(n580), .B(n617), .Y(n270) );
  OAI21XL U656 ( .A0(n666), .A1(n316), .B0(n664), .Y(N132) );
  NAND3X1 U657 ( .A(n673), .B(n674), .C(n665), .Y(n316) );
  AND3X2 U658 ( .A(n314), .B(n665), .C(n573), .Y(N134) );
  CLKINVX1 U659 ( .A(N193), .Y(n621) );
  NOR2X1 U660 ( .A(n672), .B(n315), .Y(n573) );
  CLKINVX1 U661 ( .A(N192), .Y(n622) );
  CLKINVX1 U662 ( .A(N191), .Y(n623) );
  CLKINVX1 U663 ( .A(N190), .Y(n624) );
  CLKINVX1 U664 ( .A(N189), .Y(n625) );
  CLKINVX1 U665 ( .A(n718), .Y(n646) );
  CLKINVX1 U666 ( .A(n713), .Y(n650) );
  CLKINVX1 U667 ( .A(n708), .Y(n654) );
  CLKINVX1 U668 ( .A(n703), .Y(n658) );
  CLKINVX1 U669 ( .A(n698), .Y(n662) );
  CLKINVX1 U670 ( .A(n723), .Y(n642) );
  CLKINVX1 U671 ( .A(N188), .Y(n626) );
  NAND2X1 U672 ( .A(n601), .B(n580), .Y(n716) );
  NAND2X1 U673 ( .A(n603), .B(n579), .Y(n711) );
  NAND2X1 U674 ( .A(n605), .B(n578), .Y(n706) );
  NAND2X1 U675 ( .A(n607), .B(n577), .Y(n701) );
  NAND2X1 U676 ( .A(n609), .B(n576), .Y(n696) );
  NAND2X1 U677 ( .A(n611), .B(n581), .Y(n721) );
  NAND2X1 U678 ( .A(n600), .B(n580), .Y(n717) );
  NAND2X1 U679 ( .A(n602), .B(n579), .Y(n712) );
  NAND2X1 U680 ( .A(n604), .B(n578), .Y(n707) );
  NAND2X1 U681 ( .A(n606), .B(n577), .Y(n702) );
  NAND2X1 U682 ( .A(n608), .B(n576), .Y(n697) );
  NAND2X1 U683 ( .A(n610), .B(n581), .Y(n722) );
  CLKINVX1 U684 ( .A(n601), .Y(n693) );
  CLKINVX1 U685 ( .A(n603), .Y(n690) );
  CLKINVX1 U686 ( .A(n605), .Y(n687) );
  CLKINVX1 U687 ( .A(n607), .Y(n684) );
  CLKINVX1 U688 ( .A(n609), .Y(n681) );
  CLKINVX1 U689 ( .A(n611), .Y(n678) );
  CLKINVX1 U690 ( .A(n600), .Y(n694) );
  CLKINVX1 U691 ( .A(n602), .Y(n691) );
  CLKINVX1 U692 ( .A(n604), .Y(n688) );
  CLKINVX1 U693 ( .A(n606), .Y(n685) );
  CLKINVX1 U694 ( .A(n608), .Y(n682) );
  CLKINVX1 U695 ( .A(n610), .Y(n679) );
  NAND2X1 U696 ( .A(n600), .B(n601), .Y(n720) );
  NAND2X1 U697 ( .A(n602), .B(n603), .Y(n715) );
  NAND2X1 U698 ( .A(n604), .B(n605), .Y(n710) );
  NAND2X1 U699 ( .A(n606), .B(n607), .Y(n705) );
  NAND2X1 U700 ( .A(n608), .B(n609), .Y(n700) );
  NAND2X1 U701 ( .A(n610), .B(n611), .Y(n725) );
  NOR2BX2 U702 ( .AN(n612), .B(reset), .Y(n188) );
  OAI211X1 U703 ( .A0(n613), .A1(n68), .B0(n216), .C0(n218), .Y(n469) );
  AOI2BB2X1 U704 ( .B0(n636), .B1(CNT2_reg[6]), .A0N(n621), .A1N(n591), .Y(
        n218) );
  OAI211X1 U705 ( .A0(n613), .A1(n76), .B0(n198), .C0(n200), .Y(n454) );
  AOI2BB2X1 U706 ( .B0(n635), .B1(CNT1_reg[6]), .A0N(n621), .A1N(n592), .Y(
        n200) );
  OAI211X1 U707 ( .A0(n613), .A1(n36), .B0(n178), .C0(n180), .Y(n439) );
  AOI2BB2X1 U708 ( .B0(n634), .B1(CNT6_reg[6]), .A0N(n593), .A1N(n621), .Y(
        n180) );
  INVX3 U709 ( .A(reset), .Y(n665) );
  OAI211X1 U710 ( .A0(n613), .A1(n67), .B0(n216), .C0(n217), .Y(n468) );
  AOI2BB2X1 U711 ( .B0(n636), .B1(CNT2_reg[7]), .A0N(n620), .A1N(n591), .Y(
        n217) );
  OAI211X1 U712 ( .A0(n613), .A1(n75), .B0(n198), .C0(n199), .Y(n453) );
  AOI2BB2X1 U713 ( .B0(n635), .B1(CNT1_reg[7]), .A0N(n620), .A1N(n592), .Y(
        n199) );
  OAI211X1 U714 ( .A0(n614), .A1(n35), .B0(n178), .C0(n179), .Y(n438) );
  OAI211X1 U715 ( .A0(n613), .A1(n72), .B0(n216), .C0(n222), .Y(n473) );
  AOI2BB2X1 U716 ( .B0(n636), .B1(CNT2_reg[2]), .A0N(n625), .A1N(n591), .Y(
        n222) );
  OAI211X1 U717 ( .A0(n613), .A1(n80), .B0(n198), .C0(n204), .Y(n458) );
  AOI2BB2X1 U718 ( .B0(n635), .B1(CNT1_reg[2]), .A0N(n625), .A1N(n592), .Y(
        n204) );
  OAI211X1 U719 ( .A0(n613), .A1(n40), .B0(n178), .C0(n184), .Y(n443) );
  AOI2BB2X1 U720 ( .B0(n634), .B1(CNT6_reg[2]), .A0N(n593), .A1N(n625), .Y(
        n184) );
  OAI211X1 U721 ( .A0(n613), .A1(n73), .B0(n216), .C0(n223), .Y(n474) );
  AOI2BB2X1 U722 ( .B0(n636), .B1(CNT2_reg[1]), .A0N(n626), .A1N(n591), .Y(
        n223) );
  OAI211X1 U723 ( .A0(n613), .A1(n81), .B0(n198), .C0(n205), .Y(n459) );
  AOI2BB2X1 U724 ( .B0(n635), .B1(CNT1_reg[1]), .A0N(n626), .A1N(n592), .Y(
        n205) );
  OAI211X1 U725 ( .A0(n614), .A1(n41), .B0(n178), .C0(n185), .Y(n444) );
  AOI2BB2X1 U726 ( .B0(n634), .B1(CNT6_reg[1]), .A0N(n593), .A1N(n626), .Y(
        n185) );
  OAI211X1 U727 ( .A0(n613), .A1(n71), .B0(n216), .C0(n221), .Y(n472) );
  AOI2BB2X1 U728 ( .B0(n636), .B1(CNT2_reg[3]), .A0N(n624), .A1N(n591), .Y(
        n221) );
  OAI211X1 U729 ( .A0(n613), .A1(n70), .B0(n216), .C0(n220), .Y(n471) );
  AOI2BB2X1 U730 ( .B0(n636), .B1(CNT2_reg[4]), .A0N(n623), .A1N(n591), .Y(
        n220) );
  OAI211X1 U731 ( .A0(n614), .A1(n79), .B0(n198), .C0(n203), .Y(n457) );
  AOI2BB2X1 U732 ( .B0(n635), .B1(CNT1_reg[3]), .A0N(n624), .A1N(n592), .Y(
        n203) );
  OAI211X1 U733 ( .A0(n613), .A1(n78), .B0(n198), .C0(n202), .Y(n456) );
  AOI2BB2X1 U734 ( .B0(n635), .B1(CNT1_reg[4]), .A0N(n623), .A1N(n592), .Y(
        n202) );
  OAI211X1 U735 ( .A0(n614), .A1(n39), .B0(n178), .C0(n183), .Y(n442) );
  AOI2BB2X1 U736 ( .B0(n634), .B1(CNT6_reg[3]), .A0N(n593), .A1N(n624), .Y(
        n183) );
  OAI211X1 U737 ( .A0(n613), .A1(n74), .B0(n216), .C0(n224), .Y(n475) );
  AOI2BB2X1 U738 ( .B0(n636), .B1(CNT2_reg[0]), .A0N(n627), .A1N(n591), .Y(
        n224) );
  OAI211X1 U739 ( .A0(n613), .A1(n82), .B0(n198), .C0(n206), .Y(n460) );
  AOI2BB2X1 U740 ( .B0(n635), .B1(CNT1_reg[0]), .A0N(n627), .A1N(n592), .Y(
        n206) );
  OAI211X1 U741 ( .A0(n613), .A1(n42), .B0(n178), .C0(n186), .Y(n445) );
  AOI2BB2X1 U742 ( .B0(n634), .B1(CNT6_reg[0]), .A0N(n593), .A1N(n627), .Y(
        n186) );
  OAI211X1 U743 ( .A0(n613), .A1(n69), .B0(n216), .C0(n219), .Y(n470) );
  AOI2BB2X1 U744 ( .B0(n636), .B1(CNT2_reg[5]), .A0N(n622), .A1N(n591), .Y(
        n219) );
  OAI211X1 U745 ( .A0(n614), .A1(n77), .B0(n198), .C0(n201), .Y(n455) );
  AOI2BB2X1 U746 ( .B0(n635), .B1(CNT1_reg[5]), .A0N(n622), .A1N(n592), .Y(
        n201) );
  OAI211X1 U747 ( .A0(n613), .A1(n38), .B0(n178), .C0(n182), .Y(n441) );
  AOI2BB2X1 U748 ( .B0(n634), .B1(CNT6_reg[4]), .A0N(n593), .A1N(n623), .Y(
        n182) );
  OAI211X1 U749 ( .A0(n614), .A1(n37), .B0(n178), .C0(n181), .Y(n440) );
  AOI2BB2X1 U750 ( .B0(n634), .B1(CNT6_reg[5]), .A0N(n593), .A1N(n622), .Y(
        n181) );
  OAI211X1 U751 ( .A0(n614), .A1(n52), .B0(n252), .C0(n254), .Y(n499) );
  AOI2BB2X1 U752 ( .B0(n638), .B1(CNT4_reg[6]), .A0N(n621), .A1N(n589), .Y(
        n254) );
  OAI211X1 U753 ( .A0(n614), .A1(n60), .B0(n234), .C0(n236), .Y(n484) );
  AOI2BB2X1 U754 ( .B0(n637), .B1(CNT3_reg[6]), .A0N(n621), .A1N(n590), .Y(
        n236) );
  OAI211X1 U755 ( .A0(n614), .A1(n44), .B0(n270), .C0(n272), .Y(n514) );
  AOI2BB2X1 U756 ( .B0(n639), .B1(CNT5_reg[6]), .A0N(n621), .A1N(n582), .Y(
        n272) );
  OAI211X1 U757 ( .A0(n614), .A1(n43), .B0(n270), .C0(n271), .Y(n513) );
  AOI2BB2X1 U758 ( .B0(n639), .B1(CNT5_reg[7]), .A0N(n620), .A1N(n582), .Y(
        n271) );
  OAI211X1 U759 ( .A0(n614), .A1(n51), .B0(n252), .C0(n253), .Y(n498) );
  OAI211X1 U760 ( .A0(n613), .A1(n59), .B0(n234), .C0(n235), .Y(n483) );
  OAI211X1 U761 ( .A0(n612), .A1(n48), .B0(n270), .C0(n276), .Y(n518) );
  AOI2BB2X1 U762 ( .B0(n639), .B1(CNT5_reg[2]), .A0N(n625), .A1N(n582), .Y(
        n276) );
  OAI211X1 U763 ( .A0(n612), .A1(n49), .B0(n270), .C0(n277), .Y(n519) );
  AOI2BB2X1 U764 ( .B0(n639), .B1(CNT5_reg[1]), .A0N(n626), .A1N(n582), .Y(
        n277) );
  OAI211X1 U765 ( .A0(n612), .A1(n56), .B0(n252), .C0(n258), .Y(n503) );
  AOI2BB2X1 U766 ( .B0(n638), .B1(CNT4_reg[2]), .A0N(n625), .A1N(n589), .Y(
        n258) );
  OAI211X1 U767 ( .A0(n614), .A1(n64), .B0(n234), .C0(n240), .Y(n488) );
  AOI2BB2X1 U768 ( .B0(n637), .B1(CNT3_reg[2]), .A0N(n625), .A1N(n590), .Y(
        n240) );
  OAI211X1 U769 ( .A0(n172), .A1(n57), .B0(n252), .C0(n259), .Y(n504) );
  AOI2BB2X1 U770 ( .B0(n638), .B1(CNT4_reg[1]), .A0N(n626), .A1N(n589), .Y(
        n259) );
  OAI211X1 U771 ( .A0(n614), .A1(n65), .B0(n234), .C0(n241), .Y(n489) );
  AOI2BB2X1 U772 ( .B0(n637), .B1(CNT3_reg[1]), .A0N(n626), .A1N(n590), .Y(
        n241) );
  OAI211X1 U773 ( .A0(n614), .A1(n55), .B0(n252), .C0(n257), .Y(n502) );
  AOI2BB2X1 U774 ( .B0(n638), .B1(CNT4_reg[3]), .A0N(n624), .A1N(n589), .Y(
        n257) );
  OAI211X1 U775 ( .A0(n172), .A1(n54), .B0(n252), .C0(n256), .Y(n501) );
  AOI2BB2X1 U776 ( .B0(n638), .B1(CNT4_reg[4]), .A0N(n623), .A1N(n589), .Y(
        n256) );
  OAI211X1 U777 ( .A0(n614), .A1(n63), .B0(n234), .C0(n239), .Y(n487) );
  AOI2BB2X1 U778 ( .B0(n637), .B1(CNT3_reg[3]), .A0N(n624), .A1N(n590), .Y(
        n239) );
  OAI211X1 U779 ( .A0(n614), .A1(n62), .B0(n234), .C0(n238), .Y(n486) );
  AOI2BB2X1 U780 ( .B0(n637), .B1(CNT3_reg[4]), .A0N(n623), .A1N(n590), .Y(
        n238) );
  OAI211X1 U781 ( .A0(n172), .A1(n47), .B0(n270), .C0(n275), .Y(n517) );
  AOI2BB2X1 U782 ( .B0(n639), .B1(CNT5_reg[3]), .A0N(n624), .A1N(n582), .Y(
        n275) );
  OAI211X1 U783 ( .A0(n172), .A1(n46), .B0(n270), .C0(n274), .Y(n516) );
  AOI2BB2X1 U784 ( .B0(n639), .B1(CNT5_reg[4]), .A0N(n623), .A1N(n582), .Y(
        n274) );
  OAI211X1 U785 ( .A0(n172), .A1(n58), .B0(n252), .C0(n260), .Y(n505) );
  AOI2BB2X1 U786 ( .B0(n638), .B1(CNT4_reg[0]), .A0N(n627), .A1N(n589), .Y(
        n260) );
  OAI211X1 U787 ( .A0(n614), .A1(n66), .B0(n234), .C0(n242), .Y(n490) );
  AOI2BB2X1 U788 ( .B0(n637), .B1(CNT3_reg[0]), .A0N(n627), .A1N(n590), .Y(
        n242) );
  OAI211X1 U789 ( .A0(n612), .A1(n50), .B0(n270), .C0(n306), .Y(n572) );
  AOI2BB2X1 U790 ( .B0(n639), .B1(CNT5_reg[0]), .A0N(n627), .A1N(n582), .Y(
        n306) );
  OAI211X1 U791 ( .A0(n614), .A1(n53), .B0(n252), .C0(n255), .Y(n500) );
  AOI2BB2X1 U792 ( .B0(n638), .B1(CNT4_reg[5]), .A0N(n622), .A1N(n589), .Y(
        n255) );
  OAI211X1 U793 ( .A0(n614), .A1(n61), .B0(n234), .C0(n237), .Y(n485) );
  AOI2BB2X1 U794 ( .B0(n637), .B1(CNT3_reg[5]), .A0N(n622), .A1N(n590), .Y(
        n237) );
  OAI211X1 U795 ( .A0(n612), .A1(n45), .B0(n270), .C0(n273), .Y(n515) );
  AOI2BB2X1 U796 ( .B0(n639), .B1(CNT5_reg[5]), .A0N(n622), .A1N(n582), .Y(
        n273) );
  OAI2BB2XL U797 ( .B0(n195), .B1(n591), .A0N(n636), .A1N(CNT2_reg[13]), .Y(
        n462) );
  OAI2BB2XL U798 ( .B0(n195), .B1(n592), .A0N(n635), .A1N(CNT1_reg[13]), .Y(
        n447) );
  OAI2BB2XL U799 ( .B0(n177), .B1(n591), .A0N(n636), .A1N(CNT2_reg[8]), .Y(
        n467) );
  OAI2BB2XL U800 ( .B0(n176), .B1(n592), .A0N(n635), .A1N(CNT1_reg[9]), .Y(
        n451) );
  OAI2BB2XL U801 ( .B0(n177), .B1(n593), .A0N(n634), .A1N(CNT6_reg[8]), .Y(
        n437) );
  OAI2BB2XL U802 ( .B0(n176), .B1(n593), .A0N(n634), .A1N(CNT6_reg[9]), .Y(
        n436) );
  OAI2BB1X1 U803 ( .A0N(n636), .A1N(CNT2_reg[14]), .B0(n591), .Y(n476) );
  OAI2BB1X1 U804 ( .A0N(n635), .A1N(CNT1_reg[14]), .B0(n592), .Y(n461) );
  OAI2BB1X1 U805 ( .A0N(n634), .A1N(CNT6_reg[14]), .B0(n593), .Y(n446) );
  OAI2BB2XL U806 ( .B0(n195), .B1(n582), .A0N(n639), .A1N(CNT5_reg[13]), .Y(
        n507) );
  OAI2BB2XL U807 ( .B0(n195), .B1(n589), .A0N(n638), .A1N(CNT4_reg[13]), .Y(
        n492) );
  OAI2BB2XL U808 ( .B0(n195), .B1(n590), .A0N(n637), .A1N(CNT3_reg[13]), .Y(
        n477) );
  OAI2BB2XL U809 ( .B0(n177), .B1(n589), .A0N(n638), .A1N(CNT4_reg[8]), .Y(
        n497) );
  OAI2BB2XL U810 ( .B0(n176), .B1(n589), .A0N(n638), .A1N(CNT4_reg[9]), .Y(
        n496) );
  OAI2BB2XL U811 ( .B0(n177), .B1(n590), .A0N(n637), .A1N(CNT3_reg[8]), .Y(
        n482) );
  OAI2BB2XL U812 ( .B0(n176), .B1(n590), .A0N(n637), .A1N(CNT3_reg[9]), .Y(
        n481) );
  OAI2BB2XL U813 ( .B0(n176), .B1(n582), .A0N(n639), .A1N(CNT5_reg[9]), .Y(
        n511) );
  OAI2BB2XL U814 ( .B0(n177), .B1(n582), .A0N(n639), .A1N(CNT5_reg[8]), .Y(
        n512) );
  NOR2X1 U815 ( .A(n580), .B(data_min_2nd[12]), .Y(n134) );
  NOR2X1 U816 ( .A(n579), .B(data_min_2nd[11]), .Y(n141) );
  NOR2X1 U817 ( .A(n578), .B(data_min_2nd[10]), .Y(n148) );
  NOR2X1 U818 ( .A(n577), .B(data_min_2nd[9]), .Y(n155) );
  NOR2X1 U819 ( .A(n576), .B(data_min_2nd[8]), .Y(n162) );
  NOR2X1 U820 ( .A(n581), .B(data_min_2nd[13]), .Y(n169) );
  OAI21XL U822 ( .A0(n600), .A1(n615), .B0(n133), .Y(n131) );
  OAI21XL U825 ( .A0(n602), .A1(n615), .B0(n140), .Y(n138) );
  OAI21XL U828 ( .A0(n604), .A1(n615), .B0(n147), .Y(n145) );
  OAI21XL U831 ( .A0(n606), .A1(n615), .B0(n154), .Y(n152) );
  OAI21XL U834 ( .A0(n608), .A1(n615), .B0(n161), .Y(n159) );
  OAI21XL U837 ( .A0(n610), .A1(n615), .B0(n168), .Y(n166) );
  AO22X1 U839 ( .A0(M5[7]), .A1(n599), .B0(N660), .B1(n628), .Y(n318) );
  NOR2X1 U840 ( .A(n720), .B(n695), .Y(N660) );
  AO22X1 U841 ( .A0(M5[6]), .A1(n599), .B0(N659), .B1(n628), .Y(n319) );
  NOR3X1 U842 ( .A(n695), .B(n601), .C(n694), .Y(N659) );
  AO22X1 U843 ( .A0(M5[5]), .A1(n599), .B0(N658), .B1(n628), .Y(n320) );
  NOR3X1 U844 ( .A(n695), .B(n600), .C(n693), .Y(N658) );
  AO22X1 U845 ( .A0(M5[4]), .A1(n599), .B0(N657), .B1(n628), .Y(n321) );
  NOR3X1 U846 ( .A(n695), .B(n600), .C(n601), .Y(N657) );
  AO22X1 U847 ( .A0(M5[3]), .A1(n599), .B0(N656), .B1(n628), .Y(n322) );
  AO22X1 U849 ( .A0(M5[2]), .A1(n599), .B0(N655), .B1(n628), .Y(n323) );
  NOR3X1 U850 ( .A(n694), .B(HC5_cnt[2]), .C(n601), .Y(N655) );
  AO22X1 U851 ( .A0(M5[1]), .A1(n599), .B0(N654), .B1(n628), .Y(n324) );
  NOR3X1 U852 ( .A(n693), .B(HC5_cnt[2]), .C(n600), .Y(N654) );
  AO22X1 U853 ( .A0(M5[0]), .A1(n599), .B0(N653), .B1(n628), .Y(n325) );
  AO22X1 U855 ( .A0(HC5[7]), .A1(n599), .B0(N644), .B1(n628), .Y(n326) );
  NOR2X1 U856 ( .A(n719), .B(n718), .Y(N644) );
  AO22X1 U857 ( .A0(HC5[6]), .A1(n599), .B0(N643), .B1(n628), .Y(n327) );
  NOR3X1 U858 ( .A(n718), .B(n645), .C(n717), .Y(N643) );
  AO22X1 U859 ( .A0(HC5[5]), .A1(n599), .B0(N642), .B1(n628), .Y(n328) );
  NOR3X1 U860 ( .A(n718), .B(n644), .C(n716), .Y(N642) );
  AO22X1 U861 ( .A0(HC5[4]), .A1(n599), .B0(N641), .B1(n628), .Y(n329) );
  NOR3X1 U862 ( .A(n718), .B(n644), .C(n645), .Y(N641) );
  AO22X1 U863 ( .A0(HC5[3]), .A1(n599), .B0(N640), .B1(n628), .Y(n330) );
  NOR2X1 U864 ( .A(n646), .B(n719), .Y(N640) );
  AO22X1 U865 ( .A0(HC5[2]), .A1(n599), .B0(N639), .B1(n628), .Y(n331) );
  NOR3X1 U866 ( .A(n717), .B(n645), .C(n646), .Y(N639) );
  AO22X1 U867 ( .A0(HC5[1]), .A1(n599), .B0(N638), .B1(n628), .Y(n332) );
  NOR3X1 U868 ( .A(n716), .B(n644), .C(n646), .Y(N638) );
  AO22X1 U869 ( .A0(HC5[0]), .A1(n599), .B0(N637), .B1(n628), .Y(n333) );
  AND4X1 U870 ( .A(n717), .B(n716), .C(n718), .D(n580), .Y(N637) );
  AO22X1 U871 ( .A0(M4[7]), .A1(n598), .B0(N624), .B1(n629), .Y(n337) );
  NOR2X1 U872 ( .A(n715), .B(n692), .Y(N624) );
  AO22X1 U873 ( .A0(M4[6]), .A1(n598), .B0(N623), .B1(n629), .Y(n338) );
  NOR3X1 U874 ( .A(n692), .B(n603), .C(n691), .Y(N623) );
  AO22X1 U875 ( .A0(M4[5]), .A1(n598), .B0(N622), .B1(n629), .Y(n339) );
  NOR3X1 U876 ( .A(n692), .B(n602), .C(n690), .Y(N622) );
  AO22X1 U877 ( .A0(M4[4]), .A1(n598), .B0(N621), .B1(n629), .Y(n340) );
  NOR3X1 U878 ( .A(n692), .B(n602), .C(n603), .Y(N621) );
  AO22X1 U879 ( .A0(M4[3]), .A1(n598), .B0(N620), .B1(n629), .Y(n341) );
  AO22X1 U881 ( .A0(M4[2]), .A1(n598), .B0(N619), .B1(n629), .Y(n342) );
  NOR3X1 U882 ( .A(n691), .B(HC4_cnt[2]), .C(n603), .Y(N619) );
  AO22X1 U883 ( .A0(M4[1]), .A1(n598), .B0(N618), .B1(n629), .Y(n343) );
  NOR3X1 U884 ( .A(n690), .B(HC4_cnt[2]), .C(n602), .Y(N618) );
  AO22X1 U885 ( .A0(M4[0]), .A1(n598), .B0(N617), .B1(n629), .Y(n344) );
  AO22X1 U887 ( .A0(HC4[7]), .A1(n598), .B0(N608), .B1(n629), .Y(n345) );
  NOR2X1 U888 ( .A(n714), .B(n713), .Y(N608) );
  AO22X1 U889 ( .A0(HC4[6]), .A1(n598), .B0(N607), .B1(n629), .Y(n346) );
  NOR3X1 U890 ( .A(n713), .B(n649), .C(n712), .Y(N607) );
  AO22X1 U891 ( .A0(HC4[5]), .A1(n598), .B0(N606), .B1(n629), .Y(n347) );
  NOR3X1 U892 ( .A(n713), .B(n648), .C(n711), .Y(N606) );
  AO22X1 U893 ( .A0(HC4[4]), .A1(n598), .B0(N605), .B1(n629), .Y(n348) );
  NOR3X1 U894 ( .A(n713), .B(n648), .C(n649), .Y(N605) );
  AO22X1 U895 ( .A0(HC4[3]), .A1(n598), .B0(N604), .B1(n629), .Y(n349) );
  NOR2X1 U896 ( .A(n650), .B(n714), .Y(N604) );
  AO22X1 U897 ( .A0(HC4[2]), .A1(n598), .B0(N603), .B1(n629), .Y(n350) );
  NOR3X1 U898 ( .A(n712), .B(n649), .C(n650), .Y(N603) );
  AO22X1 U899 ( .A0(HC4[1]), .A1(n598), .B0(N602), .B1(n629), .Y(n351) );
  NOR3X1 U900 ( .A(n711), .B(n648), .C(n650), .Y(N602) );
  AO22X1 U901 ( .A0(HC4[0]), .A1(n598), .B0(N601), .B1(n629), .Y(n352) );
  AND4X1 U902 ( .A(n712), .B(n711), .C(n713), .D(n579), .Y(N601) );
  AO22X1 U903 ( .A0(M3[7]), .A1(n597), .B0(N588), .B1(n630), .Y(n356) );
  NOR2X1 U904 ( .A(n710), .B(n689), .Y(N588) );
  AO22X1 U905 ( .A0(M3[6]), .A1(n597), .B0(N587), .B1(n630), .Y(n357) );
  NOR3X1 U906 ( .A(n689), .B(n605), .C(n688), .Y(N587) );
  AO22X1 U907 ( .A0(M3[5]), .A1(n597), .B0(N586), .B1(n630), .Y(n358) );
  NOR3X1 U908 ( .A(n689), .B(n604), .C(n687), .Y(N586) );
  AO22X1 U909 ( .A0(M3[4]), .A1(n597), .B0(N585), .B1(n630), .Y(n359) );
  NOR3X1 U910 ( .A(n689), .B(n604), .C(n605), .Y(N585) );
  AO22X1 U911 ( .A0(M3[3]), .A1(n597), .B0(N584), .B1(n630), .Y(n360) );
  AO22X1 U913 ( .A0(M3[2]), .A1(n597), .B0(N583), .B1(n630), .Y(n361) );
  NOR3X1 U914 ( .A(n688), .B(HC3_cnt[2]), .C(n605), .Y(N583) );
  AO22X1 U915 ( .A0(M3[1]), .A1(n597), .B0(N582), .B1(n630), .Y(n362) );
  NOR3X1 U916 ( .A(n687), .B(HC3_cnt[2]), .C(n604), .Y(N582) );
  AO22X1 U917 ( .A0(M3[0]), .A1(n597), .B0(N581), .B1(n630), .Y(n363) );
  AO22X1 U919 ( .A0(HC3[7]), .A1(n597), .B0(N572), .B1(n630), .Y(n364) );
  NOR2X1 U920 ( .A(n709), .B(n708), .Y(N572) );
  AO22X1 U921 ( .A0(HC3[6]), .A1(n597), .B0(N571), .B1(n630), .Y(n365) );
  NOR3X1 U922 ( .A(n708), .B(n653), .C(n707), .Y(N571) );
  AO22X1 U923 ( .A0(HC3[5]), .A1(n597), .B0(N570), .B1(n630), .Y(n366) );
  NOR3X1 U924 ( .A(n708), .B(n652), .C(n706), .Y(N570) );
  AO22X1 U925 ( .A0(HC3[4]), .A1(n597), .B0(N569), .B1(n630), .Y(n367) );
  NOR3X1 U926 ( .A(n708), .B(n652), .C(n653), .Y(N569) );
  AO22X1 U927 ( .A0(HC3[3]), .A1(n597), .B0(N568), .B1(n630), .Y(n368) );
  NOR2X1 U928 ( .A(n654), .B(n709), .Y(N568) );
  AO22X1 U929 ( .A0(HC3[2]), .A1(n597), .B0(N567), .B1(n630), .Y(n369) );
  NOR3X1 U930 ( .A(n707), .B(n653), .C(n654), .Y(N567) );
  AO22X1 U931 ( .A0(HC3[1]), .A1(n597), .B0(N566), .B1(n630), .Y(n370) );
  NOR3X1 U932 ( .A(n706), .B(n652), .C(n654), .Y(N566) );
  AO22X1 U933 ( .A0(HC3[0]), .A1(n597), .B0(N565), .B1(n630), .Y(n371) );
  AND4X1 U934 ( .A(n707), .B(n706), .C(n708), .D(n578), .Y(N565) );
  AO22X1 U935 ( .A0(M2[7]), .A1(n596), .B0(N552), .B1(n631), .Y(n375) );
  NOR2X1 U936 ( .A(n705), .B(n686), .Y(N552) );
  AO22X1 U937 ( .A0(M2[6]), .A1(n596), .B0(N551), .B1(n631), .Y(n376) );
  NOR3X1 U938 ( .A(n686), .B(n607), .C(n685), .Y(N551) );
  AO22X1 U939 ( .A0(M2[5]), .A1(n596), .B0(N550), .B1(n631), .Y(n377) );
  NOR3X1 U940 ( .A(n686), .B(n606), .C(n684), .Y(N550) );
  AO22X1 U941 ( .A0(M2[4]), .A1(n596), .B0(N549), .B1(n631), .Y(n378) );
  NOR3X1 U942 ( .A(n686), .B(n606), .C(n607), .Y(N549) );
  AO22X1 U943 ( .A0(M2[3]), .A1(n596), .B0(N548), .B1(n631), .Y(n379) );
  AO22X1 U945 ( .A0(M2[2]), .A1(n596), .B0(N547), .B1(n631), .Y(n380) );
  NOR3X1 U946 ( .A(n685), .B(HC2_cnt[2]), .C(n607), .Y(N547) );
  AO22X1 U947 ( .A0(M2[1]), .A1(n596), .B0(N546), .B1(n631), .Y(n381) );
  NOR3X1 U948 ( .A(n684), .B(HC2_cnt[2]), .C(n606), .Y(N546) );
  AO22X1 U949 ( .A0(M2[0]), .A1(n596), .B0(N545), .B1(n631), .Y(n382) );
  AO22X1 U951 ( .A0(HC2[7]), .A1(n596), .B0(N536), .B1(n631), .Y(n383) );
  NOR2X1 U952 ( .A(n704), .B(n703), .Y(N536) );
  AO22X1 U953 ( .A0(HC2[6]), .A1(n596), .B0(N535), .B1(n631), .Y(n384) );
  NOR3X1 U954 ( .A(n703), .B(n657), .C(n702), .Y(N535) );
  AO22X1 U955 ( .A0(HC2[5]), .A1(n596), .B0(N534), .B1(n631), .Y(n385) );
  NOR3X1 U956 ( .A(n703), .B(n656), .C(n701), .Y(N534) );
  AO22X1 U957 ( .A0(HC2[4]), .A1(n596), .B0(N533), .B1(n631), .Y(n386) );
  NOR3X1 U958 ( .A(n703), .B(n656), .C(n657), .Y(N533) );
  AO22X1 U959 ( .A0(HC2[3]), .A1(n596), .B0(N532), .B1(n631), .Y(n387) );
  NOR2X1 U960 ( .A(n658), .B(n704), .Y(N532) );
  AO22X1 U961 ( .A0(HC2[2]), .A1(n596), .B0(N531), .B1(n631), .Y(n388) );
  NOR3X1 U962 ( .A(n702), .B(n657), .C(n658), .Y(N531) );
  AO22X1 U963 ( .A0(HC2[1]), .A1(n596), .B0(N530), .B1(n631), .Y(n389) );
  NOR3X1 U964 ( .A(n701), .B(n656), .C(n658), .Y(N530) );
  AO22X1 U965 ( .A0(HC2[0]), .A1(n596), .B0(N529), .B1(n631), .Y(n390) );
  AND4X1 U966 ( .A(n702), .B(n701), .C(n703), .D(n577), .Y(N529) );
  AO22X1 U967 ( .A0(M1[7]), .A1(n595), .B0(N516), .B1(n632), .Y(n394) );
  NOR2X1 U968 ( .A(n700), .B(n683), .Y(N516) );
  AO22X1 U969 ( .A0(M1[6]), .A1(n595), .B0(N515), .B1(n632), .Y(n395) );
  NOR3X1 U970 ( .A(n683), .B(n609), .C(n682), .Y(N515) );
  AO22X1 U971 ( .A0(M1[5]), .A1(n595), .B0(N514), .B1(n632), .Y(n396) );
  NOR3X1 U972 ( .A(n683), .B(n608), .C(n681), .Y(N514) );
  AO22X1 U973 ( .A0(M1[4]), .A1(n595), .B0(N513), .B1(n632), .Y(n397) );
  NOR3X1 U974 ( .A(n683), .B(n608), .C(n609), .Y(N513) );
  AO22X1 U975 ( .A0(M1[3]), .A1(n595), .B0(N512), .B1(n632), .Y(n398) );
  AO22X1 U977 ( .A0(M1[2]), .A1(n595), .B0(N511), .B1(n632), .Y(n399) );
  NOR3X1 U978 ( .A(n682), .B(HC1_cnt[2]), .C(n609), .Y(N511) );
  AO22X1 U979 ( .A0(M1[1]), .A1(n595), .B0(N510), .B1(n632), .Y(n400) );
  NOR3X1 U980 ( .A(n681), .B(HC1_cnt[2]), .C(n608), .Y(N510) );
  AO22X1 U981 ( .A0(M1[0]), .A1(n595), .B0(N509), .B1(n632), .Y(n401) );
  AO22X1 U983 ( .A0(HC1[7]), .A1(n595), .B0(N500), .B1(n632), .Y(n402) );
  NOR2X1 U984 ( .A(n699), .B(n698), .Y(N500) );
  AO22X1 U985 ( .A0(HC1[6]), .A1(n595), .B0(N499), .B1(n632), .Y(n403) );
  NOR3X1 U986 ( .A(n698), .B(n661), .C(n697), .Y(N499) );
  AO22X1 U987 ( .A0(HC1[5]), .A1(n595), .B0(N498), .B1(n632), .Y(n404) );
  NOR3X1 U988 ( .A(n698), .B(n660), .C(n696), .Y(N498) );
  AO22X1 U989 ( .A0(HC1[4]), .A1(n595), .B0(N497), .B1(n632), .Y(n405) );
  NOR3X1 U990 ( .A(n698), .B(n660), .C(n661), .Y(N497) );
  AO22X1 U991 ( .A0(HC1[3]), .A1(n595), .B0(N496), .B1(n632), .Y(n406) );
  NOR2X1 U992 ( .A(n662), .B(n699), .Y(N496) );
  AO22X1 U993 ( .A0(HC1[2]), .A1(n595), .B0(N495), .B1(n632), .Y(n407) );
  NOR3X1 U994 ( .A(n697), .B(n661), .C(n662), .Y(N495) );
  AO22X1 U995 ( .A0(HC1[1]), .A1(n595), .B0(N494), .B1(n632), .Y(n408) );
  NOR3X1 U996 ( .A(n696), .B(n660), .C(n662), .Y(N494) );
  AO22X1 U997 ( .A0(HC1[0]), .A1(n595), .B0(N493), .B1(n632), .Y(n409) );
  AND4X1 U998 ( .A(n697), .B(n696), .C(n698), .D(n576), .Y(N493) );
  AO22X1 U999 ( .A0(M6[0]), .A1(n594), .B0(N689), .B1(n633), .Y(n420) );
  NOR3X1 U1000 ( .A(n611), .B(HC6_cnt[2]), .C(n610), .Y(N689) );
  AO22X1 U1001 ( .A0(M6[1]), .A1(n594), .B0(N690), .B1(n633), .Y(n419) );
  NOR3X1 U1002 ( .A(n678), .B(HC6_cnt[2]), .C(n610), .Y(N690) );
  AO22X1 U1003 ( .A0(M6[2]), .A1(n594), .B0(N691), .B1(n633), .Y(n418) );
  AO22X1 U1005 ( .A0(M6[3]), .A1(n594), .B0(N692), .B1(n633), .Y(n417) );
  AO22X1 U1007 ( .A0(M6[4]), .A1(n594), .B0(N693), .B1(n633), .Y(n416) );
  NOR3X1 U1008 ( .A(n680), .B(n610), .C(n611), .Y(N693) );
  AO22X1 U1009 ( .A0(M6[5]), .A1(n594), .B0(N694), .B1(n633), .Y(n415) );
  NOR3X1 U1010 ( .A(n680), .B(n610), .C(n678), .Y(N694) );
  AO22X1 U1011 ( .A0(M6[6]), .A1(n594), .B0(N695), .B1(n633), .Y(n414) );
  NOR3X1 U1012 ( .A(n680), .B(n611), .C(n679), .Y(N695) );
  AO22X1 U1013 ( .A0(M6[7]), .A1(n594), .B0(N696), .B1(n633), .Y(n413) );
  NOR2X1 U1014 ( .A(n725), .B(n680), .Y(N696) );
  AO22X1 U1015 ( .A0(HC6[0]), .A1(n594), .B0(N673), .B1(n633), .Y(n428) );
  AND4X1 U1016 ( .A(n722), .B(n721), .C(n723), .D(n581), .Y(N673) );
  AO22X1 U1017 ( .A0(HC6[1]), .A1(n594), .B0(N674), .B1(n633), .Y(n427) );
  NOR3X1 U1018 ( .A(n721), .B(n640), .C(n642), .Y(N674) );
  AO22X1 U1019 ( .A0(HC6[2]), .A1(n594), .B0(N675), .B1(n633), .Y(n426) );
  NOR3X1 U1020 ( .A(n722), .B(n641), .C(n642), .Y(N675) );
  AO22X1 U1021 ( .A0(HC6[3]), .A1(n594), .B0(N676), .B1(n633), .Y(n425) );
  NOR2X1 U1022 ( .A(n642), .B(n724), .Y(N676) );
  AO22X1 U1023 ( .A0(HC6[4]), .A1(n594), .B0(N677), .B1(n633), .Y(n424) );
  NOR3X1 U1024 ( .A(n723), .B(n640), .C(n641), .Y(N677) );
  AO22X1 U1025 ( .A0(HC6[5]), .A1(n594), .B0(N678), .B1(n633), .Y(n423) );
  NOR3X1 U1026 ( .A(n723), .B(n640), .C(n721), .Y(N678) );
  AO22X1 U1027 ( .A0(HC6[6]), .A1(n594), .B0(N679), .B1(n633), .Y(n422) );
  NOR3X1 U1028 ( .A(n723), .B(n641), .C(n722), .Y(N679) );
  AO22X1 U1029 ( .A0(HC6[7]), .A1(n594), .B0(N680), .B1(n633), .Y(n421) );
  NOR2X1 U1030 ( .A(n724), .B(n723), .Y(N680) );
  NAND2X1 U1031 ( .A(gray_data[0]), .B(n282), .Y(n284) );
  OAI2BB2XL U1032 ( .B0(n75), .B1(n584), .A0N(N30), .A1N(n296), .Y(n559) );
  OAI2BB2XL U1033 ( .B0(n76), .B1(n584), .A0N(N29), .A1N(n296), .Y(n560) );
  OAI2BB2XL U1034 ( .B0(n77), .B1(n584), .A0N(N28), .A1N(n296), .Y(n561) );
  OAI2BB2XL U1035 ( .B0(n78), .B1(n584), .A0N(N27), .A1N(n296), .Y(n562) );
  OAI2BB2XL U1036 ( .B0(n79), .B1(n584), .A0N(N26), .A1N(n296), .Y(n563) );
  OAI2BB2XL U1037 ( .B0(n80), .B1(n584), .A0N(N25), .A1N(n296), .Y(n564) );
  OAI2BB2XL U1038 ( .B0(n81), .B1(n584), .A0N(N24), .A1N(n296), .Y(n565) );
  OAI2BB2XL U1039 ( .B0(n82), .B1(n584), .A0N(N23), .A1N(n296), .Y(n566) );
  OAI2BB1X1 U1040 ( .A0N(n638), .A1N(CNT4_reg[14]), .B0(n589), .Y(n506) );
  OAI2BB1X1 U1041 ( .A0N(n637), .A1N(CNT3_reg[14]), .B0(n590), .Y(n491) );
  OAI2BB1X1 U1042 ( .A0N(n639), .A1N(CNT5_reg[14]), .B0(n582), .Y(n571) );
  NAND2BX1 U1043 ( .AN(gray_data[0]), .B(n282), .Y(n288) );
  OAI2BB2XL U1044 ( .B0(n36), .B1(n583), .A0N(N69), .A1N(n279), .Y(n520) );
  OAI2BB2XL U1045 ( .B0(n37), .B1(n583), .A0N(N68), .A1N(n279), .Y(n521) );
  OAI2BB2XL U1046 ( .B0(n38), .B1(n583), .A0N(N67), .A1N(n279), .Y(n522) );
  OAI2BB2XL U1047 ( .B0(n39), .B1(n583), .A0N(N66), .A1N(n279), .Y(n523) );
  OAI2BB2XL U1048 ( .B0(n40), .B1(n583), .A0N(N65), .A1N(n279), .Y(n524) );
  OAI2BB2XL U1049 ( .B0(n41), .B1(n583), .A0N(N64), .A1N(n279), .Y(n525) );
  OAI2BB2XL U1050 ( .B0(n42), .B1(n583), .A0N(N63), .A1N(n279), .Y(n526) );
  OAI2BB2XL U1051 ( .B0(n35), .B1(n583), .A0N(N70), .A1N(n279), .Y(n567) );
  CLKBUFX3 U1052 ( .A(n278), .Y(n583) );
  NAND2X1 U1053 ( .A(n285), .B(n298), .Y(n278) );
  NAND4BX1 U1054 ( .AN(n288), .B(gray_data[2]), .C(gray_data[1]), .D(n289), 
        .Y(n298) );
  CLKINVX1 U1055 ( .A(gray_valid), .Y(n666) );
  OAI211X1 U1056 ( .A0(n215), .A1(n677), .B0(n591), .C0(n612), .Y(n466) );
  CLKINVX1 U1057 ( .A(CNT2_reg[9]), .Y(n677) );
  OAI211X1 U1058 ( .A0(n197), .A1(n676), .B0(n592), .C0(n612), .Y(n452) );
  CLKINVX1 U1059 ( .A(CNT1_reg[8]), .Y(n676) );
  OAI211X1 U1060 ( .A0(n170), .A1(n675), .B0(n593), .C0(n612), .Y(n432) );
  CLKINVX1 U1061 ( .A(CNT6_reg[13]), .Y(n675) );
  OAI32X1 U1062 ( .A0(n693), .A1(n600), .A2(n128), .B0(n133), .B1(n694), .Y(
        n335) );
  OAI32X1 U1063 ( .A0(n690), .A1(n602), .A2(n136), .B0(n140), .B1(n691), .Y(
        n354) );
  OAI32X1 U1064 ( .A0(n687), .A1(n604), .A2(n143), .B0(n147), .B1(n688), .Y(
        n373) );
  OAI32X1 U1065 ( .A0(n684), .A1(n606), .A2(n150), .B0(n154), .B1(n685), .Y(
        n392) );
  OAI32X1 U1066 ( .A0(n681), .A1(n608), .A2(n157), .B0(n161), .B1(n682), .Y(
        n411) );
  OAI32X1 U1067 ( .A0(n678), .A1(n610), .A2(n164), .B0(n168), .B1(n679), .Y(
        n430) );
  OAI2BB2XL U1068 ( .B0(n43), .B1(n588), .A0N(N62), .A1N(n281), .Y(n527) );
  OAI2BB2XL U1069 ( .B0(n44), .B1(n588), .A0N(N61), .A1N(n281), .Y(n528) );
  OAI2BB2XL U1070 ( .B0(n45), .B1(n588), .A0N(N60), .A1N(n281), .Y(n529) );
  OAI2BB2XL U1071 ( .B0(n46), .B1(n588), .A0N(N59), .A1N(n281), .Y(n530) );
  OAI2BB2XL U1072 ( .B0(n47), .B1(n588), .A0N(N58), .A1N(n281), .Y(n531) );
  OAI2BB2XL U1073 ( .B0(n48), .B1(n588), .A0N(N57), .A1N(n281), .Y(n532) );
  OAI2BB2XL U1074 ( .B0(n49), .B1(n588), .A0N(N56), .A1N(n281), .Y(n533) );
  OAI2BB2XL U1075 ( .B0(n588), .B1(n50), .A0N(N55), .A1N(n281), .Y(n534) );
  OAI2BB2XL U1076 ( .B0(n59), .B1(n586), .A0N(N46), .A1N(n291), .Y(n543) );
  OAI2BB2XL U1077 ( .B0(n60), .B1(n586), .A0N(N45), .A1N(n291), .Y(n544) );
  OAI2BB2XL U1078 ( .B0(n61), .B1(n586), .A0N(N44), .A1N(n291), .Y(n545) );
  OAI2BB2XL U1079 ( .B0(n62), .B1(n586), .A0N(N43), .A1N(n291), .Y(n546) );
  OAI2BB2XL U1080 ( .B0(n63), .B1(n586), .A0N(N42), .A1N(n291), .Y(n547) );
  OAI2BB2XL U1081 ( .B0(n64), .B1(n586), .A0N(N41), .A1N(n291), .Y(n548) );
  OAI2BB2XL U1082 ( .B0(n65), .B1(n586), .A0N(N40), .A1N(n291), .Y(n549) );
  OAI2BB2XL U1083 ( .B0(n66), .B1(n586), .A0N(N39), .A1N(n291), .Y(n550) );
  OAI211X1 U1084 ( .A0(n251), .A1(n106), .B0(n589), .C0(n612), .Y(n494) );
  OAI211X1 U1085 ( .A0(n233), .A1(n104), .B0(n590), .C0(n612), .Y(n480) );
  OAI211X1 U1086 ( .A0(n269), .A1(n108), .B0(n582), .C0(n612), .Y(n508) );
  OAI2BB2XL U1087 ( .B0(n67), .B1(n585), .A0N(N38), .A1N(n294), .Y(n551) );
  OAI2BB2XL U1088 ( .B0(n68), .B1(n585), .A0N(N37), .A1N(n294), .Y(n552) );
  OAI2BB2XL U1089 ( .B0(n69), .B1(n585), .A0N(N36), .A1N(n294), .Y(n553) );
  OAI2BB2XL U1090 ( .B0(n70), .B1(n585), .A0N(N35), .A1N(n294), .Y(n554) );
  OAI2BB2XL U1091 ( .B0(n71), .B1(n585), .A0N(N34), .A1N(n294), .Y(n555) );
  OAI2BB2XL U1092 ( .B0(n72), .B1(n585), .A0N(N33), .A1N(n294), .Y(n556) );
  OAI2BB2XL U1093 ( .B0(n73), .B1(n585), .A0N(N32), .A1N(n294), .Y(n557) );
  OAI2BB2XL U1094 ( .B0(n74), .B1(n585), .A0N(N31), .A1N(n294), .Y(n558) );
  OAI2BB2XL U1095 ( .B0(n51), .B1(n587), .A0N(N54), .A1N(n287), .Y(n535) );
  OAI2BB2XL U1096 ( .B0(n52), .B1(n587), .A0N(N53), .A1N(n287), .Y(n536) );
  OAI2BB2XL U1097 ( .B0(n53), .B1(n587), .A0N(N52), .A1N(n287), .Y(n537) );
  OAI2BB2XL U1098 ( .B0(n54), .B1(n587), .A0N(N51), .A1N(n287), .Y(n538) );
  OAI2BB2XL U1099 ( .B0(n55), .B1(n587), .A0N(N50), .A1N(n287), .Y(n539) );
  OAI2BB2XL U1100 ( .B0(n56), .B1(n587), .A0N(N49), .A1N(n287), .Y(n540) );
  OAI2BB2XL U1101 ( .B0(n57), .B1(n587), .A0N(N48), .A1N(n287), .Y(n541) );
  OAI2BB2XL U1102 ( .B0(n58), .B1(n587), .A0N(N47), .A1N(n287), .Y(n542) );
  OAI22XL U1103 ( .A0(n693), .A1(n130), .B0(n601), .B1(n128), .Y(n336) );
  OAI22XL U1104 ( .A0(n690), .A1(n137), .B0(n603), .B1(n136), .Y(n355) );
  OAI22XL U1105 ( .A0(n687), .A1(n144), .B0(n605), .B1(n143), .Y(n374) );
  OAI22XL U1106 ( .A0(n684), .A1(n151), .B0(n607), .B1(n150), .Y(n393) );
  OAI22XL U1107 ( .A0(n681), .A1(n158), .B0(n609), .B1(n157), .Y(n412) );
  OAI22XL U1108 ( .A0(n678), .A1(n165), .B0(n611), .B1(n164), .Y(n431) );
  OAI22XL U1109 ( .A0(n215), .A1(n100), .B0(n175), .B1(n591), .Y(n465) );
  OAI22XL U1110 ( .A0(n215), .A1(n99), .B0(n174), .B1(n591), .Y(n464) );
  OAI22XL U1111 ( .A0(n215), .A1(n98), .B0(n173), .B1(n591), .Y(n463) );
  OAI22XL U1112 ( .A0(n197), .A1(n96), .B0(n175), .B1(n592), .Y(n450) );
  OAI22XL U1113 ( .A0(n197), .A1(n95), .B0(n174), .B1(n592), .Y(n449) );
  OAI22XL U1114 ( .A0(n197), .A1(n94), .B0(n173), .B1(n592), .Y(n448) );
  OAI22XL U1115 ( .A0(n170), .A1(n92), .B0(n174), .B1(n593), .Y(n434) );
  OAI22XL U1116 ( .A0(n170), .A1(n91), .B0(n173), .B1(n593), .Y(n433) );
  OAI22XL U1117 ( .A0(n170), .A1(n93), .B0(n175), .B1(n593), .Y(n435) );
  OAI211X1 U1118 ( .A0(state[0]), .A1(n305), .B0(n616), .C0(n665), .Y(n304) );
  NAND2X1 U1119 ( .A(n673), .B(n674), .Y(n305) );
  OA21XL U1120 ( .A0(cnt[0]), .A1(n616), .B0(n304), .Y(n303) );
  OAI32X1 U1121 ( .A0(n670), .A1(cnt[2]), .A2(n301), .B0(n302), .B1(n671), .Y(
        n568) );
  OA21XL U1122 ( .A0(n616), .A1(cnt[1]), .B0(n303), .Y(n302) );
  OAI22XL U1123 ( .A0(n251), .A1(n107), .B0(n175), .B1(n589), .Y(n495) );
  OAI22XL U1124 ( .A0(n251), .A1(n105), .B0(n173), .B1(n589), .Y(n493) );
  OAI22XL U1125 ( .A0(n233), .A1(n103), .B0(n174), .B1(n590), .Y(n479) );
  OAI22XL U1126 ( .A0(n233), .A1(n102), .B0(n173), .B1(n590), .Y(n478) );
  OAI22XL U1127 ( .A0(n269), .A1(n109), .B0(n174), .B1(n582), .Y(n509) );
  OAI22XL U1128 ( .A0(n269), .A1(n110), .B0(n175), .B1(n582), .Y(n510) );
  NOR4X2 U1129 ( .A(gray_data[4]), .B(gray_data[3]), .C(gray_data[5]), .D(n299), .Y(n289) );
  OR2X1 U1130 ( .A(gray_data[7]), .B(gray_data[6]), .Y(n299) );
  NAND3X1 U1131 ( .A(n289), .B(n668), .C(gray_data[2]), .Y(n283) );
  NAND3X1 U1132 ( .A(n289), .B(n667), .C(gray_data[1]), .Y(n292) );
  NOR2BX2 U1133 ( .AN(n300), .B(reset), .Y(n285) );
  OAI22XL U1134 ( .A0(n303), .A1(n670), .B0(cnt[1]), .B1(n301), .Y(n570) );
  OAI22XL U1135 ( .A0(n669), .A1(n304), .B0(cnt[0]), .B1(n616), .Y(n569) );
  OAI31XL U1136 ( .A0(n316), .A1(gray_valid), .A2(n672), .B0(n664), .Y(N133)
         );
  CLKINVX1 U1137 ( .A(n317), .Y(n664) );
  OAI31XL U1138 ( .A0(n315), .A1(reset), .A2(n314), .B0(n612), .Y(n317) );
  NAND2X1 U1139 ( .A(cnt[0]), .B(n619), .Y(n301) );
  CLKINVX1 U1140 ( .A(gray_data[2]), .Y(n667) );
  CLKINVX1 U1141 ( .A(gray_data[1]), .Y(n668) );
  NOR2X2 U1142 ( .A(n315), .B(state[0]), .Y(CNT_valid) );
  NAND2X1 U1143 ( .A(state[1]), .B(n674), .Y(n315) );
  CLKINVX1 U1145 ( .A(state[1]), .Y(n673) );
  NAND3X1 U1146 ( .A(state[0]), .B(n673), .C(state[2]), .Y(n300) );
  NAND4X1 U1147 ( .A(CNT2_reg[4]), .B(CNT2_reg[3]), .C(CNT2_reg[2]), .D(
        CNT2_reg[1]), .Y(n231) );
  NAND4X1 U1148 ( .A(CNT1_reg[4]), .B(CNT1_reg[3]), .C(CNT1_reg[2]), .D(
        CNT1_reg[1]), .Y(n213) );
  CLKINVX1 U1149 ( .A(n226), .Y(n659) );
  NAND3BX1 U1150 ( .AN(n577), .B(n227), .C(data_min_2nd[9]), .Y(n226) );
  NAND3BX1 U1151 ( .AN(n228), .B(n229), .C(n230), .Y(n227) );
  NOR4X1 U1152 ( .A(CNT2_reg[9]), .B(CNT2_reg[8]), .C(CNT2_reg[14]), .D(
        CNT2_reg[13]), .Y(n230) );
  CLKINVX1 U1153 ( .A(n208), .Y(n663) );
  NAND3BX1 U1154 ( .AN(n576), .B(n209), .C(data_min_2nd[8]), .Y(n208) );
  NAND3BX1 U1155 ( .AN(n210), .B(n211), .C(n212), .Y(n209) );
  NOR4X1 U1156 ( .A(CNT1_reg[9]), .B(CNT1_reg[8]), .C(CNT1_reg[14]), .D(
        CNT1_reg[13]), .Y(n212) );
  NAND4X1 U1157 ( .A(CNT5_reg[4]), .B(CNT5_reg[3]), .C(CNT5_reg[2]), .D(
        CNT5_reg[1]), .Y(n313) );
  CLKINVX1 U1158 ( .A(n308), .Y(n647) );
  NAND3BX1 U1159 ( .AN(n580), .B(n309), .C(data_min_2nd[12]), .Y(n308) );
  NAND3BX1 U1160 ( .AN(n310), .B(n311), .C(n312), .Y(n309) );
  NOR4X1 U1161 ( .A(CNT5_reg[9]), .B(CNT5_reg[8]), .C(CNT5_reg[14]), .D(
        CNT5_reg[13]), .Y(n312) );
  NAND4X1 U1162 ( .A(CNT4_reg[4]), .B(CNT4_reg[3]), .C(CNT4_reg[2]), .D(
        CNT4_reg[1]), .Y(n267) );
  NAND4X1 U1163 ( .A(CNT3_reg[4]), .B(CNT3_reg[3]), .C(CNT3_reg[2]), .D(
        CNT3_reg[1]), .Y(n249) );
  CLKINVX1 U1164 ( .A(n262), .Y(n651) );
  NAND3BX1 U1165 ( .AN(n579), .B(n263), .C(data_min_2nd[11]), .Y(n262) );
  NAND3BX1 U1166 ( .AN(n264), .B(n265), .C(n266), .Y(n263) );
  NOR4X1 U1167 ( .A(CNT4_reg[9]), .B(CNT4_reg[8]), .C(CNT4_reg[14]), .D(
        CNT4_reg[13]), .Y(n266) );
  CLKINVX1 U1168 ( .A(n244), .Y(n655) );
  NAND3BX1 U1169 ( .AN(n578), .B(n245), .C(data_min_2nd[10]), .Y(n244) );
  NAND3BX1 U1170 ( .AN(n246), .B(n247), .C(n248), .Y(n245) );
  NOR4X1 U1171 ( .A(CNT3_reg[9]), .B(CNT3_reg[8]), .C(CNT3_reg[14]), .D(
        CNT3_reg[13]), .Y(n248) );
  NAND4X1 U1172 ( .A(CNT6_reg[4]), .B(CNT6_reg[3]), .C(CNT6_reg[2]), .D(
        CNT6_reg[1]), .Y(n194) );
  AND3X2 U1173 ( .A(n643), .B(n190), .C(data_min_2nd[13]), .Y(n187) );
  CLKINVX1 U1174 ( .A(n581), .Y(n643) );
  NAND3BX1 U1175 ( .AN(n191), .B(n192), .C(n193), .Y(n190) );
  NOR4X1 U1176 ( .A(CNT6_reg[9]), .B(CNT6_reg[8]), .C(CNT6_reg[14]), .D(
        CNT6_reg[13]), .Y(n193) );
  AND4X1 U1177 ( .A(n98), .B(n99), .C(n100), .D(CNT2_reg[0]), .Y(n229) );
  AND4X1 U1178 ( .A(n94), .B(n95), .C(n96), .D(CNT1_reg[0]), .Y(n211) );
  AND4X1 U1179 ( .A(n105), .B(n106), .C(n107), .D(CNT4_reg[0]), .Y(n265) );
  AND4X1 U1180 ( .A(n108), .B(n109), .C(n110), .D(CNT5_reg[0]), .Y(n311) );
  AND4X1 U1181 ( .A(n91), .B(n92), .C(n93), .D(CNT6_reg[0]), .Y(n192) );
  AND4X1 U1182 ( .A(n102), .B(n103), .C(n104), .D(CNT3_reg[0]), .Y(n247) );
  CLKBUFX3 U1183 ( .A(data_min_1st[9]), .Y(n577) );
  CLKBUFX3 U1184 ( .A(data_min_1st[8]), .Y(n576) );
  CLKBUFX3 U1185 ( .A(data_min_1st[11]), .Y(n579) );
  CLKBUFX3 U1186 ( .A(data_min_1st[10]), .Y(n578) );
  CLKBUFX3 U1187 ( .A(data_min_1st[12]), .Y(n580) );
  CLKBUFX3 U1188 ( .A(data_min_1st[13]), .Y(n581) );
  CLKBUFX3 U1189 ( .A(HC5_cnt[0]), .Y(n601) );
  CLKBUFX3 U1190 ( .A(HC4_cnt[0]), .Y(n603) );
  CLKBUFX3 U1191 ( .A(HC3_cnt[0]), .Y(n605) );
  CLKBUFX3 U1192 ( .A(HC2_cnt[0]), .Y(n607) );
  CLKBUFX3 U1193 ( .A(HC1_cnt[0]), .Y(n609) );
  CLKBUFX3 U1194 ( .A(HC6_cnt[0]), .Y(n611) );
  CLKBUFX3 U1195 ( .A(HC5_cnt[1]), .Y(n600) );
  CLKBUFX3 U1196 ( .A(HC4_cnt[1]), .Y(n602) );
  CLKBUFX3 U1197 ( .A(HC3_cnt[1]), .Y(n604) );
  CLKBUFX3 U1198 ( .A(HC2_cnt[1]), .Y(n606) );
  CLKBUFX3 U1199 ( .A(HC1_cnt[1]), .Y(n608) );
  CLKBUFX3 U1200 ( .A(HC6_cnt[1]), .Y(n610) );
  NOR3X2 U1201 ( .A(n674), .B(state[1]), .C(state[0]), .Y(code_valid) );
  NOR3X1 U1202 ( .A(n669), .B(cnt[1]), .C(n671), .Y(n314) );
  CLKINVX1 U1203 ( .A(cnt[0]), .Y(n669) );
  CLKINVX1 U1204 ( .A(cnt[2]), .Y(n671) );
  CLKINVX1 U1205 ( .A(cnt[1]), .Y(n670) );
  sorting_machine SORTING_MACHINE ( .clk(clk), .reset(reset), .sorting_start(
        n573), .data_1(CNT1_reg), .data_2(CNT2_reg), .data_3(CNT3_reg), 
        .data_4(CNT4_reg), .data_5(CNT5_reg), .data_6(CNT6_reg), 
        .data_min_1st({SYNOPSYS_UNCONNECTED__0, data_min_1st[13:0]}), 
        .data_min_2nd({SYNOPSYS_UNCONNECTED__1, data_min_2nd[13:0]}), 
        .sorting_finish(sorting_finish) );
  huffman_DW01_inc_0_DW01_inc_8 add_150 ( .A(CNT6), .SUM({N70, N69, N68, N67, 
        N66, N65, N64, N63}) );
  huffman_DW01_inc_1_DW01_inc_9 add_147 ( .A(CNT5), .SUM({N62, N61, N60, N59, 
        N58, N57, N56, N55}) );
  huffman_DW01_inc_2_DW01_inc_10 add_144 ( .A(CNT4), .SUM({N54, N53, N52, N51, 
        N50, N49, N48, N47}) );
  huffman_DW01_inc_3_DW01_inc_11 add_141 ( .A(CNT3), .SUM({N46, N45, N44, N43, 
        N42, N41, N40, N39}) );
  huffman_DW01_inc_4_DW01_inc_12 add_138 ( .A(CNT2), .SUM({N38, N37, N36, N35, 
        N34, N33, N32, N31}) );
  huffman_DW01_inc_5_DW01_inc_13 add_135 ( .A(CNT1), .SUM({N30, N29, N28, N27, 
        N26, N25, N24, N23}) );
  huffman_DW01_add_0 r479 ( .A(data_min_1st[7:0]), .B(data_min_2nd[7:0]), .CI(
        1'b0), .SUM({N194, N193, N192, N191, N190, N189, N188, N187}) );
  DFFX1 \HC6_cnt_reg[2]  ( .D(n429), .CK(clk), .Q(HC6_cnt[2]), .QN(n680) );
  DFFX1 \HC5_cnt_reg[2]  ( .D(n334), .CK(clk), .Q(HC5_cnt[2]), .QN(n695) );
  DFFX1 \HC4_cnt_reg[2]  ( .D(n353), .CK(clk), .Q(HC4_cnt[2]), .QN(n692) );
  DFFX1 \HC3_cnt_reg[2]  ( .D(n372), .CK(clk), .Q(HC3_cnt[2]), .QN(n689) );
  DFFX1 \HC2_cnt_reg[2]  ( .D(n391), .CK(clk), .Q(HC2_cnt[2]), .QN(n686) );
  DFFX1 \HC1_cnt_reg[2]  ( .D(n410), .CK(clk), .Q(HC1_cnt[2]), .QN(n683) );
  DFFX1 \state_reg[0]  ( .D(N132), .CK(clk), .Q(state[0]), .QN(n672) );
  DFFX2 \CNT_reg[4][0]  ( .D(n534), .CK(clk), .Q(CNT5[0]), .QN(n50) );
  DFFX2 \CNT_reg[2][0]  ( .D(n550), .CK(clk), .Q(CNT3[0]), .QN(n66) );
  DFFX2 \CNT_reg[3][0]  ( .D(n542), .CK(clk), .Q(CNT4[0]), .QN(n58) );
  DFFX2 \CNT_reg[1][0]  ( .D(n558), .CK(clk), .Q(CNT2[0]), .QN(n74) );
  DFFX2 \CNT_reg[5][0]  ( .D(n526), .CK(clk), .Q(CNT6[0]), .QN(n42) );
  DFFX2 \CNT_reg[0][0]  ( .D(n566), .CK(clk), .Q(CNT1[0]), .QN(n82) );
  DFFX2 \CNT_reg[4][7]  ( .D(n527), .CK(clk), .Q(CNT5[7]), .QN(n43) );
  DFFX2 \CNT_reg[2][7]  ( .D(n543), .CK(clk), .Q(CNT3[7]), .QN(n59) );
  DFFX2 \CNT_reg[3][7]  ( .D(n535), .CK(clk), .Q(CNT4[7]), .QN(n51) );
  DFFX2 \CNT_reg[1][7]  ( .D(n551), .CK(clk), .Q(CNT2[7]), .QN(n67) );
  DFFX2 \CNT_reg[5][7]  ( .D(n567), .CK(clk), .Q(CNT6[7]), .QN(n35) );
  DFFX2 \CNT_reg[0][7]  ( .D(n559), .CK(clk), .Q(CNT1[7]), .QN(n75) );
  DFFX2 \CNT_reg[4][6]  ( .D(n528), .CK(clk), .Q(CNT5[6]), .QN(n44) );
  DFFX2 \CNT_reg[4][5]  ( .D(n529), .CK(clk), .Q(CNT5[5]), .QN(n45) );
  DFFX2 \CNT_reg[4][4]  ( .D(n530), .CK(clk), .Q(CNT5[4]), .QN(n46) );
  DFFX2 \CNT_reg[4][3]  ( .D(n531), .CK(clk), .Q(CNT5[3]), .QN(n47) );
  DFFX2 \CNT_reg[4][2]  ( .D(n532), .CK(clk), .Q(CNT5[2]), .QN(n48) );
  DFFX2 \CNT_reg[4][1]  ( .D(n533), .CK(clk), .Q(CNT5[1]), .QN(n49) );
  DFFX2 \CNT_reg[2][6]  ( .D(n544), .CK(clk), .Q(CNT3[6]), .QN(n60) );
  DFFX2 \CNT_reg[2][5]  ( .D(n545), .CK(clk), .Q(CNT3[5]), .QN(n61) );
  DFFX2 \CNT_reg[2][4]  ( .D(n546), .CK(clk), .Q(CNT3[4]), .QN(n62) );
  DFFX2 \CNT_reg[2][3]  ( .D(n547), .CK(clk), .Q(CNT3[3]), .QN(n63) );
  DFFX2 \CNT_reg[2][2]  ( .D(n548), .CK(clk), .Q(CNT3[2]), .QN(n64) );
  DFFX2 \CNT_reg[2][1]  ( .D(n549), .CK(clk), .Q(CNT3[1]), .QN(n65) );
  DFFX2 \CNT_reg[3][6]  ( .D(n536), .CK(clk), .Q(CNT4[6]), .QN(n52) );
  DFFX2 \CNT_reg[3][5]  ( .D(n537), .CK(clk), .Q(CNT4[5]), .QN(n53) );
  DFFX2 \CNT_reg[3][4]  ( .D(n538), .CK(clk), .Q(CNT4[4]), .QN(n54) );
  DFFX2 \CNT_reg[3][3]  ( .D(n539), .CK(clk), .Q(CNT4[3]), .QN(n55) );
  DFFX2 \CNT_reg[3][2]  ( .D(n540), .CK(clk), .Q(CNT4[2]), .QN(n56) );
  DFFX2 \CNT_reg[3][1]  ( .D(n541), .CK(clk), .Q(CNT4[1]), .QN(n57) );
  DFFX2 \CNT_reg[1][6]  ( .D(n552), .CK(clk), .Q(CNT2[6]), .QN(n68) );
  DFFX2 \CNT_reg[1][5]  ( .D(n553), .CK(clk), .Q(CNT2[5]), .QN(n69) );
  DFFX2 \CNT_reg[1][4]  ( .D(n554), .CK(clk), .Q(CNT2[4]), .QN(n70) );
  DFFX2 \CNT_reg[1][3]  ( .D(n555), .CK(clk), .Q(CNT2[3]), .QN(n71) );
  DFFX2 \CNT_reg[1][2]  ( .D(n556), .CK(clk), .Q(CNT2[2]), .QN(n72) );
  DFFX2 \CNT_reg[1][1]  ( .D(n557), .CK(clk), .Q(CNT2[1]), .QN(n73) );
  DFFX2 \CNT_reg[5][6]  ( .D(n520), .CK(clk), .Q(CNT6[6]), .QN(n36) );
  DFFX2 \CNT_reg[5][5]  ( .D(n521), .CK(clk), .Q(CNT6[5]), .QN(n37) );
  DFFX2 \CNT_reg[5][4]  ( .D(n522), .CK(clk), .Q(CNT6[4]), .QN(n38) );
  DFFX2 \CNT_reg[5][3]  ( .D(n523), .CK(clk), .Q(CNT6[3]), .QN(n39) );
  DFFX2 \CNT_reg[5][2]  ( .D(n524), .CK(clk), .Q(CNT6[2]), .QN(n40) );
  DFFX2 \CNT_reg[5][1]  ( .D(n525), .CK(clk), .Q(CNT6[1]), .QN(n41) );
  DFFX2 \CNT_reg[0][6]  ( .D(n560), .CK(clk), .Q(CNT1[6]), .QN(n76) );
  DFFX2 \CNT_reg[0][5]  ( .D(n561), .CK(clk), .Q(CNT1[5]), .QN(n77) );
  DFFX2 \CNT_reg[0][4]  ( .D(n562), .CK(clk), .Q(CNT1[4]), .QN(n78) );
  DFFX2 \CNT_reg[0][3]  ( .D(n563), .CK(clk), .Q(CNT1[3]), .QN(n79) );
  DFFX2 \CNT_reg[0][2]  ( .D(n564), .CK(clk), .Q(CNT1[2]), .QN(n80) );
  DFFX2 \CNT_reg[0][1]  ( .D(n565), .CK(clk), .Q(CNT1[1]), .QN(n81) );
  DFFX2 \M6_reg[7]  ( .D(n413), .CK(clk), .Q(M6[7]) );
  DFFX2 \M6_reg[6]  ( .D(n414), .CK(clk), .Q(M6[6]) );
  DFFX2 \M6_reg[5]  ( .D(n415), .CK(clk), .Q(M6[5]) );
  DFFX2 \M6_reg[4]  ( .D(n416), .CK(clk), .Q(M6[4]) );
  DFFX2 \M6_reg[3]  ( .D(n417), .CK(clk), .Q(M6[3]) );
  DFFX2 \M6_reg[2]  ( .D(n418), .CK(clk), .Q(M6[2]) );
  DFFX2 \M6_reg[1]  ( .D(n419), .CK(clk), .Q(M6[1]) );
  DFFX2 \M6_reg[0]  ( .D(n420), .CK(clk), .Q(M6[0]) );
  DFFX2 \M5_reg[7]  ( .D(n318), .CK(clk), .Q(M5[7]) );
  DFFX2 \M5_reg[6]  ( .D(n319), .CK(clk), .Q(M5[6]) );
  DFFX2 \M5_reg[5]  ( .D(n320), .CK(clk), .Q(M5[5]) );
  DFFX2 \M5_reg[4]  ( .D(n321), .CK(clk), .Q(M5[4]) );
  DFFX2 \M5_reg[3]  ( .D(n322), .CK(clk), .Q(M5[3]) );
  DFFX2 \M5_reg[2]  ( .D(n323), .CK(clk), .Q(M5[2]) );
  DFFX2 \M5_reg[1]  ( .D(n324), .CK(clk), .Q(M5[1]) );
  DFFX2 \M5_reg[0]  ( .D(n325), .CK(clk), .Q(M5[0]) );
  DFFX2 \M4_reg[7]  ( .D(n337), .CK(clk), .Q(M4[7]) );
  DFFX2 \M4_reg[6]  ( .D(n338), .CK(clk), .Q(M4[6]) );
  DFFX2 \M4_reg[5]  ( .D(n339), .CK(clk), .Q(M4[5]) );
  DFFX2 \M4_reg[4]  ( .D(n340), .CK(clk), .Q(M4[4]) );
  DFFX2 \M4_reg[3]  ( .D(n341), .CK(clk), .Q(M4[3]) );
  DFFX2 \M4_reg[2]  ( .D(n342), .CK(clk), .Q(M4[2]) );
  DFFX2 \M4_reg[1]  ( .D(n343), .CK(clk), .Q(M4[1]) );
  DFFX2 \M4_reg[0]  ( .D(n344), .CK(clk), .Q(M4[0]) );
  DFFX2 \M3_reg[7]  ( .D(n356), .CK(clk), .Q(M3[7]) );
  DFFX2 \M3_reg[6]  ( .D(n357), .CK(clk), .Q(M3[6]) );
  DFFX2 \M3_reg[5]  ( .D(n358), .CK(clk), .Q(M3[5]) );
  DFFX2 \M3_reg[4]  ( .D(n359), .CK(clk), .Q(M3[4]) );
  DFFX2 \M3_reg[3]  ( .D(n360), .CK(clk), .Q(M3[3]) );
  DFFX2 \M3_reg[2]  ( .D(n361), .CK(clk), .Q(M3[2]) );
  DFFX2 \M3_reg[1]  ( .D(n362), .CK(clk), .Q(M3[1]) );
  DFFX2 \M3_reg[0]  ( .D(n363), .CK(clk), .Q(M3[0]) );
  DFFX2 \M2_reg[7]  ( .D(n375), .CK(clk), .Q(M2[7]) );
  DFFX2 \M2_reg[6]  ( .D(n376), .CK(clk), .Q(M2[6]) );
  DFFX2 \M2_reg[5]  ( .D(n377), .CK(clk), .Q(M2[5]) );
  DFFX2 \M2_reg[4]  ( .D(n378), .CK(clk), .Q(M2[4]) );
  DFFX2 \M2_reg[3]  ( .D(n379), .CK(clk), .Q(M2[3]) );
  DFFX2 \M2_reg[2]  ( .D(n380), .CK(clk), .Q(M2[2]) );
  DFFX2 \M2_reg[1]  ( .D(n381), .CK(clk), .Q(M2[1]) );
  DFFX2 \M2_reg[0]  ( .D(n382), .CK(clk), .Q(M2[0]) );
  DFFX2 \M1_reg[7]  ( .D(n394), .CK(clk), .Q(M1[7]) );
  DFFX2 \M1_reg[6]  ( .D(n395), .CK(clk), .Q(M1[6]) );
  DFFX2 \M1_reg[5]  ( .D(n396), .CK(clk), .Q(M1[5]) );
  DFFX2 \M1_reg[4]  ( .D(n397), .CK(clk), .Q(M1[4]) );
  DFFX2 \M1_reg[3]  ( .D(n398), .CK(clk), .Q(M1[3]) );
  DFFX2 \M1_reg[2]  ( .D(n399), .CK(clk), .Q(M1[2]) );
  DFFX2 \M1_reg[1]  ( .D(n400), .CK(clk), .Q(M1[1]) );
  DFFX2 \M1_reg[0]  ( .D(n401), .CK(clk), .Q(M1[0]) );
  DFFX2 \HC6_reg[7]  ( .D(n421), .CK(clk), .Q(HC6[7]) );
  DFFX2 \HC6_reg[6]  ( .D(n422), .CK(clk), .Q(HC6[6]) );
  DFFX2 \HC6_reg[5]  ( .D(n423), .CK(clk), .Q(HC6[5]) );
  DFFX2 \HC6_reg[4]  ( .D(n424), .CK(clk), .Q(HC6[4]) );
  DFFX2 \HC6_reg[3]  ( .D(n425), .CK(clk), .Q(HC6[3]) );
  DFFX2 \HC6_reg[2]  ( .D(n426), .CK(clk), .Q(HC6[2]) );
  DFFX2 \HC6_reg[1]  ( .D(n427), .CK(clk), .Q(HC6[1]) );
  DFFX2 \HC6_reg[0]  ( .D(n428), .CK(clk), .Q(HC6[0]) );
  DFFX2 \HC5_reg[7]  ( .D(n326), .CK(clk), .Q(HC5[7]) );
  DFFX2 \HC5_reg[6]  ( .D(n327), .CK(clk), .Q(HC5[6]) );
  DFFX2 \HC5_reg[5]  ( .D(n328), .CK(clk), .Q(HC5[5]) );
  OAI2BB1XL U543 ( .A0N(HC1_cnt[2]), .A1N(n159), .B0(n160), .Y(n410) );
  OR4XL U544 ( .A(HC1_cnt[2]), .B(n682), .C(n681), .D(n157), .Y(n160) );
  NOR2XL U545 ( .A(HC1_cnt[2]), .B(n700), .Y(N512) );
  NOR3XL U546 ( .A(n609), .B(HC1_cnt[2]), .C(n608), .Y(N509) );
  OAI2BB1XL U547 ( .A0N(HC2_cnt[2]), .A1N(n152), .B0(n153), .Y(n391) );
  OR4XL U548 ( .A(HC2_cnt[2]), .B(n685), .C(n684), .D(n150), .Y(n153) );
  NOR2XL U821 ( .A(HC2_cnt[2]), .B(n705), .Y(N548) );
  NOR3XL U823 ( .A(n607), .B(HC2_cnt[2]), .C(n606), .Y(N545) );
  OAI2BB1XL U824 ( .A0N(HC3_cnt[2]), .A1N(n145), .B0(n146), .Y(n372) );
  OR4XL U826 ( .A(HC3_cnt[2]), .B(n688), .C(n687), .D(n143), .Y(n146) );
  NOR2XL U827 ( .A(HC3_cnt[2]), .B(n710), .Y(N584) );
  NOR3XL U829 ( .A(n605), .B(HC3_cnt[2]), .C(n604), .Y(N581) );
  OAI2BB1XL U830 ( .A0N(HC4_cnt[2]), .A1N(n138), .B0(n139), .Y(n353) );
  OR4XL U832 ( .A(HC4_cnt[2]), .B(n691), .C(n690), .D(n136), .Y(n139) );
  NOR2XL U833 ( .A(HC4_cnt[2]), .B(n715), .Y(N620) );
  NOR3XL U835 ( .A(n603), .B(HC4_cnt[2]), .C(n602), .Y(N617) );
  OAI2BB1XL U836 ( .A0N(HC5_cnt[2]), .A1N(n131), .B0(n132), .Y(n334) );
  OR4XL U838 ( .A(HC5_cnt[2]), .B(n694), .C(n693), .D(n128), .Y(n132) );
  NOR2XL U848 ( .A(HC5_cnt[2]), .B(n720), .Y(N656) );
  NOR3XL U854 ( .A(n601), .B(HC5_cnt[2]), .C(n600), .Y(N653) );
  OAI2BB1XL U880 ( .A0N(HC6_cnt[2]), .A1N(n166), .B0(n167), .Y(n429) );
  OR4XL U886 ( .A(HC6_cnt[2]), .B(n679), .C(n678), .D(n164), .Y(n167) );
  NOR2XL U912 ( .A(HC6_cnt[2]), .B(n725), .Y(N692) );
  NOR3XL U918 ( .A(n679), .B(HC6_cnt[2]), .C(n611), .Y(N691) );
endmodule

