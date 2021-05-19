%%
%RREF of different matrices

m = 5;
n= 5;
A = randn(m,n);

A(:,1) = rand*A(:,2) + rand*A(:,4);
rref(A)

