fnames_c00 = dir('ct-*c00.jpg');
numfids = length(fnames_c00);
fnames_c03 = dir('ct-*c03.jpg');

for i = 1:numfids
    Src_path = fnames_c03(i).name;
    Ref_path = fnames_c00(i).name;
    nrdc_example;
    ys(:,:,i) = get_point_sample(T);
    clearvars -except ys i fnames_c00 fnames_c03 numfids;
end