module mux21_n #(
    parameter DLEN = 32
) (
    dout,

    din0,
    din1,
    sel
);
    output  reg [DLEN-1:0]  dout    ;

    input       [DLEN-1:0]  din1    ;
    input       [DLEN-1:0]  din0    ;
    input                   sel     ;

    always @* begin
        if (sel) begin
            dout = din1;
        end else begin
            dout = din0;
        end
    end
endmodule