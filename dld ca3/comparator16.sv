module comparator(input [15:0]A,B,output GT);
  assign#611 GT = (A[15]==B[15])? (A>B) : ~A[15];
endmodule
