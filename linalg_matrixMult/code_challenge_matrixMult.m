%%
%45.matrix multiplication by layering
m = 4;
n = 6;
A = randn(m,n);
B = randn(n,m);

C1 = zeros(m);
for i=1:n
    C1 = C1 + A(:,i)*B(i,:);
end

C2 = A*B;

C1 == C2

C1 - C2
%%
%50.pure and impure rotation matrices
v = [3 -2]';
thetas = linspace(0,2*pi,100);

%initialize
vecmags = zeros(length(thetas),2);

for i=1:length(thetas)
    theta = thetas(i);
    
    %impure transformation matrix
    A1 = [2*cos(theta) -sin(theta);
     sin(theta) cos(theta)];
    
    %%pure transformation matrix
    A2 = [cos(theta) -sin(theta);
     sin(theta) cos(theta)];
 
    vecmags(i,1) = norm(A1*v);
    vecmags(i,2) = norm(A2*v);
end
    
clf
plot(thetas,vecmags,'linew',3)
ylabel('Av magnitude'),xlabel('Angle (rad.)')
legend({'impure rotation';'pure rotation'})
%%
%51.geometric transformations via matrix multiplication
%generate XY coordinates for a circle
%plot the circle
x = linspace(-pi,pi,100);
xy = [cos(x); sin(x)]';

figure(1), clf
plot(xy(:,1),xy(:,2),'bs','markerfacecolor','w')

%create a 2x2 matrix by coordinates
T = [1 0; 0 1];

%multiply matrix by coordinates
newxy = xy*T;

%plot the new coords
hold on
plot(newxy(:,1),newxy(:,2),'markerfacecolor','m')
axis([-1 1 -1 1]*max([newxy(:); xy(:)]))
axis square
%try with various matrices

%try with singular matrix(columns form a lineraly dependent set)
%%
%55.symmetry of combined symmetric matrices
m = 3;
A = randn(m);
B = randn(m);

AtA = A'*A;
BtB = B'*B;

Cs = AtA + BtB;
Cm = AtA * BtB;
Ch = AtA .* BtB;

Cs - Cs'
Cm - Cm'
Ch - Ch'
%%
%standard and Hadamard multiplication for diagonal
A = randn(4);
D = diag( rand(4,1));

%multiply each matrix by itself (A*A) standard and hadamard multiplications
A*A
A.*A

D*D
D.*D
%%
%Fourier transform via matrix multiplication
n = 52;
F = zeros(n);

for j=1:n
    for k=1:n
        w = exp(-2*pi*sqrt(-1)/n);
        m = (j-1)*(k-1);
        F(j,k) = w^m;
    end
end

x = randn(n,1)
X1 = F*x;
X2 =fft(x);

clf
plot(1:n, abs(X1)), hold on
plot(1:n, abs(X2),'o')
%%
%conditions and proof of self-adjoint operator
m = 5;
A = randn(m);
%A = A*A';

v = randn(5,1);
w = randn(5,1);

dot(A*v,w) - dot(v,A*w)

