//
//  ViewModel.m
//  TableViewPractice
//
//  Created by woohyunlee on 8/17/20.
//  Copyright © 2020 woohyunlee. All rights reserved.
//

#import "ViewModel.h"


@implementation ViewModel



- (instancetype)initWithApiServie:(ApiService *)apiService {
    self = [super init];
    if (!self) return nil;
    _apiService = apiService;
    return self;
}

- (void)fetch {
    __weak typeof(self) weakSelf = self;
    [_apiService fetchAlbumData:^(NSMutableArray *albumArray) {
        weakSelf.albums = albumArray;
        weakSelf.updateTableViewBlock();
    }];
}

- (Album *)getAlbum:(NSIndexPath *)indexPath {
    return self.albums[indexPath.row];
}

@end
