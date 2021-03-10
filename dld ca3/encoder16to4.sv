module encoder16to4(input [15:0]a,output[3:0]d);
  or#63 or1(d[0],a[1],a[3],a[5],a[7],a[9],a[11],a[13],a[15]);
  or#63 or2(d[1],a[2],a[3],a[6],a[7],a[10],a[11],a[14],a[15]);
  or#63 or3(d[2],a[4],a[5],a[6],a[7],a[12],a[13],a[14],a[15]);
  or#63 or4(d[3],a[8],a[9],a[10],a[11],a[12],a[13],a[14],a[15]);
endmodule
