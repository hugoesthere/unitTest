//
//  unitTestDemoTests.m
//  unitTestDemoTests
//
//  Created by Hugo Ho on 9/19/14.
//  Copyright (c) 2014 Hugo Ho and Shannon Lin. All rights reserved.
//

#import "HHSLModel.h"
#import <XCTest/XCTest.h>

@interface unitTestDemoTests : XCTestCase
{
    HHSLModel* _model;
}
@end

@implementation unitTestDemoTests

- (void)setUp
{
    [super setUp];
    // Put setup code here. This method is called before the invocation of each test method in the class.
    _model = [[HHSLModel alloc] init];
}

- (void)tearDown
{
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

- (void)testValues
{
    XCTAssertTrue([_model convertToFahrenheit:0]==32, @"Converting 0");
    XCTAssertTrue([_model convertToFahrenheit:-40]==-40, @"Converting -40");
}

- (void)testExtrema
{
    int maxValue = (int)((2147483647.0-32.0)*5.0/9.0) + 1;
    int minValue = (int)((-2147483647.0-32.0)*5.0/9.0) - 1;
    XCTAssertThrowsSpecific([_model convertToFahrenheit:maxValue], NSException, @"Converting more than max value");
    XCTAssertThrowsSpecific([_model convertToFahrenheit:minValue], NSException, @"Converting less than min value");
}

@end
