function [res_img] = extract4from9(fname)

img = imread(fname);
frame2 = img(1:720, 1281:2560, :);
frame4 = img(721:1440, 1:1280, :);
frame6 = img(721:1440, 2561: 2560+1280, :);
frame8 = img(1441:1440+720, 1281:2560, :);
res_img = cat(2, frame2, frame4, frame6, frame8);

end
