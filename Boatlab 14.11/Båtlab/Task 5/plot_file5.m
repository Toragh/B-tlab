data = load('boat_variables.mat');
info = load('boat_variables2.mat');

plot(data.ans(1,:), data.ans(2,:),'blue');      % compass 
hold on;
plot(data.ans(1,:), data.ans(5,:),'black');      % est psi
hold on;


title('TITLEEEE');
xlabel('[s]');
ylabel('[deg]');
hold off;

