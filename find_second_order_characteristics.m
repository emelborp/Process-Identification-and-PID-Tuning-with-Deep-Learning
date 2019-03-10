variable_data_second_rand_limit;
step_response_data_second;

DataSecond = struct('VariableSecond', VariableSecond, 'StepResponseSecond', StepResponseSecond);

K_column = K;
tau_column = tau;
zeta_column = zeta;
theta_column = theta;
sr_column = [RT ST SMin SMax OS US P PT];


VariableSecond_column = [K_column tau_column zeta_column theta_column];
StepResponseSecond_column = sr_column;