clear;
clc;

k = input('Gaussian k Degerini Giriniz: ');
q = input('q Degerini Giriniz: '); 
a = (2*k)+1;
p= 2* k;
for i = 1:a
   for j = 1:a
       H(i,j) = (1/(2 * pi * (q^2))) * exp(-((i-k-1)^2+(j-k-1)^2)/(2 * (q^2)));  
   end
end


I = imread('C:\Users\Akýn\Desktop\IMG.tif');
[w,h,e]=size(I);
Im = [I,I,I;I,I,I;I,I,I];

e=1;
for i = (h-k)+1 : ((2*h)+k)
    b=1;
    for j = (w-k)+1 : ((2*w)+k)
        im(e,b) = Im(i,j);
        b = b + 1;
    end
    e=e+1;
end
[w, h, c]=size(im);

count= 0;
for i= 1:h-a
 for j= 1:w-a

    % maske
     for x = 1:a
       for y = 1:a
         count = im(i+x-1,j+y-1)* H(x,y) + count;
       end
     end
   h2(i,j) = count;
   count=0;

 end
end

imshow(I) % orjinal resim gösteriliyor.
figure, imshow(im); % çýktý resim gösteriliyor.
figure, imshow(h2); % çýktý resim gösteriliyor.
