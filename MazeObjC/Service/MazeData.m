//
//  MazeData.m
//  MazeObjC
//
//  Created by Huy Vo on 4/16/20.
//  Copyright © 2020 Huy Vo. All rights reserved.
//

#import "MazeData.h"

@interface MazeData()
@end

@implementation MazeData

- (id)init
{
    self = [super init];
    if (self) {
        self.deadEnd = [[Component alloc] initWithType:@"deadEnd" andDescription:@"a dead end"];
        self.room = [[Component alloc] initWithType:@"room" andDescription:@"a room with a door to another maze"];
        self.fork = [[Component alloc] initWithType:@"fork" andDescription:@"a fork with a maze on the right and a maze on the left"];
        self.enemy = [[Component alloc] initWithType:@"enemy" andDescription:@"a maze with an enemy"];
        self.exit = [[Component alloc] initWithType:@"exit" andDescription:@"an exit"];
        
        self.Maze00 = [[Maze alloc] initWithId:0 doorTo:3 leftTo:-1 rightTo:-1 component:self.room andEnemyCount:0];
        self.Maze01 = [[Maze alloc] initWithId:1 doorTo:-1 leftTo:-1 rightTo:-1 component:self.enemy andEnemyCount:1];
        self.Maze02 = [[Maze alloc] initWithId:2 doorTo:7 leftTo:-1 rightTo:-1 component:self.room andEnemyCount:0];
        self.Maze03 = [[Maze alloc] initWithId:3 doorTo:-1 leftTo:4 rightTo:2 component:self.fork andEnemyCount:0];
        self.Maze04 = [[Maze alloc] initWithId:4 doorTo:5 leftTo:-1 rightTo:-1 component:self.room andEnemyCount:0];
        self.Maze05 = [[Maze alloc] initWithId:5 doorTo:10 leftTo:-1 rightTo:-1 component:self.room andEnemyCount:0];
        self.Maze06 = [[Maze alloc] initWithId:6 doorTo:1 leftTo:-1 rightTo:-1 component:self.room andEnemyCount:0];
        self.Maze07 = [[Maze alloc] initWithId:7 doorTo:12 leftTo:-1 rightTo:-1 component:self.room andEnemyCount:0];
        self.Maze08 = [[Maze alloc] initWithId:8 doorTo:13 leftTo:-1 rightTo:-1 component:self.room andEnemyCount:1];
        self.Maze09 = [[Maze alloc] initWithId:9 doorTo:4 leftTo:-1 rightTo:-1 component:self.room andEnemyCount:0];
        self.Maze10 = [[Maze alloc] initWithId:10 doorTo:15 leftTo:-1 rightTo:-1 component:self.room andEnemyCount:0];
        self.Maze11 = [[Maze alloc] initWithId:11 doorTo:6 leftTo:-1 rightTo:-1 component:self.room andEnemyCount:0];
        self.Maze12 = [[Maze alloc] initWithId:12 doorTo:11 leftTo:-1 rightTo:-1 component:self.room andEnemyCount:0];
        self.Maze13 = [[Maze alloc] initWithId:13 doorTo:-1 leftTo:-1 rightTo:-1 component:self.exit andEnemyCount:0];
        self.Maze14 = [[Maze alloc] initWithId:14 doorTo:9 leftTo:-1 rightTo:-1 component:self.room andEnemyCount:0];
        self.Maze15 = [[Maze alloc] initWithId:15 doorTo:14 leftTo:-1 rightTo:-1 component:self.room andEnemyCount:1];
        
        self.mazeProgress = [[NSArray alloc]
                             initWithObjects:[[MazeProgress alloc]
                                              initWithStepCount:0
                                              killCount:0
                                              andCurrentMazeId:0],
                             nil];
    }
    return self;
}

- (NSArray*) createMazes
{
    return [NSArray arrayWithObjects: self.Maze00, self.Maze01, self.Maze02, self.Maze03, self.Maze04, self.Maze05, self.Maze06, self.Maze07, self.Maze08, self.Maze09, self.Maze10, self.Maze11, self.Maze12, self.Maze13, self.Maze14, self.Maze15, nil];
}

- (NSArray*) createComponents
{
    return [NSArray arrayWithObjects:self.deadEnd, self.room, self.fork, self.enemy, self.exit, nil];
}

- (NSArray*) createMazeProgress
{
    return [self mazeProgress];
}

//- (NSArray*) createMazeProgress
//{
//    
//}

@end
