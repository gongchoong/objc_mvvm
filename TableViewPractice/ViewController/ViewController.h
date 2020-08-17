//
//  ViewController.h
//  TableViewPractice
//
//  Created by woohyunlee on 8/17/20.
//  Copyright © 2020 woohyunlee. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ViewModel.h"

@interface ViewController : UIViewController

- (instancetype) initWithViewModel: (ViewModel *)viewModel;
-(void) fetch;

@end

@interface ViewController (Protocols) <UITableViewDelegate, UITableViewDataSource>

@end

