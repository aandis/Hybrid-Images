clc;
clear all;
Mask = [1 1 1;0 0 0;-1 -1 -1]; %Sobel M(y) gives horizontal edges

[I,map] = imread('bicycle.bmp'); %loading image
I = im2double(I);

figure;
imshow(MyCorr(I,Mask)); %the correlated image with sobel

[I,map] = imread('cat.bmp'); %loading image
I = im2double(I);

Mask = ([0 0 0;0 2 0;0 0 0] - ((1/9)*[1 1 1;1 1 1;1 1 1])); %sharpening filter
figure;
imshow(MyConv(I,Mask)); %the convolved image with sharpening filter

A = I - MyConv(I,Mask);
figure;
imshow(A);

figure;
imshow(10*A+I);

[A,map] = imread('dog.bmp'); %loading image
A = im2double(A);

figure;
imshow(A+I);


MyGaussPyramid(I);