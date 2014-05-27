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
        int days_in_a_week = 7;
        float cm_to_in = 2.54;
        char the_w;
        the_w = 'W';
        
        // insert code here...
        printf("%d is an int   days in week\n",days_in_a_week);
        printf("%f is a float \n",cm_to_in);
        printf("%c is a char  \n",the_w);
    }
    return 0;
}

