//
//  HHSLModel.m
//  unitTestDemo
//
//  Created by Hugo Ho on 9/19/14.
//  Copyright (c) 2014 Hugo Ho and Shannon Lin. All rights reserved.
//

#import "HHSLModel.h"

@implementation HHSLModel

- (int)convertToFahrenheit:(int)celsiusValue
{
    int maxValue = (int)((2147483647.0-32.0)*5.0/9.0) + 1;
    int minValue = (int)((-2147483647.0-32.0)*5.0/9.0) - 1;
    NSAssert(celsiusValue<maxValue, @"Invalid: input is too large");
    NSAssert(celsiusValue>minValue, @"Invalid: input is too small");
    return (int) ( ((float) celsiusValue)*9.0/5.0 + 32.0);
}

@end
