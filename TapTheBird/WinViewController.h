//
//  WinViewController.h
//  TapTheBird
//
//  Created by Administrator on 10/3/14.
//  Copyright (c) 2014 OneMinecraftGuy. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface WinViewController : UIViewController{
    IBOutlet UILabel *FinalScore;
    float thisscore;
    float highscore;
    IBOutlet UILabel *HighScore;
}

-(IBAction)backToTop;
-(IBAction)btnFacebookSharing_Clicked:(id)sender;

@end
