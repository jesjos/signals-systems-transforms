T = 2;
w=2*pi/T;
M=200;
t=T*(0:M-1)/M;
y = @(t) 0;
for k=1:50
  b = mod(k,2)*(4/(k*pi));
  y = @(t) y(t) + b*sin(k*w*t);
end
plot(t, y(t))