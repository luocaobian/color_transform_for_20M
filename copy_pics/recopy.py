import shutil
import os
import re

src_path = "/media/zxi/My Passport/robotscenes-samples/"
des_path = "/lab/zxi/Documents/recopy_samples/"
nrdc_path = "/lab/zxi/Documents/paras_nrdc/"

for s in  range(1,1001):
    for p in range(1,4):
        for c in range(3,4):
            sstr = "%04d" % (s)
            name = 'RobotScene-s'+sstr+'-p0'+str(p)+'-c0'+str(c)+'.mat'
            if not os.path.isfile(nrdc_path+name):
                for pics in range(0,10):
                    picstr = "%02d" % (pics)
                    name1 = 'RobotScene-s'+sstr+'-p0'+str(p)+'-c0'+str(c)+'-0000'+picstr+'.png'
                    name2 = 'RobotScene-s'+sstr+'-p0'+str(p)+'-c0'+str(0)+'-0000'+picstr+'.png'
                    if os.path.isfile(src_path+name1) and os.path.isfile(src_path+name2):
                        shutil.copyfile(src_path+name1,des_path+name1)
                        shutil.copyfile(src_path+name2,des_path+name2)
