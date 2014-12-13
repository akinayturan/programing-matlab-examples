clc
clear
%default clear

%.tif okunamadýðý için orjinal resim yüksek kalitede .bmp olarak kaydedildi
im=imread('C:\Users\AKINN\Desktop\421_assignment#1\Fig3_8a.bmp'); %resim okunuyor
imshow(im); % orjinal resim gösteriliyor.
im=im2double(im);% resim unit formatýndan double formatýna çeviriliyor deðerlerin üzerinde matematiksel iþlem yapabilmek için.
[w h k]=size(im);% resim 3 boyutlu olduðundan 3 farklý deðere atanýyor

c=4;

for i=1:w
  for j=1:h
    r = im(i,j);
    im2(i,j) = c*log10(1+r);
  end
end

figure, imshow(im2);% çýktý resim gösteriliyor.