clear; %default clear
clc;   %default clc

k = input('Gaussian k Degerini Giriniz: ');
sigma = input('Sigma Degerini Giriniz: '); 
a = (2*k)+1;
for i = 1:a
   for j = 1:a
       H(i,j) = (1 / (2 * pi * (sigma^2) ) ) * exp (-(((i-k-1)^2+(j-k-1)^2)/ (2 * (sigma^2))));  
   end
end