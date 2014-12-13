clc
clear 
%default clear

%.tif okunamadýðý için orjinal resim yüksek kalitede .bmp olarak kaydedildi
im=imread('C:\Users\AKINN\Desktop\421_assignment#1\Fig3_8a.bmp'); %resim okunuyor
imshow(im); % orjinal resim gösteriliyor.
im=im2double(im);% resim unit formatýndan double formatýna çeviriliyor deðerlerin üzerinde matematiksel iþlem yapabilmek için.
[w h k]=size(im);% resim 3 boyutlu olduðundan 3 farklý deðere atanýyor

gamma=0.6;
C=1.2;

for i=1:w
  for j=1:h
    s(i,j)=C*(im(i,j)^gamma);
  end
end

figure, imshow(s);% çýktý resim gösteriliyor.