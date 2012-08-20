//
//  LjsViewController.m
//  Ellpsis_ISSUE_55
//
//  Created by Joshua Moody on 20.8.12.
//  Copyright (c) 2012 Joshua Moody. All rights reserved.
//

#import "LjsViewController.h"

@interface LjsViewController ()
@property (unsafe_unretained, nonatomic) IBOutlet UILabel *label;

@end

@implementation LjsViewController
@synthesize label;

- (id) initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil {
  self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
  if (self) {
    self.title = @"A Title";
    // was trying to see if OS truncated text would cause error
    //self.title = @"a really long title that will force ellipsis";
  }
  return self;
}

- (void) didReceiveMemoryWarning {
  [super didReceiveMemoryWarning];
}

- (void)viewDidUnload {
  [self setLabel:nil];
  [super viewDidUnload];
}

- (void) configureAccessibility {
  self.view.accessibilityIdentifier = @"first view";
}

- (void)viewDidLoad {
  [super viewDidLoad];
  self.label.accessibilityIdentifier = @"ellipsis label";
}


#pragma mark - View Lifecycle


- (void)viewWillAppear:(BOOL)animated {
  [super viewWillAppear:animated];
  
  NSArray *keys = [NSArray arrayWithObjects:
                   UITextAttributeFont,
                   UITextAttributeTextColor,
                   UITextAttributeTextShadowColor,
                   UITextAttributeTextShadowOffset,
                   nil];
  
  NSArray *values = [NSArray arrayWithObjects:
                     [UIFont systemFontOfSize:20],
                     [UIColor whiteColor],
                     [UIColor blackColor],
                     [NSValue valueWithUIOffset:UIOffsetMake(0.0, -0.5)],
                     nil];
  
  NSDictionary *attributes =
  [NSDictionary dictionaryWithObjects:values
                              forKeys:keys];

  
  UINavigationBar *bar = self.navigationController.navigationBar;
  bar.titleTextAttributes = attributes;

}

- (void)viewDidAppear:(BOOL)animated {
  [super viewDidAppear:animated];
}

- (void)viewWillDisappear:(BOOL)animated {
  [super viewWillDisappear:animated];
}

- (void)viewDidDisappear:(BOOL)animated {
  [super viewDidDisappear:animated];
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
  return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
}



@end
