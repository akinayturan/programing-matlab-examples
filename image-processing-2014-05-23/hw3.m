clear; %default clear
clc;   %default clc
img_orj = imread('C:\Users\AKIN\Desktop\421\Fig0608(RGB-full-color-cube).tif'); % resim alýnýyor
[w, h, k] = size(img_orj); % resim uzunluklarý alýnýyor
imshow(img_orj); % orjinal resim gösteriliyor

r = img_orj(:,:,1); % orjinal resimin ilk renk katmaný r deðerine atýlýyor
g = img_orj(:,:,2); % orjinal resimin 2. renk katmaný g deðerine atýlýyor
b = img_orj(:,:,3); % orjinal resimin son renk katmaný b deðerine atýlýyor

% burada 8-8-4 level RGB renk sistemini uyguluyoruz 
% bu ayný zamanda gif formatý demek oluyormuþ.
% bu tabloda siyahý tam elde edememekle birlikte 
% beyazý tam olrak elde etmiþ oluyoruz.

for i = 1 : w
    for j = 1 : h
        
        % r deðeri eþ 8'e bölünüyor
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
        
        % g deðeri eþ 8'e bölünüyor
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
        
        % b deðeri eþ 4'e bölünüyor
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
img(:,:,1) = r; % deðiþen resimin yeni renk katmaný r deðerine atýlýyor
img(:,:,2) = g; % deðiþen resimin yeni renk katmaný r deðerine atýlýyor
img(:,:,3) = b; % deðiþen resimin yeni renk katmaný r deðerine atýlýyor
figure, imshow(img); % yeni resim gösteriliyor