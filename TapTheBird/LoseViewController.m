//
//  LoseViewController.m
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

@interface LoseViewController ()

@end

@implementation LoseViewController

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
    if (failnum==1) {
        failreason.text=[NSString stringWithFormat:@"...because you were too slow!"];
    }else if (failnum==2){
        failreason.text=[NSString stringWithFormat:@"...because you missed!"];
    }else{
        failreason.text=[NSString stringWithFormat:@"...because I suck at this.  Dammit."];
    }
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
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
