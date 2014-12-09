//
//  XYZAddToDoItemViewController.m
//  iOSTutorial
//
//  Created by KimDonghan on 7/12/14.
//  Copyright (c) 2014 Concepti. All rights reserved.
//

#import "XYZAddToDoItemViewController.h"

@interface XYZAddToDoItemViewController ()

@property (weak, nonatomic) IBOutlet UITextField *textField;
@property (weak, nonatomic) IBOutlet UIBarButtonItem *doneButton;

@end

@implementation XYZAddToDoItemViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
    if(sender != self.doneButton)
    {
        // If the button pressed is not the Done button, just return
        return;
    }
    
    if(self.textField.text.length > 0)
    {
        self.toDoItem = [[XYZToDoItem alloc] init];
        self.toDoItem.itemName = self.textField.text;
        self.toDoItem.completed = NO;
        
        // Schedule a local notification to in the UIApplication to appear 10 seconds
        // after clicking the done button and the text length is > 0
        // Also increase the icon badge number by one every time a notification is scheduled
        UILocalNotification* localNotification = [[UILocalNotification alloc] init];
        localNotification.fireDate = [NSDate dateWithTimeIntervalSinceNow:10];
        localNotification.alertBody = self.textField.text;
        localNotification.timeZone = [NSTimeZone defaultTimeZone];
        localNotification.applicationIconBadgeNumber =+ 1;
        [[UIApplication sharedApplication] scheduleLocalNotification:localNotification];

    }
}


@end
