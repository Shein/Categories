//
//  NSDictionary+Iteration.m
//  FoursquareSampler
//
//  Created by Daniel Shein on 5/18/12.
//  Copyright (c) 2012 LoFT. All rights reserved.
//

#import "NSDictionary+Iteration.h"
#import "NSArray+Iteration.h"

@implementation NSDictionary (Iteration)

-(NSArray*)objectsForKey:(id)_key recursive:(BOOL)_recursive
{
    NSMutableArray *objects = [NSMutableArray array];
    
    for (id key in [self allKeys]) {
        if ([key isEqual:_key]) {
            [objects addObject:[self objectForKey:key]];
        }
        
        if (_recursive) {
            id currentObject = [self objectForKey:key];
            if ([currentObject isKindOfClass:[NSDictionary class]]) {
                [objects addObjectsFromArray:[currentObject objectsForKey:_key recursive:_recursive]];
            } else if ([currentObject isKindOfClass:[NSArray class]]) {
                NSArray *dictionaries = [currentObject objectsForType:[NSDictionary class] recursively:YES];
                for (NSDictionary *dictionary in dictionaries){
                    [objects addObjectsFromArray:[dictionary objectsForKey:_key recursive:_recursive]];
                }
            }
            
        }
    }
    
    return objects;
}


@end
