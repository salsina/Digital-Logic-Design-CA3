module xor16(input [15:0]A,B,output [15:0]xors);
  genvar i;
  generate for(i=0;i<16;i=i+1) begin
    xor#27 x(xors[i],A[i],B[i]);
  end
endgenerate
endmodule
