% LAB SSY080
% Square wave function

function [] = squarewave()

% Number of signals to be added together
N = 100;

    
% Period Time
T=1; 

% Omega
w=2*pi/T;

% Data points per period
M=200;

% Time variable
t=T*(0:M-1)/M;


f = @(t) 0;
% Fourier Series (Sum of sinus signals)
for k = 1:N
    
    % F-values
    c = mod(k, 2) * 2/(pi*1i*k);
    a = c - c;
    b = 2i*c;

    f = @(t) f(t) + a*cos(k*w*t) + b*sin(k*w*t);
end

% Plot resulting function
plot(t,f(t))

end