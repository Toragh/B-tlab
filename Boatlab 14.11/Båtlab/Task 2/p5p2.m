clear all
global w_0 max_intensity; 
% Part 2

% a)
data = load('boat_variables.mat');
info = load('wave.mat');

% fetching time and psi_w
time = info.psi_w(1, :);
psi = (info.psi_w(2, :))*pi/180;

% sampling frequency and window size
fs = 10;       
window = 4096;

% pxx_e = The PSD estimated
% f = frequency for any given w
[pxx_e,f] = pwelch(psi,window, [], [] ,fs); 

% converting units
pxx_e = pxx_e/(2*pi);
w = f*2*pi;

% c)
% Finding omega_0 and its corresponding intensity sigma^2
[max_i, max_index] = max(pxx_e);    
w_0 = w(max_index);                 
max_intensity = max_i;              

% d)
% optimalization settings for the
% curve fitting function
OPT = optimset('lsqcurvefit');
OPT.TolFun = 1e-18;
OPT.TolX = 1e-40;
OPT.MaxFunEvals = 1e5;

% function handle and initial point
PSD = @(lambda,w)pxx_a(lambda,w);
x0 = 0.1;

% curve fitting
lambda = lsqcurvefit(PSD, x0, w, pxx_e,[],[],OPT);







