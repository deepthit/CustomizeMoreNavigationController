//
//  MoreTableViewDataSource.m
//  TabbedApp
//
//  Created by D.T on 23/10/13.
//  Copyright (c) 2013 D.T. All rights reserved.
//

#import "MoreTableViewDataSource.h"

@implementation MoreTableViewDataSource

@synthesize originalDataSource;

-(MoreTableViewDataSource *) initWithDataSource:(id<UITableViewDataSource>) dataSource
{
  self = [super init];
  if (self)
  {
    self.originalDataSource = dataSource;
  }
  
  return self;
}

- (void)dealloc
{
}

- (NSInteger)tableView:(UITableView *)table numberOfRowsInSection:(NSInteger)section
{
  return [originalDataSource tableView:table numberOfRowsInSection:section];
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
  UITableViewCell *cell = [originalDataSource tableView:tableView cellForRowAtIndexPath:indexPath];

  // Set background color
  UIView *background = [[UIView alloc] initWithFrame:cell.frame];
  background.autoresizingMask = UIViewAutoresizingFlexibleWidth | UIViewAutoresizingFlexibleHeight;
  background.backgroundColor  = [UIColor whiteColor];
  cell.backgroundView = background;
  
  // Set selected background color
  UIView *selectionColor = [[UIView alloc] initWithFrame:cell.frame];
  selectionColor.backgroundColor = [UIColor greenColor];
  selectionColor.autoresizingMask = UIViewAutoresizingFlexibleWidth | UIViewAutoresizingFlexibleHeight;
  cell.selectedBackgroundView = selectionColor;
  
  //cell.backgroundColor = [UIColor redColor];
  return cell;
}

@end
