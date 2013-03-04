//
//  katizoBranchAnnotation.h
//  MauritiusCarRental
//
//  Created by admin on 3/3/13.
//  Copyright (c) 2013 admin. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreLocation/CoreLocation.h>
#import <MapKit/MapKit.h>

@interface katizoBranchAnnotation :MKAnnotationView
{
    


    
}

-(id) initAnnotationWithImage:(id<MKAnnotation>)annotation   reuseIdentifier:(NSString *)reuseIdentifier    annotationWithImage:(UIImage *) image;
@end
