%% c00 as reference
Ref_path = 'c00-7by7.png';
pic_order = [1 2 3];

for pic_cnt = 2:3
    Src_path = strcat('c0',int2str(pic_order(pic_cnt)),'-7by7.png');
    nrdc_example;
    Tto0{pic_cnt} = T;
    clearvars -except Ref_path pic_order pic_cnt Tto0
end

Tto0_1=Tto0;
save('Tto0_1','Tto0_1');
clear all;

%% c02 as reference
Ref_path = 'c02-7by7.png';
pic_order = [0 1 3];

for pic_cnt = 1:2
    Src_path = strcat('c0',int2str(pic_order(pic_cnt)),'-7by7.png');
    nrdc_example;
    Tto2{pic_cnt} = T;
    clearvars -except Ref_path pic_order pic_cnt Tto2
end

Tto2_3=Tto2;
save('Tto2_3','Tto2_3');
clear all;