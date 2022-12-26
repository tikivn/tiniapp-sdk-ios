//
//  RNCTiniRootView.h
//  react-native-tini-worker
//
//  Created by Han Han on 8/24/22.
//

#import <UIKit/UIKit.h>
#import <React/RCTRootView.h>
NS_ASSUME_NONNULL_BEGIN

@interface RNCTiniRootView : UIView
@property (nonatomic, strong) NSString  * _Nullable appId;
- (id)initWithRootView:(RCTRootView *)rnRootView;
- (void)show;
- (void)hide;
@end

NS_ASSUME_NONNULL_END
