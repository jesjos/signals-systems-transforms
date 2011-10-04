w = 1;
N = 8192;
f = 100;
Ts = 1/f;
Tmax = N*Ts;
t= 0:Ts:Tmax;
x = sin(w*t);
plot(t, x)