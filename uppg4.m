% Uppgift 4v
% ((-1.8827e-09 - 1.3545e-09i)^-1)
roots = [0 -1i 1i -5i 5i -7i 7i -9i 9i 4.31165e8];
num = poly(roots);
proots = -4*ones(1,21);
den = poly(proots);
sys = tf(num,den);
bode(sys)
grid on
title('Uppgift 4 - vårt eget system')

% 21 poler