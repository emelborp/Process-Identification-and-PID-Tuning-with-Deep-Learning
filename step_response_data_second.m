%variable_data_second_rand_limit;

RT = zeros(length(K) ,1);
ST = zeros(length(K) ,1);
SMin = zeros(length(K) ,1);
SMax = zeros(length(K) ,1);
OS = zeros(length(K) ,1);
US = zeros(length(K) ,1);
P = zeros(length(K) ,1);
PT = zeros(length(K) ,1);

for i=1:length(K)
    Gp = second_order_model(K(i), tau(i), zeta(i), theta(i));
    S = stepinfo(Gp, 'SettlingTimeThreshold', 0.05);
    RT(i) = S.RiseTime;
    ST(i) = S.SettlingTime;
    SMin(i) = S.SettlingMin;
    SMax(i) = S.SettlingMax;
    OS(i) = S.Overshoot;
    US(i) = S.Undershoot;
    P(i) = S.Peak;
    PT(i) = S.PeakTime;
end

StepResponseSecond = struct('RiseTime', RT, 'SettlingTime', ST, 'SettlingMin', SMin, 'SettlingMax', SMax,...
    'Overshoot', OS, 'Undershoot', US, 'Peak', P, 'PeakTime', PT);