//
//  AppDeletgateTEsts.m
//  MazeObjCTests
//
//  Created by Huy Vo on 4/16/20.
//  Copyright © 2020 Huy Vo. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "AppDelegate.h"
#import "SceneDelegate.h"

@interface AppDeletgateTEsts : XCTestCase

@end

@implementation AppDeletgateTEsts

- (void)setUp {
    // Put setup code here. This method is called before the invocation of each test method in the class.
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
}

- (void) testAppDelegate {
    // GIVEN
    AppDelegate* appDelegate = [[AppDelegate alloc] init];
    UISceneConfiguration *sc = ([appDelegate application:[UIApplication sharedApplication] configurationForConnectingSceneSession:nil options:nil]);
    
    // WHEN
    ([appDelegate application:[UIApplication sharedApplication] didDiscardSceneSessions:nil]);
    
    // THEN
    XCTAssertTrue([appDelegate application:[UIApplication sharedApplication] didFinishLaunchingWithOptions:nil]);
}

- (void) testSceneDelegate {
    // GIVEN
    SceneDelegate *sceneDelegate = [[SceneDelegate alloc] init];
    
    // WHEN
    ([sceneDelegate sceneDidDisconnect:nil]);
    ([sceneDelegate sceneWillResignActive:nil]);
    ([sceneDelegate sceneDidEnterBackground:nil]);
}

@end
