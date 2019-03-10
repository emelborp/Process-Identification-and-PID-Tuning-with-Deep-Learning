function Gp = first_order_model(ProcessGain, TimeConstant, Timedelay) 
Gp = tf(ProcessGain, [TimeConstant 1], 'iodelay', Timedelay);
end