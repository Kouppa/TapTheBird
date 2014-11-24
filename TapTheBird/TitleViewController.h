//
//  TitleViewController.h
//  TapTheBird
//
//  Created by Administrator on 6/6/14.
//  Copyright (c) 2014 OneMinecraftGuy. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "GADBannerView.h"

int birdNumber;

@interface TitleViewController : UIViewController
{
    IBOutlet GADBannerView* bannerView;
}
-(IBAction)exit;

@end
