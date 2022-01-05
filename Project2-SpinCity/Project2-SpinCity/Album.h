//
//  Album.h
//  Project2-SpinCity
//
//  Created by Sabir Myrzaev on 05.01.2022.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface Album : UIView

@property (nonatomic, copy) NSString *title;
@property (nonatomic, copy) NSString *artist;
@property (nonatomic, copy) NSString *summary;
@property (nonatomic, copy) NSString *locationInStore;
@property (nonatomic, copy) NSString *price;

-(id)initWithTitle: (NSString *)title artist:(NSString *)artist summary:(NSString *)summary price:(NSString *)price locationInStore:(NSString *)locationInStore;

@end

NS_ASSUME_NONNULL_END
