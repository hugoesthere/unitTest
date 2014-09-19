//
//  HHSLViewController.m
//  unitTestDemo
//
//  Created by Hugo Ho on 9/19/14.
//  Copyright (c) 2014 Hugo Ho and Shannon Lin. All rights reserved.
//

#import "HHSLModel.h"
#import "HHSLViewController.h"

@interface HHSLViewController ()
{
    HHSLModel* model;
}
@end

@implementation HHSLViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    model = [[HHSLModel alloc] init];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)celsiusValueEntered:(id)sender
{
    int fahrenheit = [model convertToFahrenheit:[self.celsiusValueTextField.text integerValue]];
    self.fahrenheitValueLabel.text = [NSString stringWithFormat:@"%d", fahrenheit];
}

@end
