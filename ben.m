fs=1000;
ts=1/fs;
fu=50;
t=0:ts:5/fu;
 a=imread('peppers.jpeg');
 b=rgb2gray(a);
 af=fft2(b);
m=linspace(0,fs,length(af));
n=floor(length(m)/2);
figure,plot(m(1:n),abs(af(1:n)),'LineWidth',2)
%a secenegi cozumu
title('Fourierdonusum');
xlabel('Zaman(s)');
ylabel('Genlik');
 %%a secenegi cozumu

pkg load image
 c=imnoise(b,'gaussian',0.1);
t=linspace(0,fs,length(c));
d=floor(length(t)/2);
figure,plot(t(1:d),abs(c(1:d))),'LineWidth',2)
title('Gurultu');
xlabel('Zaman(s)');
ylabel('Genlik');


 %% b secenegi cozumu
 %% a seceneginde fourier donusumu uygulandiginda frekans dalga boyu küçük b seceneginde gurultu
%%eklendiginde frekans dalga boyu ters ve buyuk
