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

- (id)initWithId:(int)id doorTo:(int)doorTo leftTo:(int)leftTo rightTo:(int)rightTo component:(Component*)component andEnemyCount:(int)enemyCount
{
    self = [super init];
    if (self) {
        self.id = id;
        self.doorTo = doorTo;
        self.leftTo = leftTo;
        self.rightTo = rightTo;
        self.component = component;
        self.enemyCount = enemyCount;
    }
    return self;
}

@end
