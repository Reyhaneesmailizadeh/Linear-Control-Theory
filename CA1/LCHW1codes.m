clear;
syms t s a b;
%Q1

% Coefficients of the polynomial equation
coefficients = [2, 33, 128, 88, 126, 55];

% Calculate the roots of the polynomial equation
roots = roots(coefficients);

disp('Roots of the equation:');
disp(roots);

% Plot the roots in the complex plane
figure;
scatter(real(roots), imag(roots), 'rx');
hold on;
plot([0 0], ylim, 'k--', 'LineWidth', 0.5);
plot(xlim, [0 0], 'k--', 'LineWidth', 0.5);
xlabel('Real Part');
ylabel('Imaginary Part');
title('Roots of the Polynomial Equation');
grid on;
hold off;






%Q2
% Define the function
f_t = t^2 * exp(-2 * t) * sin(t);
g_t = t * exp(a * t) * cos(b * t);
h_t = sin(4*t)/t;
% Calculate the Laplace transform
laplace_transform1 = laplace(f_t, t, s);

laplace_transform2 = laplace(g_t, t, s);

laplace_transform3 = laplace(h_t, t, s);

% Simplify the result
laplace_transform_simplified1 = simplify(laplace_transform1);

laplace_transform_simplified2 = simplify(laplace_transform2);

laplace_transform_simplified3 = simplify(laplace_transform3); 

% Display the result
disp('Laplace Transform of f(t):');
disp(laplace_transform_simplified1);

disp('Laplace Transform of g(t):');
disp(laplace_transform_simplified2);

disp('Laplace Transform of h(t):');
disp(laplace_transform_simplified3);

%Q3

F1 = (2 * (s - 1) * exp(-2 * s)) / (s*s - 2 * s + 2);

F2 = (10 * (s + 2) * (s + 4))/((s+1)*(s+3)*(s+5)*(s+5));
 
F3 = 1 / (s * s * s + 8 * s * s + 17 * s + 10);



f1 = simplify(ilaplace(F1));

f2 = simplify(ilaplace(F2));

f3 = simplify(ilaplace(F3));


disp('Inverse Laplace Transform of F1:');
disp(f1);

disp('Inverse Laplace Transform of F2:');
disp(f2);

disp('Inverse Laplace Transform of F3:');
disp(f3);

