//
//  Maze.m
//  MazeObjC
//
//  Created by Huy Vo on 4/15/20.
//  Copyright © 2020 Huy Vo. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Maze.h"

@interface Maze ()

@end

@implementation Maze

- (id)initWithId:(int)id doorTo:(Maze*)doorTo leftTo:(Maze*)leftTo rightTo:(Maze*)rightTo enemyCount:(int)enemyCount andComponent:(Component*)component
{
    self = [super init];
    if (self) {
        self.id = id;
        self.doorTo = doorTo;
        self.leftTo = leftTo;
        self.rightTo = rightTo;
        self.enemyCount = enemyCount;
        self.component = component;
    }
    return self;
}

@end
