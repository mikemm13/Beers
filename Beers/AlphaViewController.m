//
//  AlphaViewController.m
//  Beers
//
//  Created by Miguel Martin Nieto on 03/06/14.
//  Copyright (c) 2014 ironhack. All rights reserved.
//

#import "AlphaViewController.h"

@interface AlphaViewController ()
@property (weak, nonatomic) IBOutlet UIImageView *image;

@end

@implementation AlphaViewController

- (IBAction)changeAlpha:(id)sender {
    UISlider *slider = (UISlider *)sender;
    self.image.alpha = slider.value;
    [self image].alpha = slider.value;
    [self.image setAlpha:slider.value];
    
}

- (IBAction)switchImage:(id)sender {
    static BOOL toggle = YES;
    toggle = !toggle;
    if (toggle) {
        self.image.image = [UIImage imageNamed:@"18482076b4ee86abbdd6d39cfd2cbf2dc363a0a2.jpg"];
    } else {
        self.image.image = [UIImage imageNamed:@"fondo_hd_169_fringe_manzana.jpg"];
        
    }
}

#define URL @"http://diyfather.com/wp-content/uploads/darth-vader-cat1.jpg"
- (IBAction)downloadImage:(id)sender {
    NSURL *theUrl = [NSURL URLWithString:URL];
    NSData *data = [NSData dataWithContentsOfURL:theUrl];
    UIImage *downImage = [UIImage imageWithData:data];
    
    self.image.image = downImage;
}

@end
