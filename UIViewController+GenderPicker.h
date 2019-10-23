





#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

typedef NS_ENUM(NSInteger,SDGenderType){
    
    SDGenderTypeMale = 0,       //男
    SDGenderTypeFemale,         //女
};

@interface UIViewController (GenderPicker)

/**
 选择性别
 @param completion 选择完成回调
 */
-(void)selectGenderByCompletion:(void(^)(SDGenderType genderType))completion;

@end

NS_ASSUME_NONNULL_END
