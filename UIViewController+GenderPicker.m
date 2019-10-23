





#import "UIViewController+GenderPicker.h"

@implementation UIViewController (GenderPicker)

-(void)selectGenderByCompletion:(void(^)(SDGenderType genderType))completion{
    
    UIAlertController *alertVC = [UIAlertController alertControllerWithTitle:nil message:nil preferredStyle:UIAlertControllerStyleActionSheet];
    UIAlertAction *manAction = [UIAlertAction actionWithTitle:@"男" style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
        NSLog(@"男");
        if (completion) {
            completion(SDGenderTypeMale);
        }
        
    }];
    UIAlertAction *womanAction = [UIAlertAction actionWithTitle:@"女" style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
        NSLog(@"女");
        if (completion) {
            completion(SDGenderTypeFemale);
        }
    }];
    UIAlertAction *cancelAction = [UIAlertAction actionWithTitle:@"取消" style:UIAlertActionStyleCancel handler:^(UIAlertAction * _Nonnull action) {
        
    }];
    [alertVC addAction:manAction];
    [alertVC addAction:womanAction];
    [alertVC addAction:cancelAction];
    [self presentViewController:alertVC animated:YES completion:nil];
    
}

@end
