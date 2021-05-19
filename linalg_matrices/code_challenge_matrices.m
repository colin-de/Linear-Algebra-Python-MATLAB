%%
%36.matrix-scalar multiplication
m = 7;
n = 5;

A = randn(m,n);
B = randn(m,n);

s = randn;

%compute both sides of the equation
resL = s * (A+B);
resR = s*A + s*B;

resL - resR
%%
%40.linearity of trace
m = 4;
n = m;

A = randn(m,n);
B = randn(m,n);

clc
disp(['tr(A+B) =' num2str(trace(A+B))])
disp(['tr(A+B) =' num2str(trace(A)+trace(B))])

l = randn;
disp(' ');
disp(['tr(la) =' num2str(trace(l*A))])
disp(['l*tr(A) =' num2str(trace(A)*l)])
