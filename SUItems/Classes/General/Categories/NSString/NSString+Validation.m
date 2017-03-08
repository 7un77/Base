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

#import "NSString+Validation.h"

@implementation NSString (Validation)

#pragma mark - 手机号码
- (BOOL)isValidateMobileNumber {
    
    //    电信号段:133/153/180/181/189/177
    //    联通号段:130/131/132/155/156/185/186/145/176
    //    移动号段:134/135/136/137/138/139/150/151/152/157/158/159/182/183/184/187/188/147/178
    //    虚拟运营商:170
    
    NSString *MOBILE = @"(((13[0-9]{1})|(14[579]{1})|(15[0-9]{1})|(17[0-9]{1})|(18[0-9]{1}))+[0-9]{8})";
    
    NSPredicate *regextestmobile = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", MOBILE];
//    NSString* str = self;
    return [regextestmobile evaluateWithObject:self];
}

#pragma mark - 电话号码，传真
- (BOOL)isValidatePhoneAndFax {
    NSString *phoneNumberRegex = @"^[+]{0,1}(\\d){1,3}[ ]?([-]?((\\d)|[ ]){1,12})+$";
    NSPredicate *regExPredicate = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", phoneNumberRegex];
    return [regExPredicate evaluateWithObject:self] ;
}
#pragma mark - email 校验
- (BOOL)isValidateEmail {
    NSString *emailRegex = @"[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,4}";
    NSPredicate *regExPredicate = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", emailRegex];
    return [regExPredicate evaluateWithObject:self] ;
}

#pragma mark - 输入金额，只能是数字或小数点

- (BOOL)isValidateAmount {
    NSString *regex = @"^(-)?(([1-9]{1}\\d*)|([0]{1}))(\\.(\\d){1,2})?$";
    NSPredicate *regExPredicate = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", regex];
    return [regExPredicate evaluateWithObject:self] ;
    
    
}

- (BOOL)isValidateAmountPositiveNum {
    NSString *regex = @"^(([1-9]{1}\\d*)|([0]{1}))(\\.(\\d){1,2})?$";
    NSPredicate *regExPredicate = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", regex];
    return [regExPredicate evaluateWithObject:self];
}


#pragma mark - 必须包含有数字和字母
- (BOOL)isValidateWithStr {
    BOOL flag;
    if (self.length <= 0) {
        flag = NO;
        return flag;
    }
    NSString *regex = @"^(?![^0-9]+$)(?![^a-zA-Z]+$).+$";
    NSPredicate *predicate = [NSPredicate predicateWithFormat:@"SELF MATCHES %@",regex];
    return [predicate evaluateWithObject:self];
}

#pragma mark - 只包含数字或字母:可以全是数字，也可以全是字母，还可以混合搭配。
- (BOOL)isValidateNumLetter {
    BOOL flag;
    if (self.length <= 0) {
        flag = NO;
        return flag;
    }
    NSString *regex = @"^[A-Za-z0-9]+$";
    NSPredicate *predicate = [NSPredicate predicateWithFormat:@"SELF MATCHES %@",regex];
    return [predicate evaluateWithObject:self];
}

#pragma mark - 全是数字或全是字母
- (BOOL)isValidateOnlyNumOrLetter {
    NSString *regex = @"^\\d+|[a-zA-Z]+$";
    NSPredicate *predicate = [NSPredicate predicateWithFormat:@"SELF MATCHES %@",regex];
    return [predicate evaluateWithObject:self];
}

#pragma mark - 银行卡 校验 //2银行卡,  16、18、19 位数字
- (BOOL)isValidateBankCard {
    NSString *regex = @"^\\d{16}|\\d{18}|\\d{19}$";
    NSPredicate *predicate = [NSPredicate predicateWithFormat:@"SELF MATCHES %@",regex];
    return [predicate evaluateWithObject:self];
}

#pragma mark - 小于19位的数字
- (BOOL)isValidateVCCard {
    NSString *regex = @"^\\d{1,19}$";
    NSPredicate *predicate = [NSPredicate predicateWithFormat:@"SELF MATCHES %@",regex];
    return [predicate evaluateWithObject:self];
}

#pragma mark - 身份证识别码 百度百科
- (BOOL)isValidateIdentityCardNo {
    if (self.length != 18) {
        return  NO;
    }
    NSArray* codeArray = [NSArray arrayWithObjects:@"7",@"9",@"10",@"5",@"8",@"4",@"2",@"1",@"6",@"3",@"7",@"9",@"10",@"5",@"8",@"4",@"2", nil];
    NSDictionary* checkCodeDic = [NSDictionary dictionaryWithObjects:[NSArray arrayWithObjects:@"1",@"0",@"X",@"9",@"8",@"7",@"6",@"5",@"4",@"3",@"2", nil]  forKeys:[NSArray arrayWithObjects:@"0",@"1",@"2",@"3",@"4",@"5",@"6",@"7",@"8",@"9",@"10", nil]];
    
    NSScanner* scan = [NSScanner scannerWithString:[self substringToIndex:17]];
    
    int val;
    BOOL isNum = [scan scanInt:&val] && [scan isAtEnd];
    if (!isNum) {
        return NO;
    }
    int sumValue = 0;
    
    for (int i =0; i<17; i++) {
        sumValue+=[[self substringWithRange:NSMakeRange(i , 1) ] intValue]* [[codeArray objectAtIndex:i] intValue];
    }
    
    NSString* strlast = [checkCodeDic objectForKey:[NSString stringWithFormat:@"%d",sumValue%11]];
    
    if ([strlast isEqualToString: [[self substringWithRange:NSMakeRange(17, 1)]uppercaseString]]) {
        return YES;
    }
    return  NO;
}

#pragma mark - 身份证 校验
- (BOOL) isValidateIdentityCard {
    BOOL flag;
    if (self.length <= 0) {
        flag = NO;
        return flag;
    }
    
    NSString *regex2 = @"^(\\d{14}|\\d{17})(\\d|[xX])$";
    NSPredicate *identityCardPredicate = [NSPredicate predicateWithFormat:@"SELF MATCHES %@",regex2];
    return [identityCardPredicate evaluateWithObject:self];
}

#pragma mark - 军官证 校验
- (BOOL)isValidateOfficer {
    NSString *emailRegex = @"^\\d{8}$";
    NSPredicate *regExPredicate = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", emailRegex];
    return [regExPredicate evaluateWithObject:self] ;
}

#pragma mark - 护照 校验
- (BOOL)isValidatePassport {
    NSString *regex = @"^(P\\d{7}|G\\d{8}|S\\d{7,8}|D\\d+|1[4,5]\\d{7})$";
    NSPredicate *predicate = [NSPredicate predicateWithFormat:@"SELF MATCHES %@",regex];
    return [predicate evaluateWithObject:self];
}

#pragma mark - 车牌号验证
- (BOOL)isValidateCarNo {
    NSString *carRegex = @"^[A-Za-z]{1}[A-Za-z_0-9]{5}$";
    NSPredicate *carTest = [NSPredicate predicateWithFormat:@"SELF MATCHES %@",carRegex];
    NSLog(@"carTest is %@",carTest);
    return [carTest evaluateWithObject:self];
}
#pragma mark - 用户名正则
- (BOOL)isValidateUserName {
    NSString * nameReges = @"^[a-zA-Z\u4E00-\u9FA5][a-zA-Z0-9_\u4E00-\u9FA5]{5,19}$";
    NSPredicate *check = [NSPredicate predicateWithFormat:@"SELF MATCHES %@",nameReges];
    NSLog(@"check is %@",check);
    return [check evaluateWithObject:self];
}
#pragma mark - 密码正则
- (BOOL)isValidatePassword {
    NSString * psdReges = @"^[A-Za-z0-9,.;':\"!+-/=?>)(<&%^#]{6,20}$";
    NSPredicate *check = [NSPredicate predicateWithFormat:@"SELF MATCHES %@",psdReges];
    NSLog(@"check is %@",check);
    return [check evaluateWithObject:self];
}

@end
