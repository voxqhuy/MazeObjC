//
//  MazeProgress.h
//  MazeObjC
//
//  Created by Huy Vo on 4/15/20.
//  Copyright © 2020 Huy Vo. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Maze.h"

#ifndef MazeProgress_h
#define MazeProgress_h

@interface MazeProgress : NSObject

@property int StepCount;
@property int KillCount;
@property Maze * currentMaze;
- (id)initWithStepCount:(int)stepCount killCount:(int)killCount andCurrentMaze:(Maze*)currentMaze;

@end

#endif /* MazeProgress_h */
