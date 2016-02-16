function [] = rot2_all()

fnames = dir('*c02.jpg');
numfids = length(fnames);
for i = 1:numfids
    imwrite(rot(fnames(i).name, 90)), strcat('rot2-',fnames(i).name);
end
end
