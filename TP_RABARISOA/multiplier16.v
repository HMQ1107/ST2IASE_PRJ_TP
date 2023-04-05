module multiplier16(input [15:0] a, input [15:0] b, output reg [31:0] result);
  
  always @(*) begin
    result = {16'b0, a} * {16'b0, b};
  end
  
endmodule