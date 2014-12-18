
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

% c þýkkýnda kullanýlan resimlerden face,cameraman,crowd resimlerine
% uygulanan halftoning uygulamasýnda face ve cameraman resimlerinde sonuçta
% oluþan resimler crowda göre daha verimlidir. Uygulanan son resimde
% kötü bir sonuç alýnmasýnýn sebebi diðer resimlere göre daha fazla detay
% içermesidir.Yani, çok daha fazla kenarlar arasý geçiþ olduðundan ve bu iþlemin 
%sýk yapýlmasýndan dolayý istenilen sonuca ulaþýlamamýþtýr. Bu geçiþ ne kadar fazla ve sýk olursa
% sonuçta o derece baþarýsýz olur.Bu görüþü c þýkkýndaki ilk ve ikinci
% resimlerden görebilmekteyiz. Sonuç olarak, halftoning uygulamasý kenar
% geçiþlerinin fazla olduðu resimlerde pek baþarýlý deðildir.