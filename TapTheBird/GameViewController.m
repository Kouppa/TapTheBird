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
#import "LoseViewController.h"
#import "WinViewController.h"
#import <RevMobAds/RevMobAds.h>

@interface GameViewController ()

@end

@implementation GameViewController

-(IBAction)exit{
    exit(0);
}

-(void)viewDidLoad{
	// Do any additional setup after loading the view.
	[super viewDidLoad];
	
	// Custom initialization
	coords=arc4random_uniform(23)+1;
	NSLog(@"%d", coords);
	finalBird=birdNumber;
	finalCoords=coords;
	thisBird=birdNumber;
	[self placepic];
	birdAmount=1;
	BOOL bAmount=true;
//	while (bAmount) {
//		coords=arc4random_uniform(23)+1;
//		[self randombird];
//		birdAmount=birdAmount+1;
//		if (birdAmount>=10) {
//			bAmount=false;
//		}
//	}
	
	
	
	
	do{
		coords=arc4random_uniform(23)+1;
		[self randombird];
		birdAmount=birdAmount+1;
		if (birdAmount>=20) {
			bAmount=false;
		}
	}while (bAmount);
	
		timercount=0;
	if (timer.isValid) {
		[timer invalidate];
	}
	timer=[NSTimer scheduledTimerWithTimeInterval:0.01 target:self selector:@selector(upgame) userInfo:nil repeats:YES];
}


/* 画面が表示されるまでの流れ 
 ①-loadView
 ②-viewDidLoad
 ③-viewWillAppear
 ④-viewDidAppear
*/




-(void)upgame{
	timercount=timercount+0.01;
	timeshown.text=[NSString stringWithFormat:@"%.2f", timercount];
	if (timercount>100) {
		failnum=1;
		[self performSegueWithIdentifier:@"GameLose" sender:nil];
		[timer invalidate];
	}
}

-(IBAction)pause{
	[timer invalidate];
	UIAlertView *pause = [[UIAlertView alloc] initWithTitle:@"Paused" message:@"The game has been paused.  Please resume." delegate:self cancelButtonTitle:@"Resume" otherButtonTitles:@"Quit to Title",nil];
	[pause show];
}

- (void)alertView:(UIAlertView *)alertView clickedButtonAtIndex:(NSInteger)buttonIndex{
	if (buttonIndex == 0) {
		timer=[NSTimer scheduledTimerWithTimeInterval:0.01 target:self selector:@selector(upgame) userInfo:nil repeats:YES];
	}else{
		[self.presentingViewController.presentingViewController dismissViewControllerAnimated:YES completion:nil];
		[self adsetup];
	}
}

-(void)randomBirdGen{
	thisBird=arc4random_uniform(4)+1;
}

-(void)randomCoordGen{
	randomCoords=arc4random_uniform(23)+1;
}

-(void)randombird{
	[self randomBirdGen];
	if (thisBird==birdNumber) {
		BOOL birdTF = true;
		do {
			[self randomBirdGen];
			if (thisBird!=birdNumber) {
				birdTF = false;
			}
		}while (birdTF);
	}
	[self randomCoordGen];
	if (randomCoords==finalCoords) {
		BOOL coordTF=true;
		do {
			[self randomCoordGen];
			if (randomCoords!=finalCoords) {
				coordTF=FALSE;
			}
		}while (coordTF);
	}
	[self placepic];
}

-(void)viewDidDisappear:(BOOL)animated{
	timer=nil;
	timercount=0;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)adsetup{
	[[RevMobAds session] showBanner];
	int adkind=arc4random_uniform(5);
	if (adkind==0) {
		[[RevMobAds session] showPopup];
	}else{
		[[RevMobAds session] showFullscreen];
	}
}

-(void)placepic{
	 if (coords==1&&thisBird==1) {
		image1.image=[UIImage imageNamed:@"B1.png"];
	}if (coords==2&&thisBird==1) {
		image2.image=[UIImage imageNamed:@"B1.png"];
	}if (coords==3&&thisBird==1) {
		image3.image=[UIImage imageNamed:@"B1.png"];
	}if (coords==4&&thisBird==1) {
		image4.image=[UIImage imageNamed:@"B1.png"];
	}if (coords==5&&thisBird==1) {
		image5.image=[UIImage imageNamed:@"B1.png"];
	}if (coords==6&&thisBird==1) {
		image6.image=[UIImage imageNamed:@"B1.png"];
	}if (coords==7&&thisBird==1) {
		image7.image=[UIImage imageNamed:@"B1.png"];
	}if (coords==8&&thisBird==1) {
		image8.image=[UIImage imageNamed:@"B1.png"];
	}if (coords==9&&thisBird==1) {
		image9.image=[UIImage imageNamed:@"B1.png"];
	}if (coords==10&&thisBird==1) {
		image10.image=[UIImage imageNamed:@"B1.png"];
	}if (coords==11&&thisBird==1) {
		image11.image=[UIImage imageNamed:@"B1.png"];
	}if (coords==12&&thisBird==1) {
		image12.image=[UIImage imageNamed:@"B1.png"];
	}if (coords==13&&thisBird==1) {
		image13.image=[UIImage imageNamed:@"B1.png"];
	}if (coords==14&&thisBird==1) {
		image14.image=[UIImage imageNamed:@"B1.png"];
	}if (coords==15&&thisBird==1) {
		image15.image=[UIImage imageNamed:@"B1.png"];
	}if (coords==16&&thisBird==1) {
		image16.image=[UIImage imageNamed:@"B1.png"];
	}if (coords==17&&thisBird==1) {
		image17.image=[UIImage imageNamed:@"B1.png"];
	}if (coords==18&&thisBird==1) {
		image18.image=[UIImage imageNamed:@"B1.png"];
	}if (coords==19&&thisBird==1) {
		image19.image=[UIImage imageNamed:@"B1.png"];
	}if (coords==20&&thisBird==1) {
		image20.image=[UIImage imageNamed:@"B1.png"];
	}if (coords==21&&thisBird==1) {
		image21.image=[UIImage imageNamed:@"B1.png"];
	}if (coords==22&&thisBird==1) {
		image22.image=[UIImage imageNamed:@"B1.png"];
	}if (coords==23&&thisBird==1) {
		image23.image=[UIImage imageNamed:@"B1.png"];
	}if (coords==24&&thisBird==1) {
		image24.image=[UIImage imageNamed:@"B1.png"];
	}if (coords==1&&thisBird==2) {
		image1.image=[UIImage imageNamed:@"B2.png"];
	}if (coords==2&&thisBird==2) {
		image2.image=[UIImage imageNamed:@"B2.png"];
	}if (coords==3&&thisBird==2) {
		image3.image=[UIImage imageNamed:@"B2.png"];
	}if (coords==4&&thisBird==2) {
		image4.image=[UIImage imageNamed:@"B2.png"];
	}if (coords==5&&thisBird==2) {
		image5.image=[UIImage imageNamed:@"2.png"];
	}if (coords==6&&thisBird==2) {
		image6.image=[UIImage imageNamed:@"B2.png"];
	}if (coords==7&&thisBird==2) {
		image7.image=[UIImage imageNamed:@"B2.png"];
	}if (coords==8&&thisBird==2) {
		image8.image=[UIImage imageNamed:@"B2.png"];
	}if (coords==9&&thisBird==2) {
		image9.image=[UIImage imageNamed:@"B2.png"];
	}if (coords==10&&thisBird==2) {
		image10.image=[UIImage imageNamed:@"B2.png"];
	}if (coords==11&&thisBird==2) {
		image11.image=[UIImage imageNamed:@"B2.png"];
	}if (coords==12&&thisBird==2) {
		image12.image=[UIImage imageNamed:@"B2.png"];
	}if (coords==13&&thisBird==2) {
		image13.image=[UIImage imageNamed:@"B2.png"];
	}if (coords==14&&thisBird==2) {
		image14.image=[UIImage imageNamed:@"B2.png"];
	}if (coords==15&&thisBird==2) {
		image15.image=[UIImage imageNamed:@"B2.png"];
	}if (coords==16&&thisBird==2) {
		image16.image=[UIImage imageNamed:@"B2.png"];
	}if (coords==17&&thisBird==2) {
		image17.image=[UIImage imageNamed:@"B2.png"];
	}if (coords==18&&thisBird==2) {
		image18.image=[UIImage imageNamed:@"B2.png"];
	}if (coords==19&&thisBird==2) {
		image19.image=[UIImage imageNamed:@"B2.png"];
	}if (coords==20&&thisBird==2) {
		image20.image=[UIImage imageNamed:@"B2.png"];
	}if (coords==21&&thisBird==2) {
		image21.image=[UIImage imageNamed:@"B2.png"];
	}if (coords==22&&thisBird==2) {
		image22.image=[UIImage imageNamed:@"B2.png"];
	}if (coords==23&&thisBird==2) {
		image23.image=[UIImage imageNamed:@"B2.png"];
	}if (coords==24&&thisBird==2) {
		image24.image=[UIImage imageNamed:@"B2.png"];
	}if (coords==1&&thisBird==2) {
		image1.image=[UIImage imageNamed:@"B3.png"];
	}if (coords==2&&thisBird==3) {
		image2.image=[UIImage imageNamed:@"B3.png"];
	}if (coords==3&&thisBird==3) {
		image3.image=[UIImage imageNamed:@"B3.png"];
	}if (coords==4&&thisBird==3) {
		image4.image=[UIImage imageNamed:@"B3.png"];
	}if (coords==5&&thisBird==3) {
		image5.image=[UIImage imageNamed:@"B3.png"];
	}if (coords==6&&thisBird==3) {
		image6.image=[UIImage imageNamed:@"B3.png"];
	}if (coords==7&&thisBird==3) {
		image7.image=[UIImage imageNamed:@"B3.png"];
	}if (coords==8&&thisBird==3) {
		image8.image=[UIImage imageNamed:@"B3.png"];
	}if (coords==9&&thisBird==3) {
		image9.image=[UIImage imageNamed:@"B3.png"];
	}if (coords==10&&thisBird==3) {
		image10.image=[UIImage imageNamed:@"B3.png"];
	}if (coords==11&&thisBird==3) {
		image11.image=[UIImage imageNamed:@"B3.png"];
	}if (coords==12&&thisBird==3) {
		image12.image=[UIImage imageNamed:@"B3.png"];
	}if (coords==13&&thisBird==3) {
		image13.image=[UIImage imageNamed:@"B3.png"];
	}if (coords==14&&thisBird==3) {
		image14.image=[UIImage imageNamed:@"B3.png"];
	}if (coords==15&&thisBird==3) {
		image15.image=[UIImage imageNamed:@"B3.png"];
	}if (coords==16&&thisBird==3) {
		image16.image=[UIImage imageNamed:@"B3.png"];
	}if (coords==17&&thisBird==3) {
		image17.image=[UIImage imageNamed:@"B3.png"];
	}if (coords==18&&thisBird==3) {
		image18.image=[UIImage imageNamed:@"B3.png"];
	}if (coords==19&&thisBird==3) {
		image19.image=[UIImage imageNamed:@"B3.png"];
	}if (coords==20&&thisBird==3) {
		image20.image=[UIImage imageNamed:@"B3.png"];
	}if (coords==21&&thisBird==3) {
		image21.image=[UIImage imageNamed:@"B3.png"];
	}if (coords==22&&thisBird==3) {
		image22.image=[UIImage imageNamed:@"B3.png"];
	}if (coords==23&&thisBird==3) {
		image23.image=[UIImage imageNamed:@"B3.png"];
	}if (coords==24&&thisBird==3) {
		image24.image=[UIImage imageNamed:@"B3.png"];
	}if (coords==1&&thisBird==4) {
		image1.image=[UIImage imageNamed:@"B4.png"];
	}if (coords==2&&thisBird==4) {
		image2.image=[UIImage imageNamed:@"B4.png"];
	}if (coords==3&&thisBird==4) {
		image3.image=[UIImage imageNamed:@"B4.png"];
	}if (coords==4&&thisBird==4) {
		image4.image=[UIImage imageNamed:@"B4.png"];
	}if (coords==5&&thisBird==4) {
		image5.image=[UIImage imageNamed:@"B4.png"];
	}if (coords==6&&thisBird==4) {
		image6.image=[UIImage imageNamed:@"B4.png"];
	}if (coords==7&&thisBird==4) {
		image7.image=[UIImage imageNamed:@"B4.png"];
	}if (coords==8&&thisBird==4) {
		image8.image=[UIImage imageNamed:@"B4.png"];
	}if (coords==9&&thisBird==4) {
		image9.image=[UIImage imageNamed:@"B4.png"];
	}if (coords==10&&thisBird==4) {
		image10.image=[UIImage imageNamed:@"B4.png"];
	}if (coords==11&&thisBird==4) {
		image11.image=[UIImage imageNamed:@"B4.png"];
	}if (coords==12&&thisBird==4) {
		image12.image=[UIImage imageNamed:@"B4.png"];
	}if (coords==13&&thisBird==4) {
		image13.image=[UIImage imageNamed:@"B4.png"];
	}if (coords==14&&thisBird==4) {
		image14.image=[UIImage imageNamed:@"B4.png"];
	}if (coords==15&&thisBird==4) {
		image15.image=[UIImage imageNamed:@"B4.png"];
	}if (coords==16&&thisBird==4) {
		image16.image=[UIImage imageNamed:@"B4.png"];
	}if (coords==17&&thisBird==4) {
		image17.image=[UIImage imageNamed:@"B4.png"];
	}if (coords==18&&thisBird==4) {
		image18.image=[UIImage imageNamed:@"B4.png"];
	}if (coords==19&&thisBird==4) {
		image19.image=[UIImage imageNamed:@"B4.png"];
	}if (coords==20&&thisBird==4) {
		image20.image=[UIImage imageNamed:@"B4.png"];
	}if (coords==21&&thisBird==4) {
		image21.image=[UIImage imageNamed:@"B4.png"];
	}if (coords==22&&thisBird==4) {
		image22.image=[UIImage imageNamed:@"B4.png"];
	}if (coords==23&&thisBird==4) {
		image23.image=[UIImage imageNamed:@"B4.png"];
	}if (coords==24&&thisBird==4) {
		image24.image=[UIImage imageNamed:@"B4.png"];
	}if (coords==1&&thisBird==5) {
		image1.image=[UIImage imageNamed:@"B5.png"];
	}if (coords==2&&thisBird==5) {
		image2.image=[UIImage imageNamed:@"B5.png"];
	}if (coords==3&&thisBird==5) {
		image3.image=[UIImage imageNamed:@"B5.png"];
	}if (coords==4&&thisBird==5) {
		image4.image=[UIImage imageNamed:@"B5.png"];
	}if (coords==5&&thisBird==5) {
		image5.image=[UIImage imageNamed:@"B5.png"];
	}if (coords==6&&thisBird==5) {
		image6.image=[UIImage imageNamed:@"B5.png"];
	}if (coords==7&&thisBird==5) {
		image7.image=[UIImage imageNamed:@"B5.png"];
	}if (coords==8&&thisBird==5) {
		image8.image=[UIImage imageNamed:@"B5.png"];
	}if (coords==9&&thisBird==5) {
		image9.image=[UIImage imageNamed:@"B5.png"];
	}if (coords==10&&thisBird==5) {
		image10.image=[UIImage imageNamed:@"B5.png"];
	}if (coords==11&&thisBird==5) {
		image11.image=[UIImage imageNamed:@"B5.png"];
	}if (coords==12&&thisBird==5) {
		image12.image=[UIImage imageNamed:@"B5.png"];
	}if (coords==13&&thisBird==5) {
		image13.image=[UIImage imageNamed:@"B5.png"];
	}if (coords==14&&thisBird==5) {
		image14.image=[UIImage imageNamed:@"B5.png"];
	}if (coords==15&&thisBird==5) {
		image15.image=[UIImage imageNamed:@"B5.png"];
	}if (coords==16&&thisBird==5) {
		image16.image=[UIImage imageNamed:@"B5.png"];
	}if (coords==17&&thisBird==5) {
		image17.image=[UIImage imageNamed:@"B5.png"];
	}if (coords==18&&thisBird==5) {
		image18.image=[UIImage imageNamed:@"B5.png"];
	}if (coords==19&&thisBird==5) {
		image19.image=[UIImage imageNamed:@"B5.png"];
	}if (coords==20&&thisBird==5) {
		image20.image=[UIImage imageNamed:@"B5.png"];
	}if (coords==21&&thisBird==5) {
		image21.image=[UIImage imageNamed:@"B5.png"];
	}if (coords==22&&thisBird==5) {
		image22.image=[UIImage imageNamed:@"B5.png"];
	}if (coords==23&&thisBird==5) {
		image23.image=[UIImage imageNamed:@"B5.png"];
	}if (coords==24&&thisBird==5) {
		image24.image=[UIImage imageNamed:@"B5.png"];
	}
}

-(IBAction)i1{
	tapcoords=1;
	[self adsetup];	if (finalCoords==1) {
		[self performSegueWithIdentifier:@"GameWin" sender:nil];
	}else{failnum=2;
		[self performSegueWithIdentifier:@"GameLose" sender:nil];
		[timer invalidate];}
}

-(IBAction)i2{
	tapcoords=2;
	[self adsetup];
	if (finalCoords==2) {
		[self performSegueWithIdentifier:@"GameWin" sender:nil];
	}else{failnum=2;
		[self performSegueWithIdentifier:@"GameLose" sender:nil];
		[timer invalidate];}
}


-(IBAction)i3{
	tapcoords=3;
	[self adsetup];
	if (finalCoords==3) {
		[self performSegueWithIdentifier:@"GameWin" sender:nil];
	}else{failnum=2;
		[self performSegueWithIdentifier:@"GameLose" sender:nil];
		[timer invalidate];}
}

-(IBAction)i4{
	tapcoords=4;
	[self adsetup];	if (finalCoords==4) {
		[self performSegueWithIdentifier:@"GameWin" sender:nil];
	}else{failnum=2;
		[self performSegueWithIdentifier:@"GameLose" sender:nil];
		[timer invalidate];}
}

-(IBAction)i5{
	tapcoords=5;
	[[RevMobAds session] showBanner];
	[[RevMobAds session] showFullscreen];
	if (finalCoords==5) {
		[self performSegueWithIdentifier:@"GameWin" sender:nil];
	}else{failnum=2;
		[self performSegueWithIdentifier:@"GameLose" sender:nil];
		[timer invalidate];}
}

-(IBAction)i6{
	tapcoords=6;
	[self adsetup];	if (finalCoords==6) {
		[self performSegueWithIdentifier:@"GameWin" sender:nil];
	}else{failnum=2;
		[self performSegueWithIdentifier:@"GameLose" sender:nil];
		[timer invalidate];}
}

-(IBAction)i7{
	tapcoords=7;
	[self adsetup];	if (finalCoords==7) {
		[self performSegueWithIdentifier:@"GameWin" sender:nil];
	}else{failnum=2;
		[self performSegueWithIdentifier:@"GameLose" sender:nil];
		[timer invalidate];}
}

-(IBAction)i8{
	tapcoords=8;
	[self adsetup];	if (finalCoords==8) {
		[self performSegueWithIdentifier:@"GameWin" sender:nil];
	}else{failnum=2;
		[self performSegueWithIdentifier:@"GameLose" sender:nil];
		[timer invalidate];}
}

-(IBAction)i9{
	tapcoords=9;
	[self adsetup];	if (finalCoords==9) {
		[self performSegueWithIdentifier:@"GameWin" sender:nil];
	}else{failnum=2;
		[self performSegueWithIdentifier:@"GameLose" sender:nil];
		[timer invalidate];}
}

-(IBAction)i10{
	tapcoords=10;
	[self adsetup];	if (finalCoords==10) {
		[self performSegueWithIdentifier:@"GameWin" sender:nil];
	}else{failnum=2;
		[self performSegueWithIdentifier:@"GameLose" sender:nil];
		[timer invalidate];}
}

-(IBAction)i11{
	tapcoords=11;
	[self adsetup];	if (finalCoords==11) {
		[self performSegueWithIdentifier:@"GameWin" sender:nil];
	}else{failnum=2;
		[self performSegueWithIdentifier:@"GameLose" sender:nil];
		[timer invalidate];}
}

-(IBAction)i12{
	tapcoords=12;
	[self adsetup];	if (finalCoords==12) {
		[self performSegueWithIdentifier:@"GameWin" sender:nil];
	}else{failnum=2;
		[self performSegueWithIdentifier:@"GameLose" sender:nil];
		[timer invalidate];}
}

-(IBAction)i13{
	tapcoords=13;
	[self adsetup];	if (finalCoords==13) {
		[self performSegueWithIdentifier:@"GameWin" sender:nil];
	}else{failnum=2;
		[self performSegueWithIdentifier:@"GameLose" sender:nil];
		[timer invalidate];}
}

-(IBAction)i14{
	tapcoords=14;
	[self adsetup];
	
	if (finalCoords==14) {
		[self performSegueWithIdentifier:@"GameWin" sender:nil];
	}else{failnum=2;
		[self performSegueWithIdentifier:@"GameLose" sender:nil];
		[timer invalidate];}
}

-(IBAction)i15{
	tapcoords=15;
	[self adsetup];	if (finalCoords==15) {
		[self performSegueWithIdentifier:@"GameWin" sender:nil];
	}else{failnum=2;
		[self performSegueWithIdentifier:@"GameLose" sender:nil];
		[timer invalidate];}
}

-(IBAction)i16{
	tapcoords=16;
	[self adsetup];	if (finalCoords==16) {
		[self performSegueWithIdentifier:@"GameWin" sender:nil];
	}else{failnum=2;
		[self performSegueWithIdentifier:@"GameLose" sender:nil];
		[timer invalidate];}
}

-(IBAction)i17{
	tapcoords=17;
	[self adsetup];	if (finalCoords==17) {
		[self performSegueWithIdentifier:@"GameWin" sender:nil];
	}else{failnum=2;
		[self performSegueWithIdentifier:@"GameLose" sender:nil];
		[timer invalidate];}
}

-(IBAction)i18{
	tapcoords=18;
	[self adsetup];	if (finalCoords==18) {
		[self performSegueWithIdentifier:@"GameWin" sender:nil];
	}else{failnum=2;
		[self performSegueWithIdentifier:@"GameLose" sender:nil];
		[timer invalidate];}
}

-(IBAction)i19{
	tapcoords=19;
	[self adsetup];	if (finalCoords==19) {
		[self performSegueWithIdentifier:@"GameWin" sender:nil];
	}else{failnum=2;
		[self performSegueWithIdentifier:@"GameLose" sender:nil];
		[timer invalidate];}
}

-(IBAction)i20{
	tapcoords=20;
	[self adsetup];	if (finalCoords==20) {
		[self performSegueWithIdentifier:@"GameWin" sender:nil];
	}else{failnum=2;
		[self performSegueWithIdentifier:@"GameLose" sender:nil];
		[timer invalidate];}
}

-(IBAction)i21{
	tapcoords=21;
	[self adsetup];	if (finalCoords==21) {
		[self performSegueWithIdentifier:@"GameWin" sender:nil];
	}else{failnum=2;
		[self performSegueWithIdentifier:@"GameLose" sender:nil];
		[timer invalidate];}
}

-(IBAction)i22{
	tapcoords=22;
	[self adsetup];	if (finalCoords==22) {
		[self performSegueWithIdentifier:@"GameWin" sender:nil];
	}else{failnum=2;
		[self performSegueWithIdentifier:@"GameLose" sender:nil];
		[timer invalidate];}
}

-(IBAction)i23{
	tapcoords=23;
	[self adsetup];	if (finalCoords==23) {
		[self performSegueWithIdentifier:@"GameWin" sender:nil];
	}else{failnum=2;
		[self performSegueWithIdentifier:@"GameLose" sender:nil];
		[timer invalidate];}
}

-(IBAction)i24{
	tapcoords=24;
	[self adsetup];	if (finalCoords==24) {
		[self performSegueWithIdentifier:@"GameWin" sender:nil];
	}else{failnum=2;
		[self performSegueWithIdentifier:@"GameLose" sender:nil];
		[timer invalidate];}
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
