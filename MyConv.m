%this function is used for convolution
function ImageConv = MyConv(ImageIn, Mask)
    [row_mask,col_mask] = size(Mask);
    %ImageCorr = zeros(row,col);
    ImageConv = [];
    k = floor(row_mask/2); %matrix is of the form 2k+1*2k+1
    row_red = floor(row_mask/2);
    col_red = floor(col_mask/2);
    [row,col,z] = size(ImageIn);
    %padding image with zeros
    ImageIn = padarray(ImageIn,[row_red,col_red],'both');
    [row,col,z] = size(ImageIn); %calculating final dimensions
    for p = 1:z
        for i = 1+row_red:(row-(row_red))
            for j = 1+col_red:(col-(col_red))
                sum = 0;
                for u = 1:row_mask %or -row mask to row_mask
                    for v = 1:col_mask % or -col_mask to col_mask
                        sum = sum + (Mask(u,v)*ImageIn(i-(u-row_red-1),j-(v-col_red-1),p)); %correlation
                        %or sum = sum +
                        %(Mask(u+row_mask+1,v+col_mask+1)*ImageIn(i-u,j-v,p))
                    end
                end
                ImageConv(i-row_red,j-col_red,p) = sum;
            end
        end
    end
end
