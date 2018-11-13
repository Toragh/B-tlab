data = load('boat_variables.mat');


% Transferfunction in Part1
plot(data.ans(1,:), data.ans(2,:),'red');      % measured compass
hold on;
plot(data.ans(1,:), data.ans(3,:),'blue');      % rudder input
hold on;
plot(data.ans(1,:), data.ans(4,:),'green');      % estimated bias
hold on;
% plot(data.ans(1,:), data.ans(5,:),'green');      % estimated bias
% hold on;



title('|H(jw)|');
xlabel('[s]');
ylabel('[deg/s]');
hold off;

