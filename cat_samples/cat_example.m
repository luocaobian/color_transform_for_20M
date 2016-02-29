cam = {'c00','c01','c02','c03'};

% for c = 1:4
%     cat_samples(cam{c});
% end


for c = 1:4
    imwrite(from49to7by7(imread(strcat(cam{c},'.png'))),strcat(cam{c},'-7by7.png'));
end