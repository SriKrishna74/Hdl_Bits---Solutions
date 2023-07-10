module top_module (
    input [4:0] a, b, c, d, e, f,
    output [7:0] w, x, y, z );
    
     wire [31:0]concaded_reg;

    assign concaded_reg[31:0] = {a[4:0],b[4:0],c[4:0],d[4:0],e[4:0],f[4:0],2'b11};
    assign {w, x, y, z} = {concaded_reg[31:24],concaded_reg[23:16],concaded_reg[15:8],concaded_reg[7:0]};

endmodule
