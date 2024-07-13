% Define the Laplace domain transfer function 
syms s t;
F_s = (1/s) * ((s+2) / ((s+1)^3 + (s+1)^2 + 3 * (s+1) + 1));
% Compute the inverse Laplace transform
f_t = ilaplace(F_s);

% Plot the resulting signal
fplot(f_t, [0, 10]);  % Plot the signal from t = 0 to t = 10
xlabel('Time (t)');
ylabel('Signal');
title('Inverse Laplace Transform Result');
grid on;
