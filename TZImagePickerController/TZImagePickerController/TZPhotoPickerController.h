//
//  TZPhotoPickerController.h
//  TZImagePickerController
//
//  Created by 谭真 on 15/12/24.
//  Copyright © 2015年 谭真. All rights reserved.
//

#import <UIKit/UIKit.h>

@class TZAlbumModel;
@interface TZPhotoPickerController : UIViewController

@property (nonatomic, assign) BOOL isFirstAppear;
@property (nonatomic, assign) NSInteger columnNumber;
@property (nonatomic, strong) TZAlbumModel *model;
///是否需要裁剪
@property (assign, nonatomic) BOOL shouldPick;
///是正方形还是长方形
@property (assign, nonatomic) BOOL isSquare;
@end


@interface TZCollectionView : UICollectionView

@end
