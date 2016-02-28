import shutil
import os
import re

with open('/users/zxi/downloads/pics_list.txt', 'r') as f:
    file_list = [line.rstrip('\n') for line in f]
    f.close()

src_path = "/Volumes/My\ Passport/robotscenes-samples/"
des_path = "/users/zxi/downloads/less_samples/"
for name in file_list:
    if re.match('RobotScene-s....-p00-c..-000000.png',name) is not None:
        print('x')
        shutil.copyfile(src_path+name, des_path+name)
