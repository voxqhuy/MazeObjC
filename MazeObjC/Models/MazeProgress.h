//
//  MazeProgress.h
//  MazeObjC
//
//  Created by Huy Vo on 4/15/20.
//  Copyright © 2020 Huy Vo. All rights reserved.
//

#import <Foundation/Foundation.h>

#ifndef MazeProgress_h
#define MazeProgress_h

@interface MazeProgress : NSObject

@property int stepCount;
@property int killCount;
@property int currentMazeId;
- (id)initWithStepCount:(int)stepCount killCount:(int)killCount andCurrentMazeId:(int)currentMazeId;

@end

#endif /* MazeProgress_h */
