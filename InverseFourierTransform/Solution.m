close all
clearvars

W=[pi/6, pi/4, pi/3, pi/2];
n = -15:15;

for i=1:4
    xn = sin(W(i).*n)./(pi.*n);
%n=0 degerinde olusan belirsizligi kaldirmak icin l'hospital kuralini uyguluyoruz
%y degerlerini bastirirken l'hospital uygulanmis sekilde kullaniyorum.
%xn(0) = W / pi
X = [n,0];
if i == 1
    Y1 = [xn, W(i)/pi];
end
if i == 2
    Y2 = [xn, W(i)/pi];   
end
if i == 3
    Y3 = [xn, W(i)/pi]; 
end
if i == 4
    Y4 = [xn, W(i)/pi]; 
end
%Farkli W degerleri icin Y'ler
end;
subplot(2,2,1); stem(X, Y1); title('W = \pi/6');
subplot(2,2,2); stem(X, Y2,'-ro'); title('W = \pi/4');
subplot(2,2,3); stem(X, Y3); title('W = \pi/3');
subplot(2,2,4); stem(X, Y4,'-ro'); title('W = \pi/2');