%%
%13.create 2 4x6 matrices of random numbers

A = randn(4,6);
B = randn(4,6);

dps = zeros(size(A,2),1);
for i=1:size(A,2)
    dps(i) = dot(A(:,i),B(:,i));
end
%%
%14.Is the dot product commutative?
%a'*b == b'*a

a = randn(1,100);
b = randn(1,100);
[a*b' b*a']

a = [2 4];
b = [3 5];
[a*b' b*a']
%%
%17.dot product sign and scalar multiplication 
v1 = [-3 4 6]';
v2 = [3 6 -3]';

s1 = -2;
s2 = 3;

disp(['Original:' num2str(dot(v1,v2))])

disp(['Scaled:' num2str((s1*v1)'*(s2*v2))])
%%
%24.dot products with unit vectors
n = 4;
v1 = round(20*randn(n,1));
v2 = round(20*randn(n,1));

%compute the lengths of the individual vectors and magnitude their dot
%product
v1m = sqrt(v1'*v1);
v2m = sqrt(v2'*v2);
dpm = abs(sum(v1.*v2));

%normalize the vectors
v1u = v1/v1m;
v2u = v2/v2m;

v1um = sqrt(v1u'*v1u);
v2um = sqrt(v2u'*v2u);
%compute the magnitude of that dot product
dpum = abs(sum(v1u.*v2u));

v2m = sqrt(v2'*v2);