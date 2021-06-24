//
//  XYViewController.m
//  XYToolKit
//
//  Created by irobbin1024 on 04/11/2019.
//  Copyright (c) 2021 Hangzhou Xiaoying Innovation Technology Co., Ltd. All rights reserved.
//

#import "XYViewController.h"
#import <XYToolKit/XYToolKit.h>
#import "XYPerson.h"

@interface XYViewController ()

@end

@implementation XYViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	
    // listener
    XYPerson *person = [[XYPerson alloc] init];
    person.age = 18;
    XYKVOListener *lis = [XYKVOListener listenerWithObserver:self];
    [lis observe:person keyPath:@"age" block:^(id  _Nonnull newValue) {
        NSLog(@"newValue: %@", newValue);
    }];
    
    // photo library
    NSString *pngPath = [[NSBundle mainBundle] pathForResource:@"halo_favicon" ofType:@"png"];
    [XYPhotoLibraryHelper xy_saveImage:[NSURL URLWithString:pngPath]
                         toCustomAlbum:@"XYToolKit"
                       completionBlock:^(NSURL * _Nullable assetURL, NSError * _Nullable error) {
        NSLog(@"assetURL: %@ error: %@", assetURL, error.localizedDescription);
    }];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
