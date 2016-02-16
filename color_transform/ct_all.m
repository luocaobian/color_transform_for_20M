function [] = ct_all(ys, sat_mat)


tic;

fnames = dir('Robot*c03.jpg');
numfids = length(fnames);
for i = 1:numfids
    imwrite(color_transfer(fnames(i).name, ys, sat_mat), strcat('ctasat-',fnames(i).name));
end

toc
end
