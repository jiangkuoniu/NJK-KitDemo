//
//  ViewController.m
//  NJK-KitDemo
//
//  Created by njk on 2020/8/21.
//  Copyright © 2020 NJK. All rights reserved.
//

#import "ViewController.h"

#import "NJKKitHeader.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.view.njk_backgroundColor([UIColor whiteColor]);
    
    UIButton * button = [UIButton new];
    button.frame = CGRectMake(100, 100, 100, 100);
    [button setEnlargeEdgeWithTop:20 right:20 bottom:20 left:20];
    [self.view addSubview:button];
    
    UIView * redView = [[UIView alloc] initWithFrame:CGRectMake(150, 200, 100, 100)];
    redView.njk_backgroundColor([UIColor redColor]);
    [redView viewShadowPathWithColor:[UIColor blueColor] shadowPathType:LeShadowPathAround shadowOpacity:10 shadowRadius:100 shadowPathWidth:100];
    [self.view addSubview:redView];
}

@end
