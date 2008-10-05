// DO NOT EDIT. This file is machine-generated and constantly overwritten.
// Make changes to MORoomTypes.h instead.

#import <CoreData/CoreData.h>
#import "MOServices.h"


@class MORooms;


@interface _MORoomTypes : MOServices {}
+ (id)newInManagedObjectContext:(NSManagedObjectContext*)moc_;




- (NSSet*)rooms;
- (void)addRooms:(NSSet*)value_;
- (void)removeRooms:(NSSet*)value_;
- (void)addRoomsObject:(MORooms*)value_;
- (void)removeRoomsObject:(MORooms*)value_;
- (NSMutableSet*)roomsSet;
#if defined(MAC_OS_X_VERSION_10_5) && MAC_OS_X_VERSION_MAX_ALLOWED >= MAC_OS_X_VERSION_10_5
@property (retain) NSSet* rooms;
#endif


@end
