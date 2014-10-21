//
//  main.m
//  LearnFoundationKitDemo
//
//  Created by Shuo.Xiong on 14-10-20.
//  Copyright (c) 2014年 kai.chen. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        //NSRange
        NSString *firstString=@"this is my first run out nsrange";
        NSRange testRange= NSMakeRange( 4, 15);
        NSLog(@"从第4个字符开始，长度为5字符串是:%@",[firstString substringWithRange: testRange]);
        
        NSLog(@"抽取从头开始第15个字符：%@",[firstString substringToIndex: 15]);
        
        NSLog(@"抽取从第15字符开始到末尾:%@",[firstString substringFromIndex: 15]);
        
        NSString *secondString=@"we has builded new struct machine for ";
        NSRange secondRange= [secondString rangeOfString:@"new"];
        if (secondRange.length > 0 ) {
            NSLog(@"字符串new的位置，长度==%@", NSStringFromRange(secondRange));
        }
        
        //判断一窜字符窜是否找到某个字符串
        NSRange threeRange=[secondString rangeOfString:@"new"];
        if (threeRange.location != NSNotFound) {
            NSLog(@"找到了new 字符串，存在！");
        }else
            NSLog(@"没找到");
        
        //CG Object
        CGPoint definePoint=CGPointMake(16.5, 18.6);
        CGSize defineSize=CGSizeMake(20, 45);
        CGRect defineRect= CGRectMake(10.2, 15.8, 1, 6.2);
        
        NSLog(@"point:%@",NSStringFromPoint(definePoint));
        NSLog(@"size:%@",NSStringFromSize(defineSize));
        NSLog(@"rect:%@",NSStringFromRect(defineRect));
        
        
        //NSString Object
        NSString *document=@"this is my first document demo";
        document=[NSString stringWithFormat:@"you first run out demo is all right."];
        NSLog(document);
        
        if ([document length] >10) {
            NSLog([NSString stringWithFormat:@"length is:%i",[document length]]);
        }
        
        document=@"chenkai";
        if ([document isEqualToString:@"chenkai"]== YES) {
            NSLog(@"is equal");
        }
        
        if ([document compare:@"chenkai"]== NSOrderedSame ) {
            NSLog(@"compare is equal");
        }
        
     
        if ([document compare:@"CHENKai" options: NSCaseInsensitiveSearch] == NSOrderedSame) {
             NSLog(@"不区分大小写对比");
        }
       
        if([document compare:@"deguodd" options:NSNumericSearch]==NSOrderedSame)
        {
            NSLog(@"same it ?");
        }
        
        if ([document hasPrefix:@"ch"]) {
            NSLog(@"contain ch header start");
        }
        
        if([document hasSuffix:@"kai"])
        {
            NSLog(@"contain kai footer end ");
        }
            
        //NSLog(@"index : %i",[document rangeOfString: @"kai"]);
        
        if ([document compare:@"chen" options: NSCaseInsensitiveSearch | NSNumericSearch]) {
            NSLog(@"contain in string");
        }
        
        NSRange rangeValue=[document rangeOfString:@"enkj"];
        if(rangeValue.location== NSNotFound)
        {
            NSLog(@"not found!!!");
            //exit(1);
        }
            
        NSLog(@"location:%i  length:%i",rangeValue.location,rangeValue.length);
        
        
        document=@"fuck them all";
        NSLog(document);
        
        //NSMutableString
        NSMutableString *changeStr=[NSMutableString stringWithCapacity:10];
        [changeStr appendString: @"append it"];
        [changeStr appendString: @" again ?"];
        NSLog(changeStr);
        
        [changeStr appendFormat:@"string length:%i", [changeStr length]];
        NSLog(changeStr);
        
        NSRange deleteRange=NSMakeRange(5,10);
        [changeStr deleteCharactersInRange: deleteRange];
        NSLog(changeStr);
        
        NSMutableString *friendsNames=[NSMutableString stringWithCapacity:50];
        [friendsNames appendString:@"james franke tom linkin park"];
        NSRange tomRange=[friendsNames rangeOfString:@"tom"];
        [friendsNames deleteCharactersInRange: tomRange];

        NSMutableString *withInitValue=[NSMutableString  stringWithFormat:@"hi jack"];
        NSLog(withInitValue);
        [withInitValue appendString:@" append me bitch"];
        NSLog( withInitValue);
        
        //Collection Family
        //NSArray 两个限制
        //A: 只能存储OC对象 不能存储基础数据类型 类似int float enum
        //B: 不能存储nil 空值或Null
        
        NSArray *dataArray=[NSArray arrayWithObjects:@"one",@"two", @"three",nil];
        
        NSArray *defineArray=@[@"firsttime",@"secondtime",@"threetime"];
        
        NSLog(@"array length:%i",(NSUInteger)[dataArray count]);
        for (int count=0; count < [dataArray count]; count++) {
            NSLog(@"out array:%@",(id) [dataArray objectAtIndex:count]);
        }
        
        NSString *defineString=@"frank:tom:jack:john";
        NSArray *spiltArray=[defineString componentsSeparatedByString:@":"];
        
        for (int count=0; count < [spiltArray count]; count++) {
            NSLog(@"out array:%@",(id) [spiltArray objectAtIndex:count]);
        }
        
        defineString=[spiltArray componentsJoinedByString:@"+"];
        NSLog(defineString);
       
    }
    return 0;
}
