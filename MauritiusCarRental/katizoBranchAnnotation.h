//
//  katizoBranchAnnotation.h
//  MauritiusCarRental
//
//  Created by admin on 3/3/13.
//  Copyright (c) 2013 admin. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <MapKit/MapKit.h>

@interface katizoBranchAnnotation : NSObject <MKAnnotation>

@property (nonatomic,assign) CLLocationCoordinate2D *coord;
@property (nonatomic,copy)  NSString *title;
@property (nonatomic,copy) NSString *subTitle;

@end
