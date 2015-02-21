//
//  JRLoginItemUtil.h
//  ShowDeskTop
//
//  Created by jiajixin on 15/2/21.
//  Copyright (c) 2015年 jiajixin. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface JRLoginItemUtil : NSObject

+ (BOOL)isCurrentApplicatonInLoginItems;
+ (void)addCurrentApplicatonToLoginItems;
+ (void)removeCurrentApplicatonToLoginItems;

@end
