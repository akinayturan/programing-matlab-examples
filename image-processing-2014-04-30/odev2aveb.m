clear; %default clear
clc;   %default clc

% problem a)

k = input('Gaussian k Degerini Giriniz: '); % deðerler istendi
sigma = input('Sigma Degerini Giriniz: '); 

a = (2*k)+1;
for i = 1:a
   for j = 1:a
       H(i,j) = (1 / (2 * pi * (sigma^2) ) ) * exp (-(((i-k-1)^2+(j-k-1)^2)/ (2 * (sigma^2))));  % gerekli formül iþlendi
   end
end


% problem b)

im_orj = imread('C:\Users\Akýn\Desktop\IMG.tif'); % resim alýnýyor
[w, h, c]=size(im_orj); % resim 3 farklý deðere atanýyor
im_orj=im2double(im_orj); %resim double çevrildi

% zeros border
% border için 
% i-)  önce üst kýsma h+2k kadar 0 koyuldu 
% ii)  bir alt satýra w kadar 0 koyulduktan sonra yanýna resim koyuldu resmin yanýnada k geniþliðinde w kadar 0 tekrar koyuldu 
% ii-) en son olarak alt satýra inildi ve terkrar h+2k kadar 0 koyuldu
im = [zeros(k,(h+2*k)); zeros(w,k), im_orj, zeros(w,k); zeros(k,(h+2*k))];

[w, h, c]=size(im); % piksel deðerleri w, h , c deðerlerine atandý 

filtre_toplam = 0;   
for i= 0:w-a            % border eklenmiþ resimde gezinme
 for j= 0:h-a

     for x = 0:a-1      % filtre içi gezinme
       for y = 0:a-1
         filtre_toplam = im(i+x+1,j+y+1)* H(x+1,y+1) + filtre_toplam; % filtre uygulanan piksel deðerleri toplandý
       end
     end
   im_last(i+1,j+1) = filtre_toplam; % uygulanan filtreli deðer yeni resme aktarýlýyor
   filtre_toplam=0;

 end
end

figure, imshow(im_orj)   % orjinal resim gösteriliyor.
figure, imshow(im);      % border eklenmiþ resim gösteriliyor.
figure, imshow(im_last); % çýktý resim gösteriliyor. 

