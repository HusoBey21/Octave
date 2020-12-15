a=imread('peppers.jpeg');
>> b=rgb2gray(a);
>> af=fft2(b);
>> imshow(mat2gray(log(1+abs(af))));
>> %%a secenegi cozumu


>> c=imnoise(b,'gaussian',0.1);
>> imshow(c);
>> %% b secenegi cozumu
>> %% a seceneginde fourier donusumu uygulandiginda goruntu tamamen bozuluyor b seceneginde gurultu
>> %%eklendiginde netlik bozulsa da gurultu elde ediliyor
