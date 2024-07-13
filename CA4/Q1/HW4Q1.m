syms s t;

% Define the transfer function
H_s = 3 / (0.2*s + 1);

% Laplace transform of the step function
U_s = 1/s;

% Output in Laplace domain
Y_s = H_s * U_s;

% Inverse Laplace transform to time domain
y_t = ilaplace(Y_s);

% Evaluate the step response at t = infinity to find the steady-state value
steady_state_value = limit(y_t, t, Inf);

% Calculate the time when the output reaches 63.2% of the steady-state value
threshold_value = 0.632 * steady_state_value;
rise_time = vpasolve(y_t == threshold_value, t); % Solve for when y(t) = 0.632*lim(y(t))

% Plot the step response
t_values = linspace(0, 10, 1000); % Adjust the range as needed
y_values = subs(y_t, t, t_values);
plot(t_values, y_values, 'b', 'LineWidth', 2);
hold on;

% Plot the rise time line
plot([rise_time, rise_time], [0, 3], 'r--', 'LineWidth', 2);

% Annotate the rise time
text(double(rise_time)+0.5, 2.5, ['Constant Time = ', num2str(double(rise_time)), ' s'], 'Color', 'r');

xlabel('Time (s)');
ylabel('Output');
title('Step Response of the System');
grid on;
