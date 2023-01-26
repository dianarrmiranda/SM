function [x,t] = GeraSinal2(N,Ta)
phi = normrnd(0,pi,[1,N]);
phi_i1 = zeros(1,N);
for n = 2:N
    phi_i1(n) = phi_i1(n-1) + (phi(n)+phi(n-1))*Ta/2;
end

phi = normrnd(0,pi,[1,N]);
phi_i2 = zeros(1,N);
for n = 2:N
    phi_i2(n) = phi_i2(n-1) + (phi(n)+phi(n-1))*Ta/2;
end

t = (0:N-1)*Ta;
x = sin(2*pi*t) + 0.5*sin(2*pi*10*t + 10*phi_i1) + 0.5*sin(2*pi*12*t + 10*phi_i2);
end