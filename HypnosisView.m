//
//  HypnosisView.m
//  Hypnosister
//
//  Created by  Chuns on 11-8-29.
//  Copyright 2011年 __MyCompanyName__. All rights reserved.
//

#import "HypnosisView.h"


@implementation HypnosisView


- (void)drawRect:(CGRect)rect
{
    CGRect bounds = [self bounds];
    
    CGPoint center;
    center.x = bounds.origin.x + bounds.size.width / 2.0;
    center.y = bounds.origin.y + bounds.size.height /2.0;
    
    float maxRadius = hypot(bounds.size.width, bounds.size.height) /2.0;
    
    CGContextRef context = UIGraphicsGetCurrentContext();
    
    CGContextSetLineCap(context, 10);
    
    [[UIColor lightGrayColor] setStroke];
    
    for (float currentRadius = maxRadius; currentRadius > 0; currentRadius -= 20)
    {
        CGContextAddArc(context, center.x, center.y, currentRadius, 0.0, M_PI * 2.0, YES);
        CGContextStrokePath(context);
    }
}


@end
