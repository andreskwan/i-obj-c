//
//  main.m
//  testing-obj-c
//
//  Created by Andres Kwan on 5/16/14.
//  Copyright (c) 2014 Kwan. All rights reserved.
//

#import <Foundation/Foundation.h>

#define NSDIC YES

#define C_PROG YES

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
        
        //Mutability using mutable elements in the array
        //mutating the mutableString
        NSMutableString * mutableString = [NSMutableString stringWithString:@"Hello"];
        NSArray * inmutableArray       = @[mutableString];
        
        if ([inmutableArray count] > 0) {
            id string = inmutableArray[0];
            if ([string isKindOfClass:[NSMutableString class]]) {
                [string appendString:@" world, Mutability"];
            }
        }
        
        //Mutable Array
        NSMutableArray *mutableArray = [NSMutableArray array];
        [mutableArray addObject:@"gamma"];
        [mutableArray addObject:@"alpha"];
        [mutableArray addObject:@"beta"];
        
        [mutableArray replaceObjectAtIndex:0 withObject:@"epsilon"];
        
        [mutableArray sortUsingSelector:@selector(caseInsensitiveCompare:)];
        


#if C_PROG == YES
        //pure C into objective-C
        int a = 9;
        printf("a %d\n",a);
        
        int c = a++;
        printf("c: %d, a: %d\n",c,a);
#endif

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
        

        //sets
        NSNumber *aValue  = @85;
        NSSet *simpleSet = [NSSet setWithObjects:@"Hello sets",@42,aValue, nil];

        
        NSSet *simpleSet2 = [NSSet setWithObjects:@42,@42,@42,@42,@43, nil];


#endif

    }
    return 0;
    
}
