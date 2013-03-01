//
//  katizoModelsViewController.h
//  MauritiusCarRental
//
//  Created by admin on 2/26/13.
//  Copyright (c) 2013 admin. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface katizoModelsViewController : UITableViewController <UITableViewDelegate,UITableViewDataSource>


@property NSString *typeSelected;
@property NSString *makesYearSelected;
@property NSArray *makesYearArray;

@end
