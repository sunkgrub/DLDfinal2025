`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/04/2025 02:41:27 PM
// Design Name: 
// Module Name: multibit_mux
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module multibit_mux #(parameter NUM_INPUTS = 2, parameter BUS_WIDTH  = 4)(
    input  [NUM_INPUTS-1:0][BUS_WIDTH-1:0] data_in,
    input  [$clog2(NUM_INPUTS)-1:0] select_in,
    output reg [BUS_WIDTH-1:0] data_out
);
    always @(*) begin
        // Default output value
        data_out = {BUS_WIDTH{1'b0}};

        // Select the chosen input
        data_out = data_in[select_in];
    end
endmodule