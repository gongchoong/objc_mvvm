//
//  ViewController.m
//  TableViewPractice
//
//  Created by woohyunlee on 8/17/20.
//  Copyright © 2020 woohyunlee. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property (strong, nonatomic) UITableView *tableView;
@property (strong, nonatomic, readonly) ViewModel *viewModel;

@end

typedef void(^complete)(NSString *);

@implementation ViewController

- (instancetype)initWithViewModel:(ViewModel *)viewModel {
    self = [super init];
    if (!self) return nil;
    _viewModel = viewModel;
    return self;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    [self setupTableView];
    [self fetch];
}

- (void)fetch {
    [_viewModel fetch];
}

-(void)setupTableView {
    _tableView = [[UITableView alloc] init];
    _tableView.translatesAutoresizingMaskIntoConstraints = NO;
    [[self view] addSubview:_tableView];
    _tableView.delegate = self;
    _tableView.dataSource = self;
    [_tableView registerClass:[UITableViewCell self] forCellReuseIdentifier:@"cellId"];
    
    [NSLayoutConstraint activateConstraints:@[
        [_tableView.topAnchor constraintEqualToAnchor: self.view.safeAreaLayoutGuide.topAnchor],
        [_tableView.leftAnchor constraintEqualToAnchor:self.view.leftAnchor],
        [_tableView.rightAnchor constraintEqualToAnchor:self.view.rightAnchor],
        [_tableView.bottomAnchor constraintEqualToAnchor:self.view.bottomAnchor]
    ]];
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 3;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cellId" forIndexPath:indexPath];
    cell.textLabel.text = [NSString stringWithFormat:@"%ld", indexPath.row];
    return cell;
    
}

@end
