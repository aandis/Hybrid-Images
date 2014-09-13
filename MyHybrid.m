function HybridImage = MyHybrid(Image1, Image2, CutOff1, CutOff2)
    %experiment with this values to change the effect
    sigma_1 = CutOff1;    %for low pass
    sigma_2 = CutOff2;    %for high pass
    size_1 = 20;    %for low pass
    size_2 = 20;    %for high pass
    GaussMask_1 = MyGauss(sigma_1,size_1);
    GaussMask_2 = MyGauss(sigma_2,size_2);
    Image1_conv = MyConv(Image1,GaussMask_1);
    Image2_conv = MyConv(Image2,GaussMask_2);
    Image2_impulse = Image2 - Image2_conv;
    %figure;
    %imshow(Image1_conv);
    %figure;
    %imshow(Image2_impulse);
    HybridImage = (Image1_conv + Image2_impulse)/2;
    MyGaussPyramid(HybridImage);
end