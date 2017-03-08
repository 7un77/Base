/**********//**********//**********//**********//**********//**********//**********//*
 .--,       .--,
( (  \.---./  ) )
 '.__/o   o\__.'
    {=  ^  =}
     >  -  <
    /       \
   //       \\
  //|   .   |\\             高山仰止,景行行止.虽不能至,心向往之。
  "'\       /'"_.-~^`'-.
     \  _  /--'         `
   ___)( )(___
  (((__) (__)))


  NSString+Validation.h

  Created by June on 17/1/11.
  Copyright © 2017年 http://h94uang@gmail.com All rights reserved.

*//**********//**********//**********//**********//**********//**********//**********/

#import <Foundation/Foundation.h>

/**
 字符串验证
 */
@interface NSString (Validation)

/**
 正则验证该字符串是否是一个手机号码

 @return YES or NO
 */
- (BOOL)isValidateMobileNumber;

/**
 验证电话号码 传真

 @return YES or NO
 */
- (BOOL)isValidatePhoneAndFax;

/**
 验证email

 @return YES or NO
 */
- (BOOL)isValidateEmail;

/**
 验证金额 只能是数字和小数点

 @return YES or NO
 */
- (BOOL)isValidateAmount;

/**
 验证金额 只能是数字和小数点 正数

 @return YES or NO
 */
- (BOOL)isValidateAmountPositiveNum;


/**
 验证是否包含数字和字母

 @return YES or NO
 */
- (BOOL)isValidateWithStr;

/**
 验证是否只包含数字或字母:可以全是数字，也可以全是字母，还可以混合搭配。

 @return YES or NO
 */
- (BOOL)isValidateNumLetter;

/**
 验证是否全数字或全字母

 @return YES or NO
 */
- (BOOL)isValidateOnlyNumOrLetter;

/**
 验证银行卡 16、18、19 位数字

 @return YES or NO
 */
- (BOOL)isValidateBankCard;

/**
 验证身份证

 @return YES or NO
 */
- (BOOL)isValidateIdentityCardNo;

/**
 验证军官证

 @return YES or NO
 */
- (BOOL)isValidateOfficer;

/**
 验证护照

 @return YES or NO
 */
- (BOOL)isValidatePassport;

/**
 验证小于19位的数据 虚拟卡卡号校检

 @return YES or NO
 */
- (BOOL)isValidateVCCard;

/**
 验证车牌号码

 @return YES or NO
 */
- (BOOL)isValidateCarNo;

/**
 验证用户名

 @return YES or NO
 */
- (BOOL)isValidateUserName;

/**
 验证密码 6-20位

 @return YES or NO
 */
- (BOOL)isValidatePassword;

@end
