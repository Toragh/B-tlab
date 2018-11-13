%Task 1
data = load('boat_variables.mat');
w_1 =0.005; 
w_2 =0.05;


length_out = length(data.ans(3,:));    % |H(jw)|
output = data.ans(3,length_out/2:end); % data after transient respons

bottom = min(output);
top = max(output);
amp = (top-bottom)/2;                  % amplitude of |H(jw)|


H_w_2 = 0.8308;                        % amplitude of |H(jw)| for w_1
H_w_1 = 29.35;                         % amplitude of |H(jw)| for w_2

%Task 1 b)
T = sqrt(((w_2^2)*H_w_2^2-(w_1^2)*H_w_1^2)/((w_1^4)*H_w_1^2-(w_2^4)*H_w_2^2));

K = H_w_1*w_1*(sqrt((T*w_1)^2+1));
