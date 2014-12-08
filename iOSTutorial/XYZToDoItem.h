//
//  XYZToDoItem.h
//  iOSTutorial
//
//  Created by KimDonghan on 8/12/14.
//  Copyright (c) 2014 Concepti. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface XYZToDoItem : NSObject

@property NSString *itemName;
@property BOOL completed;
@property (readonly) NSDate *creationDate;

@end
