clear; %default clear
clc;   %default clc

% problem a)

k = input('Gaussian k Degerini Giriniz: '); % de�erler istendi
sigma = input('Sigma Degerini Giriniz: '); 

a = (2*k)+1;
for i = 1:a
   for j = 1:a
       H(i,j) = (1 / (2 * pi * (sigma^2) ) ) * exp (-(((i-k-1)^2+(j-k-1)^2)/ (2 * (sigma^2))));  % gerekli form�l i�lendi
   end
end


% problem b)

im_orj = imread('C:\Users\Ak�n\Desktop\IMG.tif'); % resim al�n�yor
[w, h, c]=size(im_orj); % resim 3 farkl� de�ere atan�yor
im_orj=im2double(im_orj); %resim double �evrildi

% zeros border
% border i�in 
% i-)  �nce �st k�sma h+2k kadar 0 koyuldu 
% ii)  bir alt sat�ra w kadar 0 koyulduktan sonra yan�na resim koyuldu resmin yan�nada k geni�li�inde w kadar 0 tekrar koyuldu 
% ii-) en son olarak alt sat�ra inildi ve terkrar h+2k kadar 0 koyuldu
im = [zeros(k,(h+2*k)); zeros(w,k), im_orj, zeros(w,k); zeros(k,(h+2*k))];

[w, h, c]=size(im); % piksel de�erleri w, h , c de�erlerine atand� 

filtre_toplam = 0;   
for i= 0:w-a            % border eklenmi� resimde gezinme
 for j= 0:h-a

     for x = 0:a-1      % filtre i�i gezinme
       for y = 0:a-1
         filtre_toplam = im(i+x+1,j+y+1)* H(x+1,y+1) + filtre_toplam; % filtre uygulanan piksel de�erleri topland�
       end
     end
   im_last(i+1,j+1) = filtre_toplam; % uygulanan filtreli de�er yeni resme aktar�l�yor
   filtre_toplam=0;

 end
end

figure, imshow(im_orj)   % orjinal resim g�steriliyor.
figure, imshow(im);      % border eklenmi� resim g�steriliyor.
figure, imshow(im_last); % ��kt� resim g�steriliyor. 

