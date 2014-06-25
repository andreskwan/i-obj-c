//
//  main.m
//  testing-obj-c
//
//  Created by Andres Kwan on 5/16/14.
//  Copyright (c) 2014 Kwan. All rights reserved.
//

#import <Foundation/Foundation.h>
#define NSDIC YES
int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        // insert code here...
        NSLog(@"Hello, World!");
        
#if NSDIC == YES
        NSDictionary *dict1 = [NSDictionary dictionaryWithObjectsAndKeys:
                                    @"k1",@"Obj1",
                                    @"k2",@"Obj2",
                                    @"k3",@"Obj3", nil];

        
        //Literals - second way to create a dict
        NSDictionary *dict2 = @{@"k1": @"o1",
                               @"k2": @"o2",
                               @"k3": @"o3",
                               @"k4": @"o4"};
        
        //Querying
        NSString *storedObj1 = [dict2 objectForKey:@"k3"];

        //subscript syntax
        NSString *storedObj2 = dict2[@"k1"];
        
        //Mutability
        //I have to allocate the dictionary before use it
        NSMutableDictionary *mutDic = [[NSMutableDictionary alloc]init];
        
        [mutDic addEntriesFromDictionary:dict2];
        
        [mutDic setObject:@"o5" forKey:@"k5"];
        
        //Null in collections - singleton class
        [mutDic setObject:[NSNull null] forKey:@"k6"];
        
        //check for null
        for (id obj in mutDic) {
            if (mutDic[obj] == [NSNull null]) {
                NSLog(@"\nFound a null obj with key: %@", obj);
            }
        }
        
#endif
    }
    return 0;
    
}

