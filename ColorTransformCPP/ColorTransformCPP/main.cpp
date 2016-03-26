//
//  main.cpp
//  ColorTransformCPP
//
//  Created by Zerong Xi on 2/16/16.
//  Copyright © 2016 iLab, USC. All rights reserved.
//

#include <opencv2/core/core.hpp>
#include <opencv2/imgcodecs.hpp>
#include <opencv2/highgui/highgui.hpp>

#include <iostream>
#include "colorTransform.cpp"

#define TEST_SIZE 600

using namespace cv;

int main(int argc, const char * argv[]) {
    
    std::string path = "/Users/zxi/Documents/MyCode/color_transform_for_20M/mat2txt/paras_txt/RobotScene-s0001-p01-c01.txt";
    colorTransform ctparas(path);
    
    unsigned char in[TEST_SIZE];
    unsigned char out[TEST_SIZE];
    for (size_t i=0;i<TEST_SIZE;i++) {
        in[i] = 255 - i%256;
        out[i] = 2;
    }
    
    ctparas.ct_pixel(in, out, TEST_SIZE/3 - 100);
    
    return 0;
}