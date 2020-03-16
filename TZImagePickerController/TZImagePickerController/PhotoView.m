//
//  PhotoView.m
//  TZImagePickerController
//
//  Created by 123 on 2020/3/16.
//  Copyright © 2020 谭真. All rights reserved.
//

#import "PhotoView.h"
#import "UIView+Layout.h"
#import "TZAssetCell.h"

@implementation PhotoView

- (instancetype)initWithFrame:(CGRect)frame {
    self = [super initWithFrame:frame];
    if (self) {
        
    }
    return self;
}

- (void)setupUI {
    CGFloat itemMargin = 5;
    _layout = [[UICollectionViewFlowLayout alloc] init];
    _collectionView = [[TZCollectionView alloc] initWithFrame:CGRectZero collectionViewLayout:_layout];
    _collectionView.backgroundColor = [UIColor whiteColor];
    _collectionView.dataSource = self;
    _collectionView.delegate = self;
    _collectionView.alwaysBounceHorizontal = NO;
    _collectionView.contentInset = UIEdgeInsetsMake(itemMargin, itemMargin, itemMargin, itemMargin);
    _collectionView.bounds = self.bounds;
//    if (_showTakePhotoBtn) {
//           _collectionView.contentSize = CGSizeMake(self.tz_width, ((_model.count + self.columnNumber) / self.columnNumber) * self.view.tz_width);
//       } else {
//           _collectionView.contentSize = CGSizeMake(self.view.tz_width, ((_model.count + self.columnNumber - 1) / self.columnNumber) * self.view.tz_width);
//           if (_models.count == 0) {
//               _noDataLabel = [UILabel new];
//               _noDataLabel.textAlignment = NSTextAlignmentCenter;
//               _noDataLabel.text = [NSBundle tz_localizedStringForKey:@"No Photos or Videos"];
//               CGFloat rgb = 153 / 256.0;
//               _noDataLabel.textColor = [UIColor colorWithRed:rgb green:rgb blue:rgb alpha:1.0];
//               _noDataLabel.font = [UIFont boldSystemFontOfSize:20];
//               [_collectionView addSubview:_noDataLabel];
//           }
//       }

    
}
@end
