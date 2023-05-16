rgbImage = imread("peppers.png");

figure(1)
subplot(2,2,1)
imshow(rgbImage)
subplot(2,2,2)
imshow(rgbImage(:,:,1))
subplot(2,2,3)
imshow(rgbImage(:,:,2))
subplot(2,2,4)
imshow(rgbImage(:,:,3))

hsvImage=rgb2hsv(rgbImage);
figure(2)
subplot(2,2,1)
imshow(rgbImage)
subplot(2,2,2)
imshow(hsvImage(:,:,1))
subplot(2,2,3)
imshow(hsvImage(:,:,2))
subplot(2,2,4)
imshow(hsvImage(:,:,3))

figure(3)
subplot(3,1,1)
imhist(hsvImage(:,:,1))
subplot(3,1,2)
imhist(hsvImage(:,:,2))
subplot(3,1,3)
imhist(hsvImage(:,:,3))

hsvImage_low_s = hsvImage;
hsvImage_low_s(:,:,2) = hsvImage(:,:,2)/2;
figure(4)
rgbImage_low_s = hsv2rgb(hsvImage_low_s);
subplot(1,2,1)
imshow(rgbImage)
subplot(1,2,2)
imshow(rgbImage_low_s)

