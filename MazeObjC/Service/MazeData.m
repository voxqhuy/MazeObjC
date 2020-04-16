//
//  MazeData.m
//  MazeObjC
//
//  Created by Huy Vo on 4/16/20.
//  Copyright © 2020 Huy Vo. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "MazeData.h"

@interface MazeData()
@end

@implementation MazeData

- (id)init
{
    self = [super init];
    if (self) {
//        insert into Components values (01, 'deadEnd', 'a dead end');
//        insert into Components values (02, 'room', 'a room with a door to another maze');
//        insert into Components values (03, 'fork', 'a fork with a maze on the right and a maze on the left');
//        insert into Components values (04, 'enemy', 'a maze with an enemy');
//        insert into Components values (05, 'exit', 'an exit');
        self.deadEnd = [[Component alloc] initWithType:@"deadEnd" andDescription:@"a dead end"];
        self.room = [[Component alloc] initWithType:@"room" andDescription:@"a room with a door to another maze"];
        self.fork = [[Component alloc] initWithType:@"fork" andDescription:@"a fork with a maze on the right and a maze on the left"];
        self.enemy = [[Component alloc] initWithType:@"enemy" andDescription:@"a maze with an enemy"];
        self.exit = [[Component alloc] initWithType:@"exit" andDescription:@"an exit"];
        
        self.Maze00 = [[Maze alloc] initWithId:0 doorTo:self.Maze03 leftTo:nil rightTo:nil component:self.room andEnemyCount:0];
        self.Maze01 = [[Maze alloc] initWithId:1 doorTo:nil leftTo:nil rightTo:nil component:self.enemy andEnemyCount:1];
        self.Maze02 = [[Maze alloc] initWithId:2 doorTo:self.Maze07 leftTo:nil rightTo:nil component:self.room andEnemyCount:0];
        self.Maze03 = [[Maze alloc] initWithId:3 doorTo:nil leftTo:self.Maze04 rightTo:self.Maze02 component:self.fork andEnemyCount:0];
        self.Maze04 = [[Maze alloc] initWithId:4 doorTo:self.Maze05 leftTo:nil rightTo:nil component:self.room andEnemyCount:0];
        self.Maze05 = [[Maze alloc] initWithId:5 doorTo:self.Maze10 leftTo:nil rightTo:nil component:self.room andEnemyCount:0];
        self.Maze06 = [[Maze alloc] initWithId:6 doorTo:self.Maze01 leftTo:nil rightTo:nil component:self.room andEnemyCount:0];
        self.Maze07 = [[Maze alloc] initWithId:7 doorTo:self.Maze12 leftTo:nil rightTo:nil component:self.room andEnemyCount:0];
        self.Maze08 = [[Maze alloc] initWithId:8 doorTo:self.Maze13 leftTo:nil rightTo:nil component:self.room andEnemyCount:1];
        self.Maze09 = [[Maze alloc] initWithId:9 doorTo:self.Maze04 leftTo:nil rightTo:nil component:self.room andEnemyCount:0];
        self.Maze10 = [[Maze alloc] initWithId:10 doorTo:self.Maze15 leftTo:nil rightTo:nil component:self.room andEnemyCount:0];
        self.Maze11 = [[Maze alloc] initWithId:11 doorTo:self.Maze06 leftTo:nil rightTo:nil component:self.room andEnemyCount:0];
        self.Maze12 = [[Maze alloc] initWithId:12 doorTo:self.Maze11 leftTo:nil rightTo:nil component:self.room andEnemyCount:0];
        self.Maze13 = [[Maze alloc] initWithId:13 doorTo:nil leftTo:nil rightTo:nil component:self.exit andEnemyCount:0];
        self.Maze14 = [[Maze alloc] initWithId:14 doorTo:self.Maze09 leftTo:nil rightTo:nil component:self.room andEnemyCount:0];
        self.Maze15 = [[Maze alloc] initWithId:15 doorTo:self.Maze14 leftTo:nil rightTo:nil component:self.room andEnemyCount:1];
        
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

//- (NSArray*) createMazeProgress
//{
//    
//}

@end
