function [  ] = mat2txt( in_path, out_path )
%MAT2TXT Summary of this function goes here
%   Detailed explanation goes here

load(in_path)
points = get_point_sample(T);
sat_mat = T.SatMat+T.GrayProj;
sat_mat = sat_mat(1:3,1:3);
for rgb=1:3
    for pnt = 200:256
        if points(pnt,rgb) > 1
            points(pnt,rgb) = 1;
        end
        if points(257-pnt,rgb) < 0
            points(257-pnt,rgb) = 0;
        end
    end
end
% save(out_path,'satcoef','points','-ascii','-single');

points = points*255;

f = fopen(out_path,'wt');
fprintf(f,'%f\n',sat_mat);
fprintf(f,'%f\n',points);
fclose(f);

end