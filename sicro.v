module sicro(Clock, HSync, VSync, R, G, B);


//INPUTS
input Clock ;
//OUTPUTS
output reg HSync;
output reg VSync;
output reg [3:0] R;
output reg [3:0] G;
output reg [3:0] B;

//HORIZONTAL TIMING CONSTANTS
localparam hva=640; //visible area
localparam hfp=16; //front porch 
localparam hsp=96; //sync pulse
localparam hbp=48; //front porch

//HORIZONTAL TIMING CONSTANTS
localparam vva=480; //visible area
localparam vfp=10; //front porch 
localparam vsp=2; //sync pulse
localparam vbp=32; //front porch

reg clkr;


always @(posedge Clock)
begin
    clkr <= ~clkr;
end

reg [9:0] HPOS = 10'b0;

reg [9:0] VPOS = 10'b0;

always @(posedge clkr) begin
    if( HPOS < (hva+hfp+hsp+hbp) )
        HPOS <= HPOS + 1;
    else
        begin 
            HPOS <= 1'b0;
            if(VPOS < (vva+vfp+vsp+vbp))
                VPOS <= VPOS + 1;
            else
                VPOS <= 1'b0;
        end

    if(HPOS > (hva+hfp) && HPOS < (hva+hfp+hsp))
        HSync <= 1'b1;
    else
        HSync <= 1'b0;

    if(VPOS > (vva+vfp) && VPOS < (vva+vfp+vsp))
        VSync <= 1'b1;
    else
        VSync <= 1'b0;

    if((HPOS > hva) || (VPOS > vva))
        begin
            R <= 1'b0;
            G <= 1'b0;
            B <= 1'b0;
        end
    else
        begin
            R <= 4'b0000;
            G <= 4'b0000;
            B <= 4'b1111;
        end
        if ((HPOS > 475 && HPOS < 485) || (VPOS > 280 && VPOS < 290))
            begin
                R <= 4'b1111;
                G <= 4'b1111;
                B <= 4'b1111;
            end    
end
endmodule