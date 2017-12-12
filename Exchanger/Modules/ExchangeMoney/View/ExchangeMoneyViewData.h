#import <Foundation/Foundation.h>

@class CarouselData;
@class User;
@class ExchangeRatesData;

NS_ASSUME_NONNULL_BEGIN

@interface ExchangeMoneyViewData : NSObject

@property (nonatomic, strong, readonly) CarouselData *sourceData;
@property (nonatomic, strong, readonly) CarouselData *targetData;

- (instancetype)initWithSourceData:(CarouselData *)sourceData
                        targetData:(CarouselData *)targetData;

- (instancetype)initWithUser:(User *)user
                 sourceRates:(ExchangeRatesData *)sourceRates
                 targetRates:(ExchangeRatesData *)targetRates;

@end

NS_ASSUME_NONNULL_END
