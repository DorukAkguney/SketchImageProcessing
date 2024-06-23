close all;
clear all;
clc;

%EE-462 Digital Image Processing
%Faik Doruk Akgüney
%201726003

%Read an image
original_image = imread("Image-3.jpg");

%Invert original image to grayscale image
grayscale_image = rgb2gray(original_image);

[r,c] = size(grayscale_image);

%Convert grayscale image to negative grayscale image
negative_grayscale_image = zeros(r,c);
for i=1:r
    for j=1:c
        negative_grayscale_image(i,j)= 255 - double(grayscale_image(i,j));
    end
end

%Convert Negative Grayscale Image to Blurred Image
sigma = 20;
filter = 7 * sigma;
H = fspecial('gaussian',[filter,filter],sigma);
blurred_image = imfilter(negative_grayscale_image,H);

%Invert blurred image to negative blurred image
negative_blurred_image=zeros(r,c);
for i=1:r
    for j=1:c
        negative_blurred_image(i,j)=255-blurred_image(i,j);
    end
end

%Final Image
F = imdivide(double(grayscale_image),negative_blurred_image);
Finale_image = round(255*F);

figure('Name','Step by Step',NumberTitle='off');
subplot(3,2,1);
imshow(original_image);
title("Original Image");
subplot(3,2,2);
imshow(grayscale_image);
title("Grayscale Image");
subplot(3,2,3);
imshow(uint8(negative_grayscale_image));
title("Negative Grayscale Image")
subplot(3,2,4);
imshow(uint8(blurred_image));
title("Blurred Image");
subplot(3,2,5);
imshow(uint8(negative_blurred_image));
title("Negative Blurred Image");
subplot(3,2,6);
imshow(uint8(Finale_image));

title("Final Image");
figure("Name",'Final Image',NumberTitle='off',Units='normalized');
imshow(uint8(Finale_image));