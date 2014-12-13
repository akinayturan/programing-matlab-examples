clc
clear
%default clear

im=imread('C:\Users\AKINN\Desktop\421_assignment#1\Fig2_20_a.tif');  %resim okunuyor

x = input('Küçültmek Ýstediginiz Oraný Giriniz \n(girilen deðerin karesi oranýnda küçültür): ');  %küçültmek istenilen oran kullanýcýdan isteniyor

[w h k]=size(im); % resim 3 boyutlu olduðundan 3 farklý deðere atanýyor

a=1;
for i=1:x:w
  b=1;
  for j=1:x:h
    im2(a,b)=im(i,j);
    b=b+1;
  end
a=a+1;
end

imshow(im) % orjinal resim gösteriliyor.
figure, imshow(im2); % çýktý resim gösteriliyor.

imwrite(im2, 'C:\Users\AKINN\Desktop\421_assignment#1\deneme.tif'); % resmi orjinal formatta (.tif) kaydediyoruz. 
