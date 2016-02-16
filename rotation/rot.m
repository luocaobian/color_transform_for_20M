function [res_img] = rot(fname, angle)

img = imread(fname);

for row = 1:4
    for col = 1:4
        rs = 1 + (row-1)*720;
        re = row*720;
        cs = 1 + (col-1)*1280;
        ce = col*1280;        
        if col == 1
            row_img = imrotate(img(rs:re, cs:ce, :),angle);
        else
            row_img = cat(2, row_img, imrotate(img(rs:re, cs:ce, :),angle));
        end
    end
    
    if row == 1
        res_img = row_img;
    else
        res_img = cat(1, res_img, row_img);
    end
end
end