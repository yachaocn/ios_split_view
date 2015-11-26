//
//  ViewController.m
//  分屏app1
//
//  Created by yachaocn on 15/11/26.
//  Copyright © 2015年 NavchinaMacBook. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()<UITraitEnvironment,UIContentContainer>

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
//    1.你的app必须使用autolayout，sise class布局，
//    2.你必须有一个LaunchScreen.storyboard
//    3.info.plist中UIRequiresFullScreen键必须为NO,(此键是自己添加的，意思为请求全屏权限)，用xcode7创建的项目默认是不包含此键的，也就是说xcode7创建的项目默认是支持分屏的。
//    4.谢谢
    
    // Do any additional setup after loading the view, typically from a nib.
}
//以下方法不必实现
#pragma mark -  UITraitEnvironment protocl
- (void)traitCollectionDidChange:(nullable UITraitCollection *)previousTraitCollection
{
    
}
#pragma mark - UIContentContainer protocl
- (void)preferredContentSizeDidChangeForChildContentContainer:(id <UIContentContainer>)container NS_AVAILABLE_IOS(8_0)
{
    
}

/*
 Intended as a bridge for a view controller that does not use auto layout presenting a child that does use auto layout.
 
 If the child's view is using auto layout and the -systemLayoutSizeFittingSize: of the view
 changes, -systemLayoutFittingSizeDidChangeForChildContentContainer: will be sent to the view controller's parent.
 */
- (void)systemLayoutFittingSizeDidChangeForChildContentContainer:(id <UIContentContainer>)container
{
    
}
/*
 When the content container forwards viewWillTransitionToSize:withTransitionCoordinator: to its children, it will call this method to determine what size to send them.
 
 If the returned size is the same as the child container's current size, viewWillTransitionToSize:withTransitionCoordinator: will not be called.
 */
//- (CGSize)sizeForChildContentContainer:(id <UIContentContainer>)container withParentContainerSize:(CGSize)parentSize NS_AVAILABLE_IOS(8_0)
//{
//    
//}

/*
 This method is called when the view controller's view's size is changed by its parent (i.e. for the root view controller when its window rotates or is resized).
 
 If you override this method, you should either call super to propagate the change to children or manually forward the change to children.
 */
- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id <UIViewControllerTransitionCoordinator>)coordinator NS_AVAILABLE_IOS(8_0)
{
    
}

/*
 This method is called when the view controller's trait collection is changed by its parent.
 
 If you override this method, you should either call super to propagate the change to children or manually forward the change to children.
 */
- (void)willTransitionToTraitCollection:(UITraitCollection *)newCollection withTransitionCoordinator:(id <UIViewControllerTransitionCoordinator>)coordinator NS_AVAILABLE_IOS(8_0)
{
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
