//
//  NSObject+AlbumDataController.m
//  Project2-SpinCity
//
//  Created by Sabir Myrzaev on 05.01.2022.
//

#import "AlbumDataController.h"
#import "Album.h"

// добавляем закрытый интерфейс и организуем хранение данных
@interface AlbumDataController ()
@property (nonatomic, readonly) NSMutableArray *albumList;

// закрытый метод который исп. для заполнения массива данными по умолчанию
- (void) initializeDefaultAlbums;
@end

@implementation AlbumDataController

- (id) init {
    self = [super init];
    
    if (self) {
        // создания массива для хранения данных
        _albumList = [[NSMutableArray alloc] init];
        [self initializeDefaultAlbums];
        return self;
    }
    return nil;
}

// для создания нескольких альбомов по умолчанию
- (void) initializeDefaultAlbums {
    // заполние таблицы через init
    [self addAlbumWithTitle:@"Infected Splinter" artist:@"Boppin' Beavers" summary:@"Awesome album with a hint of Oak." price:@"9.99" locationInStore:@"Section F"];
    [self addAlbumWithTitle:@"Hairy Eyeball" artist:@"Cyclops" summary:@"A 20/20 retrospective on Classic Rock." price:@"14.99" locationInStore:@"Discount Rack"];
    [self addAlbumWithTitle:@"Squish" artist:@"the Bugz" summary:@"Not your average fly by night band." price:@"8.99" locationInStore:@"Section A"];
    [self addAlbumWithTitle:@"Acid Fog" artist:@"Josh and Chuck" summary:@"You should know this stuff." price:@"11.99" locationInStore:@"Section 9 3/4"];
    
    // заполнение таблицы через AlbumArray.plist
    /* NSString *pathToAlbumsPlist = [[NSBundle mainBundle] pathForResource:@"AlbumArray" ofType:@"plist"];
     NSArray *defaultAlbumPlist = [NSArray arrayWithContentsOfFile:pathToAlbumsPlist];
     for (NSDictionary *albumInfo in defaultAlbumPlist) {
     [self addAlbumWithTitle:albumInfo[@"title"] artist:albumInfo[@"artist"] summary:albumInfo[@"summary"] price:albumInfo[@"price"] locationInStore:albumInfo[@"locationInStore"]];
     }*/
}

// для создания нового объекта и вкл его в массив
- (void) addAlbumWithTitle:(NSString *)title artist:(NSString *)artist summary:(NSString *)summary price:(NSString *)price locationInStore:(NSString *)locationInStore {
    Album *newAlbum = [[Album alloc] initWithTitle: title artist:artist summary:summary price:price locationInStore: locationInStore];
    [self.albumList addObject:newAlbum];
}
// реализация методов для использования массива с данными
- (NSUInteger)albumCount {
    return [self.albumList count];
}

- (Album *)albumAtIndex:(NSUInteger)index {
    return [self.albumList objectAtIndex: index];
}

@end
