numL = 1 ; denL = [1 5 17 13 0];
disp(['L(s) = ', poly2str(numL,'s'), '/', poly2str(denL, 's')]);
disp(' ');

% open figure 2
figure(2);

% define transfer function object for L(s)
sysL = tf(numL, denL);

% plot closed-loop system's root locus
rlocus(sysL);
title('Root Locus for Characteristic Equation 1 + K(1)/(s(s+1)(s^2 + 4s + 13)');

