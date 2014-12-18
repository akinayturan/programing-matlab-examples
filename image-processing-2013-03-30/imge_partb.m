
a = zeros(256, 256, 'uint8');
deger=0;
for i=1:256
    a(:,i)=deger;
    deger=deger+1;
end
imshow(a)
B=imge_parta(a);
figure, imshow(B)

%part c
V=imread('Fig0222(a)(face).tif');
Y=imread('Fig0222(b)(cameraman).tif');
Z=imread('Fig0222(c)(crowd).tif');
V=imge_parta(V);
Y=imge_parta(Y);
Z=imge_parta(Z);
figure, imshow(V)
figure, imshow(Y)
figure, imshow(Z)

% c ��kk�nda kullan�lan resimlerden face,cameraman,crowd resimlerine
% uygulanan halftoning uygulamas�nda face ve cameraman resimlerinde sonu�ta
% olu�an resimler crowda g�re daha verimlidir. Uygulanan son resimde
% k�t� bir sonu� al�nmas�n�n sebebi di�er resimlere g�re daha fazla detay
% i�ermesidir.Yani, �ok daha fazla kenarlar aras� ge�i� oldu�undan ve bu i�lemin 
%s�k yap�lmas�ndan dolay� istenilen sonuca ula��lamam��t�r. Bu ge�i� ne kadar fazla ve s�k olursa
% sonu�ta o derece ba�ar�s�z olur.Bu g�r��� c ��kk�ndaki ilk ve ikinci
% resimlerden g�rebilmekteyiz. Sonu� olarak, halftoning uygulamas� kenar
% ge�i�lerinin fazla oldu�u resimlerde pek ba�ar�l� de�ildir.