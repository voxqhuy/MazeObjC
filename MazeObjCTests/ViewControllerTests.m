//
//  ViewControllerTests.m
//  MazeObjCTests
//
//  Created by Huy Vo on 4/18/20.
//  Copyright © 2020 Huy Vo. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "ViewController.h"

@interface ViewControllerTests : XCTestCase
@property ViewController *sut;
@end

@implementation ViewControllerTests

- (void)setUp {
    _sut = [[UIStoryboard storyboardWithName:@"Main" bundle:nil]
            instantiateViewControllerWithIdentifier:@"ViewController"];
}

- (void)tearDown {
    _sut = nil;
}

- (void)testActions {
    [_sut enterRoomPressed:self];
    [_sut goLeftPressed:self];
    [_sut goRightPressed:self];
    [_sut restartPressed:self];
}

@end
