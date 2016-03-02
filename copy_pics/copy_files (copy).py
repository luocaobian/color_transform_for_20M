import shutil
import os
import re

with open('/lab/zxi/Documents/pics_list.txt', 'r') as f:
    file_list = [line.rstrip('\n') for line in f]
    f.close()

src_path = "/media/zxi/My Passport/robotscenes-samples/"
des_path = "/lab/zxi/Documents/less_samples/"
for name in file_list:
    if re.match('RobotScene-s0005-p00-c..-0000...png',name) is not None:
        print('x')
        shutil.copyfile(src_path+name, des_path+name)
