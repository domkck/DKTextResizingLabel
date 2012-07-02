//
//  DKTextResizingLabel.m
//
//  Created by Dominik Krejcik on 7/2/12.


#import "DKTextResizingLabel.h"

@implementation DKTextResizingLabel

@synthesize maxFontSize;

-(DKTextResizingLabel*)initWithFrame:(CGRect)frame {
    self = [super initWithFrame:frame];
    
    if (self) {
        //Default maxFontSize
        self.maxFontSize = 40;
    }
    
    return self;
}

-(void)setText:(NSString *)text {
    [super setText:text];
    
    if (self.numberOfLines > 1) {
        UIFont *font = self.font;
        
        for (int i = (int)self.maxFontSize; i >= self.minimumFontSize; i--) {
            font = [font fontWithSize:i];
            CGSize constraintSize = CGSizeMake(self.frame.size.width, MAXFLOAT);
            
            CGSize labelSize = [self.text sizeWithFont:font constrainedToSize:constraintSize lineBreakMode:UILineBreakModeWordWrap];
            if (labelSize.height <= self.frame.size.height)
                break;
        }
        
        self.font = font;
    }
}

@end