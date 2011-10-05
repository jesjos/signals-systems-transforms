series = [1.2732 0.4244 0.2546];
estimated = [1.2702 0.4154 0.2398];



N = 2^13;
fs = 100;
Ts = 1/100;
t = 0:Ts:(N-1)*Ts;
x = square(t);
% plot(t,x);

k = 0:(N-1);
wk = 2*pi*fs*k/N;
X = fft(x,N);

plot(wk, abs(X))
