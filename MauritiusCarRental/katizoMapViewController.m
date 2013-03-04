//
//  katizoMapViewController.m
//  MauritiusCarRental
//
//  Created by admin on 2/28/13.
//  Copyright (c) 2013 admin. All rights reserved.
//

#import "katizoMapViewController.h"
#import "katizoBranchAnnotation.h"


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
    
     
    UIImage *image = [UIImage imageNamed:@"logo.png"];
    UIImageView *imgView = [[UIImageView alloc] initWithImage:image];
    
    self.navigationItem.titleView = imgView;
    officeMap.showsUserLocation = YES;
    
    CLLocationCoordinate2D annotationCoord,centerCoord;
    
    centerCoord.longitude =57.577858;
    centerCoord.latitude = -20.282165;
    
    
    
     
     annotationCoord.longitude =57.617569;
     annotationCoord.latitude = -20.027548;
     
     
     MKPointAnnotation *annot = [[MKPointAnnotation alloc] init];
     annot.title = @"Branch Office - Petit Raffray";
     annot.subtitle = @"234-4656";
     annot.coordinate = annotationCoord;
     [self.officeMap addAnnotation:annot];
     
     
     
     CLLocationCoordinate2D coord;
     
     coord.longitude =57.706833;
     coord.latitude = -20.358790;
     
    
    
    
     MKPointAnnotation *annot1 = [[MKPointAnnotation alloc] init];
     annot1.title = @"Branch Office - Mahebourg";
     annot1.subtitle = @"631-4680";
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


-(MKAnnotationView *)mapView:(MKMapView *)mapView viewForAnnotation:(id<MKAnnotation>)annotation
{
    
    NSLog(@"mapview annotation");
    if ([annotation isKindOfClass:[MKUserLocation class]])
    {
        NSLog(@"dsfsd");
        return nil;
    }
    
    
    
    NSString *annotationIdentifier = @"katizoBranchAnnotation";
    katizoBranchAnnotation *pinView = (katizoBranchAnnotation *) [mapView dequeueReusableAnnotationViewWithIdentifier:annotationIdentifier];
    
    if (!pinView)
    {
       
        pinView = [[katizoBranchAnnotation alloc] initAnnotationWithImage:annotation reuseIdentifier:annotationIdentifier annotationWithImage:[UIImage imageNamed:@"car.png"]];
        
        
        pinView.canShowCallout = YES;
        UIImage *imageleft = [UIImage imageNamed:@"phone.png"];
        UIImageView *leftImage = [[UIImageView alloc]initWithImage:imageleft];
        
        UIImage *imageright = [UIImage imageNamed:@"email.png"];
        UIImageView *rightImage = [[UIImageView alloc]initWithImage:imageright];
        
        
        pinView.leftCalloutAccessoryView = leftImage;
        pinView.rightCalloutAccessoryView = rightImage;
        
        
    }
    return pinView;
        
}

/*
-(void)mapView:(MKMapView *)mapView didAddAnnotationViews:(NSArray *)views
{
   
    
    
    MKAnnotationView *annotationView = [views objectAtIndex:0];
    id<MKAnnotation> mp = [annotationView annotation];
    
    CLLocationCoordinate2D centerCoord;
    
    centerCoord.longitude =57.577858;
    centerCoord.latitude = -20.282165;

    
    //MKUserLocation *userLocation = map.userLocation;
    MKCoordinateRegion region = MKCoordinateRegionMakeWithDistance([mp coordinate], 50000, 50000);
    [self.officeMap setRegion:region animated:YES];
}
*/

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
