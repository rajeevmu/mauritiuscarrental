//
//  katizoMakesYearViewController.h
//  MauritiusCarRental
//
//  Created by admin on 3/1/13.
//  Copyright (c) 2013 admin. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface katizoMakesYearViewController : UITableViewController


@property NSString *modelName;
@property (nonatomic,retain) IBOutlet UILabel *labelModel;
@property (nonatomic,retain) IBOutlet UILabel *labelAvailability;
@property (nonatomic,retain) IBOutlet UIImageView *imgCar;


@property (nonatomic,strong) NSMutableArray *imageArray;

@end
