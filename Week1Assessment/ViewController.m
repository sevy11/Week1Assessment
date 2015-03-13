//
//  ViewController.m
//  Week1Assessment
//
//  Created by Michael Sevy on 3/13/15.
//  Copyright (c) 2015 Michael Sevy. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIButton *calculateButton;
@property (weak, nonatomic) IBOutlet UITextField *valueOneTextField;
@property (weak, nonatomic) IBOutlet UITextField *valueTwoTextField;
@property (weak, nonatomic) IBOutlet UIButton *webButton;

@property int valueOne;
@property int valueTwo;
@property int result;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

}

- (IBAction)onCalculateButtonPressed:(UIButton *)calcButton {

    self.valueOne = [self.valueOneTextField.text intValue];
    self.valueTwo = [self.valueTwoTextField.text intValue];

    self.result = [self.navigationItem.title intValue];

    self.result = self.valueOne * self.valueTwo;

    NSString *resultText = [@(self.result) stringValue];

    self.navigationItem.title = resultText;
    //log return string
    NSLog(@"%@", resultText);

    [self.valueOneTextField resignFirstResponder];
    [self.valueTwoTextField resignFirstResponder];

}


#pragma result Logic open webpage
-(BOOL)shouldPerformSegueWithIdentifier:(NSString *)identifier sender:(id)sender  {

    if (self.result %5 == 0) {
        [self goToURLString:@"http://www.mobilemakers.co"];
        NSLog(@"going to website");
        return YES;
    } else  {
        self.webButton.enabled = NO;
        return NO;
    }
}
//NSString *urlString = string;
//NSURL *url = [NSURL URLWithString:urlString];
//NSURLRequest *request = [NSURLRequest requestWithURL:url];
//[self.webView loadRequest:request];


#pragma helper method
-(void)goToURLString:(NSString *)string {
    NSString *urlString = string;
    NSURL *url = [NSURL URLWithString:urlString];
    //NSURLRequest *request = [NSURLRequest requestWithURL:url];
    
}
@end
