K = 0.01 + (30 - 0.01)*rand(70000, 1);
tau = 0.2 + (50 - 0.2)*rand(70000, 1);
zeta = 0.02 + (0.95 - 0.02)*rand(70000, 1);
theta = 0.01 + (20 - 0.01)*rand(70000, 1);

VariableSecond = struct('ProcessGain', K, 'TimeConstant', tau, 'DampingCoefficent', zeta, 'TimeDelay', theta);