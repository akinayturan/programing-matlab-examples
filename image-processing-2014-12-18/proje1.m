%temizlik sat�rlar�
clc;
clear;
clear all;

%ba�lang��
im_orj = imread('deneme.jpg');  %resim okunuyor


%orjinal resim
figure(1), imshow(im_orj); title('1) Orijinal Resim');

%siyah beyaz resim
im_sb = rgb2gray(im_orj);
figure(2), imshow(im_sb); title('2) Siyah Beyaz Resim');

%Gaussian

os = 0; % Ortalama sapma de�eri
ss = 0.022; % Standart sapmas�

im_gaus = imnoise(im_sb,'gaussian',os,ss);
figure(3), imshow(im_gaus); title('3) Gaussian G�r�lt� Eklenmi� Resim'); % Gaussian eklenmi� resim g�steriliyor. 

% butterworth
cf=fftshift(fft2(im_gaus));
[x,y]=meshgrid(-128:127,-128:127);
bl=1./(1+((x.^2+y.^2)/15).^10);
cfbl=cf.*bl;
b1=ifft2(cfbl);
figure(4), imshow(uint8(abs(b1))); title('4) Birinci S�zge� ��k��� Resim');

cf=fftshift(fft2(im_gaus));
[x,y]=meshgrid(-128:127,-128:127);
bl=1./(1+((x.^2+y.^2)/15).^1);
cfbl=cf.*bl;
b2=ifft2(cfbl);
figure(5), imshow(uint8(abs(b2))); title('5) �kinci S�zge� ��k��� Resim');

cf=fftshift(fft2(im_gaus));
[x,y]=meshgrid(-128:127,-128:127);
bl=1./(1+((x.^2+y.^2)/15).^0.1);
cfbl=cf.*bl;
b3=ifft2(cfbl);
figure(6), imshow(uint8(abs(b3))); title('6) ���nc� S�zge� ��k��� Resim');
