//
//  NSURLConnection+Tag.h
//  FoursquareSampler
//
//  Created by Daniel Shein on 5/17/12.
//  Copyright (c) 2012 LoFT. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSURLConnection (Tag)
- (id)initWithRequest:(NSURLRequest *)request delegate:(id)delegate startImmediately:(BOOL)startImmediately tag:(int)_tag;
- (id)initWithRequest:(NSURLRequest *)request delegate:(id)delegate tag:(int)_tag;
+ (NSURLConnection*)connectionWithRequest:(NSURLRequest *)request delegate:(id)delegate tag:(int)_tag;

-(void)setTag:(int)_tag;
-(NSNumber*)tag;
@end
