//
//  MoreTableViewDataSource.h
//  TabbedApp
//
//  Created by D.T on 23/10/13.
//  Copyright (c) 2013 D.T. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface MoreTableViewDataSource : NSObject <UITableViewDataSource>
{
  id<UITableViewDataSource> originalDataSource;
}

@property (retain) id<UITableViewDataSource> originalDataSource;

-(MoreTableViewDataSource *) initWithDataSource:(id<UITableViewDataSource>) dataSource;

@end