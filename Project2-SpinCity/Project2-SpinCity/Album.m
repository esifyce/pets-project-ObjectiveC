//
//  Album.m
//  Project2-SpinCity
//
//  Created by Sabir Myrzaev on 05.01.2022.
//

#import "Album.h"

@implementation Album

-(id)initWithTitle:(NSString *)title artist:(NSString *)artist summary:(NSString *)summary price:(NSString *)price locationInStore:(NSString *)locationInStore {
    
    self = [super init];
    if (self) {
        _title = title;
        _artist = artist;
        _summary = summary;
        _price = price;
        _locationInStore = locationInStore;
        
        return self;
        
    }
    
    return nil;
}

@end
