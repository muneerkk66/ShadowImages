//
//  ViewController.m
//  ShadowImageView
//
//  Created by Muneer on 9/5/13.
//  Copyright (c) 2013 Muneer. All rights reserved.
//

#import "ViewController.h"
#import <QuartzCore/QuartzCore.h>
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    //Set Background Imagview.image
    [self.BackgroundImageView_1 setImage:[UIImage imageNamed:@"muneer.jpg"]];
    [self.BackgroundImageView_2 setImage:[UIImage imageNamed:@"muneer.jpg"]];
    
    //LargeImageView
    [self LargeImageViewSetupWithRedShadowvalue:10.0];
    [self.LargeProfileImageView setImage:[UIImage imageNamed:@"muneer.jpg"]];
    
    //SmallImageView_1
    [self SmallImageView1_SetupWithBlackShadowvalue:10.0];
    [self.SmallProfileImageView_1 setImage:[UIImage imageNamed:@"muneer.jpg"]];
    
    //SmallImageView_2
    
    [self SmallImageView2_SetupWithBlueShadowvalue:7.0];
    [self.SmallProfileImageView_2 setImage:[UIImage imageNamed:@"muneer.jpg"]];

      //SmallImageView_3
    [self SmallImageView3_SetupWithGreenShadowvalue:15.0];
    [self.SmallProfileImageView_3 setImage:[UIImage imageNamed:@"muneer.jpg"]];

	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
-(void)LargeImageViewSetupWithRedShadowvalue:(int)value;
{
    
    
    CALayer *sublayer = [CALayer layer];
    sublayer.backgroundColor = [UIColor clearColor].CGColor;
    sublayer.shadowOffset = CGSizeMake(0, value);
    sublayer.shadowRadius = 5.0;
    sublayer.shadowColor = [UIColor redColor].CGColor;
    sublayer.shadowOpacity = 0.8;
    sublayer.frame = self.LargeProfileImageView.frame;
    sublayer.borderColor = [UIColor clearColor].CGColor;
    sublayer.borderWidth = 2.0;
    sublayer.cornerRadius = 10.0;
    [self.view.layer addSublayer:sublayer];
    
    CALayer *imageLayer = [self.LargeProfileImageView layer];
    imageLayer.frame = sublayer.bounds;
    imageLayer.cornerRadius = 10.0;
    imageLayer.masksToBounds = YES;
    [sublayer addSublayer:imageLayer];
    
}
-(void)SmallImageView1_SetupWithBlackShadowvalue:(int)value;
{
    
    
    CALayer *sublayer = [CALayer layer];
    sublayer.backgroundColor = [UIColor clearColor].CGColor;
    sublayer.shadowOffset = CGSizeMake(0, value);
    sublayer.shadowRadius = 5.0;
    sublayer.shadowColor = [UIColor blackColor].CGColor;
    sublayer.shadowOpacity = 0.8;
    sublayer.frame = self.SmallProfileImageView_1.frame;
    sublayer.borderColor = [UIColor clearColor].CGColor;
    sublayer.borderWidth = 2.0;
    sublayer.cornerRadius = 10.0;
    [self.view.layer addSublayer:sublayer];
    
    CALayer *imageLayer = [self.SmallProfileImageView_1 layer];
    imageLayer.frame = sublayer.bounds;
    imageLayer.cornerRadius = 10.0;
    imageLayer.masksToBounds = YES;
    [sublayer addSublayer:imageLayer];
    
}
-(void)SmallImageView2_SetupWithBlueShadowvalue:(int)value;
{
    
    
    CALayer *sublayer = [CALayer layer];
    sublayer.backgroundColor = [UIColor clearColor].CGColor;
    sublayer.shadowOffset = CGSizeMake(0, value);
    sublayer.shadowRadius = 5.0;
    sublayer.shadowColor = [UIColor blueColor].CGColor;
    sublayer.shadowOpacity = 0.8;
    sublayer.frame = self.SmallProfileImageView_2.frame;
    sublayer.borderColor = [UIColor clearColor].CGColor;
    sublayer.borderWidth = 2.0;
    sublayer.cornerRadius = 10.0;
    [self.view.layer addSublayer:sublayer];
    
    CALayer *imageLayer = [self.SmallProfileImageView_2 layer];
    imageLayer.frame = sublayer.bounds;
    imageLayer.cornerRadius = 10.0;
    imageLayer.masksToBounds = YES;
    [sublayer addSublayer:imageLayer];
    
}
-(void)SmallImageView3_SetupWithGreenShadowvalue:(int)value;
{
    
    
    CALayer *sublayer = [CALayer layer];
    sublayer.backgroundColor = [UIColor clearColor].CGColor;
    sublayer.shadowOffset = CGSizeMake(0, value);
    sublayer.shadowRadius = 5.0;
    sublayer.shadowColor = [UIColor greenColor].CGColor;
    sublayer.shadowOpacity = 0.8;
    sublayer.frame = self.SmallProfileImageView_3.frame;
    sublayer.borderColor = [UIColor clearColor].CGColor;
    sublayer.borderWidth = 2.0;
    sublayer.cornerRadius = 10.0;
    [self.view.layer addSublayer:sublayer];
    
    CALayer *imageLayer = [self.SmallProfileImageView_3 layer];
    imageLayer.frame = sublayer.bounds;
    imageLayer.cornerRadius = 10.0;
    imageLayer.masksToBounds = YES;
    [sublayer addSublayer:imageLayer];
    
}

@end
