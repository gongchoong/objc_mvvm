//
//  ViewController.h
//  TableViewPractice
//
//  Created by woohyunlee on 8/17/20.
//  Copyright © 2020 woohyunlee. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController


@end

@interface ViewController (Protocols) <UITableViewDelegate, UITableViewDataSource>

@end

