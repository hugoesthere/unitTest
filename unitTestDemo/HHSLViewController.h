//
//  HHSLViewController.h
//  unitTestDemo
//
//  Created by Hugo Ho on 9/19/14.
//  Copyright (c) 2014 Hugo Ho and Shannon Lin. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface HHSLViewController : UIViewController

@property(weak, nonatomic) IBOutlet UITextField* celsiusValueTextField;
@property(weak, nonatomic) IBOutlet UILabel* fahrenheitValueLabel;

- (IBAction)celsiusValueEntered:(id)sender;

@end
