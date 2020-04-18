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

@property (weak, nonatomic) IBOutlet UILabel *stepsLabel;
@property (weak, nonatomic) IBOutlet UILabel *killsLabel;
@property (weak, nonatomic) IBOutlet UILabel *statusLabel;
@property (weak, nonatomic) IBOutlet UIImageView *mazeImageView;
@property (weak, nonatomic) IBOutlet UIButton *enterRoomButton;
@property (weak, nonatomic) IBOutlet UIButton *goLeftButton;
@property (weak, nonatomic) IBOutlet UIButton *goRightButton;
@property (weak, nonatomic) IBOutlet UIButton *restartButton;

- (IBAction)enterRoomPressed:(UIButton *)sender;
- (IBAction)goLeftPressed:(UIButton *)sender;
- (IBAction)goRightPressed:(UIButton *)sender;
- (IBAction)restartPressed:(UIButton *)sender;

@property NSArray * mazes;
@property NSArray * components;
@property MazeProgress * mazeProgress;
@property Maze * currentMaze;

@end

