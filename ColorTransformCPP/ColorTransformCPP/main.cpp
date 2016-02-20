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
    colorTransform cam3("./cam3_sat.txt", "./cam3_curve.txt");
    std::vector<int> in_pixel = {3, 24, 49};
    std::vector<int> out_pixel = cam3.ct_pixel(in_pixel);
    std::cout << "Almost finished" << std::endl;
    std::cout << out_pixel[2] << std::endl;
    
    return 0;
}