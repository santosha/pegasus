// DO NOT EDIT. This file is machine-generated and constantly overwritten.
// Make changes to MORooms.h instead.

#import <CoreData/CoreData.h>



@class MOHotels;

@class MOAllocations;

@class MORoomTypes;


@interface _MORooms : NSManagedObject {}
+ (id)newInManagedObjectContext:(NSManagedObjectContext*)moc_;



- (NSString*)name;
- (void)setName:(NSString*)value_;
#if defined(MAC_OS_X_VERSION_10_5) && MAC_OS_X_VERSION_MAX_ALLOWED >= MAC_OS_X_VERSION_10_5
@property (retain) NSString *name;
#endif

//- (BOOL)validateName:(id*)value_ error:(NSError**)error_;




- (MOHotels*)hotel;
- (void)setHotel:(MOHotels*)value_;
//- (BOOL)validateHotel:(id*)value_ error:(NSError**)error_;
#if defined(MAC_OS_X_VERSION_10_5) && MAC_OS_X_VERSION_MAX_ALLOWED >= MAC_OS_X_VERSION_10_5
@property (retain) MOHotels* hotel;
#endif



- (NSSet*)allocations;
- (void)addAllocations:(NSSet*)value_;
- (void)removeAllocations:(NSSet*)value_;
- (void)addAllocationsObject:(MOAllocations*)value_;
- (void)removeAllocationsObject:(MOAllocations*)value_;
- (NSMutableSet*)allocationsSet;
#if defined(MAC_OS_X_VERSION_10_5) && MAC_OS_X_VERSION_MAX_ALLOWED >= MAC_OS_X_VERSION_10_5
@property (retain) NSSet* allocations;
#endif



- (MORoomTypes*)type;
- (void)setType:(MORoomTypes*)value_;
//- (BOOL)validateType:(id*)value_ error:(NSError**)error_;
#if defined(MAC_OS_X_VERSION_10_5) && MAC_OS_X_VERSION_MAX_ALLOWED >= MAC_OS_X_VERSION_10_5
@property (retain) MORoomTypes* type;
#endif


@end
