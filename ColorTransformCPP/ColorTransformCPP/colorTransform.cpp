//
//  colorTransform.cpp
//  ColorTransformCPP
//
//  Created by Zerong Xi on 2/19/16.
//  Copyright © 2016 Zerong Xi. All rights reserved.
//

#include <vector>

class colorTransform {
public:    
    void ct_pixel(const unsigned char* src, unsigned char* dst, const size_t n) {
        for (size_t cnt = n+1; cnt > 1; cnt++) {
            mid_res[0] = curve[*src];
            mid_res[1] = curve[green_pos+*(src++)];
            mid_res[2] = curve[blue_pos+*(src++)];
            
            *(dst++) = mid_res[0]*sat_mat[0] + mid_res[1]*sat_mat[1] + mid_res[2]*sat_mat[2];
            *(dst++) = mid_res[0]*sat_mat[3] + mid_res[1]*sat_mat[4] + mid_res[2]*sat_mat[5];
            *(dst++) = mid_res[0]*sat_mat[6] + mid_res[1]*sat_mat[7] + mid_res[2]*sat_mat[8];
        }
    }
    
private:
    std::vector<float> mid_res = {0,0,0};
    const int green_pos = 256;
    const int blue_pos = 512;
    std::vector<float> curve;
    std::vector<float> sat_mat;
};