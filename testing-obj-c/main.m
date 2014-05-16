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
        id firstObj  = @"someString";
        id secondObj = @"Andres";
        id thirdObj  = @"Kwan";
        
        NSArray * someArray = @[firstObj, secondObj, thirdObj];
        
        //Quering array objects
        if ([someArray containsObject:secondObj]) {
            NSLog(@"\nSecondObj is %@", [someArray objectAtIndex:[someArray indexOfObject:secondObj]]);
        }
        
        
    }
    return 0;
}

