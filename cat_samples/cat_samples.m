function [  ] = cat_samples( in_path, out_path )
%CAT_SAMPLES Summary of this function goes here
%   Detailed explanation goes here

tic;

if exist(strcat(in_path,'-000010.png'), 'file')
    big_pic = imresize(imread(strcat(in_path,'-000010.png')),0.5);
    for i = 1:10
        big_pic = cat(1, big_pic, imresize(imread(strcat(in_path,'-00000',int2str(i-1),'.png')),0.5));
    end
    imwrite(big_pic, strcat(out_path,'.png'));
    toc;
end

end