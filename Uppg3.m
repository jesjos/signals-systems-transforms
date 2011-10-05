T = 2;
w=2*pi/T;
M=200;
t=T*(0:M-1)/M;
y = @(t) 0;
bs = [];
for k=1:100
  ck = -(mod(k, 2))*((1i*2)/(pi*k));
  cminusk = -(mod(k, 2))*((1i*2)/(pi*(-k)));
  ak = ck + cminusk;
  bk = 2i*ck;
  bs = [bs bk];
  y = @(t) y(t) + ak*cos(k*w*t) + bk*sin(k*w*t);
end
bs
plot(t, y(t))