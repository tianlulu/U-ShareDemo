//
//  NSString+nilOrEmpty.h
//  BFSCore
//
//  Created by 徐卫学 on 15/11/28.
//  Copyright © 2015年 FavourFree. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSString (BFSExtension)

+ (BOOL) nilOrEmpty: (NSString * __nullable) str;
+ (BOOL) isMobileNumber:(NSString * __nullable)str; //判断手机号
+ (BOOL) isFloatNumber:(NSString * __nullable)str; //是否浮点数
+ (BOOL) isValidateIdentityCard:(NSString * __nullable)str; //是否身份证号
+ (BOOL) isValidZipcode:(NSString * __nullable)str; //是否正确邮编

@end
