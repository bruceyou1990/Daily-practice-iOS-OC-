//   
//   messageController.m
//   test1
//   Created  by monkey on 2023/3/9
//   
//   
   

#import "messageController.h"

@interface messageController () <UITableViewDelegate,UITableViewDataSource>

@end

@implementation messageController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.navigationItem.title = NSStringFromClass([self class]);
    self.view.backgroundColor = [UIColor blueColor];
    //创建UITableView
    UITableView *tableView = [[UITableView alloc] initWithFrame:self.view.bounds style:UITableViewStylePlain];

    //设置数据源和代理
    tableView.dataSource = self;
    tableView.delegate = self;

    //注册UITableViewCell
    [tableView registerClass:[UITableViewCell class] forCellReuseIdentifier:@"cell"];

    //将UITableView添加到UIViewController中
    [self.view addSubview:tableView];

    
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 10;
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    return 2;
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    static NSString *cellIdentifier = @"Cell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellIdentifier];
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:cellIdentifier];
    }
    cell.textLabel.text = [NSString stringWithFormat:@"Cell %ld", (long)indexPath.row];
    cell.contentView.backgroundColor = [UIColor systemPinkColor];
    return cell;
}
//跳转到消息聊天页面

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    UIViewController *chatController = [[UIViewController alloc] init];
    chatController.view.backgroundColor = [UIColor yellowColor];
    [self.navigationController pushViewController:chatController animated:YES];
    
}
/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
