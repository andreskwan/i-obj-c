//
//  main.m
//  testing-obj-c
//
//  Created by Andres Kwan on 5/16/14.
//  Copyright (c) 2014 Kwan. All rights reserved.
//

#import <Foundation/Foundation.h>
#define NSSET YES
int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
#if NSSET == YES
        // insert code here...
        NSLog(@"Hello, World!");
        //sets
        NSNumber *aValue  = @85;
        NSSet *simpleSet = [NSSet setWithObjects:@"Hello sets",@42,aValue, nil];
        
        NSSet *simpleSet2 = [NSSet setWithObjects:@42,@42,@42,@42,@43, nil];
#endif
        
        
    }
    return 0;
}
