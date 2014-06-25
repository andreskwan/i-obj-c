//
//  main.m
//  testing-obj-c
//
//  Created by Andres Kwan on 5/16/14.
//  Copyright (c) 2014 Kwan. All rights reserved.
//

#import <Foundation/Foundation.h>
#define C_PROG YES
int main(int argc, const char * argv[])
{

    @autoreleasepool {
#if C_PROG == YES
        //pure C into objective-C
        int a = 9;
        printf("a %d\n",a);
        
        int c = a++;
        printf("c: %d, a: %d\n",c,a);
#endif
    }
    return 0;
}

