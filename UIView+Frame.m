//
//  UIView+Frame.m
//
//  Created by Daniel Shein on 2/14/12.
//  Copyright (c) 2012 LoFT. All rights reserved.
//

#import "UIView+Frame.h"

@implementation UIView (Frame)


#pragma mark - Rect Setters

-(void)setFrameWidth:(CGFloat)_width
{
    CGRect newFrame = self.frame;
    newFrame.size.width = _width;
    self.frame = newFrame;
}


-(void)setFrameHeight:(CGFloat)_height
{
    CGRect newFrame = self.frame;
    newFrame.size.height = _height;
    self.frame = newFrame;
}


-(void)setFrameOriginX:(CGFloat)_x
{
    CGRect newFrame = self.frame;
    newFrame.origin.x = _x;
    self.frame = newFrame;
}


-(void)setFrameOriginY:(CGFloat)_y
{
    CGRect newFrame = self.frame;
    newFrame.origin.y = _y;
    self.frame = newFrame;    
}

-(void)setFrameOrigin:(CGPoint)_point
{
    CGRect newFrame = self.frame;
    newFrame.origin = _point;
    self.frame = newFrame;
}


-(void)setFrameSize:(CGSize)_size
{
    CGRect newFrame = self.frame;
    newFrame.size = _size;
    self.frame = newFrame;    
}

#pragma mark - Rect Movement Methods

-(void)modifyFrameWidthBy:(CGFloat)_width
{
    CGRect newFrame = self.frame;
    newFrame.size.width += _width;
    self.frame = newFrame;
}

-(void)modifyFrameHeightBy:(CGFloat)_height
{
    CGRect newFrame = self.frame;
    newFrame.size.height += _height;
    self.frame = newFrame;    
}

-(void)modifyFrameOriginXBy:(CGFloat)_x
{
    CGRect newFrame = self.frame;
    newFrame.origin.x += _x;
    self.frame = newFrame;    
}

-(void)modifyFrameOriginYBy:(CGFloat)_y
{
    CGRect newFrame = self.frame;
    newFrame.origin.y += _y;
    self.frame = newFrame;    
}

-(void)modifyFrameOrigin:(CGPoint)_point
{
    CGRect newFrame = self.frame;
    newFrame.origin.x += _point.x;
    newFrame.origin.y += _point.y;
    self.frame = newFrame;
}

-(void)modifyFrameSize:(CGSize)_size
{
    CGRect newFrame = self.frame;
    newFrame.size.width += _size.width;
    newFrame.size.height += _size.height;
    self.frame = newFrame;
}
@end
