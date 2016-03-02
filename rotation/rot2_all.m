function [] = rot2_all()

fnames = dir('c03*.png');
numfids = length(fnames);
for i = 1:numfids
    imwrite(rot(fnames(i).name, 270), strcat('rot2-',fnames(i).name));
end
end
