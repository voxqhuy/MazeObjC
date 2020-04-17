//
//  Maze.h
//  MazeObjC
//
//  Created by Huy Vo on 4/15/20.
//  Copyright © 2020 Huy Vo. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Component.h"

#ifndef Maze_h
#define Maze_h

@interface Maze : NSObject

@property int id;
@property int doorTo;
@property int leftTo;
@property int rightTo;
@property Component * component;
@property int enemyCount;

- (id)initWithId:(int)id doorTo:(int)doorTo leftTo:(int)leftTo rightTo:(int)rightTo component:(Component*)component andEnemyCount:(int)enemyCount;
@end

#endif /* Maze_h */
