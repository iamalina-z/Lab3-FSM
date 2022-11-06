module lfsr4 (
    input logic             clk,
    input logic             rst,
    input logic             en,
    output logic [4:1]           data_out
);

always_ff @ (posedge clk, posedge rst)
    if (rst)
        data_out <= 4'b1;
    else if (en)
        data_out <= {data_out[3:1], data_out[4] ^ data_out[3]};

endmodule
