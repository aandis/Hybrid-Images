function Pyramid = MyGaussPyramid(ImageIn)
    [row,col,z] = size(ImageIn);
    Gauss_Filter = MyGauss(1,3); %Gaussian filter of size 3x3 and sigma 1
    %Pyramid{1} = ImageIn; %storing the pyramids in a cell array
    Pyramid = [];
    Pyramid = ImageIn;
    [c,d] = size(ImageIn);
    j = 1;
    while(row>1)
        ImageIn = MyConv(ImageIn,Gauss_Filter); %convolving with Gauss to smoothen
        %ImageIn = ImageIn(1:2:row,:);
        %ImageIn = ImageIn(:,1:2:col);
        for i = 1:row/2
            ImageIn(i,:,:) = [];
        end
        for i = 1:col/2
            ImageIn(:,i,:) = [];
        end
        [row,col,z] = size(ImageIn);
        j = j + 1;
        Temp = ImageIn;
        for i = 1:c-row
            Temp(row+i,:,:) = 0;
        end
        Pyramid = [Pyramid Temp];
    end
    %now displaying the pyramid
    figure;
    imshow(Pyramid);
%    [m,n] = size(Pyramid);
%    for i = 1:n
%        figure;
%        (imshow(Pyramid{i}));
%    end
end