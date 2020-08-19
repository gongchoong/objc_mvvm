//
//  ApiService.h
//  TableViewPractice
//
//  Created by woohyunlee on 8/17/20.
//  Copyright © 2020 woohyunlee. All rights reserved.
//



@interface ApiService : NSObject

@property NSURL *url;

-(instancetype) initWithUrl: (NSURL *)url;

- (void) fetchAlbumData: (void (^)(void))completion;

@end
