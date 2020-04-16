//
//  MazeData.h
//  MazeObjC
//
//  Created by Huy Vo on 4/16/20.
//  Copyright © 2020 Huy Vo. All rights reserved.
//

#import "Maze.h"
#import "Component.h"
#import "MazeProgress.h"

#ifndef MazeData_h
#define MazeData_h

@interface MazeData : NSObject

@property Maze * Maze00;
@property Maze * Maze01;
@property Maze * Maze02;
@property Maze * Maze03;
@property Maze * Maze04;
@property Maze * Maze05;
@property Maze * Maze06;
@property Maze * Maze07;
@property Maze * Maze08;
@property Maze * Maze09;
@property Maze * Maze10;
@property Maze * Maze11;
@property Maze * Maze12;
@property Maze * Maze13;
@property Maze * Maze14;
@property Maze * Maze15;

@property Component * deadEnd;
@property Component * room;
@property Component * fork;
@property Component * enemy;
@property Component * exit;

- (id)init;

- (NSArray*) createMazes;
//- (NSArray*) createComponents;
//- (NSArray*) createMazeProgress;
@end

#endif /* MazeData_h */
