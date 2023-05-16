info1980 = imfinfo("published_image/bearGlacier1980.png");
type1980 = info1980.ColorType;
info2011 = imfinfo("published_image/bearGlacier2011.png");
type2011 = info2011.ColorType;

figure(1)
[glacier1980, map1980] = imread("published_image/bearGlacier1980.png");
imshow(glacier1980, map1980);
title("Bear Glacier in 1980")

figure(2)
[glacier2011, map2011] = imread("published_image/bearGlacier2011.png");
imshow(glacier2011, map2011);
title("Bear Glacier in 2011")

figure(3)
gs1980 = ind2gray(glacier1980, map1980);
gs2011 = ind2gray(glacier2011, map2011);
imshowpair(gs1980, gs2011, "montage")
title("Gray Bear Glacier Comparison - 1980 vs 2011")

figure(4)
rgb1980 = ind2rgb(glacier1980, map1980);
rgb2011 = ind2rgb(glacier2011, map2011);
imshowpair(rgb1980, rgb2011, "montage")
title("RGB Bear Glacier Comparison - 1980 vs 2011")

figure(5)
[ind1980, remap1980] = rgb2ind(rgb1980, 2);
imshow(ind1980, remap1980)
title("ReIndexed Bear Glacier Comparison in 1980")