//
//  ViewController.h
//  MazeObjC
//
//  Created by Huy Vo on 4/15/20.
//  Copyright © 2020 Huy Vo. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "MazeData.h"

@interface ViewController : UIViewController

@property NSArray * mazes;
@property NSArray * components;
@property MazeProgress * mazeProgress;
@property Maze * currentMaze;

@end

