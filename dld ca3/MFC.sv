module MFC(input [15:0]A,B,output eq,gt,ae,[3:0]d);
  eq_ae_d_outputs circuit1(A,B,eq,ae,d);
  comparator circuit2(A,B,gt);
  d circuit3(A,B,d);
endmodule