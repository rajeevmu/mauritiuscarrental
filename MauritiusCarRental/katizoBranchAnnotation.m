//
//  katizoBranchAnnotation.m
//  MauritiusCarRental
//
//  Created by admin on 3/3/13.
//  Copyright (c) 2013 admin. All rights reserved.
//

#import "katizoBranchAnnotation.h"

@implementation katizoBranchAnnotation

-(id)initAnnotationWithImage:(id<MKAnnotation>)annotation reuseIdentifier:(NSString *)reuseIdentifier annotationWithImage:(UIImage *)image
{
    self = [super initWithAnnotation:annotation reuseIdentifier:reuseIdentifier];
    self.image = image;
    return self;
}

@end
