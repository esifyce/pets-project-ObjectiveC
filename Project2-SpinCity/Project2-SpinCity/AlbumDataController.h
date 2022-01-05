//
//  NSObject+AlbumDataController.h
//  Project2-SpinCity
//
//  Created by Sabir Myrzaev on 05.01.2022.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@class Album;

@interface AlbumDataController: NSObject

- (NSUInteger)albumCount;

- (Album *)albumAtIndex: (NSUInteger) index;

- (void)addAlbumWithTitle: (NSString *)title artist: (NSString *)artist summary:(NSString *)summary price:(NSString *)price locationInStore:(NSString *)locationInStore;

@end

NS_ASSUME_NONNULL_END
