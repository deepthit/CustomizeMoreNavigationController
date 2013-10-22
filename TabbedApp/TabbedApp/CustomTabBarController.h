//
//  CustomTabBarController.h
//  TabbedApp
//
//  Created by D.T on 23/10/13.
//  Copyright (c) 2013 D.T. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "MoreTableViewDataSource.h"

@interface CustomTabBarController : UITabBarController
{
  MoreTableViewDataSource *moreTableViewDataSource;
}

@end
