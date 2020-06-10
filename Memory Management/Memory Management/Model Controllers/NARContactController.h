//
//  NARContactController.h
//  Memory Management
//
//  Created by Nicolas Rios on 6/9/20.
//  Copyright © 2020 Nicolas Rios. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "NARContact.h"

NS_ASSUME_NONNULL_BEGIN

@interface NARContactController : NSObject

@property (nonatomic, readonly, copy) NSArray<NARContact *> *contacts;

- (void)addContact:(NARContact *)aContact;
- (void)updateContact:(NARContact *)aContact withName:(NSString *)name email:(NSString *)emailAddress phone:(NSString *)phoneNumber;

@end

NS_ASSUME_NONNULL_END
