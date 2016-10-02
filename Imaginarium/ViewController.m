//
//  ViewController.m
//  Imaginarium
//
//  Created by Mihai Deaconu on 02/10/16.
//  Copyright © 2016 Mihai Deaconu. All rights reserved.
//

#import "ViewController.h"
#import "ImageViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    if ([segue.destinationViewController isKindOfClass:[ImageViewController class]]) {
        ImageViewController *vc = (ImageViewController *)segue.destinationViewController;
        vc.imageURL = [NSURL URLWithString:[NSString stringWithFormat:@"http://images.apple.com/v/iphone-5s/gallery/a/images/download/%@.jpg", segue.identifier]];
        vc.title = segue.identifier;
    }
}

@end
