function [ yyC ] = get_point_sample( T )
%GET_POINT_SAMPLE Summary of this function goes here
%   Detailed explanation goes here

xx = 0 : 1/255 : 1;
    for c=1:3
        yyC(:,c) = ppval(xx,T.RGBCurves(c));
    end
        
end

