clc
clear
%default clear

im=imread('C:\Users\AKINN\Desktop\421_assignment#1\Fig2_20_a.tif');  %resim okunuyor

x = input('K���ltmek �stediginiz Oran� Giriniz \n(girilen de�erin karesi oran�nda k���lt�r): ');  %k���ltmek istenilen oran kullan�c�dan isteniyor

[w h k]=size(im); % resim 3 boyutlu oldu�undan 3 farkl� de�ere atan�yor

a=1;
for i=1:x:w
  b=1;
  for j=1:x:h
    im2(a,b)=im(i,j);
    b=b+1;
  end
a=a+1;
end

imshow(im) % orjinal resim g�steriliyor.
figure, imshow(im2); % ��kt� resim g�steriliyor.

imwrite(im2, 'C:\Users\AKINN\Desktop\421_assignment#1\deneme.tif'); % resmi orjinal formatta (.tif) kaydediyoruz. 
