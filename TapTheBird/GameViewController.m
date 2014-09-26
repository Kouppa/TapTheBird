//
//  GameViewController.m
//  TapTheBird
//
//  Created by Administrator on 6/27/14.
//  Copyright (c) 2014 OneMinecraftGuy. All rights reserved.
//

#import "WhatViewController.h"
#import "TitleViewController.h"
#import "GameViewController.h"

@interface GameViewController ()

@end

@implementation GameViewController

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
	coords=arc4random_uniform(23)+1;
	NSLog(@"%D", coords);
	image1.userInteractionEnabled=TRUE;
	image2.userInteractionEnabled=TRUE;
	image3.userInteractionEnabled=TRUE;
	image4.userInteractionEnabled=TRUE;
	image5.userInteractionEnabled=TRUE;
	image6.userInteractionEnabled=TRUE;
	image7.userInteractionEnabled=TRUE;
	image8.userInteractionEnabled=TRUE;
	image9.userInteractionEnabled=TRUE;
	image10.userInteractionEnabled=TRUE;
	image11.userInteractionEnabled=TRUE;
	image12.userInteractionEnabled=TRUE;
	image13.userInteractionEnabled=TRUE;
	image14.userInteractionEnabled=TRUE;
	image15.userInteractionEnabled=TRUE;
	image16.userInteractionEnabled=TRUE;
	image17.userInteractionEnabled=TRUE;
	image18.userInteractionEnabled=TRUE;
	image19.userInteractionEnabled=TRUE;
	image20.userInteractionEnabled=TRUE;
	image21.userInteractionEnabled=TRUE;
	image22.userInteractionEnabled=TRUE;
	image23.userInteractionEnabled=TRUE;
	image24.userInteractionEnabled=TRUE;
	if (coords==1&&birdNumber==1) {
		image1.image=[UIImage imageNamed:@"1.png"];
	}if (coords==2&&birdNumber==1) {
		image2.image=[UIImage imageNamed:@"1.png"];
	}if (coords==3&&birdNumber==1) {
		image3.image=[UIImage imageNamed:@"1.png"];
	}if (coords==4&&birdNumber==1) {
		image4.image=[UIImage imageNamed:@"1.png"];
	}if (coords==5&&birdNumber==1) {
		image5.image=[UIImage imageNamed:@"1.png"];
	}if (coords==6&&birdNumber==1) {
		image6.image=[UIImage imageNamed:@"1.png"];
	}if (coords==7&&birdNumber==1) {
		image7.image=[UIImage imageNamed:@"1.png"];
	}if (coords==8&&birdNumber==1) {
		image8.image=[UIImage imageNamed:@"1.png"];
	}if (coords==9&&birdNumber==1) {
		image9.image=[UIImage imageNamed:@"1.png"];
	}if (coords==10&&birdNumber==1) {
		image10.image=[UIImage imageNamed:@"1.png"];
	}if (coords==11&&birdNumber==1) {
		image11.image=[UIImage imageNamed:@"1.png"];
	}if (coords==12&&birdNumber==1) {
		image12.image=[UIImage imageNamed:@"1.png"];
	}if (coords==13&&birdNumber==1) {
		image13.image=[UIImage imageNamed:@"1.png"];
	}if (coords==14&&birdNumber==1) {
		image14.image=[UIImage imageNamed:@"1.png"];
	}if (coords==15&&birdNumber==1) {
		image15.image=[UIImage imageNamed:@"1.png"];
	}if (coords==16&&birdNumber==1) {
		image16.image=[UIImage imageNamed:@"1.png"];
	}if (coords==17&&birdNumber==1) {
		image17.image=[UIImage imageNamed:@"1.png"];
	}if (coords==18&&birdNumber==1) {
		image18.image=[UIImage imageNamed:@"1.png"];
	}if (coords==19&&birdNumber==1) {
		image19.image=[UIImage imageNamed:@"1.png"];
	}if (coords==20&&birdNumber==1) {
		image20.image=[UIImage imageNamed:@"1.png"];
	}if (coords==21&&birdNumber==1) {
		image21.image=[UIImage imageNamed:@"1.png"];
	}if (coords==22&&birdNumber==1) {
		image22.image=[UIImage imageNamed:@"1.png"];
	}if (coords==23&&birdNumber==1) {
		image23.image=[UIImage imageNamed:@"1.png"];
	}if (coords==24&&birdNumber==1) {
		image24.image=[UIImage imageNamed:@"1.png"];
	}if (coords==1&&birdNumber==2) {
		image1.image=[UIImage imageNamed:@"2.jpg"];
	}if (coords==2&&birdNumber==2) {
		image2.image=[UIImage imageNamed:@"2.jpg"];
	}if (coords==3&&birdNumber==2) {
		image3.image=[UIImage imageNamed:@"2.jpg"];
	}if (coords==4&&birdNumber==2) {
		image4.image=[UIImage imageNamed:@"2.jpg"];
	}if (coords==5&&birdNumber==2) {
		image5.image=[UIImage imageNamed:@"2.png"];
	}if (coords==6&&birdNumber==2) {
		image6.image=[UIImage imageNamed:@"2.jpg"];
	}if (coords==7&&birdNumber==2) {
		image7.image=[UIImage imageNamed:@"2.jpg"];
	}if (coords==8&&birdNumber==2) {
		image8.image=[UIImage imageNamed:@"2.jpg"];
	}if (coords==9&&birdNumber==2) {
		image9.image=[UIImage imageNamed:@"2.jpg"];
	}if (coords==10&&birdNumber==2) {
		image10.image=[UIImage imageNamed:@"2.jpg"];
	}if (coords==11&&birdNumber==2) {
		image11.image=[UIImage imageNamed:@"2.jpg"];
	}if (coords==12&&birdNumber==2) {
		image12.image=[UIImage imageNamed:@"2.jpg"];
	}if (coords==13&&birdNumber==2) {
		image13.image=[UIImage imageNamed:@"2.jpg"];
	}if (coords==14&&birdNumber==2) {
		image14.image=[UIImage imageNamed:@"2.jpg"];
	}if (coords==15&&birdNumber==2) {
		image15.image=[UIImage imageNamed:@"2.jpg"];
	}if (coords==16&&birdNumber==2) {
		image16.image=[UIImage imageNamed:@"2.jpg"];
	}if (coords==17&&birdNumber==2) {
		image17.image=[UIImage imageNamed:@"2.jpg"];
	}if (coords==18&&birdNumber==2) {
		image18.image=[UIImage imageNamed:@"2.jpg"];
	}if (coords==19&&birdNumber==2) {
		image19.image=[UIImage imageNamed:@"2.jpg"];
	}if (coords==20&&birdNumber==2) {
		image20.image=[UIImage imageNamed:@"2.jpg"];
	}if (coords==21&&birdNumber==2) {
		image21.image=[UIImage imageNamed:@"2.jpg"];
	}if (coords==22&&birdNumber==2) {
		image22.image=[UIImage imageNamed:@"2.jpg"];
	}if (coords==23&&birdNumber==2) {
		image23.image=[UIImage imageNamed:@"2.jpg"];
	}if (coords==24&&birdNumber==2) {
		image24.image=[UIImage imageNamed:@"2.jpg"];
	}if (coords==1&&birdNumber==2) {
		image1.image=[UIImage imageNamed:@"3.png"];
	}if (coords==2&&birdNumber==3) {
		image2.image=[UIImage imageNamed:@"3.png"];
	}if (coords==3&&birdNumber==3) {
		image3.image=[UIImage imageNamed:@"3.png"];
	}if (coords==4&&birdNumber==3) {
		image4.image=[UIImage imageNamed:@"3.png"];
	}if (coords==5&&birdNumber==3) {
		image5.image=[UIImage imageNamed:@"3.png"];
	}if (coords==6&&birdNumber==3) {
		image6.image=[UIImage imageNamed:@"3.png"];
	}if (coords==7&&birdNumber==3) {
		image7.image=[UIImage imageNamed:@"3.png"];
	}if (coords==8&&birdNumber==3) {
		image8.image=[UIImage imageNamed:@"3.png"];
	}if (coords==9&&birdNumber==3) {
		image9.image=[UIImage imageNamed:@"3.png"];
	}if (coords==10&&birdNumber==3) {
		image10.image=[UIImage imageNamed:@"3.png"];
	}if (coords==11&&birdNumber==3) {
		image11.image=[UIImage imageNamed:@"3.png"];
	}if (coords==12&&birdNumber==3) {
		image12.image=[UIImage imageNamed:@"3.png"];
	}if (coords==13&&birdNumber==3) {
		image13.image=[UIImage imageNamed:@"3.png"];
	}if (coords==14&&birdNumber==3) {
		image14.image=[UIImage imageNamed:@"3.png"];
	}if (coords==15&&birdNumber==3) {
		image15.image=[UIImage imageNamed:@"3.png"];
	}if (coords==16&&birdNumber==3) {
		image16.image=[UIImage imageNamed:@"3.png"];
	}if (coords==17&&birdNumber==3) {
		image17.image=[UIImage imageNamed:@"3.png"];
	}if (coords==18&&birdNumber==3) {
		image18.image=[UIImage imageNamed:@"3.png"];
	}if (coords==19&&birdNumber==3) {
		image19.image=[UIImage imageNamed:@"3.png"];
	}if (coords==20&&birdNumber==3) {
		image20.image=[UIImage imageNamed:@"3.png"];
	}if (coords==21&&birdNumber==3) {
		image21.image=[UIImage imageNamed:@"3.png"];
	}if (coords==22&&birdNumber==3) {
		image22.image=[UIImage imageNamed:@"3.png"];
	}if (coords==23&&birdNumber==3) {
		image23.image=[UIImage imageNamed:@"3.png"];
	}if (coords==24&&birdNumber==3) {
		image24.image=[UIImage imageNamed:@"3.png"];
	}if (coords==1&&birdNumber==4) {
		image1.image=[UIImage imageNamed:@"4.jpg"];
	}if (coords==2&&birdNumber==4) {
		image2.image=[UIImage imageNamed:@"4.jpg"];
	}if (coords==3&&birdNumber==4) {
		image3.image=[UIImage imageNamed:@"4.jpg"];
	}if (coords==4&&birdNumber==4) {
		image4.image=[UIImage imageNamed:@"4.jpg"];
	}if (coords==5&&birdNumber==4) {
		image5.image=[UIImage imageNamed:@"4.jpg"];
	}if (coords==6&&birdNumber==4) {
		image6.image=[UIImage imageNamed:@"4.jpg"];
	}if (coords==7&&birdNumber==4) {
		image7.image=[UIImage imageNamed:@"4.jpg"];
	}if (coords==8&&birdNumber==4) {
		image8.image=[UIImage imageNamed:@"4.jpg"];
	}if (coords==9&&birdNumber==4) {
		image9.image=[UIImage imageNamed:@"4.jpg"];
	}if (coords==10&&birdNumber==4) {
		image10.image=[UIImage imageNamed:@"4.jpg"];
	}if (coords==11&&birdNumber==4) {
		image11.image=[UIImage imageNamed:@"4.jpg"];
	}if (coords==12&&birdNumber==4) {
		image12.image=[UIImage imageNamed:@"4.jpg"];
	}if (coords==13&&birdNumber==4) {
		image13.image=[UIImage imageNamed:@"4.jpg"];
	}if (coords==14&&birdNumber==4) {
		image14.image=[UIImage imageNamed:@"4.jpg"];
	}if (coords==15&&birdNumber==4) {
		image15.image=[UIImage imageNamed:@"4.jpg"];
	}if (coords==16&&birdNumber==4) {
		image16.image=[UIImage imageNamed:@"4.jpg"];
	}if (coords==17&&birdNumber==4) {
		image17.image=[UIImage imageNamed:@"4.jpg"];
	}if (coords==18&&birdNumber==4) {
		image18.image=[UIImage imageNamed:@"4.jpg"];
	}if (coords==19&&birdNumber==4) {
		image19.image=[UIImage imageNamed:@"4.jpg"];
	}if (coords==20&&birdNumber==4) {
		image20.image=[UIImage imageNamed:@"4.jpg"];
	}if (coords==21&&birdNumber==4) {
		image21.image=[UIImage imageNamed:@"4.jpg"];
	}if (coords==22&&birdNumber==4) {
		image22.image=[UIImage imageNamed:@"4.jpg"];
	}if (coords==23&&birdNumber==4) {
		image23.image=[UIImage imageNamed:@"4.jpg"];
	}if (coords==24&&birdNumber==4) {
		image24.image=[UIImage imageNamed:@"4.jpg"];
	}if (coords==1&&birdNumber==5) {
		image1.image=[UIImage imageNamed:@"5.png"];
	}if (coords==2&&birdNumber==5) {
		image2.image=[UIImage imageNamed:@"5.png"];
	}if (coords==3&&birdNumber==5) {
		image3.image=[UIImage imageNamed:@"5.png"];
	}if (coords==4&&birdNumber==5) {
		image4.image=[UIImage imageNamed:@"5.png"];
	}if (coords==5&&birdNumber==5) {
		image5.image=[UIImage imageNamed:@"5.png"];
	}if (coords==6&&birdNumber==5) {
		image6.image=[UIImage imageNamed:@"5.png"];
	}if (coords==7&&birdNumber==5) {
		image7.image=[UIImage imageNamed:@"5.png"];
	}if (coords==8&&birdNumber==5) {
		image8.image=[UIImage imageNamed:@"5.png"];
	}if (coords==9&&birdNumber==5) {
		image9.image=[UIImage imageNamed:@"5.png"];
	}if (coords==10&&birdNumber==5) {
		image10.image=[UIImage imageNamed:@"5.png"];
	}if (coords==11&&birdNumber==5) {
		image11.image=[UIImage imageNamed:@"5.png"];
	}if (coords==12&&birdNumber==5) {
		image12.image=[UIImage imageNamed:@"5.png"];
	}if (coords==13&&birdNumber==5) {
		image13.image=[UIImage imageNamed:@"5.png"];
	}if (coords==14&&birdNumber==5) {
		image14.image=[UIImage imageNamed:@"5.png"];
	}if (coords==15&&birdNumber==5) {
		image15.image=[UIImage imageNamed:@"5.png"];
	}if (coords==16&&birdNumber==5) {
		image16.image=[UIImage imageNamed:@"5.png"];
	}if (coords==17&&birdNumber==5) {
		image17.image=[UIImage imageNamed:@"5.png"];
	}if (coords==18&&birdNumber==5) {
		image18.image=[UIImage imageNamed:@"5.png"];
	}if (coords==19&&birdNumber==5) {
		image19.image=[UIImage imageNamed:@"5.png"];
	}if (coords==20&&birdNumber==5) {
		image20.image=[UIImage imageNamed:@"5.png"];
	}if (coords==21&&birdNumber==5) {
		image21.image=[UIImage imageNamed:@"5.png"];
	}if (coords==22&&birdNumber==5) {
		image22.image=[UIImage imageNamed:@"5.png"];
	}if (coords==23&&birdNumber==5) {
		image23.image=[UIImage imageNamed:@"5.png"];
	}if (coords==24&&birdNumber==5) {
		image24.image=[UIImage imageNamed:@"5.png"];
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
