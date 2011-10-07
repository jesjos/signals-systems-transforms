% num = (s + 0.1)(s + 10) = s² + 10.1s + 1
% den = (s + 1)(s² + s + 9) = s³ + 2s² + 10s + 9
num = {[1 10.1 1]};
den = {[1 2 10 9]};
H = tf(num, den);
subplot(2,2,1)
bode(H)
title('Bode for H');
% pzmap(H);
% sgrid
% grid on

N = 8192;
f = 100;
Ts = 1/f;
Tmax = (N-1)*Ts;
t= 0:Ts:Tmax;
Xs = ones(3,N);
Y = ones(3,N);
index = 1;
for w=[1 3 5],
    x = sin(w*t);
    Xs(index,:) = x;
    [y, t] = lsim(H,x,t);
    Y(index,:) = y;
    index = index +1;
end
subplot(2,2,2)
plot(t,Y(1,:), 'b',t, Xs(1,:),'r')
title('In and out signals for w=1');

% 3.3 sista punkten
x = square(t);
[y, t] = lsim(H,x,t);
omegas = [1 3 5];
calculated_coeffs = [];
for w=omegas,
    bk = 4/(pi*w);
    coeff = bk*abs(evalfr(H,w*1i));
    calculated_coeffs = [calculated_coeffs coeff]; 
end
calculated_coeffs

k = 0:(N-1);
wk = 2*pi*f*k/N;
X = fft(x, N);

indices = [];
for z = [1,3,5]
    [val,i] = min(abs(wk-z));
    indices = [indices i];
end

Y = fft(y,N);

empirical_cs = [];
for i = indices
    empirical_cs = [empirical_cs 2*abs(Y(i:i))/N];
end
empirical_cs

subplot(2,2,3)
plot(wk, abs(Y))
title('wk, abs(Y)')
axis([0, 7.5, 0, 6000])
subplot(2,2,4)
plot(wk, abs(X))
title('wk, abs(X)')
axis([0, 7.5, 0, 6000])

