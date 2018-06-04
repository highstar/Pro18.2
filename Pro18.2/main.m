//
//  main.m
//  Pro18.2
//
//  Created by Gao Xing on 2018/6/4.
//  Copyright © 2018年 Gao Xing. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSMutableArray *dataArray = [NSMutableArray arrayWithObjects:
                                     [NSMutableString stringWithString:@"one"],
                                     [NSMutableString stringWithString:@"two"],
                                     [NSMutableString stringWithString:@"three"],
                                     nil
                                     ];
        NSMutableArray *dataArray2;
        NSMutableString *mStr;
        
        NSLog(@"dataArray: ");
        for (NSString *elem in dataArray)
            NSLog(@" %@", elem);
        
        // make a copy, then change one of the strings
        
        dataArray2 = [dataArray mutableCopy];
        
        mStr = [NSMutableString stringWithString:dataArray2[0]];
        [mStr appendString:@"ONE"];
        [dataArray2 replaceObjectAtIndex:0 withObject:mStr];
        
        NSLog (@"dataArray: ");
        for (NSString *elem in dataArray)
            NSLog(@" %@", elem);
        
        NSLog (@"dataArray2: ");
        for (NSString *elem in dataArray2)
            NSLog(@" %@", elem);
    }
    return 0;
}
