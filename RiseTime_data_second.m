%variable_data_second_rand_limit;

RT1 = zeros(length(K) ,1);
RT2 = zeros(length(K) ,1);
RT3 = zeros(length(K) ,1);
RT4 = zeros(length(K) ,1);
RT5 = zeros(length(K) ,1);
RT6 = zeros(length(K) ,1);
RT7 = zeros(length(K) ,1);
RT8 = zeros(length(K) ,1);
RT9 = zeros(length(K) ,1);
RT10 = zeros(length(K) ,1);

for i=1:length(K)
    Gp = second_order_model_RiseTime(K(i), tau(i), zeta(i));
    S1 = stepinfo(Gp, 'RiseTimeThreshold', [0 1/10]);
    RT1(i) = S1.RiseTime + theta(i);
    S2 = stepinfo(Gp, 'RiseTimeThreshold', [0 2/10]);
    RT2(i) = S2.RiseTime + theta(i);
    S3 = stepinfo(Gp, 'RiseTimeThreshold', [0 3/10]);
    RT3(i) = S3.RiseTime + theta(i);
    S4 = stepinfo(Gp, 'RiseTimeThreshold', [0 4/10]);
    RT4(i) = S4.RiseTime + theta(i);
    S5 = stepinfo(Gp, 'RiseTimeThreshold', [0 5/10]);
    RT5(i) = S5.RiseTime + theta(i);
    S6 = stepinfo(Gp, 'RiseTimeThreshold', [0 6/10]);
    RT6(i) = S6.RiseTime + theta(i);
    S7 = stepinfo(Gp, 'RiseTimeThreshold', [0 7/10]);
    RT7(i) = S7.RiseTime + theta(i);
    S8 = stepinfo(Gp, 'RiseTimeThreshold', [0 8/10]);
    RT8(i) = S8.RiseTime + theta(i);
    S9 = stepinfo(Gp, 'RiseTimeThreshold', [0 9/10]);
    RT9(i) = S9.RiseTime + theta(i);
    S10 = stepinfo(Gp, 'RiseTimeThreshold', [0 9.5/10]);
    RT10(i) = S10.RiseTime + theta(i);
end
