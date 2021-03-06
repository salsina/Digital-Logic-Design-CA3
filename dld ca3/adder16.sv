module adder16(input [15:0]A,B,output [15:0]S);
  wire[0:15] Cs;
  assign Cs[0] = 0;
  genvar i;
  generate for(i=0;i<16;i = i+1) begin
    adder A(A[i],B[i],Cs[i],Cs[i+1],S[i]);
  end
  endgenerate
endmodule