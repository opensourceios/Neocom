//
//  NCNavigationCharacterButton.m
//  Neocom
//
//  Created by Артем Шиманский on 09.01.14.
//  Copyright (c) 2014 Artem Shimanski. All rights reserved.
//

#import "NCNavigationCharacterButton.h"
#import "NCMainMenuContainerViewController.h"

@implementation NCNavigationCharacterButton

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
    }
    return self;
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect
{
    // Drawing code
}
*/

- (void) setHighlighted:(BOOL)highlighted {
	[super setHighlighted:highlighted];
	
	__block __weak void (^weakHighlightView)(UIView*) = nil;
	
	void (^highlightView)(UIView*) = ^(UIView* view) {
		for (id subView in view.subviews) {
			if ([subView respondsToSelector:@selector(setHighlighted:)]) {
				[subView setHighlighted:highlighted];
			}
			weakHighlightView(subView);
		}
	};
	
	weakHighlightView = highlightView;
	
	highlightView(self);
}

- (void) setSelected:(BOOL)selected {
	if (self.selected == selected)
		return;
	
	[super setSelected:selected];
	[UIView animateWithDuration:NCMainMenuDropDownSegueAnimationDuration
						  delay:0
						options:UIViewAnimationOptionBeginFromCurrentState
					 animations:^{
						 self.arrowImageView.transform = CGAffineTransformMakeRotation(selected ? M_PI : 0);
					 }
					 completion:^(BOOL finished) {
						 
					 }];
}

@end
