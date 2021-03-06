//
//  ChannelViewController.m
//  Charting
//
//  Created by Suman Roy on 01/12/15.
//  Copyright (c) 2015 sourcebits. All rights reserved.
//

#import "ChannelViewController.h"
#import "PopularChannelViewController.h"
#import "RecentChannelViewController.h"
#import "ChannelDataController.h"

@implementation ChannelViewController

-(void)viewDidLoad {
    
    
    
    // Array to keep track of controllers in page menu
    NSMutableArray *controllerArray = [NSMutableArray array];
    
    // Create variables for all view controllers you want to put in the
    // page menu, initialize them, and add each to the controller array.
    // (Can be any UIViewController subclass)
    // Make sure the title property of all view controllers is set
    // Example:WithNibname:@"controllerNibnName" bundle:nil
    
    PopularChannelViewController *controller = [ self.storyboard instantiateViewControllerWithIdentifier:@"PopularTableViewController" ];
    controller.title = @"POPULAR";
    controller.bottomMargin = self.tabBarController.tabBar.frame.size.height;
    [controllerArray addObject:controller];
    
    RecentChannelViewController *controller2 = [self.storyboard instantiateViewControllerWithIdentifier:@"RecentTableViewController"];
    controller2.title = @"RECENT";
    controller2.bottomMargin = self.tabBarController.tabBar.frame.size.height;
    [controllerArray addObject:controller2];
    
    // Customize page menu to your liking (optional) or use default settings by sending nil for 'options' in the init
    // Example:
    
    UIColor *bgColor = [ UIColor colorWithRed:( 28.0/255.0 ) green:(216.0/255.0 ) blue:1 alpha:1 ];
    
    UIFont *menuLabelFont = [ UIFont fontWithName:@"Helvetica-Bold" size:20.0 ];
    
    NSDictionary *parameters = @{CAPSPageMenuOptionMenuItemSeparatorWidth: @(4.3),
                                 CAPSPageMenuOptionUseMenuLikeSegmentedControl: @(YES),
                                 CAPSPageMenuOptionMenuHeight: @(70.0),
                                 CAPSPageMenuOptionScrollMenuBackgroundColor: bgColor,
                                 CAPSPageMenuOptionMenuItemFont: menuLabelFont
                                 };
    
    // Initialize page menu with controller array, frame, and optional parameters
    
    _pageMenu = [[CAPSPageMenu alloc] initWithViewControllers:controllerArray
                                                        frame:CGRectMake(self.view.frame.origin.x,
                                                                         self.view.frame.origin.y,
                                                                         self.view.frame.size.width,
                                                                         self.view.frame.size.height)
                                                      options:parameters];
    
    self.pageMenu.delegate = self;
    
    // Lastly add page menu as subview of base view controller view
    // or use pageMenu controller in you view hierachy as desired
    [self.view addSubview:_pageMenu.view];
    
    self.tabBarController.tabBar.backgroundColor = bgColor;
    self.tabBarController.tabBar.alpha = 1.0;
}

@end
