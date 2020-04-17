//
//  ViewController.m
//  MazeObjC
//
//  Created by Huy Vo on 4/15/20.
//  Copyright © 2020 Huy Vo. All rights reserved.
//

#import "ViewController.h"
#import "MazeData.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    MazeData *mazeData = [[MazeData alloc] init];
    self.Mazes = [mazeData createMazes];
}


@end
