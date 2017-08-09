#import "ExchangeMoneyViewController.h"
#import "ExchangeMoneyView.h"

@class KeyboardData;

@interface ExchangeMoneyViewController ()
@property (nonatomic, strong) ExchangeMoneyView* exchangeMoneyView;
@end

@implementation ExchangeMoneyViewController

- (instancetype)init
{
    self = [super init];
    if (self) {
        self.exchangeMoneyView = [[ExchangeMoneyView alloc] init];
    }
    
    return self;
}

- (void)loadView {
    self.view = self.exchangeMoneyView;
}

// MARK: - ExchangeMoneyViewInput

- (void)updateKeyboardData:(KeyboardData *)keyboardData {
    [self.exchangeMoneyView updateKeyboardData:keyboardData];
}

- (void)setSourceCurrencyViewData:(NSArray<ExchangeMoneyCurrencyViewData *> *)viewData {
    [self.exchangeMoneyView setSourceCurrencyViewData:viewData];
}

- (void)setTargetCurrencyViewData:(NSArray<ExchangeMoneyCurrencyViewData *> *)viewData {
    [self.exchangeMoneyView setTargetCurrencyViewData:viewData];
}

- (void)startActivity {
    [self.exchangeMoneyView startActivity];
}

- (void)stopActivity {
    [self.exchangeMoneyView stopActivity];
}

@end