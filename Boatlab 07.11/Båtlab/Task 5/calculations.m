w_1 = 0.005;
w_2 = 0.05;
H_w_1 = 1.352;
H_w_2 = 2.652;
x = K;
y = T;

syms x y
eqn1 = K == sqrt((w_1*T)^2+1)*w_1*H_w_1;
eqn2 = K == sqrt((w_2*T)^2+1)*w_2*H_w_2;

[A,B] = equationsToMatrix([eqn1, eqn2],[x,y]);