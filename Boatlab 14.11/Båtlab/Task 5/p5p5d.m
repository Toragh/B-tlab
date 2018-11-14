%  Task 5

T = 72.4357;
K = 0.1561;
lambda = 0.0827;
w_0 = 0.7823;
sigma = sqrt(7.9191e-04); 
K_w = 2*lambda*w_0*sigma;

w_r = 30;
w_c = 0.1;
T_d = T;
T_f = 1/(w_c*tan(-130*pi/180));
K_pd = (sqrt(w_c.^4*T_f.^2+w_c.^2))./K;

% a) Discretization of State space model
% Continous time model

A = [0 1 0 0 0;
    -w_0.^2 -2*lambda*w_0 0 0 0;
    0 0 0 1 0;
    0 0 0 -1/T -K/T;
    0 0 0 0 0];
B = [0; 0; 0; K/T; 0];
E = [0 0; K_w 0; 0 0; 0 0; 0 1];
C = [0 1 1 0 0];
D = 0;

% Discrete time model

Ts = 0.1;
[Ad, Bd] = c2d(A, B, Ts);
[Ad, Ed] = c2d(A, E, Ts);
Cd = C;
Dd = D;

% b) Estimate of measurement variance

data = load('boat_variables.mat');
variance = ((pi/180).^2)* var(data.ans(2, :)); %[rad^2]

% c) Kalman Filter

P_pri_0 = [1 0 0 0 0;0 0.013 0 0 0; 0 0 pi^2 0 0; 0 0 0 1 0;0 0 0 0 2.5*10^-3];
x_pri_0 = [0; 0; 0; 0; 0];
Q = [30 0; 0 10^-6];




R = variance/Ts;
I =diag([1 1 1 1 1]);




    
    
  


