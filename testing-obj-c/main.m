//
//  main.m
//  testing-obj-c
//
//  Created by Andres Kwan on 5/16/14.
//  Copyright (c) 2014 Kwan. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        float numbers_geeks_love[3];
        numbers_geeks_love[0] = 3.1415;
        numbers_geeks_love[1] = 1.6180;
        numbers_geeks_love[2] = 1.4142;
        
        int primer[] = {2,3,5,7,11,13};
        float math_constants[2];
        math_constants[0] = 2.71828;
        math_constants[1] = 1.41421;
//        for(int i=0; i )
        printf("length of the array %lu \n",sizeof(primer) / sizeof(primer[0]));
        
        printf("Euler's number = %f\n",math_constants[0]);
    }
    return 0;
}

