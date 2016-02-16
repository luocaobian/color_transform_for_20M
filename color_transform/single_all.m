function [] = single_all()
    fnames = dir('ct-*c03.jpg');
    numfids = length(fnames);
    for i=1:numfids
        single_img(fnames(i).name);
    end
end
