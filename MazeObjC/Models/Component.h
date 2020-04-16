//
//  Component.h
//  MazeObjC
//
//  Created by Huy Vo on 4/15/20.
//  Copyright © 2020 Huy Vo. All rights reserved.
//

#import <Foundation/Foundation.h>

#ifndef Component_h
#define Component_h

@interface Component : NSObject

@property NSString * type;
@property NSString * description;
- (id)initWithType:(NSString*)type andDescription:(NSString*)description;
@end

#endif /* Component_h */
