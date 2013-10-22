//
//  CustomTabBarController.m
//  TabbedApp
//
//  Created by D.T on 23/10/13.
//  Copyright (c) 2013 D.T. All rights reserved.
//

#import "CustomTabBarController.h"

#import "FirstViewController.h"
#import "SecondViewController.h"
#import "ThirdViewController.h"
#import "FourthViewController.h"
#import "FifthViewController.h"
#import "SixthViewController.h"

@interface CustomTabBarController ()

@end

@implementation CustomTabBarController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
      UIViewController *viewController1 = [[FirstViewController alloc] initWithNibName:@"FirstViewController" bundle:nil];
      UIViewController *viewController2 = [[SecondViewController alloc] initWithNibName:@"SecondViewController" bundle:nil];
      UIViewController *viewController3 = [[ThirdViewController alloc] initWithNibName:@"ThirdViewController" bundle:nil];
      UIViewController *viewController4 = [[FourthViewController alloc] initWithNibName:@"FourthViewController" bundle:nil];
      UIViewController *viewController5 = [[FifthViewController alloc] initWithNibName:@"FifthViewController" bundle:nil];
      UIViewController *viewController6 = [[SixthViewController alloc] initWithNibName:@"SixthViewController" bundle:nil];
      self.viewControllers = @[viewController1, viewController2, viewController3, viewController4, viewController5, viewController6];
    }
    return self;
}

- (void)viewDidLoad
{
  [super viewDidLoad];
  
  UINavigationController *moreController = self.moreNavigationController;
  moreController.navigationBar.barStyle = UIBarStyleBlackOpaque;
  
  if ([moreController.topViewController.view isKindOfClass:[UITableView class]])
  {
    UITableView *view = (UITableView *)moreController.topViewController.view;
    moreTableViewDataSource = [[MoreTableViewDataSource alloc] initWithDataSource:view.dataSource];
    view.dataSource = moreTableViewDataSource;
  }
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
