close all
clearvars
% x ve h degerlerini giriniz
x = input("x[] degerlerini '[ ]' icerisinde giriniz: ");
h = input("h[] degerlerini '[ ]' icerisinde giriniz: ");
% konvolusyon algoritmasi
m=length(x);   %girilen dizilerin boyut hesabi
n=length(h);
X=[x,zeros(1,n)];   
H=[h,zeros(1,m)];
for i=1:n+m-1
    Y(i)=0;
    for j=1:m
        if(i-j+1>0)
            Y(i)=Y(i)+X(j)*H(i-j+1);
        else
        end
    end
end
%conv fonksiyonunu kullanarak elde edilen y
y = conv(x,h);
% plot sonuclari
figure;
subplot(2,2,1); stem(x, '-b^'); xlabel('n');
ylabel('x[n]'); grid on;
subplot(2,2,2); stem(h, '-ms');
xlabel('n'); ylabel('h[n]'); grid on;
subplot(2,2,3); stem(Y, '-ro');
ylabel('Y[n]'); xlabel('----->n'); grid on;
title('conv fonksiyonunu kullanmadan');
subplot(2,2,4); stem(y, 'ro');
ylabel('y=conv(x,h)'); xlabel('----->n'); grid on;
title('conv fonksiyonu kullanilanarak');