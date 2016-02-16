function [  ] = single_img( input_path )
%SINGLE_IMG Summary of this function goes here
%   Detailed explanation goes here

l=4;

wid=720;
high=1280;

img=imread(input_path);
for row=1:l
    for col=1:l
        imwrite(img((row-1)*high+1:row*high,(col-1)*wid+1:col*wid,:), strcat('ct-',int2str((row-1)*l+col),'-',input_path));
    end
end

end