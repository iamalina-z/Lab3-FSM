module combine #(
    parameter    WIDTH = 16,
                 D_WIDTH = 8
)(
    //interface signals
    input       logic                 clk,
    input       logic                 rst,
    input       logic                 en,
    input       logic [WIDTH-1:0]     N,
    output      logic  [D_WIDTH-1:0]  data_out
);

logic       fEn;

clktick  clocktk (
    .clk (clk),
    .rst (rst),
    .en  (en),
    .N   (N),
    .tick (fEn)
);

f1_fsm f1StateMachine (
    .clk       (clk),
    .rst       (rst),
    .en        (fEn),
    .data_out  (data_out)
);

endmodule
