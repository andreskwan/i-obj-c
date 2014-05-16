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
        id fourthObj  = @"Orjuela";
        NSArray * someArray = @[firstObj, secondObj, thirdObj, fourthObj];
        
        //Quering array objects
        //--identify index of obj in array
        if ([someArray containsObject:secondObj]) {
            NSLog(@"\nSecondObj is %@", [someArray objectAtIndex:[someArray indexOfObject:secondObj]]);
        }
        
        //without indexOfArray
        if ([someArray count] > 0 )
        {
            NSLog(@"\nLast obj: %@", someArray[2]);
            NSLog(@"\nLast obj: %@", [someArray lastObject]);
        }
        
        //sorting
        NSArray * sortedArray = [someArray sortedArrayUsingSelector:@selector(compare:)];
        
        
    }
    return 0;
}

