//
//  katizoHomeViewController.m
//  MauritiusCarRental
//
//  Created by admin on 2/26/13.
//  Copyright (c) 2013 admin. All rights reserved.
//

#import "katizoHomeViewController.h"
#import "katizoTypeViewController.h"

@interface katizoHomeViewController ()

@end

@implementation katizoHomeViewController
@synthesize menuItems;

- (id)initWithStyle:(UITableViewStyle)style
{
    self = [super initWithStyle:style];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.menuItems = [[NSArray alloc]initWithObjects:@"CARS",@"4x4",@"SCOOTER",@"MINIBUS",nil];
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
 
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{

    // Return the number of sections.
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{

    // Return the number of rows in the section.
    return [self.menuItems count];
}




-(void) prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
        katizoTypeViewController *typeViewController = [segue destinationViewController];
    
    
    /*
    UITableViewCell *cell = (UITableViewCell *)sender;
    NSIndexPath *path = [self.tableView indexPathForCell:cell];
    NSString *menuSelected = [self.menuItems objectAtIndex:path.row];
    
  

   typeViewController.vehicleType = menuSelected;
    
   */ 
    
   //OR THIS ONE
    typeViewController.vehicleType = [segue identifier];
    
    
}
@end
