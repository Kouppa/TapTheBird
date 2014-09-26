//
//  GameViewController.h
//  TapTheBird
//
//  Created by Administrator on 6/27/14.
//  Copyright (c) 2014 OneMinecraftGuy. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface GameViewController : UIViewController <UIGestureRecognizerDelegate>{
    NSTimer *timer;
    IBOutlet UIImageView *image1;
    IBOutlet UIImageView *image2;
    IBOutlet UIImageView *image3;
    IBOutlet UIImageView *image4;
    IBOutlet UIImageView *image5;
    IBOutlet UIImageView *image6;
    IBOutlet UIImageView *image7;
    IBOutlet UIImageView *image8;
    IBOutlet UIImageView *image9;
    IBOutlet UIImageView *image10;
    IBOutlet UIImageView *image11;
    IBOutlet UIImageView *image12;
    IBOutlet UIImageView *image13;
    IBOutlet UIImageView *image14;
    IBOutlet UIImageView *image15;
    IBOutlet UIImageView *image16;
    IBOutlet UIImageView *image17;
    IBOutlet UIImageView *image18;
    IBOutlet UIImageView *image19;
    IBOutlet UIImageView *image20;
    IBOutlet UIImageView *image21;
    IBOutlet UIImageView *image22;
    IBOutlet UIImageView *image23;
    IBOutlet UIImageView *image24;
    int coords;
}

-(IBAction)exit;

@end
