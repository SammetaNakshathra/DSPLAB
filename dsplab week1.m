clc;
clear all;
a=input('enter the first matrix');	
b=input('enter the second matrix');
c=a+b;      % addition
d=a-b;      % subtraction
e=a*b;      % multiplication
f=a.*b;     % element by element multiplication
g=a/b;      % division
h=a./b;     % element by element division
i=a^2;      % exponention
j=a.^2;     % element by element exponention
k=det(a);   %  determinant
l=inv(a);   % inverse
m=2*a;      % scalar multiplication
n=a';	      % transpose
q=[a a; b b];    	% 	concatenation
a(:,2)=[];    % deleting the second column
p= q(1:3,1:3); % extracting submatrix from q
r=[q(:,4) q(:,1) q(:,3) q(:,2) ]; %Interchange the colomns of a matrix