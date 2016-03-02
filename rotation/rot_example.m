% in = '/lab/zxi/Documents/cat_samples/';
% out = '/lab/zxi/Documents/rot_c0203/';
% 
% angles = [90 270];
% 
% for s = 1:9
%     parfor p = 1:4
%         for c = 3:4
%             file = strcat('RobotScene-s000',int2str(s),'-p0',int2str(p-1),'-c0',int2str(c-1),'.png');
%             rot_sample(strcat(in,file),strcat(out,file),angles(c-2));
%         end
%     end
% end
% 
% for s = 19:19
%     parfor p = 1:4
%         for c = 3:4
%             file = strcat('RobotScene-s00',int2str(s),'-p0',int2str(p-1),'-c0',int2str(c-1),'.png');
%             rot_sample(strcat(in,file),strcat(out,file),angles(c-2));
%         end
%     end
% end
% 
% for s = 100:999
%     parfor p = 1:4
%         for c = 3:4
%             file = strcat('RobotScene-s0',int2str(s),'-p0',int2str(p-1),'-c0',int2str(c-1),'.png');
%             rot_sample(strcat(in,file),strcat(out,file),angles(c-2));
%         end
%     end
% end
% 
% for s = 1000:1000
%     parfor p = 1:4
%         for c = 3:4
%             file = strcat('RobotScene-s',int2str(s),'-p0',int2str(p-1),'-c0',int2str(c-1),'.png');
%             rot_sample(strcat(in,file),strcat(out,file),angles(c-2));
%         end
%     end
% end
% 
% for s = 3000:3000
%     parfor p = 11:20
%         for c = 3:4
%             file = strcat('RobotScene-s',int2str(s),'-p0',int2str(p-1),'-c0',int2str(c-1),'.png');
%             rot_sample(strcat(in,file),strcat(out,file),angles(c-2));
%         end
%     end
% end