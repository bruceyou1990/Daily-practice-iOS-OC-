//   
//   SceneDelegate.m
//   test1
//   Created  by monkey on 2023/3/9
//   
//   
   

#import "SceneDelegate.h"
#import "messageController.h"
@interface SceneDelegate ()

@end

@implementation SceneDelegate


- (void)scene:(UIScene *)scene willConnectToSession:(UISceneSession *)session options:(UISceneConnectionOptions *)connectionOptions {
    [self creatBaseTabBarController];

}

///creatBaseTabBarController 这个是整个APP的界面基础 启动实现显示的TabBar [底部几个菜单 和对应的页面]
-(void)creatBaseTabBarController{
    //创建四个菜单项
    messageController *messageVC = [[messageController alloc] init];
    messageVC.tabBarItem = [[UITabBarItem alloc] initWithTitle:@"消息" image:nil tag:0];

    UIViewController *contactsController = [[UIViewController alloc] init];

    contactsController.tabBarItem = [[UITabBarItem alloc] initWithTitle:@"通讯录" image:nil tag:1];

    UIViewController *discoverController = [[UIViewController alloc] init];

    discoverController.tabBarItem = [[UITabBarItem alloc] initWithTitle:@"发现" image:nil tag:2];

    UIViewController *meController = [[UIViewController alloc] init];
    meController.tabBarItem = [[UITabBarItem alloc] initWithTitle:@"我" image:nil tag:3];

    //创建UITabBarController
    UITabBarController *tabBarController = [[UITabBarController alloc] init];
    //向UITabBarController添加菜单项
    tabBarController.viewControllers = @[messageVC, contactsController, discoverController, meController];

    //将UITabBarController设置为根视图控制器
    self.window.rootViewController = tabBarController;
    [self.window makeKeyAndVisible];
}

- (void)sceneDidDisconnect:(UIScene *)scene {
    // Called as the scene is being released by the system.
    // This occurs shortly after the scene enters the background, or when its session is discarded.
    // Release any resources associated with this scene that can be re-created the next time the scene connects.
    // The scene may re-connect later, as its session was not necessarily discarded (see `application:didDiscardSceneSessions` instead).
}


- (void)sceneDidBecomeActive:(UIScene *)scene {
    // Called when the scene has moved from an inactive state to an active state.
    // Use this method to restart any tasks that were paused (or not yet started) when the scene was inactive.
}


- (void)sceneWillResignActive:(UIScene *)scene {
    // Called when the scene will move from an active state to an inactive state.
    // This may occur due to temporary interruptions (ex. an incoming phone call).
}


- (void)sceneWillEnterForeground:(UIScene *)scene {
    // Called as the scene transitions from the background to the foreground.
    // Use this method to undo the changes made on entering the background.
}


- (void)sceneDidEnterBackground:(UIScene *)scene {
    // Called as the scene transitions from the foreground to the background.
    // Use this method to save data, release shared resources, and store enough scene-specific state information
    // to restore the scene back to its current state.
}


@end
