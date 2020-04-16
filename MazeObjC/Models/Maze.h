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
@property Maze * doorTo;
@property Maze * leftTo;
@property Maze * rightTo;
@property int enemyCount;
@property Component * component;
- (id)initWithId:(int)id doorTo:(Maze*)doorTo leftTo:(Maze*)leftTo rightTo:(Maze*)rightTo enemyCount:(int)enemyCount andComponent:(Component*)component;
@end

#endif /* Maze_h */
