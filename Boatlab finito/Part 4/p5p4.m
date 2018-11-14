%Task 4
T = 72.4357;
K = 0.1561;
lambda = 0.0827;
w_0 = 0.7823;

%b)Observability without disturbances
A_1 = [0 1;0 -1/T];
C_1 = [1 0];

obs_1 = obsv(A_1, C_1);

%c)Observability with current disturbance
A_2 = [0 1 0;0 -1/T -K/T;0 0 0];
C_2 = [1 0 0];

obs_2 = obsv(A_2, C_2);

%d)Observability with wave disturbance
A_3 = [ 0 1 0 0; -(w_0).^2 -2*lambda*w_0 0 0; 0 0 0 1; 0 0 0 -1/T];
C_3 = [0 1 1 0];

obs_3 = obsv(A_3, C_3);
