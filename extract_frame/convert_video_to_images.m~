function [res_image] = convert_video_to_images(fname)

obj = VideoReader(fname);
todo_video = obj.read();
frame_num = size(todo_video, 4);
col_num = 5;
row_num = 5;
interval = floor(frame_num/(col_num*row_num));

for row = 1:row_num
    row_image = todo_video(:,:,:,((row-1)*col_num+1)*interval);
    for col = 2:col_num
        row_image = cat(2, row_image, todo_video(:,:,:,((row-1)*col_num+col)*interval));
    end
    
    if row == 1
        res_image = row_image;
        clear row_image;
    else
        res_image = cat(1, res_image, row_image);
        clear row_image;
    end
end
end
