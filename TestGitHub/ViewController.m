//
//  ViewController.m
//  TestGitHub
//
//  Created by we on 2020/3/4.
//  Copyright © 2020 We. All rights reserved.
//

#import "ViewController.h"
#import "GoodCell.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UITableView *tableView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    //self.view.backgroundColor = [UIColor redColor];
    //self.view.backgroundColor = [UIColor greenColor];
    [self.tableView registerNib:[UINib nibWithNibName:@"GoodCell" bundle:nil] forCellReuseIdentifier:@"GoodCell"];
    self.tableView.rowHeight = 110;
    NSLog(@"为当前版本打tag");
    NSLog(@"ttttttt");
    
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return 3;
}

// Row display. Implementers should *always* try to reuse cells by setting each cell's reuseIdentifier and querying for available reusable cells with dequeueReusableCellWithIdentifier:
// Cell gets various attributes set automatically based on table (separators) and data source (accessory views, editing controls)

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    GoodCell *cell = [tableView dequeueReusableCellWithIdentifier:@"GoodCell" forIndexPath:indexPath];
    return cell;
}

@end
