//
//  BFSDeviceInfo.m
//  BFSCore
//
//  Created by 徐卫学 on 15/11/28.
//  Copyright © 2015年 FavourFree. All rights reserved.
//

#import "BFSDeviceInfo.h"
#import <UIKit/UIKit.h>
#import <Foundation/Foundation.h>
#import "NSString+BFSExtension.h"
#import "MSCDeviceUUID.h"

@implementation BFSDeviceInfo

+ (BOOL) iPhone4 {
    return ([UIScreen instancesRespondToSelector:@selector(currentMode)] ? CGSizeEqualToSize(CGSizeMake(640, 960), [[UIScreen mainScreen] currentMode].size) : NO);
}

+ (BOOL) iPhone5 {
    return ([UIScreen instancesRespondToSelector:@selector(currentMode)] ? CGSizeEqualToSize(CGSizeMake(640, 1136), [[UIScreen mainScreen] currentMode].size) : NO);
}

+ (BOOL) iPhone6 {
    return ([UIScreen instancesRespondToSelector:@selector(currentMode)] ? CGSizeEqualToSize(CGSizeMake(750, 1334), [[UIScreen mainScreen] currentMode].size) : NO);
}

+ (BOOL) iPhone6Plus {
    return ([UIScreen instancesRespondToSelector:@selector(currentMode)] ? (CGSizeEqualToSize(CGSizeMake(1125, 2001), [[UIScreen mainScreen] currentMode].size) || CGSizeEqualToSize(CGSizeMake(1242, 2208), [[UIScreen mainScreen] currentMode].size)) : NO);
}

+ (NSString *) uuid {
    return [MSCDeviceUUID deviceUUID];
}

@end
