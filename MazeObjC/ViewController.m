//
//  ViewController.m
//  MazeObjC
//
//  Created by Huy Vo on 4/15/20.
//  Copyright © 2020 Huy Vo. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIImageView *mazeImageView;
@property (weak, nonatomic) IBOutlet UIButton *enterRoomButton;
@property (weak, nonatomic) IBOutlet UIButton *goLeftButton;
@property (weak, nonatomic) IBOutlet UIButton *goRightButton;
@property (weak, nonatomic) IBOutlet UIButton *restartButton;


- (IBAction)enterRoomPressed:(UIButton *)sender;
- (IBAction)goLeftPressed:(UIButton *)sender;
- (IBAction)goRightPressed:(UIButton *)sender;
- (IBAction)restartPressed:(UIButton *)sender;

- (void)loadUI;
- (UIImage*)imageFor:(Component*)component;
- (void)updateGameFor:(Maze*)maze;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    MazeData *mazeData = [[MazeData alloc] init];
    self.mazes = [mazeData createMazes];
    self.components = [mazeData createComponents];
    self.mazeProgress = [mazeData createMazeProgress];
        
    [self loadUI];
}

// MARK: - User Interface
- (void)loadUI {
    int currentMazeId = [[self mazeProgress] currentMazeId];
    Maze *currentMaze = [[self mazes] objectAtIndex:currentMazeId];
    self.currentMaze = currentMaze;
    
    // configure UI
    self.mazeImageView.image = [self imageFor:[currentMaze component]];
    self.enterRoomButton.enabled = [currentMaze doorTo] == -1 ? false : true;
    self.goLeftButton.enabled = [currentMaze leftTo] == -1 ? false : true;
    self.goRightButton.enabled = [currentMaze rightTo] == -1 ? false : true;
}

- (IBAction)enterRoomPressed:(UIButton *)sender {
    int doorToId = [[self currentMaze] doorTo];
    Maze *nextMaze = [[self mazes] objectAtIndex:doorToId];
    
    [self updateGameFor:nextMaze];
}

- (IBAction)goLeftPressed:(UIButton *)sender {
    int leftToId = [[self currentMaze] leftTo];
    Maze *leftMaze = [[self mazes] objectAtIndex:leftToId];
    
    [self updateGameFor:leftMaze];
}

- (IBAction)goRightPressed:(UIButton *)sender {
    int rightToId = [[self currentMaze] rightTo];
    Maze *rightMaze = [[self mazes] objectAtIndex:rightToId];
    
    [self updateGameFor:rightMaze];
}

- (IBAction)restartPressed:(UIButton *)sender {
    self.mazeProgress.stepCount = 0;
    self.mazeProgress.killCount = 0;
    self.mazeProgress.currentMazeId = 0;
    
    [self loadUI];
}

// MARK: - Helpers
- (UIImage*)imageFor:(Component*)component {
    return nil;
}

- (void)updateGameFor:(Maze*)maze {
    self.mazeProgress.killCount += [maze enemyCount];
    self.mazeProgress.stepCount++;
    self.mazeProgress.currentMazeId = [maze id];

    [self loadUI];
}

@end

