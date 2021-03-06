module eq16(input [15:0]A,B,output EQ);
    wire[0:15] eqs;
    assign eqs[0] = 1;
    genvar i;
    generate for(i=0;i<16;i = i+1) begin
      eq EQ1(A[i],B[i],eqs[i],eqs[i+1]);
    end
    endgenerate
    assign EQ=eqs[15];
endmodule