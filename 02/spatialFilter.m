I = imread("cameraman.tif");
figure(1)
imshow(I)

figure(2)
Iblur1 = imgaussfilt(I, 1);
Iblur2 = imgaussfilt(I, 4);
Iblur3 = imgaussfilt(I, 16);
Iblur4 = imgaussfilt(I, 64);
subplot(2,1,1)
imshowpair(Iblur1, Iblur2, "montage")
subplot(2,1,2)
imshowpair(Iblur3, Iblur4, "montage")

figure(3)
Idog1 = Iblur1 - Iblur2 + 128;
Idog2 = Iblur2 - Iblur3 + 128;
Idog3 = Iblur3 - Iblur4 + 128;
subplot(1,3,1)
imshow(Idog1)
subplot(1,3,2)
imshow(Idog2)
subplot(1,3,3)
imshow(Idog3)

