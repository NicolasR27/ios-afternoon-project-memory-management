//
//  NARTableViewController.m
//  Memory Management
//
//  Created by Nicolas Rios on 6/9/20.
//  Copyright © 2020 Nicolas Rios. All rights reserved.
//

#import"NARTableViewController.h"
#import "NARContact.h"
#import "NARContactController.h"
#import "NARViewController.h"

@interface NARTableViewController ()

@property (nonatomic, readonly) NARContactController *contactController;

@end

@implementation NARTableViewController

- (instancetype)initWithCoder:(NSCoder *)coder
{
    self = [super initWithCoder:coder];
    if (self) {
        _contactController = [[NARContactController alloc] init];
        
        
    }
    return self;
}
    

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [_contactController addContact:[NARContact contactWithName:@"Nicolas" email:@"nickrios33@yahoo.com" phone:@"951354900"]];
    [_contactController addContact:[NARContact contactWithName:@"sam" email:@"scottn@gmail.com" phone:@"341-000-000"]];

}

- (void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
    [self.tableView reloadData];
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.contactController.contacts.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"ContactCell" forIndexPath:indexPath];
    NARContact *contact = [self.contactController.contacts objectAtIndex:indexPath.row];
    cell.textLabel.text = contact.name;
    return cell;
}

#pragma mark - Navigation

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    [self performSegueWithIdentifier:@"DetailSegue" sender:indexPath];
}

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    if ([[segue identifier] isEqualToString:@"AddSegue"])
    {
        NARViewController *addVC = [segue destinationViewController];
        
        addVC.contactController = self.contactController;
        
    } else if ([[segue identifier] isEqualToString:@"DetailSegue"])
    {
        NARViewController *detailVC = [segue destinationViewController];
        NSIndexPath *indexPath = [self.tableView indexPathForSelectedRow];
        
        detailVC.contactController = self.contactController;
        detailVC.contact = [self.contactController.contacts objectAtIndex:indexPath.row];
    }
}

@end
