module multiplier8(input [15:0] a, input [15:0] b, output reg [32:0] result);
  
  always @(*) begin
    result = {8'b0, a} * {8'b0, b};
  end
  
endmodule