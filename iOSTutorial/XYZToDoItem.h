//
//  XYZToDoItem.h
//  iOSTutorial
//
//  Created by KimDonghan on 8/12/14.
//  Copyright (c) 2014 Concepti. All rights reserved.
//

#import <Foundation/Foundation.h>

//Object model -> should be moved to a models folder. Not sure how to refactor file names
@interface XYZToDoItem : NSObject

@property NSString *itemName;
@property BOOL completed;
@property (readonly) NSDate *creationDate;

@end
