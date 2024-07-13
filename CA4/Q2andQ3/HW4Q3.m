clear
% Define the values of k
k_values = [0.1, 0.235, 10];

for i = 1:length(k_values)
    k = k_values(i);
    
    % Calculate rising time (T_r)
    T_r = (pi - atan(sqrt(abs(-4*k+1))))/(sqrt(abs(-4*k+1))/2);
    
    % Settling time (T_s)
    T_s = 6;
    
    % Calculate overshoot (%OS)
    overshoot = exp((-pi/(2*sqrt(k))) / (sqrt(abs(-4*k+1))/sqrt(4*k)));
    
    % Display results
    disp(['For k = ', num2str(k)]);
    disp(['Rising Time (T_r): ', num2str(T_r), ' seconds']);
    disp(['Settling Time (T_s): ', num2str(T_s), ' seconds']);
    disp(['Overshoot: ', num2str(overshoot * 100), '%']);
    disp(' ');
end

