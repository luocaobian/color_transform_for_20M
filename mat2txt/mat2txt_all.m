in = '/Users/zxi/Documents/MyCode/color_transform_for_20M/mat2txt/paras_nrdc/';
out = '/Users/zxi/Documents/MyCode/color_transform_for_20M/mat2txt/paras_txt/';

for c = 1:1
    parfor s = 1:1000
        sstr = sprintf('%04d',s);
        for p = 1:4
            in_path = strcat(in,'RobotScene-s',sstr,'-p0',int2str(p-1),'-c0',int2str(c),'.mat');
            if exist(in_path,'file')
                disp('x');
                out_path = strcat(out,'RobotScene-s',sstr,'-p0',int2str(p-1),'-c0',int2str(c),'.txt');
                mat2txt(in_path,out_path);
            end
        end
    end
end