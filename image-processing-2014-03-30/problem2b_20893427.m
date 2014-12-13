clc
clear 
%default clear

%.tif okunamad��� i�in orjinal resim y�ksek kalitede .bmp olarak kaydedildi
im=imread('C:\Users\AKINN\Desktop\421_assignment#1\Fig3_8a.bmp'); %resim okunuyor
imshow(im); % orjinal resim g�steriliyor.
im=im2double(im);% resim unit format�ndan double format�na �eviriliyor de�erlerin �zerinde matematiksel i�lem yapabilmek i�in.
[w h k]=size(im);% resim 3 boyutlu oldu�undan 3 farkl� de�ere atan�yor

gamma=0.6;
C=1.2;

for i=1:w
  for j=1:h
    s(i,j)=C*(im(i,j)^gamma);
  end
end

figure, imshow(s);% ��kt� resim g�steriliyor.