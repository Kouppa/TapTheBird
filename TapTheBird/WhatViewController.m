//
//  WhatViewController.m
//  TapTheBird
//
//  Created by Administrator on 6/27/14.
//  Copyright (c) 2014 OneMinecraftGuy. All rights reserved.
//

#import "WhatViewController.h"
#import "TitleViewController.h"

@interface WhatViewController ()

@end

@implementation WhatViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}



- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    if (birdNumber == 1) {
        ChosenLabel.text=@"A One!";
        ChosenView.image=[UIImage imageNamed:@"1.png"];
    }else if (birdNumber == 2) {
        ChosenLabel.text=@"A Two!";
        ChosenView.image=[UIImage imageNamed:@"2.jpg"];
    }else if (birdNumber == 3) {
        ChosenLabel.text=@"A Three!";
        ChosenView.image=[UIImage imageNamed:@"3.png"];
    }else if (birdNumber == 4) {
        ChosenLabel.text=@"A Four!";
        ChosenView.image=[UIImage imageNamed:@"4.jpg"];
    }else if (birdNumber == 5) {
        ChosenLabel.text=@"A Five!";
        ChosenView.image=[UIImage imageNamed:@"5.png"];
    }else{
        ChosenLabel.text=@"wtf happened?";
    }
    
    timer=[NSTimer scheduledTimerWithTimeInterval:1 target:self selector:@selector(up) userInfo:nil repeats:YES];
}

-(void)up{
    if (time==5) {
        
    }
    time=time+1;
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
