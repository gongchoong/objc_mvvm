//
//  ViewModel.h
//  TableViewPractice
//
//  Created by woohyunlee on 8/17/20.
//  Copyright © 2020 woohyunlee. All rights reserved.
//
#import <UIKit/UIKit.h>
#import "ApiService.h"

@interface ViewModel : NSObject

@property (strong, nonatomic, readonly) ApiService *apiService;

-(instancetype) initWithApiServie: (ApiService *)apiService;

-(void) fetch;

@end
