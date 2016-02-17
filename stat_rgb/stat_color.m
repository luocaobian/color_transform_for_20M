function [ stat ] = stat_color(  )
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here

fnames = dir('ct1-*c03.jpg');
r=0;g=0;b=0;
for cnt = 1:4
    img = imread(fnames(cnt).name);
    r = r+imhist(img(:,:,1));
    g = g+imhist(img(:,:,2));
    b = b+imhist(img(:,:,3));
end

stat = cat(2, r, g, b);

end

