//
//  ModelTests.m
//  MazeObjCTests
//
//  Created by Huy Vo on 4/16/20.
//  Copyright © 2020 Huy Vo. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "MazeData.h"

@interface ModelTests : XCTestCase
@property MazeData * sut;
@end

@implementation ModelTests

- (void)setUp {
    _sut = [[MazeData alloc] init];
}

- (void)tearDown {
    _sut = nil;
}

- (void)testMazeInit {
    // GIVEN
    NSArray *mazes = [_sut createMazes];
    
    // WHEN
    Maze *maze00 = [mazes objectAtIndex:0];
    Maze *maze01 = [mazes objectAtIndex:1];
    
    // THEN
    XCTAssertEqual([maze00 id], 0);
    XCTAssertEqual([maze01 id], 1);
    XCTAssertEqual([maze00 doorTo], 1);
    XCTAssertEqual([maze01 doorTo], -1);
    XCTAssertEqual([maze00 leftTo], -1);
    XCTAssertEqual([maze01 leftTo], 2);
    XCTAssertEqual([maze00 rightTo], -1);
    XCTAssertEqual([maze01 rightTo], 3);
    XCTAssertTrue([[[maze00 component] type] isEqualToString:@"entrance"]);
    XCTAssertTrue([[[maze01 component] type] isEqualToString:@"fork"]);
    XCTAssertEqual([maze00 enemyCount], 0);
    XCTAssertEqual([maze01 enemyCount], 0);
}

- (void)testComponentInit {
    // GIVEN
    NSArray *components = [_sut createComponents];
    
    // WHEN
    Component *deadEnd = [components objectAtIndex:0];
    Component *room = [components objectAtIndex:1];
    
    // THEN
    XCTAssertTrue([[deadEnd type] isEqualToString:@"deadEnd"]);
    XCTAssertTrue([[room type] isEqualToString:@"room"]);
    XCTAssertTrue([[deadEnd desc] isEqualToString:@"A dead end"]);
    XCTAssertTrue([[room desc] isEqualToString:@"A door to another maze"]);
}

- (void)testMazeProgressInit {
    // GIVEN
    MazeProgress *mazeProgress = [_sut createMazeProgress];
    
    // THEN
    XCTAssertEqual([mazeProgress stepCount], 0);
    XCTAssertEqual([mazeProgress killCount], 0);
    XCTAssertEqual([mazeProgress currentMazeId], 0);
}

@end
