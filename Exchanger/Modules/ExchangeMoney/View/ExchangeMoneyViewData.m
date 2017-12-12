#import "ExchangeMoneyViewData.h"
#import "User.h"
#import "ExchangeRatesData.h"
#import "Currency.h"

@implementation ExchangeMoneyViewData

- (instancetype)initWithSourceData:(CarouselData *)sourceData
                        targetData:(CarouselData *)targetData
{
    self = [super init];
    if (self) {
        _sourceData = sourceData;
        _targetData = targetData;
    }
    return self;
}

- (instancetype)initWithUser:(User *)user
                 sourceRates:(ExchangeRatesData *)sourceRates
                 targetRates:(ExchangeRatesData *)targetRates
{
    self = [super init];
    if (self) {
        
    }
    return self;
}

@end
