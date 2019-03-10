%variable_data_first_limit;

time_point = [-log(0.9), -log(0.8), -log(0.7), -log(0.6), -log(0.5), -log(0.4), -log(0.3), -log(0.2), -log(0.1), -log(0.05)]; %1차의 응답특성을 고려하여 간격설정 

time = zeros(length(tau), length(time_point));
output = zeros(length(K), length(time_point));

for i=1:length(tau)
    for j=1:length(time_point)
        time(i, j) = theta(i) + time_point(j)*tau(i);
    end
end

for i=1:length(K)
    for j=1:length(time_point)
        output(i, j) = (1-exp(-time_point(j)))*K(i);
    end
end

StepResponseFirst = struct('Time', time, 'Output', output);