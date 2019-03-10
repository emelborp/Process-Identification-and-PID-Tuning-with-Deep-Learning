function Gp = second_order_model(ProcessGain, TimeConstant, DampingCoefficent, Timedelay)
Gp = tf(ProcessGain, [TimeConstant^2 2*DampingCoefficent*TimeConstant 1], 'iodelay', Timedelay);
end