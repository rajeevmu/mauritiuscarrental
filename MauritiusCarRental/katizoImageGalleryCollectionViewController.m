//
//  katizoImageGalleryCollectionViewController.m
//  MauritiusCarRental
//
//  Created by admin on 3/2/13.
//  Copyright (c) 2013 admin. All rights reserved.
//

#import "katizoImageGalleryCollectionViewController.h"
#import "katizoImageCollectionViewCell.h"

@interface katizoImageGalleryCollectionViewController ()

@end

@implementation katizoImageGalleryCollectionViewController

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
    
    UIImage *image = [UIImage imageNamed:@"logo.png"];
    UIImageView *imgView = [[UIImageView alloc] initWithImage:image];
    
    self.navigationItem.titleView = imgView;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}




-(NSInteger) collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section
{
    return 12;
}


-(UICollectionViewCell *) collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *identifier = @"Cell";
    katizoImageCollectionViewCell *cell = (katizoImageCollectionViewCell *) [collectionView dequeueReusableCellWithReuseIdentifier:identifier forIndexPath:indexPath];
   
    //NSLog(@"%d",indexPath.row);
    
    cell.img.image = [UIImage imageNamed:[NSString stringWithFormat:@"car%d.jpg",indexPath.row+1]];
    return cell;
    
}

@end
