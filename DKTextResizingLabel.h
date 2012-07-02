//
//  DKTextResizingLabel.h
//
//  Created by Dominik Krejcik on 7/2/12.


//UILabel subclass that automatically resizes the font to fit into the frame of the label if the number of lines is more than 1

#import <UIKit/UIKit.h>

@interface DKTextResizingLabel : UILabel {
    CGFloat maxFontSize;
}

//Maximum allowed font size
@property (nonatomic) CGFloat maxFontSize;

@end
