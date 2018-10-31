data = load('boat_variables.mat');


% Transferfunction in Part1
plot(data.ans(1,:), data.ans(2,:),'red');      % input sine wave
hold on;
plot(data.ans(1,:), data.ans(3,:),'blue');      % |H(jw)|
hold on;



title('|H(jw)|');
xlabel('[s]');
ylabel('[deg/s]');
hold off;

