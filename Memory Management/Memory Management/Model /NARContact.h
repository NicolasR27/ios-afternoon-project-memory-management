//
//  NARContact.h
//  Memory Management
//
//  Created by Nicolas Rios on 6/9/20.
//  Copyright © 2020 Nicolas Rios. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface NARContact : NSObject

@property (nonatomic, copy) NSString * _Nullable name;
@property(nonatomic, copy) NSString * _Nullable emailAddress;
@property (nonatomic, copy)NSString * _Nullable phoneNumber;

- (instancetype)initWithName:(NSString *)name email:(NSString *)emailAddress phone:(NSString *)phoneNumber;

+ (instancetype)contactWithName:(NSString *)name email:(NSString *)emailAddress phone:(NSString *)phoneNumber;

@end

NS_ASSUME_NONNULL_END
