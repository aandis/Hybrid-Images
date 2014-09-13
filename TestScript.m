clc;
clear all;
Mask = [1 0 1;0 0 0;-1 0 -1]; %Sobel M(y) gives horizontal edges used for depicting Correlation

%[I,map] = imread('bicycle.bmp'); %loading image
%I = im2double(I);
%figure;imshow(MyCorr(I,Mask)); %the correlated image with sobel

Mask = ([0 0 0;0 2 0;0 0 0] - ((1/9)*[1 1 1;1 1 1;1 1 1])); %sharpening filter
%[I,map] = imread('cat.bmp'); %loading image
%I = im2double(I);
%figure;imshow(MyConv(I,Mask)); %the convolved image with sharpening filter

[I,map] = imread('dog.bmp'); %loading image
I = im2double(I);

[I2,map] = imread('cat.bmp');
I2 = im2double(I2);

MyHybrid(I,I2,27,20);   %cutoff1 = 27;cutoff2 = 20

[I,map] = imread('bird.bmp'); %loading image
I = im2double(I);

[I2,map] = imread('plane.bmp');
I2 = im2double(I2);

MyHybrid(I,I2,25,20);   %cutoff1 = 25;cutoff2 = 20

[I,map] = imread('einstein.bmp'); %loading image
I = im2double(I);

[I2,map] = imread('marilyn.bmp');
I2 = im2double(I2);

MyHybrid(I,I2,5,3);   %cutoff1 = 5;cutoff2 = 3

[I,map] = imread('bicycle.bmp'); %loading image
I = im2double(I);

[I2,map] = imread('motorcycle.bmp');
I2 = im2double(I2);

MyHybrid(I,I2,25,15);   %cutoff1 = 25;cutoff2 = 15

[I,map] = imread('fish.bmp'); %loading image
I = im2double(I);

[I2,map] = imread('submarine.bmp');
I2 = im2double(I2);

MyHybrid(I,I2,15,10);   %cutoff1 = 15;cutoff2 = 10

%custom images pair 1

[I,map] = imread('scooter.png'); %loading image
I = im2double(I);

[I2,map] = imread('bullet.jpg');
I2 = im2double(I2);

MyHybrid(I,I2,15,10);   %cutoff1 = 15;cutoff2 = 10

%custom image pair 2

[I,map] = imread('zebra.jpg'); %loading image
I = im2double(I);

[I2,map] = imread('horse.png');
I2 = im2double(I2);

MyHybrid(I,I2,5,3);   %cutoff1 = 5;cutoff2 = 3

MyGaussPyramid(I);