% Define the range for k
k = linspace(0.1, 10, 500); % Avoid k=0 to prevent division by zero

% Compute the values for Kh based on the inequality
Kh = (k - 1 - k.^2) ./ (10 * k);

% Plot the inequality
figure;
hold on;
plot(k, Kh, 'r', 'LineWidth', 2);

% Define a range for Kh
Kh_min = min(Kh) - 1;
Kh_max = max(Kh) + 1;

% Shade the region where the inequality holds
fill([k, fliplr(k)], [Kh_max*ones(size(k)), fliplr(Kh)], 'g', 'FaceAlpha', 0.3);

% Add labels and legend
xlabel('k');
ylabel('K_h');
title('Region where K_h > (k - 1 - k^2) / (10k)');
legend('K_h > (k - 1 - k^2) / (10k)', 'Feasible Region', 'Location', 'Best');
grid on;
hold off;

