clear; %default clear
clc;   %default clc
img_orj = imread('C:\Users\AKIN\Desktop\421\Fig0608(RGB-full-color-cube).tif'); % resim al�n�yor
[w, h, k] = size(img_orj); % resim uzunluklar� al�n�yor
imshow(img_orj); % orjinal resim g�steriliyor

r = img_orj(:,:,1); % orjinal resimin ilk renk katman� r de�erine at�l�yor
g = img_orj(:,:,2); % orjinal resimin 2. renk katman� g de�erine at�l�yor
b = img_orj(:,:,3); % orjinal resimin son renk katman� b de�erine at�l�yor

% burada 8-8-4 level RGB renk sistemini uyguluyoruz 
% bu ayn� zamanda gif format� demek oluyormu�.
% bu tabloda siyah� tam elde edememekle birlikte 
% beyaz� tam olrak elde etmi� oluyoruz.

for i = 1 : w
    for j = 1 : h
        
        % r de�eri e� 8'e b�l�n�yor
        if r(i,j) <= 32
            r(i,j)= 32;
        elseif r(i,j) <= 64 
            r(i,j)= 64;
        elseif r(i,j) <= 96
            r(i,j)= 96;
        elseif r(i,j) <= 128
            r(i,j)= 128;
        elseif r(i,j) <= 160
            r(i,j)= 160;
        elseif r(i,j) <= 192
            r(i,j)= 192;
        elseif r(i,j) <= 224
            r(i,j)= 224;
        elseif r(i,j) <= 255
            r(i,j)= 255;
        end
        
        % g de�eri e� 8'e b�l�n�yor
        if g(i,j) <= 32
            g(i,j)= 32;
        elseif g(i,j) <= 64 
            g(i,j)= 64;
        elseif g(i,j) <= 96
            g(i,j)= 96;
        elseif g(i,j) <= 128
            g(i,j)= 128;
        elseif g(i,j) <= 160
            g(i,j)= 160;
        elseif g(i,j) <= 192
            g(i,j)= 192;
        elseif g(i,j) <= 224
            g(i,j)= 224;
        elseif g(i,j) <= 255
            g(i,j)= 255;
        end
        
        % b de�eri e� 4'e b�l�n�yor
        if b(i,j) <= 64
            b(i,j)= 64;
        elseif b(i,j) <= 128
            b(i,j)= 128;
        elseif b(i,j) <= 192
            b(i,j)= 192;
        elseif b(i,j) <= 255
            b(i,j)= 255;
        end
        
    end
end
img(:,:,1) = r; % de�i�en resimin yeni renk katman� r de�erine at�l�yor
img(:,:,2) = g; % de�i�en resimin yeni renk katman� r de�erine at�l�yor
img(:,:,3) = b; % de�i�en resimin yeni renk katman� r de�erine at�l�yor
figure, imshow(img); % yeni resim g�steriliyor