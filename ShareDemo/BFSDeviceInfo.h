//
//  BFSDeviceInfo.h
//  BFSCore
//
//  Created by 徐卫学 on 15/11/28.
//  Copyright © 2015年 FavourFree. All rights reserved.
//

#import <Foundation/Foundation.h>

#define BFS_DEVICE_ID @"2" // iPhone device

@interface BFSDeviceInfo : NSObject

+ (BOOL) iPhone4;
+ (BOOL) iPhone5;
+ (BOOL) iPhone6;
+ (BOOL) iPhone6Plus;
+ (NSString *) uuid;

@end
