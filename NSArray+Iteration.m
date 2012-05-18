//
//  NSArray+Iteration.m
//  FoursquareSampler
//
//  Created by Daniel Shein on 5/18/12.
//  Copyright (c) 2012 LoFT. All rights reserved.
//

#import "NSArray+Iteration.h"

@implementation NSArray (Iteration)

-(NSArray*)objectsForType:(Class)_type recursively:(BOOL)_recursively
{
    NSMutableArray *objects = [NSMutableArray array];
    
    for (id object in self){
        if ([object isKindOfClass:_type]) {
            [objects addObject:object];
        }
        
        if (_recursively) {
            if ([object isKindOfClass:[NSArray class]]) {
                [objects addObjectsFromArray:[object objectsForType:_type recursively:_recursively]];
            }
        }
    }
    return objects;
}

@end
