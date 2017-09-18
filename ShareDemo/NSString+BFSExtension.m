//
//  NSString+nilOrEmpty.m
//  BFSCore
//
//  Created by 徐卫学 on 15/11/28.
//  Copyright © 2015年 FavourFree. All rights reserved.
//

#import "NSString+BFSExtension.h"

@implementation NSString (BFSExtension)

+ (BOOL) nilOrEmpty:(NSString *)str {
    if ([[NSNull null] isEqual: str]) {
        return YES;
    }
    
    if (str && str.length != 0) {
        return NO;
    }
    
    return YES;
}

//判断手机号
+ (BOOL) isMobileNumber:(NSString *)str {
    if ([[NSNull null] isEqual: str]) {
        return NO;
    }
    
    if (!str) {
        return NO;
    }
    
    NSString * regex = @"^((13[0-9])|(15[^4,\\D])|(18[0,0-9]))\\d{8}$";//@"^[0-9]{11,12}$";
    NSPredicate *pred = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", regex];
    BOOL isMatch = [pred evaluateWithObject:str];
    
    if (isMatch) {
        return YES;
    }
    return NO;
}

//是否浮点数
+ (BOOL) isFloatNumber:(NSString *)str {
    
    if ([[NSNull null] isEqual: str]) {
        return NO;
    }
    
    if (!str) {
        return NO;
    }
    
    NSString *regex = @"^(([0-9]+\\.[0-9]*[1-9][0-9]*)|([0-9]*[1-9][0-9]*\\.[0-9]+)|([0-9]*[1-9][0-9]*))$";
    NSPredicate *pred = [NSPredicate predicateWithFormat:@"SELF MATCHES %@",regex];
    
    BOOL isMatch = [pred evaluateWithObject:str];
    if (isMatch) {
        return YES;
    }
    return NO;
}
//是否身份证号
+ (BOOL) isValidateIdentityCard:(NSString *)str {
    
    if ([[NSNull null] isEqual: str]) {
        return NO;
    }
    
    if (!str) {
        return NO;
    }
    
    NSString *regex = @"^(\\d{14}|\\d{17})(\\d|[xX])$";
    NSPredicate *identityCardPredicate = [NSPredicate predicateWithFormat:@"SELF MATCHES %@",regex];
    return [identityCardPredicate evaluateWithObject:str];
}

+ (BOOL) isValidZipcode:(NSString*)str
{
    if ([[NSNull null] isEqual: str]) {
        return NO;
    }
    
    if (!str) {
        return NO;
    }
    NSString *regex = @"^[1-9]\\d{5}(?!\\d)";
    NSPredicate *identityCardPredicate = [NSPredicate predicateWithFormat:@"SELF MATCHES %@",regex];
    return [identityCardPredicate evaluateWithObject:str];

}

@end
