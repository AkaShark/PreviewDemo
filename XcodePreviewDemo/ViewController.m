//
//  ViewController.m
//  XcodePreviewDemo
//
//  Created by Sharker on 6/28/23.
//

#import "ViewController.h"
#import "AppDelegate.h"
@interface ViewController ()
{
    BOOL flag;
    CGSize buttonSize;
}
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = UIColor.redColor;
    UIButton *button = [UIButton new];
    [button setTitle:@"WWDC23" forState:UIControlStateNormal];
    [self.view addSubview:button];
    CGSize size = CGSizeMake(100, 100);
    buttonSize = size;
    button.frame = CGRectMake((self.view.frame.size.width - size.width)/2, (self.view.frame.size.height - size.height) / 2, size.width, size.height);
    [button addTarget:self action:@selector(click) forControlEvents:UIControlEventTouchUpInside];
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(1.0 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
        [UIView animateWithDuration:2.0 animations:^{
            button.frame = CGRectMake((self.view.frame.size.width - size.width * 2)/2, (self.view.frame.size.height - size.height * 2) / 2, size.width * 2, size.height * 2);
        }];
    });
    
}

- (void)click {
    UIButton *button = [UIButton new];
    CGSize size = CGSizeMake(100, 100);
    button.frame = CGRectMake((self.view.frame.size.width - size.width)/2, (self.view.frame.size.height - size.height) / 2, size.width, size.height);
    button.backgroundColor = UIColor.yellowColor;
    [self.view addSubview:button];
    [button addTarget:self action:@selector(cleanSubviews) forControlEvents:UIControlEventTouchUpInside];
    
}

- (void)cleanSubviews {
    for (UIView *v in self.view.subviews) {
        [v removeFromSuperview];
    }
}

- (void)changeColor {
    self.view.backgroundColor = flag? UIColor.cyanColor: UIColor.redColor;
    flag = !flag;
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    self.view.backgroundColor = flag? UIColor.cyanColor: UIColor.redColor;
    flag = !flag;
}



@end
