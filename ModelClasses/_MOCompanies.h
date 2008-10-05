// DO NOT EDIT. This file is machine-generated and constantly overwritten.
// Make changes to MOCompanies.h instead.

#import <CoreData/CoreData.h>



@class MOHotels;


@interface _MOCompanies : NSManagedObject {}
+ (id)newInManagedObjectContext:(NSManagedObjectContext*)moc_;



- (NSString*)name;
- (void)setName:(NSString*)value_;
#if defined(MAC_OS_X_VERSION_10_5) && MAC_OS_X_VERSION_MAX_ALLOWED >= MAC_OS_X_VERSION_10_5
@property (retain) NSString *name;
#endif

//- (BOOL)validateName:(id*)value_ error:(NSError**)error_;




- (NSSet*)hotels;
- (void)addHotels:(NSSet*)value_;
- (void)removeHotels:(NSSet*)value_;
- (void)addHotelsObject:(MOHotels*)value_;
- (void)removeHotelsObject:(MOHotels*)value_;
- (NSMutableSet*)hotelsSet;
#if defined(MAC_OS_X_VERSION_10_5) && MAC_OS_X_VERSION_MAX_ALLOWED >= MAC_OS_X_VERSION_10_5
@property (retain) NSSet* hotels;
#endif


@end
