#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface TextFieldConfiguration : NSObject
@property (nonatomic, strong) UIFont *font;
@property (nonatomic, strong) UIColor *textColor;
@property (nonatomic, assign) NSTextAlignment textAlignment;
@property (nonatomic, assign) UIKeyboardType keyboardType;
@end