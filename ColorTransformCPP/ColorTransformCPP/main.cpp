//
//  main.cpp
//  ColorTransformCPP
//
//  Created by Zerong Xi on 2/16/16.
//  Copyright © 2016 iLab, USC. All rights reserved.
//

#include <iostream>
#include <vector>

#define COLOR_RANGE 256

std::vector<int> get_curve() {
    std::vector<int> curve(3*COLOR_RANGE);
    for(int rgb = 0; rgb < 3; rgb++) {
        for(int val = 0; val < COLOR_RANGE; val++) {
            curve[rgb*COLOR_RANGE+val] = val+1;
        }
    }
    return curve;
}

std::vector<int> get_sat_mat() {
    std::vector<int> sat_mat(9, 0);
    sat_mat[0] = 1;
    sat_mat[4] = 1;
    sat_mat[8] = 1;
    return sat_mat;
    
}



std::vector<int> transfer_pixel(const std::vector<int>& in, const std::vector<int>& curve, const std::vector<int> sat_mat) {
    
    static std::vector<int> temp(3);
    static std::vector<int> out(3);
    temp[0] = curve[in[0]];
    temp[1] = curve[in[1]+COLOR_RANGE];
    temp[2] = curve[in[2]+COLOR_RANGE*2];
    
    out[0] = temp[0]*sat_mat[0] + temp[1]*sat_mat[1] + temp[2]*sat_mat[2];
    out[1] = temp[0]*sat_mat[3] + temp[1]*sat_mat[4] + temp[2]*sat_mat[5];
    out[2] = temp[0]*sat_mat[6] + temp[1]*sat_mat[7] + temp[2]*sat_mat[8];

    return out;
}



int main(int argc, const char * argv[]) {
    
    std::vector<int> curve = get_curve();
    std::vector<int> sat_mat = get_sat_mat();
    
    std::vector<int> in = {3, 145, 39};
    std::vector<int> out = transfer_pixel(in, curve, sat_mat);
    std::cout << out[0] << out[1] << out[2] << std::endl;
    
    return 0;
}