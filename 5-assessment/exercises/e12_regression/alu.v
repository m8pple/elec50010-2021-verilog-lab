module alu(
    input logic clk,
    input logic [1:0] op,
    input logic [31:0] a,
    input logic [31:0] b,
    output logic [31:0] r
);
    logic[32:0] sum;

    assign sum = a + (op==2 ? ~b : b);

    always_ff @(posedge clk) begin 
        if(op==0) begin
            r<=sum[32:0];
        end else if (op==1) begin 
            r<=a<<b[4:0];
        end else if (op==2) begin
            r<=sum[31:0];
        end else begin
            r<=a&&b;
        end
    end

endmodule
