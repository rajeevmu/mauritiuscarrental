//
//  katizoMapViewController.m
//  MauritiusCarRental
//
//  Created by admin on 2/28/13.
//  Copyright (c) 2013 admin. All rights reserved.
//

#import "katizoMapViewController.h"

@interface katizoMapViewController ()

@end

@implementation katizoMapViewController
@synthesize officeMap;


- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
    //self.officeMap.delegate = self;
    [super viewDidLoad];
    officeMap.showsUserLocation = YES;
    
    CLLocationCoordinate2D annotationCoord,centerCoord;
    
    centerCoord.longitude =57.577858;
    centerCoord.latitude = -20.282165;
    
    
    
    annotationCoord.longitude =57.617569;
    annotationCoord.latitude = -20.027548;
    
    
    MKPointAnnotation *annot = [[MKPointAnnotation alloc] init];
    annot.title = @"Restaurant LO CAPITANO";
    annot.subtitle = @"Mahebourg";
    annot.coordinate = annotationCoord;    
    [self.officeMap addAnnotation:annot];

    
    
    CLLocationCoordinate2D coord;
    
    coord.longitude =57.706833;
    coord.latitude = -20.358790;
    
        
    MKPointAnnotation *annot1 = [[MKPointAnnotation alloc] init];
    annot1.title = @"Restaurant Namaste";
    annot1.subtitle = @"Mahebourg";
    annot1.coordinate = coord;
    [self.officeMap addAnnotation:annot1];
    

    

    
    
    
    
    
    //MKUserLocation *userLocation = map.userLocation;
    MKCoordinateRegion region = MKCoordinateRegionMakeWithDistance(centerCoord, 50000, 50000);
    [officeMap setRegion:region animated:YES];

}


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


-(void)mapView:(MKMapView *)mapView didUpdateUserLocation:(MKUserLocation *)userLocation
{

    
    
}



-(void) zoomOut:(id)sender
{
    CLLocationCoordinate2D centerCoord;
    
    centerCoord.longitude =57.577858;
    centerCoord.latitude = -20.282165;
    
    //MKUserLocation *userLocation = map.userLocation;
    MKCoordinateRegion region = MKCoordinateRegionMakeWithDistance(centerCoord, 50000, 50000);
    [officeMap setRegion:region animated:YES];
}
@end
