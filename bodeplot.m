% num = (s + 0.1)(s + 10) = s² + 10.1s + 1
% den = (s + 1)(s² + s + 9) = s³ + 2s² + 10s + 9
num = {[1 10.1 1]};
den = {[1 2 10 9]};
H = tf(num, den);
%bode(H)
pzmap(H);
sgrid
grid on