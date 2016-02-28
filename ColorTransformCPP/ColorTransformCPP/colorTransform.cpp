//
//  colorTransform.cpp
//  ColorTransformCPP
//
//  Created by Zerong Xi on 2/19/16.
//  Copyright © 2016 Zerong Xi. All rights reserved.
//

#include <fstream>
#include <vector>

class colorTransform {
public:
    colorTransform(const std::string sat_filepath, const std::string curve_filepath) {
        get_sat_mat(sat_filepath);
        get_curve(curve_filepath);
    }
    
    std::vector<int> ct_pixel(std::vector<int> in_pixel) {
        static std::vector<int> out_pixel(3, 0);
        static std::vector<float> temp(3, 0);
        temp[0] = curve[in_pixel[0]];
        temp[1] = curve[in_pixel[1]+color_range];
        temp[2] = curve[in_pixel[2]+color_range*2];
        
        out_pixel[0] = temp[0]*sat_mat[0] + temp[1]*sat_mat[1] + temp[2]*sat_mat[2];
        out_pixel[1] = temp[0]*sat_mat[3] + temp[1]*sat_mat[4] + temp[2]*sat_mat[5];
        out_pixel[2] = temp[0]*sat_mat[6] + temp[1]*sat_mat[7] + temp[2]*sat_mat[8];
        return out_pixel;
    }
    
private:
    std::vector<float> curve;
    std::vector<float> sat_mat;
    int color_range = 255;
    bool get_sat_mat(const std::string& sat_path) {
        std::ifstream sat_file(sat_path);
        float saturation;
        sat_file >> saturation;
        sat_file.close();
        
        float tmp = (1-saturation)*0.3333;
        for(int i=0; i < 9; i++) {
            sat_mat.push_back(tmp);
        }
        for (int i=0; i < 9; i=i+4) {
            sat_mat[i] += saturation;
        }
        return true;
    }
    bool get_curve(const std::string& curve_filepath) {
        std::ifstream curve_file(curve_filepath);
        float tmp;
        for(int cnt = 0; cnt < 3*(1+color_range); cnt++) {
            curve_file >> tmp;
            curve.push_back(tmp);
        }
        curve_file.close();
        return true;
    }
};