N = 2^13;
fs = 100;
Ts = 1/100;
t = 0:Ts:10-Ts;
x = square(t);
% plot(t,x);

k = 0:(N-1);
wk = 2*pi*fs*k/N;

X = fft(x,N);

plot(wk, X)
