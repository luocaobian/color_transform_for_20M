function [res_img] = rot_sample(in, out, angle)

if exist(in,'file')
    tic;
    img = imread(in);
    wid = 640;
    hgt = 360;

    for row = 1:11
        if row == 1
            res_img = imrotate(img(1:hgt,1:wid,:),angle);
        else
            rs = 1+(row-1)*hgt;
            re = row * hgt;
            cs = 1;
            ce = 1*wid;

            res_img = cat(1, res_img, imrotate(img(rs:re,cs:ce,:),angle));
        end
    end

    imwrite(res_img, out);
    toc;
end
end