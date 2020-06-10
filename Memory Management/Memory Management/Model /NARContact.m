//
//  NARContact.m
//  Memory Management
//
//  Created by Nicolas Rios on 6/9/20.
//  Copyright © 2020 Nicolas Rios. All rights reserved.
//

#import "NARContact.h"

@implementation NARContact

- (instancetype)initWithName:(NSString *)name email:(NSString *)emailAddress phone:(NSString *)phoneNumber
{
    if (self = [super init]) {
        _name = [name copy];
        _emailAddress = [emailAddress copy];
        _phoneNumber = [phoneNumber copy];
    }
    return self;
}

+ (instancetype)contactWithName:(NSString *)name email:(NSString *)emailAddress phone:(NSString *)phoneNumber
{
    return [[[self alloc] initWithName:name email:emailAddress phone:phoneNumber] autorelease];
}


- (void)dealloc
{
    [_name release];
    _name = nil;
    
    [_emailAddress release];
    _emailAddress = nil;
    
    [_phoneNumber release];
    _phoneNumber = nil;
    
    [super dealloc];
}

@end


