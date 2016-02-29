function [ out_img ] = from49to7by7( in_img )
%FROM49TO7BY7 Summary of this function goes here
%   Detailed explanation goes here

wid = size(in_img,2);
hgt = size(in_img,1)/49;

for col = 1:7
    out_img(:,wid*(col-1)+1:wid*col,:) = in_img(7*hgt*(col-1)+1:7*hgt*col,:,:);
end

