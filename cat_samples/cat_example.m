in = '/media/zxi/My Passport/robotscenes-samples/';
out = '/lab/zxi/Documents/cat_samples/';
parfor s = 1:9
    for p = 1:4
        for c = 1:4
            file = strcat('RobotScene-s000',int2str(s),'-p0',int2str(p-1),'-c0',int2str(c-1));
            cat_samples(strcat(in,file),strcat(out,file));
        end
    end
end

for s = 10:99
    for p = 1:4
        for c = 1:4
            file = strcat('RobotScene-s00',int2str(s),'-p0',int2str(p-1),'-c0',int2str(c-1));
            cat_samples(strcat(in,file),strcat(out,file));
        end
    end
end

for s = 100:999
    for p = 1:4
        for c = 1:4
            file = strcat('RobotScene-s0',int2str(s),'-p0',int2str(p-1),'-c0',int2str(c-1));
            cat_samples(strcat(in,file),strcat(out,file));
        end
    end
end

for s = 1000:1000
    for p = 1:4
        for c = 1:4
            file = strcat('RobotScene-s',int2str(s),'-p0',int2str(p-1),'-c0',int2str(c-1));
            cat_samples(strcat(in,file),strcat(out,file));
        end
    end
end