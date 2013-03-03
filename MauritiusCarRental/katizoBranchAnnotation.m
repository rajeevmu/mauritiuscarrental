//
//  katizoBranchAnnotation.m
//  MauritiusCarRental
//
//  Created by admin on 3/3/13.
//  Copyright (c) 2013 admin. All rights reserved.
//

#import "katizoBranchAnnotation.h"

@implementation katizoBranchAnnotation
@synthesize  coord;
@synthesize title;
@synthesize subTitle;


-(void) dealloc
{
    self.title = nil;
    self.subTitle = nil;    
}

@end
