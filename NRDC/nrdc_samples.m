%%
in = '';
out = '';

for s = 1:9
    for p = 0:4
        Src_path = strcat(in,'RobotScene-s000',int2str(s),'-p0',int2str(p),'-c01.png');
        Ref_path = strcat(in,'RobotScene-s000',int2str(s),'-p0',int2str(p),'-c00.png');
        nrdc_example;
        save(strcat(out,'RobotScene-s000',int2str(s),'-p0',int2str(p),'-c01'),T);
        clearvars -except in out s p
    end
end