//
//  NSArray+Iteration.h
//  FoursquareSampler
//
//  Created by Daniel Shein on 5/18/12.
//  Copyright (c) 2012 LoFT. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSArray (Iteration)
-(NSArray*)objectsForType:(Class)_type recursively:(BOOL)_recursively;
@end
