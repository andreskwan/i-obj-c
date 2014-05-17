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
        
        // insert code here...
        NSLog(@"Hello, World!");
        
        NSDictionary *dictionary = [NSDictionary dictionaryWithObjectsAndKeys:
                                    @"k1",@"Obj1",
                                    @"k2",@"Obj2",
                                    @"k3",@"Obj3", nil];
        
    }
    return 0;
}

