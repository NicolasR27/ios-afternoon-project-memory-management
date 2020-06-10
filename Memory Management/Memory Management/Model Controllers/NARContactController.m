//
//  NARContactController.m
//  Memory Management
//
//  Created by Nicolas Rios on 6/9/20.
//  Copyright © 2020 Nicolas Rios. All rights reserved.
//

#import "NARContactController.h"


@interface NARContactController ()

@property (nonatomic) NSMutableArray<NARContact *> *internalContact;

@end

@implementation NARContactController

- (instancetype)init
{
    self = [super init];
    if (self) {
        _internalContact = [[NSMutableArray alloc] init];
    }
    return self;
}

- (void)addContact:(NARContact *)aContact
{
    [_internalContact addObject:aContact];
}

- (void)updateContact:(NARContact *)aContact withName:(NSString *)name email:(NSString *)emailAddress phone:(NSString *)phoneNumber
{
    NSUInteger index = [_internalContact indexOfObject:aContact];
    aContact.name = name;
    aContact.emailAddress = emailAddress;
    aContact.phoneNumber = phoneNumber;
    [_internalContact replaceObjectAtIndex:index withObject:aContact];
}

- (NSArray *)contacts {
    return [[[NSArray alloc] initWithArray:_internalContact] autorelease];
}

@end
