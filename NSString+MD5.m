//
//  NSString+MD5.m
//  Account
//
//  Created by gkCheng on 2017/4/26.
//  Copyright © 2017年 GK－MAC. All rights reserved.
//

#import "NSString+MD5.h"
#import <CommonCrypto/CommonCrypto.h>

@implementation NSString (MD5)

+ (NSString *)MD5ForLower32Bate:(NSString *)str {
  const char *input = [str UTF8String];
  unsigned char result[CC_MD5_DIGEST_LENGTH];
  CC_MD5(input, (CC_LONG)strlen(input), result);

  NSMutableString *digest =
      [NSMutableString stringWithCapacity:CC_MD5_DIGEST_LENGTH * 2];
  for (NSInteger i = 0; i < CC_MD5_DIGEST_LENGTH; i++) {
    [digest appendFormat:@"%02x", result[i]];
  }

  return digest;
}

+ (NSString *)MD5ForUpper32Bate:(NSString *)str {
  const char *input = [str UTF8String];
  unsigned char result[CC_MD5_DIGEST_LENGTH];
  CC_MD5(input, (CC_LONG)strlen(input), result);

  NSMutableString *digest =
      [NSMutableString stringWithCapacity:CC_MD5_DIGEST_LENGTH * 2];
  for (NSInteger i = 0; i < CC_MD5_DIGEST_LENGTH; i++) {
    [digest appendFormat:@"%02X", result[i]];
  }

  return digest;
}

+ (NSString *)MD5ForLower16Bate:(NSString *)str {
  NSString *md5Str = [self MD5ForLower32Bate:str];

  NSString *string;
  for (int i = 0; i < 24; i++) {
    string = [md5Str substringWithRange:NSMakeRange(8, 16)];
  }
  return string;
}

+ (NSString *)MD5ForUpper16Bate:(NSString *)str {
  NSString *md5Str = [self MD5ForUpper32Bate:str];

  NSString *string;
  for (int i = 0; i < 24; i++) {
    string = [md5Str substringWithRange:NSMakeRange(8, 16)];
  }
  return string;
}

@end
