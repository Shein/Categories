//
//  NSDictionary+Iteration.h
//  FoursquareSampler
//
//  Created by Daniel Shein on 5/18/12.
//  Copyright (c) 2012 LoFT. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSDictionary (Iteration)

-(NSArray*)objectsForKey:(id)_key recursive:(BOOL)_recursive;

@end
