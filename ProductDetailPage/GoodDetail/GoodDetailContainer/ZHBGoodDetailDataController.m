//
//  ZHBGoodDetailDataController.m
//  ZhongHeBao
//
//  Created by 云无心 on 16/12/16.
//  Copyright © 2016年 zhbservice. All rights reserved.
//

#import "ZHBGoodDetailDataController.h"


@interface ZHBGoodDetailDataController ()

@end

@implementation ZHBGoodDetailDataController

// 模拟请求
- (NSDictionary *)requestData {
    //把数据保存到沙盒里的plist文件
    NSString *filePath = [NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES) firstObject];

    
    NSString *fileName = [filePath stringByAppendingPathComponent:@"goodInfo"];
    
    NSLog(@"%@",fileName);
    NSError *error;
    NSData *data = [NSData dataWithContentsOfFile:fileName];
    NSDictionary *dict = [NSJSONSerialization JSONObjectWithData:data options:NSJSONReadingMutableLeaves error:&error];
    
    
    return dict;
}

//   "/Users/git/Library/Developer/CoreSimulator/Devices/923776D1-2B43-467A-8D24-40D794D6C26E/data/Containers/Data/Application/AC4FD235-43EE-4189-ACE0-7F8CC5870CE7/Documents/goodInfo"

@end
