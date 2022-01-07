//
//  Show.h
//  Gilligizer
//
// Created by Sabir Myrzaev on 06.01.2022.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>


@interface Show : NSManagedObject

@property (nonatomic, retain) NSString * title;
@property (nonatomic, retain) NSString * desc;
@property (nonatomic, retain) NSDate * showTime;
@property (nonatomic, retain) NSNumber * episodeID;
@property (nonatomic, retain) NSNumber * firstRun;

@end
