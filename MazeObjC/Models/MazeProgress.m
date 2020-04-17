//
//  MazeProgress.m
//  MazeObjC
//
//  Created by Huy Vo on 4/15/20.
//  Copyright © 2020 Huy Vo. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "MazeProgress.h"

@interface MazeProgress()
@end

@implementation MazeProgress

- (id)initWithStepCount:(int)stepCount killCount:(int)killCount andCurrentMazeId:(int)currentMazeId {
    self = [super init];
    if (self) {
        self.stepCount = stepCount;
        self.killCount = killCount;
        self.currentMazeId = currentMazeId;
    }
    return self;
}

@end
