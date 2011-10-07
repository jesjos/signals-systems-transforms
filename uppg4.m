% Uppgift 4

roots = [0 -i i -5i 5i -7i 7i -9i 9i, -(4^21/(5^2*7^2*9^2))];
num = poly(roots);
proots = -4*ones(1,21);
den = poly(proots);
sys = tf(num,den);
bode(sys)
grid on

% 21 poler

