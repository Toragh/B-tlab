data = load('boat_variables.mat');
info = load('model_variables.mat');


% Transferfunction in Part1
plot(data.ans(1,:), data.ans(3,:),'red');      % ship
hold on;
plot(info.ans(1,:), info.ans(2,:),'blue');      % model
hold on;



title('Step response comparison');
xlabel('time [s]');
ylabel('amplitude [deg]');
hold off;

