//
//  colorTransform.cpp
//  ColorTransformCPP
//
//  Created by Zerong Xi on 2/19/16.
//  Copyright © 2016 Zerong Xi. All rights reserved.
//

#include <vector>
#include <fstream>
#include <iostream>

#define COLOR_RANGE 256

class colorTransform {
public:
    colorTransform(std::string paras_path) {
        read_paras(paras_path);
    }
    void ct_pixel(unsigned char* src, unsigned char* dst, const size_t n) {
        for (size_t cnt = n+1; cnt > 1; cnt--) {
            mid_res[0] = curve[*src++];
            mid_res[1] = curve[green_pos+*(src++)];
            mid_res[2] = curve[blue_pos+*(src++)];
            
            *(dst++) = mid_res[0]*sat_mat[0] + mid_res[1]*sat_mat[1] + mid_res[2]*sat_mat[2];
            *(dst++) = mid_res[0]*sat_mat[3] + mid_res[1]*sat_mat[4] + mid_res[2]*sat_mat[5];
            *(dst++) = mid_res[0]*sat_mat[6] + mid_res[1]*sat_mat[7] + mid_res[2]*sat_mat[8];
        }
    }
    
private:
    std::vector<float> mid_res = {0,0,0};
    const int green_pos = COLOR_RANGE;
    const int blue_pos = COLOR_RANGE * 2;
    std::string paras_path;
    const std::string log_path = "";
    std::vector<float> curve;
    std::vector<float> sat_mat;
    bool read_paras(const std::string& filepath) {
        std::ifstream paras(filepath);
        if (!paras.is_open()) {
            std::cout << filepath << " is not exist!" << std::endl;
            std::ofstream log(log_path);
            log << filepath << " is not exist!" << std::endl;
            log.close();
            return false;
        }
        
        sat_mat.resize(9);
        curve.resize(COLOR_RANGE*3);
        for (size_t cnt=0; cnt < 9; ++cnt) {
            paras >> sat_mat[cnt];
        }
        for (size_t cnt=0; cnt < COLOR_RANGE*3; ++cnt) {
            paras >> curve[cnt];
        }
        paras.close();
        return true;
    }
};