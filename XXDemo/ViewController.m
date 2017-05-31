//
//  ViewController.m
//  XXDemo
//
//  Created by yide on 16/7/4.
//
//

#define SCREEN_WIDTH    ([[UIScreen mainScreen] bounds].size.width)

#define SCREEN_HEIGHT   ([[UIScreen mainScreen] bounds].size.height)

#import "ViewController.h"
#import "CircleLHQView.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    NSArray *imgArr = @[[UIImage imageNamed:@"0"],
               [UIImage imageNamed:@"1"],
               [UIImage imageNamed:@"2"],
               [UIImage imageNamed:@"3"],
               [UIImage imageNamed:@"4"]];
    
    
   CircleLHQView *LHQView = [[CircleLHQView alloc] initWithFrame:
               CGRectMake(0, 0,
                          SCREEN_WIDTH, SCREEN_WIDTH) andImage:[UIImage imageNamed:@"quan"]];
    
    LHQView.center = CGPointMake(SCREEN_WIDTH / 2,
                                 SCREEN_HEIGHT / 2 + 5);
    
    
    [LHQView addSubViewWithSubView:imgArr andTitle:nil andSize:CGSizeMake(74, 74) andcenterImage:[UIImage imageNamed:@"s-ma1"]];
    [self.view addSubview:LHQView];
    
    LHQView.clickSomeOne=^(NSString *str){
        NSLog(@"%@被点击了",str);
    };

    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
