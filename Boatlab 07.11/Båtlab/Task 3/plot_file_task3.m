data = load('boat_variables');

plot(data.ans(1,:), data.ans(2,:),'blue');       % desired course angle
hold on;
plot(data.ans(1,:), data.ans(3,:),'red');       % rudder
hold on;
plot(data.ans(1,:), data.ans(4,:),'magenta');    % compass
hold on;


title('Autopilot with measurement noise & wave disturbance');
xlabel('Time [s]');
ylabel('Angle [deg]');
hold off;
