variable_data_first_limit;
step_response_data_first;

DataFirst = struct('VariableFirst', VariableFirst, 'StepResponseFirst', StepResponseFirst);

K_column = K;
tau_column = tau;
theta_column = theta;
time_column = time;
output_column = output;

VariableFirst_column = [K_column tau_column theta_column];