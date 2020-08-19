//
//  ViewModel.h
//  TableViewPractice
//
//  Created by woohyunlee on 8/17/20.
//  Copyright © 2020 woohyunlee. All rights reserved.
//
#import <UIKit/UIKit.h>
#import "ApiService.h"
#import "Album.h"

@interface ViewModel : NSObject

@property (strong, nonatomic, readonly) ApiService *apiService;
@property (nonatomic, copy) void(^updateTableViewBlock)(void);
@property (strong, nonatomic) NSMutableArray *albums;

-(instancetype) initWithApiServie: (ApiService *)apiService;

-(void) fetch;
-(Album *) getAlbum: (NSIndexPath *)indexPath;

@end
