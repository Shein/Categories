//
//  NSURLConnection+Tag.m
//  FoursquareSampler
//
//  Created by Daniel Shein on 5/17/12.
//  Copyright (c) 2012 LoFT. All rights reserved.
//

#import "NSURLConnection+Tag.h"

//TODO: add better support for concurrence
@implementation NSURLConnection (Tag)
static NSNumber *tag;

- (id)initWithRequest:(NSURLRequest *)request delegate:(id)delegate startImmediately:(BOOL)startImmediately tag:(int)_tag {
	self = [[NSURLConnection alloc] initWithRequest:request delegate:delegate startImmediately:startImmediately];
	
	if (self) {
        [self setTag:_tag];
	}
	return self;
}

- (id)initWithRequest:(NSURLRequest *)request delegate:(id)delegate tag:(int)_tag
{
	self = [[NSURLConnection alloc] initWithRequest:request delegate:delegate];
	
	if (self) {
        [self setTag:_tag];
	}
	return self;    
}

+ (NSURLConnection*)connectionWithRequest:(NSURLRequest *)request delegate:(id)delegate tag:(int)_tag
{
    NSURLConnection *connection = [NSURLConnection connectionWithRequest:request delegate:delegate];
    [connection setTag:_tag];
    return connection;
}


-(void)setTag:(int)_tag
{
    tag = [NSNumber numberWithInt:_tag];
}

-(NSNumber*)tag
{
    return tag;
}

@end
