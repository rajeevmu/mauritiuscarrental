//
//  katizoMapViewController.h
//  MauritiusCarRental
//
//  Created by admin on 2/28/13.
//  Copyright (c) 2013 admin. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <MapKit/MapKit.h>

@interface katizoMapViewController : UIViewController<MKMapViewDelegate>

@property (nonatomic,retain) IBOutlet MKMapView *officeMap;

-(IBAction)zoomOut:(id)sender;

@end
