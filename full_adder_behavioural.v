module full_adder_behavioural(input a,b,cin,output reg sum,carry);
always@(*)
begin
{carry,sum}=a+b+cin;
end
endmodule
