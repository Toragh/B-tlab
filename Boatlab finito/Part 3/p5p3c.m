clear all
% Task 3
%c)
w_r = 30;
w_c = 0.1;
K = 0.1561;
T = 72.4357;
T_d = T;
T_f = 1/(w_c*tan(-130*pi/180));
K_pd = (sqrt(w_c.^4*T_f.^2+w_c.^2))./K;

