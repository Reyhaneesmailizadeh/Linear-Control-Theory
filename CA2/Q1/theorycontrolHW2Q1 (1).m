%HW2
%Q1
% Define the transfer functions for the two systems
num1 = [1 4];     % Numerator of the first transfer function
den1 = [1 1 0];   % Denominator of the first transfer function

num2 = [2];       % Numerator of the second transfer function
den2 = [2 1 3];   % Denominator of the second transfer function

% Create transfer function models for each system
sys1 = tf(num1, den1);
sys2 = tf(num2, den2);

% Calculate the overall transfer function for the cascade connection
sys_total = series(sys1, sys2);

% Define the input signal r(t)
t = 0:0.01:10;   % Time vector
r = 3 * exp(-0.5*t) .* cos(pi * 2 * t);  % Define r(t)

% Simulate the response of the systems to obtain u(t) and y(t)
u = lsim(sys1, r, t);
y = lsim(sys2, u, t);

% Plot r(t), u(t), and y(t)
figure;
subplot(3,1,1);
plot(t, r);
title('Input Signal r(t)');
xlabel('Time (s)');
ylabel('Amplitude');

subplot(3,1,2);
plot(t, u);
title('Output of First System u(t)');
xlabel('Time (s)');
ylabel('Amplitude');

subplot(3,1,3);
plot(t, y);
title('Output of Second System y(t)');
xlabel('Time (s)');
ylabel('Amplitude');
clear;
%Q2