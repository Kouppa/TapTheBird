//
//  WinViewController.h
//  TapTheBird
//
//  Created by Administrator on 10/3/14.
//  Copyright (c) 2014 OneMinecraftGuy. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <iAd/iAd.h>

@interface WinViewController : UIViewController<ADInterstitialAdDelegate>{
    IBOutlet UILabel *FinalScore;
    float thisscore;
    float highscore;
    IBOutlet UILabel *HighScore;
    IBOutlet ADBannerView *winAd;
}



-(IBAction)backToTop;
-(IBAction)btnFacebookSharing_Clicked:(id)sender;
-(IBAction)btnTwitterSharing_Clicked:(id)sender;

@end
