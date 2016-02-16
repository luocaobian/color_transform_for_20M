function [] = vtoi_for_all()


tic;

fnames = dir('*.mpg');
numfids = length(fnames);
for i = 1:numfids
    imwrite(convert_video_to_images(fnames(i).name), strrep(fnames(i).name, 'mpg', 'jpg'));
end

toc
end
