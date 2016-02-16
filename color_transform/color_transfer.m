function [ res ] = color_transfer( img_path, ys, sat_mat )
%COLOR_TRANSFER Summary of this function goes here
%   Detailed explanation goes here
tic;
spmd
img=imread(img_path);
for row = 1:size(img,1)
    for col = 1:size(img,2)
         for rgb = 1:3
            res(row,col,rgb) = ys(img(row,col,rgb)+1,rgb);
         end
    res(row,col,:)=sat_mat*squeeze(res(row,col,:));
    end
end
end

toc;

end