%%
%118. decompose vector to orthogonal components
w = [-1 3]';
v = [0 3]';

%compute w-parallel-to-v
beta = sum(w.*v) / (v'*v);
w_par_v = beta*v;

%compute w-orthogonal-to-v
w_perp_v = w -w_par_v;

%confirm results algebraically sum to w, orthogonal components
(w_par_v + w_perp_v) - w
w_par_v'*w_perp_v

%plot 
figure(1), clf, hold on
plot([0 w(1)],[0 w(2)], 'r', 'linew',3)
plot([0 v(1)],[0 v(2)], 'b', 'linew',2)

plot([0 w_par_v(1)],[0 w_par_v(2)],'r--','linew',3)
plot([0 w_par_v(1)],[0 w_par_v(2)],'r--','linew',3)

legend({'w';'v';'w_{||v}';'w{\perp v}'})
axis([-1 1 -1 1]*5)
axis square
grid on
%%
% 122.Gram-Schmidt algorithm

m = 4;
n = 4;
A = randn(m,n);
Q = zeros(m,n);

%loop over the columns
for i = 1 : n
    
    Q(:,i) = A(:,i);
    a = A(:,i);
    
    %orthogonalize the ith column in Q relative to the previous columns in
    %A
    for j = 1 : i - 1
        q = Q(: , j);
        Q(: , i) = Q(:, i) - (a'*q / (q'*q)) *q;
    end
    
    %normalize the ith column of Q
    Q(:, i) = Q(:, i) / norm(Q(:, i));
end

imagesc(Q' *Q)
[Q2,R] = qr(A);
Q2
Q
%%
% 124.inverse via QR
%gernerate a large matrix and invert using QR and inv()
x = 100;
O = randn(x);

Oi = inv(O);

[Q,R] = qr(O);
OiQR1 = inv(R)*Q';
OiQR2 = R\Q';

[ Oi(:) OiQR1(:) OiQR2(:) ]; 
%%
% 126. A^TA = R^TR (R from QR)
m =10;
n = 4;
A = randn(m,n);

[Q,R] = qr(A);

A'*A - R'*R
Q'*Q
%%
