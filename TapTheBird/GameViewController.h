//
//  GameViewController.h
//  TapTheBird
//
//  Created by Administrator on 6/27/14.
//  Copyright (c) 2014 OneMinecraftGuy. All rights reserved.
//

float timercount;
int failnum;

#import <UIKit/UIKit.h>

@interface GameViewController : UIViewController <UIAlertViewDelegate>{
    int tapcoords;
    NSTimer *timer;
    IBOutlet UILabel *timeshown;
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
    int thisBird;
    int thisOneYN;
}

-(IBAction)i1;
-(IBAction)i2;
-(IBAction)i3;
-(IBAction)i4;
-(IBAction)i5;
-(IBAction)i6;
-(IBAction)i7;
-(IBAction)i8;
-(IBAction)i9;
-(IBAction)i10;
-(IBAction)i11;
-(IBAction)i12;
-(IBAction)i13;
-(IBAction)i14;
-(IBAction)i15;
-(IBAction)i16;
-(IBAction)i17;
-(IBAction)i18;
-(IBAction)i19;
-(IBAction)i20;
-(IBAction)i21;
-(IBAction)i22;
-(IBAction)i23;
-(IBAction)i24;

-(IBAction)pause;

@end
