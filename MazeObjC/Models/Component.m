//
//  Component.m
//  MazeObjC
//
//  Created by Huy Vo on 4/15/20.
//  Copyright © 2020 Huy Vo. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Component.h"

@interface Component()

@end

@implementation Component

- (id)initWithType:(NSString*)type andDescription:(NSString*)description
{
    self = [super init];
    if (self) {
        self.type = type;
        self.description = description;
    }
    return self;
}

@end
