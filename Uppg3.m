T = 1;
w=2*pi/T;
M=200;
t=T*(0:M-1)/M;
y=sin(w*t);
for k=0
  Bk=(1/(2*pi*k))*(2*cos(k*pi) - 2);
  y = y + Bk*sin(k*w*t);
end
plot(t,y);