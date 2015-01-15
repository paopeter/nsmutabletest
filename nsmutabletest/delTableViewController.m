//
//  delTableViewController.m
//  nsmutabletest
//
//  Created by pao on 2015/1/15.
//  Copyright (c) 2015年 carolpao. All rights reserved.
//

#import "delTableViewController.h"

@interface delTableViewController ()

@end

@implementation delTableViewController{
   NSMutableArray *tableData;
}

- (id)initWithStyle:(UITableViewStyle)style
{
    self = [super initWithStyle:style];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    tableData = [NSMutableArray arrayWithObjects:@"里龍山",
                 @"內茅埔山走十甲賞梅", @"無耳茶壺山", @"順登燦光寮山", @"金瓜石", @"馬那邦山", @"望美山走望高寮走瓊山", @"白姑大山", @"波津加", @"郡大山", @"太平32彎起登至龍興宮回程由龜仔頭下華山", @"觀音山連峰", @"勞吾勞吾古道", @"台演山", @"巴蘭山", @"兒玉走東水山", nil];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 10;
}

- (UITableViewCell *) tableView:(UITableView *)tableView
          cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    static NSString  *CellIdentifier = @"cell1";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    if (cell == nil) {
        cell = [[UITableViewCell alloc]
                initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:CellIdentifier];
    }

    
        cell.textLabel.text = tableData[indexPath.row];

 
    
    return cell;
}

//数组中除实际的数据
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Remove the row from data model
    [tableData removeObjectAtIndex:indexPath.row];
    //再次加载表视图,以便反映出表数据的变化;因此,一旦底局的数据初除了,我们需要调用 reloadData 方法,要求表视图刣 新。如下是更新乊后的代码:
    [tableView reloadData];
}

@end
