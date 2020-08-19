//
//  ApiService.m
//  TableViewPractice
//
//  Created by woohyunlee on 8/17/20.
//  Copyright © 2020 woohyunlee. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ApiService.h"
#import "Album.h"

@implementation ApiService

- (instancetype)initWithUrl:(NSURL *)url {
    self = [super init];
    if (!self) return nil;
    _url = url;
    return self;
}

- (void)fetchAlbumData:(void (^)(NSMutableArray *))completion {
    [[NSURLSession.sharedSession dataTaskWithURL:_url completionHandler:^(NSData * _Nullable data, NSURLResponse * _Nullable response, NSError * _Nullable error) {
        NSError *err;
        
        
        
        NSDictionary *parsedObject = [NSJSONSerialization JSONObjectWithData:data options:NSJSONReadingAllowFragments error:&err];
        if (error){
            NSLog(@"failed with error");
            return;
        }
        
        NSDictionary *feed = [parsedObject valueForKey:@"feed"];
        NSArray *results = [feed valueForKey:@"results"];
        NSMutableArray *albumArray = [[NSMutableArray alloc]init];
        
        for (NSDictionary *result in results){
            NSString *artistName = [result valueForKey:@"artistName"];
            NSString *idNumber = [result valueForKey:@"id"];
            Album *album = [Album new];
            album.artistName = artistName;
            album.idNumber = idNumber;
            
            [albumArray addObject:album];
            
        }
        
        completion(albumArray);
        
    }] resume];
}

@end
