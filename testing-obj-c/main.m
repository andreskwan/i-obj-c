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
        //pure C into objective-C
        int a = 9;
        printf("a %d\n",a);
        
        int c = a++;
        printf("c: %d, a: %d\n",c,a);
        
    }
    return 0;
}

