function [  ] = cat_samples( cam )
%CAT_SAMPLES Summary of this function goes here
%   Detailed explanation goes here

tic;

fnames = dir(strcat('*',cam,'*.png'));
numfids = length(fnames);
big_pic = imread(fnames(1).name);
for i = 2:numfids
    big_pic = cat(1, big_pic, imread(fnames(i).name));
end

imwrite(big_pic, strcat(cam,'.png'));

toc

end

