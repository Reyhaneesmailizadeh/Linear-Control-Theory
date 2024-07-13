s = tf('s');
mytf = (s+5)*(s+3)/(s*(s+1)*(s^2 + s + 4))
mytf2 = (s+1)^2/((s^3)*(s+10)^2)
figure;
subplot(2,1,1);
bode(mytf2);
title('Bode Diagram of TF');
grid on;

omega_n = 1; 
zeta_values = [10, 3, 1, 0.7, 0.3, 0.1, 0]; 
w = logspace(-1, 1, 500);

figure;
hold on;
for i = 1:length(zeta_values)
    zeta = zeta_values(i);\
    sys = tf(omega_n^2, [1, 2*zeta*omega_n, omega_n^2]);
    bode(sys, w);
end
hold off;

title('Bode Plot for Different Values of \zeta');
legend(arrayfun(@(z) sprintf('\\zeta = %.1f', z), zeta_values, 'UniformOutput', false));
grid on;
