//
//  NSString+MD5.h
//  Account
//
//  Created by gkCheng on 2017/4/26.
//  Copyright © 2017年 GK－MAC. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSString (MD5)

/**
 *  MD5加密, 32位 小写
 *
 *  @param str 传入要加密的字符串
 *
 *  @ return 返回32位小写加密后字符串
 */
+ (NSString *)MD5ForLower32Bate:(NSString *)str;

/**
 *  MD5加密, 32位 大写
 *
 *  @param str 传入要加密的字符串
 *
 *  @return 返回32位大写加密后的字符串
 */
+ (NSString *)MD5ForUpper32Bate:(NSString *)str;

/**
 *  MD5加密, 16位 小写
 *
 *  @param str 传入要加密的字符串
 *
 *  @return 返回16位小写加密后的字符串
 */
+ (NSString *)MD5ForLower16Bate:(NSString *)str;

/**
 *  MD5加密, 16位 大写
 *
 *  @param str 传入要加密的字符串
 *
 *  @return 返回16位大写加密后的字符串
 */
+ (NSString *)MD5ForUpper16Bate:(NSString *)str;

@end
