%%
%determinant of small and large singular matrices


%singular matrix (reduced-rank matrix) has a determinant of 0;

%generate a 2x2 matrix of integers, and with linear dependencies
A = [1 3; 1 3];
%generate mxm matrices, impose linear dependencies
m = 30;
A = randn(m);
A(:,1) = A(:,2);

det(A)
%%
%96.large matrices with row exchanges
%compute the determinant 
%swap one row
%swap two rows
clc
A = randn(6);
disp(['Before row swap: ' num2str(det(A))])

As = A([2 1 3 4 5 6],:);
disp(['After row swap: ' num2str(det(As))])

Ass = A([2 1 3 5 4 6],:);
disp(['After 2row swap: ' num2str(det(Ass))])
%%
% determinant of shifted matrices
%generate a square random matrix
%impose a linear dependence
%shift the matrix 

lambdas = linspace(0,.1,30);

dets = zeros(length(lambdas),1);

 for deti=1:length(lambdas)
     for i=1:1000
         %generate a matrix
         M = randn(20);
         %reduce the rank
         M(:,1) = M(:,2);
         %compute the determinant
         tmp = abs(det( M + lambdas(deti)*eye(20)));
     end
     
     dets(deti) = mean(tmp);
 end
 
 plot(lambdas,dets,'s-')
 xlabel('Fraction of identity matrix for shifting')
 ylabel('determinant')
 %%
 %99.determinant of matrix product
 A = randn(3);
 B = randn(3);
 AB = A*B;
 [det(A) det(B) det(A)*det(B) det(AB)];
 
 k = 40;
 dets = zeros(k,2);
 for i=1:k
     A = randn(k);
     B = randn(k);
     AB = A*B;
     
     dets(i,:) = [det(A)*det(B) det(AB)];
 end
 plot(dets(:,1)-dets(:,2),'s-')
 set(gca,'ylim',[-1 1])
 