//
//  NARViewController.h
//  Memory Management
//
//  Created by Nicolas Rios on 6/9/20.
//  Copyright © 2020 Nicolas Rios. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "NARContact.h"
#import "NARContactController.h"
#import "NARTableViewController.h"

NS_ASSUME_NONNULL_BEGIN

@interface VVSViewController : UIViewController

@property (nonatomic, strong) NARContact *contact;
@property (nonatomic, strong) NARContactController *contactController;

@property (retain, nonatomic) IBOutlet UITextField *nameTextField;
@property (retain, nonatomic) IBOutlet UITextField *emailTextField;
@property (retain, nonatomic) IBOutlet UITextField *phoneTextField;

@end

NS_ASSUME_NONNULL_END
