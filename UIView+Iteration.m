//
//  UIView+Iteration.m
//
//  Created by Daniel Shein on 3/12/11.
//  Copyright 2011 LoFT. All rights reserved.
//

#import "UIView+Iteration.h"


@implementation UIView (Iteration) 

-(NSArray*)findSubviewsByType:(Class)_classType
{
    NSMutableArray *views = [NSMutableArray array];
    
    for (UIView *subview in self.subviews) {
        if ([subview isKindOfClass:_classType]) {
            [views addObject:subview];
        }
    }
    
    return views;
}


-(NSArray*)findViewsfromSubviewsByType:(Class)_classType{	
	NSMutableArray *views = [NSMutableArray array];
	
	if ([self isKindOfClass:_classType]) { [views addObject:self]; }
	
	for (UIView *subview in self.subviews) {
		[views addObjectsFromArray:[subview findViewsfromSubviewsByType:_classType]];
	}
	
	if ([views count] == 0) { return nil; }
	return views;
}


-(UIView*)findViewfromSubviewsByView:(UIView*)_view{	
	if (self == _view) { return self; }

	UIView *view = nil;
	for (UIView *subview in self.subviews) {
		view = [subview findViewfromSubviewsByView:_view];
		if (view != nil) { return view; }
	}
	
	return nil;
}

-(UIView*)findViewfromSubviewsByTag:(int)_viewTag{
	if (self.tag == _viewTag) { return self; }
	
	UIView *view = nil;
	for (UIView *subview in self.subviews) {
		view = [subview findViewfromSubviewsByTag:_viewTag];
		if (view != nil) { return view; }
	}
	
	return nil;	
}

-(void)resignFirstResponderForAllSubviews{
	[self resignFirstResponder];
	for (UIView *subview in self.subviews) {
		[subview resignFirstResponderForAllSubviews];
	}
}

-(void)logViewHierarchy{
	NSLog(@"%@",self);
	for (UIView *subview in self.subviews) {
		[subview logViewHierarchy];
	}
}

@end
