%%
%67.reduced-rank matrix via multiplication

%create a 10x10 matrix with rank4 
A = randn(10,4) * randn(4,10);
size(A)
rank(A)

%generalize the procedure to create any MxN matrix with rank r
m = 8;
n = 47;
r = 13;

A = randn(m,r) * randn(r,n);
size(A)
rank(A)
%%
%68.scalar multiplication and rank

%create full-rank and reduced-rand matrices
m = 6;
n = 4;

F = randn(m,n)*randn(n);
R = randn(m,n-1)*randn(n-1,n);

%create some scalar
l = 2.34523452345;
%print ranks of F, R, l*F, l*R
clc
disp([ 'rank(F) = ' num2str(rank(F))])
disp([ 'rank(l*F) = ' num2str(rank(l*F))])
disp(' ')
disp([ 'rank(R) = ' num2str(rank(R))])
disp([ 'rank(l*R) = ' num2str(rank(l*R))])
disp(' ')
disp([ 'rank(R) = ' num2str(rank(R))])
disp([ 'l*rank(R) = ' num2str(l*rank(R))])
%%
%70.rank of multiplied and summed matrices
%rules: rank of AB<=min( rank(A),rank(B))
%       rank of A+B<=rank(A)+rank(B)
m = 2;
n = 5;

A = rand(m,n);
B = rand(m,n);

AtA = A'*A;
BtB = B'*B;

rank(AtA)
rank(BtB)

rank( AtA * BtB)
rank( AtA + BtB)
%%
%72.is this vector in the span of this set
v = [1 2 3 4]';

%is in the span of these sets
s = [ [4 3 6 2]' [0 4 0 1]'];
T = [ [1 2 2 2]' [0 0 1 2]'];

