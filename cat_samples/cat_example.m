in = '/lab/zxi/Documents/recopy_samples/';
out = '/lab/zxi/Documents/recat_samples/';

for s = 1:1000
	sstr = sprintf('%04d',s);
    for p = 1:4
        pstr = sprintf('%02d',p-1);
        for c = 1:4
            cstr = sprintf('%02d',c-1);
            file = strcat('RobotScene-s',sstr,'-p',pstr,'-c',cstr);
            cat_samples(strcat(in,file),strcat(out,file));
        end
    end
end

rot_example