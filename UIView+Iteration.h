//
//  UIView+Iteration.h
//
//  Created by Daniel Shein on 3/12/11.
//  Copyright 2011 LoFT. All rights reserved.
//

#import <Foundation/Foundation.h>


@interface UIView (Iteration) 

-(NSArray*)findSubviewsByType:(Class)_classType;
-(NSArray*)findViewsfromSubviewsByType:(Class)_classType;
-(UIView*)findViewfromSubviewsByView:(UIView*)_view;
-(UIView*)findViewfromSubviewsByTag:(int)_viewTag;
-(void)resignFirstResponderForAllSubviews;
-(void)logViewHierarchy;

@end
