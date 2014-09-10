function GaussMask = MyGauss(sigma,size)
    size = floor(size/2); 
    [X,Y] = meshgrid(-size:size,-size:size); %making two matrix of normally distributed points
    GaussMask = (1/(2*pi*(sigma)^2))*(exp(-((X.^2+Y.^2)/(2*(sigma^2)))));
    GaussMask = GaussMask./sum(GaussMask(:));
    %figure;
    %surf(GaussMask);
end