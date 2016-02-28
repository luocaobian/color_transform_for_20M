//
//  main.cpp
//  ColorTransformCPP
//
//  Created by Zerong Xi on 2/16/16.
//  Copyright © 2016 iLab, USC. All rights reserved.
//

#include <iostream>
#include "colorTransform.cpp"


int main(int argc, const char * argv[]) {
    colorTransform cam3("/users/zxi/Documents/MyCode/color_transform_for_20M/cam3_sat.txt", "/users/zxi/Documents/MyCode/color_transform_for_20M/cam3_curve.txt");
    std::vector<int> in_pixel = {0, 24, 49};
    std::vector<int> out_pixel = cam3.ct_pixel(in_pixel);
    std::cout << "Almost finished" << std::endl;
    std::cout << out_pixel[0] << std::endl;
    
    return 0;
}