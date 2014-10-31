//
//  main.m
//  testing-obj-c
//
//  Created by Andres Kwan on 5/16/14.
//  Copyright (c) 2014 Kwan. All rights reserved.
//

#import <Foundation/Foundation.h>

//#define NSSTRING
//#define NSRANGE
//#define NSNUMBER
//#define NSARRAY
//#define C_PROG
//#define NSDIC
//#define NSSET
#define C_STRUCTS


int main(int argc, const char * argv[])
{
    @autoreleasepool {
        
#pragma mark NSString
#ifdef NSSTRING
        NSLog(@"--------------------------------------------");
        NSLog(@"NSString and Selectors");
        NSString * hello = @"Hola";

        
        //selectors
        if ([hello respondsToSelector:@selector(uppercaseString)]) {
            NSLog(@"%@",[hello uppercaseString]);
        }
        
        SEL appendStrSelector = NSSelectorFromString(@"stringByAppendingString:");
        
        if ([hello respondsToSelector:appendStrSelector]) {
            NSLog(@"%@",[hello performSelector:appendStrSelector withObject:@"! Tons que mijo"]);
        }else{
            NSLog(@"not working");
        }
#endif
        
#pragma mark NSRange, NSNotFound
#ifdef NSRANGE 
        NSLog(@"--------------------------------------------");
        NSLog(@"NSRange, NSNotFound ");
        NSString * greeting = @"Hello World!";
        NSString * hi       = @"Hello";
        NSRange range       = [greeting rangeOfString:hi];
        if (range.location == NSNotFound) {
            NSLog(@"Couldn't find \"%@\" inside \"%@\"", hi, greeting);
        }else{
            NSLog(@"found with length: %d, location: %d", (int)range.length, (int)range.location);
        }
#endif
        
        
        
#pragma mark NSNumber, NSUInteger
#ifdef NSNUMBER 
        NSLog(@"--------------------------------------------");
        NSLog(@"NSNumber, NSUInteger");
        int aNSUInteger;
        NSString *aString = [NSString stringWithFormat:@"hola: %d", aNSUInteger];
        NSLog(aString);//2014-09-01 02:21:45.004 testing-obj-c[2647:303] hola: 1
        
        NSNumber * aNSNumber;
        NSString *aString2 = [NSString stringWithFormat:@"hola: %@", aNSNumber];
        NSLog(aString2);//2014-09-01 02:23:23.450 testing-obj-c[2665:303] hola: (null)
#endif
        
#pragma mark NSArray
#ifdef NSARRAY 
        NSLog(@"--------------------------------------------");
        NSLog(@"NSArray");
        id firstObj  = @"firstObj";
        id secondObj = @"Andres";
        id thirdObj  = @"Kwan";
        id fourthObj  = @"Orjuela";
        NSArray * someArray = @[firstObj, secondObj, thirdObj, fourthObj];
        
        NSLog(@"[someArray description]: %@",[someArray description]);
        //Quering array objects
        //--identify index of obj in array
        if ([someArray containsObject:secondObj]) {
            NSLog(@"[someArray containsObject:secondObj]: %@", [someArray objectAtIndex:[someArray indexOfObject:secondObj]]);
        }
        
        //without indexOfArray
        if ([someArray count] > 0 )
        {
            NSLog(@"someArray[2]: %@", someArray[2]);
            NSLog(@"[someArray lastObject]: %@", [someArray lastObject]);
        }
        //----------------------------------------------------------------
        //sorting
        NSLog(@"%@",@"-----------------------------");
        NSLog(@"%@",@"Sorting Arrays");
        NSArray * sortedArray = [someArray sortedArrayUsingSelector:@selector(compare:)];
        NSLog(@"[someArray sortedArrayUsingSelector:@selector(compare:)]: %@",sortedArray);
        
        
        //----------------------------------------------------------------
        //Mutability using mutable elements in the array
        //mutating the mutableString
        NSLog(@"%@",@"-----------------------------");
        NSLog(@"%@",@"Inmutable Array with Mutable string");
        NSMutableString * mutableString = [NSMutableString stringWithString:@"Hello"];
        NSArray * inmutableArray       = @[mutableString];
        NSLog(@"inmutableArray: %@",inmutableArray);
        if ([inmutableArray count] > 0) {
            id string = inmutableArray[0];
            if ([string isKindOfClass:[NSMutableString class]]) {
                [string appendString:@" world, Mutability"];
            }
        }
        NSLog(@"inmutableArray: %@",inmutableArray);

        //----------------------------------------------------------------
        //Mutable Array
        NSLog(@"%@",@"-----------------------------");
        NSLog(@"%@",@"Mutable Array");
        NSMutableArray *mutableArray = [NSMutableArray array];
        [mutableArray addObject:@"gamma"];
        [mutableArray addObject:@"alpha"];
        [mutableArray addObject:@"beta"];
        NSLog(@"mutableArray: %@",mutableArray);
        [mutableArray replaceObjectAtIndex:0 withObject:@"epsilon"];
        NSLog(@"[mutableArray replaceObjectAtIndex:0 withObject:@\"epsilon\"]: %@",mutableArray);
        
        [mutableArray sortUsingSelector:@selector(caseInsensitiveCompare:)];
        NSLog(@"[mutableArray sortUsingSelector:@selector(caseInsensitiveCompare:)]: %@",mutableArray);
        
        //----------------------------------------------------------------
        //Array enumerating collections
        NSLog(@"%@",@"-----------------------------");
        NSLog(@"%@",@"Array & enumerating collections with BLocks");
//        BOOL stop = NO;
        [mutableArray enumerateObjectsUsingBlock:^(NSString * greekLetter, NSUInteger idx, BOOL *stop){
           NSLog(@"%@",greekLetter);
        }];

#endif

#pragma mark C code
#ifdef C_PROG 
        NSLog(@"--------------------------------------------");
        NSLog(@"C code");
        //pure C into objective-C
        int a = 9;
        printf("a %d\n",a);
        
        int c = a++;
        printf("c: %d, a: %d\n",c,a);
#endif
        
#pragma mark C Stucts 
#ifdef C_STRUCTS
//        NSMutableArray * nsmArray = [[NSMutableArray alloc]init];
        NSMutableArray * nsmArray = [NSMutableArray new];
        //print __NSArrayM
        NSLog(@"%s",object_getClassName([nsmArray class]));
        NSLog(@"%s",object_getClassName([[NSMutableArray new]class]));
#endif

#pragma mark NSDictionary
#ifdef NSDIC 
        NSLog(@"--------------------------------------------");
        NSLog(@"NSDictionary");
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

#pragma mark NSSet        
#ifdef NSSET 
        NSLog(@"--------------------------------------------");
        NSLog(@"NSSet");
        //sets
        NSNumber *aValue  = @85;
        NSSet *simpleSet = [NSSet setWithObjects:@"Hello sets",@42,aValue, nil];
        NSSet *simpleSet2 = [NSSet setWithObjects:@42,@42,@42,@42,@43, nil];
#endif

    }
    return 0;
    
}
