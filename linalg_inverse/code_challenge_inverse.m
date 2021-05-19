%%
%105.implement the MCA algorithm

m = 4;
A = randn(m);

% M: minors
for i = 1:m
    for j = 1:m
        rows = true(1,m);
        rows(i) = false;

        cols = true(1,m);
        cols(j) = false;
        
        minors(i,j) = det( A(rows,cols));
        
        H(i,j) = (-1)^(i+j);
    end
end

%cofactors
C = minors .* H;

%computer adjugate
Ainv = C' / det(A);
Ainv2 = inv(A);

Ainv-Ainv2
%%
% 107.inverse of a diagonal matrix
A = [ 2 0; 0 3];

A = diag(1:10);
Adiag = diag(A);
Idiag = diag(inv(A));
%%
%112.pseudoinverse of inverstible matrices
m = 5;
A = randn(m);

AinvF = inv(A);
AinvP = pinv(A);

A*AinvF
A*AinvP
