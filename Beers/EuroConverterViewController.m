//
//  EuroConverterViewController.m
//  Beers
//
//  Created by Miguel Martin Nieto on 03/06/14.
//  Copyright (c) 2014 ironhack. All rights reserved.
//

#import "EuroConverterViewController.h"
#import "EuroConverter.h"

@interface EuroConverterViewController ()
@property (weak, nonatomic) IBOutlet UITextField *txtAmount;

@end

@implementation EuroConverterViewController

- (IBAction)convertMoney:(id)sender {
    NSString *text = self.txtAmount.text;
    float toConvert = [text floatValue];
    float amount = [EuroConverter convertFromPesetaToEuro:toConvert];
    NSLog(@"%f", amount);
}


@end
