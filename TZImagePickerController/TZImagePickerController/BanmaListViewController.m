//
//  BanmaListViewController.m
//  TZImagePickerController
//
//  Created by 123 on 2020/3/16.
//  Copyright © 2020 谭真. All rights reserved.
//

#import "BanmaListViewController.h"
#import "TZPhotoPickerController.h"
#import "PhotoView.h"



@interface UISegmentedControl (Common)
- (void)ensureiOS12Style;
@end
@implementation UISegmentedControl (Common)
- (void)ensureiOS12Style {
    // UISegmentedControl has changed in iOS 13 and setting the tint
    // color now has no effect.
    if (@available(iOS 13, *)) {
        UIColor *tintColor = [self tintColor];
        UIImage *tintColorImage = [self imageWithColor:tintColor];
        [self setBackgroundImage:[self imageWithColor:self.backgroundColor ? self.backgroundColor : [UIColor clearColor]] forState:UIControlStateNormal barMetrics:UIBarMetricsDefault];
        [self setBackgroundImage:tintColorImage forState:UIControlStateSelected barMetrics:UIBarMetricsDefault];
        [self setBackgroundImage:[self imageWithColor:[tintColor colorWithAlphaComponent:0.2]] forState:UIControlStateHighlighted barMetrics:UIBarMetricsDefault];
        [self setBackgroundImage:tintColorImage forState:UIControlStateSelected|UIControlStateSelected barMetrics:UIBarMetricsDefault];
        
        [self setTitleTextAttributes:@{NSForegroundColorAttributeName: tintColor, NSFontAttributeName: [UIFont fontWithName:@"PingFangSC-Medium" size:15]} forState:UIControlStateNormal];
          [self setTitleTextAttributes:@{NSForegroundColorAttributeName: [UIColor whiteColor]} forState:UIControlStateSelected];
        //NSForegroundColorAttributeName: [UIColor whiteColor]
        
        [self setDividerImage:tintColorImage forLeftSegmentState:UIControlStateNormal rightSegmentState:UIControlStateNormal barMetrics:UIBarMetricsDefault];
        self.layer.borderWidth = 1;
        self.layer.borderColor = [tintColor CGColor];
        self.selectedSegmentTintColor = tintColor;
    }
    
}

- (UIImage *)imageWithColor: (UIColor *)color {
    CGRect rect = CGRectMake(0.0f, 0.0f, 1.0f, 1.0f);
    UIGraphicsBeginImageContext(rect.size);
    CGContextRef context = UIGraphicsGetCurrentContext();
    CGContextSetFillColorWithColor(context, [color CGColor]);
    CGContextFillRect(context, rect);
    UIImage *theImage = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    return theImage;
}
@end

@interface BanmaListViewController ()

@property (nonatomic, strong) UIScrollView *bgScrollView;

@end

@implementation BanmaListViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor redColor];
    self.navigationItem.title = @"123";
    UISegmentedControl *control = [[UISegmentedControl alloc] initWithItems:@[@"图片", @"视频"]];
    control.frame = CGRectMake(0, 0, 110, 28);
    control.tintColor = [UIColor colorWithRed:254.0 / 255.0 green:115.0 / 255.0 blue:138.0 / 255.0 alpha:1];
    control.selectedSegmentIndex = 0;
    [control ensureiOS12Style];
    NSDictionary *normalDic = @{NSFontAttributeName: [UIFont fontWithName:@"PingFangSC-Medium" size:15],NSForegroundColorAttributeName:   [UIColor colorWithRed:254.0 / 255.0 green:115 / 255.0 blue:138.0 / 255.0 alpha:1]};
    NSDictionary *seletedDic = @{NSFontAttributeName: [UIFont fontWithName:@"PingFangSC-Medium" size:15],NSForegroundColorAttributeName: UIColor.whiteColor};
    [control setTitleTextAttributes:normalDic forState:normal];
    [control setTitleTextAttributes:seletedDic forState:bold];
    self.navigationItem.titleView = control;
    _bgScrollView = [[UIScrollView alloc] init];
    _bgScrollView.backgroundColor = [UIColor yellowColor];
    _bgScrollView.frame = self.view.bounds;
    _bgScrollView.contentSize = CGSizeMake(self.view.bounds.size.width * 2, 0);
    _bgScrollView.pagingEnabled = YES;
    _bgScrollView.showsHorizontalScrollIndicator = NO;
    _bgScrollView.showsVerticalScrollIndicator = NO;
    _bgScrollView.delegate = self;
  
    PhotoView *redView = [[PhotoView alloc] init];
    redView.backgroundColor = [UIColor blueColor];
    [_bgScrollView addSubview:redView];
    redView.frame = _bgScrollView.bounds;
    
    
    
    UIView *blueView = [[UIView alloc] init];
    blueView.backgroundColor = [UIColor yellowColor];
    blueView.frame = CGRectMake(self.bgScrollView.frame.size.width, 0, self.bgScrollView.bounds.size.width, self.bgScrollView.bounds.size.height);
    [_bgScrollView addSubview:blueView];
    
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
