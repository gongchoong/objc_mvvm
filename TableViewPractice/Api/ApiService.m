//
//  ApiService.m
//  TableViewPractice
//
//  Created by woohyunlee on 8/17/20.
//  Copyright © 2020 woohyunlee. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ApiService.h"

@implementation ApiService

- (instancetype)initWithUrl:(NSURL *)url {
    self = [super init];
    if (!self) return nil;
    _url = url;
    return self;
}

- (void)fetchAlbumData:(void (^)(NSMutableArray *))completion {
    NSLog(@"%@", _url);
    NSMutableArray *array = [[NSMutableArray alloc] init];
    completion(array);
}

@end
