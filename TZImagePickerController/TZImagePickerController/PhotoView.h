//
//  PhotoView.h
//  TZImagePickerController
//
//  Created by 123 on 2020/3/16.
//  Copyright © 2020 谭真. All rights reserved.
//

#import "TZPhotoPickerController.h"

NS_ASSUME_NONNULL_BEGIN

@interface PhotoView : UIView {
     BOOL _showTakePhotoBtn;
}

@property (strong, nonatomic) UICollectionViewFlowLayout *layout;
@property (nonatomic, strong) TZCollectionView *collectionView;
@property (nonatomic, strong) TZAlbumModel *model;
@property (nonatomic, assign) NSInteger columnNumber;



@end

NS_ASSUME_NONNULL_END
