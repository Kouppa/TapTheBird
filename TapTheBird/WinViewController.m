//
//  WinViewController.m
//  TapTheBird
//
//  Created by Administrator on 10/3/14.
//  Copyright (c) 2014 OneMinecraftGuy. All rights reserved.
//

#import "WhatViewController.h"
#import "TitleViewController.h"
#import "GameViewController.h"
#import "LoseViewController.h"
#import "WinViewController.h"
#import <Social/Social.h>

@interface WinViewController ()

@end

@implementation WinViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

-(IBAction)exit{
    exit(0);
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    thisscore=100-timercount;
    FinalScore.text=[NSString stringWithFormat:@"%.0f points!",thisscore];
    NSUserDefaults *highScore=[NSUserDefaults standardUserDefaults];
    highscore=[highScore floatForKey:@"savedHighScore"];
    if (thisscore>highscore) {
        [highScore setFloat:thisscore forKey:@"savedHighScore"];
        [highScore synchronize];
        highscore=thisscore;
       
    }
     HighScore.text=[NSString stringWithFormat:@"%.0f", highscore];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(IBAction)backToTop{
    [self.presentingViewController.presentingViewController.presentingViewController dismissViewControllerAnimated:YES completion:nil];
}

-(IBAction)btnFacebookSharing_Clicked:(id)sender{
    if([SLComposeViewController isAvailableForServiceType:SLServiceTypeFacebook]) {
        SLComposeViewController *fbSheetOBJ = [SLComposeViewController composeViewControllerForServiceType:SLServiceTypeFacebook];
        [fbSheetOBJ setInitialText:[NSString stringWithFormat:@"I have a highscore of %.0f on this awsome game called 'Tap The Bird'", highscore]];
        [self presentViewController:fbSheetOBJ animated:YES completion:Nil];
    }
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
