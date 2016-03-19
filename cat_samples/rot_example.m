in = '/lab/zxi/Documents/recat_samples/';
out = '/lab/zxi/Documents/rerot_c0203/';

angles = [90 270];

for s = 1:1000
    sstr = sprintf('%04d',s);
    for p = 1:4
        pstr = sprintf('%02d',p-1);
        for c = 2:3
            cstr = sprintf('%02d',c);
            file = strcat('RobotScene-s',sstr,'-p',pstr,'-c',cstr,'.png');
            rot_sample(strcat(in,file),strcat(out,file),angles(c-1));
        end
    end
end