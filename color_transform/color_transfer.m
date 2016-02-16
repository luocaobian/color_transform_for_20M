function [ res ] = color_transfer( img_path, ys, sat_mat )
%COLOR_TRANSFER Summary of this function goes here
%   Detailed explanation goes here
tic;
img=imread(img_path);
res = zeros(size(img,1),size(img,2),size(img,3));
temp = zeros(3,1);
for row = 1:size(img,1)
    for col = 1:size(img,2)
         for rgb = 1:3
            temp(rgb) = ys(img(row,col,rgb)+1,rgb);
         end
    res(row,col,:)=sat_mat*temp;
    end
end

toc;

end