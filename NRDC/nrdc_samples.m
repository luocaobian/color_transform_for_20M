%% c00 as reference
Ref_path = 'c00.png';
pic_order = [1 2 3];

for pic_cnt = 1:3
    Src_path = strcat('c0',int2str(pic_order(pic_cnt)),'.png');
    nrdc_example;
    Tto0{pic_cnt} = T;
end

save('Tto0','Tto0');

%% c02 as reference
Ref_path = 'c02.png';
pic_order = [0 1 3];

for pic_cnt = 1:3
    Src_path = strcat('c0',int2str(pic_order(pic_cnt)),'.png');
    nrdc_example;
    Tto2{pic_cnt} = T;
end

save('Tto2','Tto2');