//
//  EuroCalculatorViewController.m
//  Beers
//
//  Created by Miguel Martin Nieto on 03/06/14.
//  Copyright (c) 2014 ironhack. All rights reserved.
//

#import "EuroCalculatorViewController.h"


@implementation EuroCalculatorViewController

- (IBAction)showNumber:(id)sender {
    if (![sender isKindOfClass:[UIButton class]]) {
        return;
    }
    UIButton *b = (UIButton *)sender;
    NSLog(@"%d", b.tag);
}

@end
