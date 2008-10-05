// DO NOT EDIT. This file is machine-generated and constantly overwritten.
// Make changes to MOOrders.h instead.

#import <CoreData/CoreData.h>



@class MOHotels;

@class MOAllocations;

@class MOCustomers;


@interface _MOOrders : NSManagedObject {}
+ (id)newInManagedObjectContext:(NSManagedObjectContext*)moc_;



- (NSString*)code;
- (void)setCode:(NSString*)value_;
#if defined(MAC_OS_X_VERSION_10_5) && MAC_OS_X_VERSION_MAX_ALLOWED >= MAC_OS_X_VERSION_10_5
@property (retain) NSString *code;
#endif

//- (BOOL)validateCode:(id*)value_ error:(NSError**)error_;



- (NSDate*)date;
- (void)setDate:(NSDate*)value_;
#if defined(MAC_OS_X_VERSION_10_5) && MAC_OS_X_VERSION_MAX_ALLOWED >= MAC_OS_X_VERSION_10_5
@property (retain) NSDate *date;
#endif

//- (BOOL)validateDate:(id*)value_ error:(NSError**)error_;



- (NSString*)briefDescription;
- (void)setBriefDescription:(NSString*)value_;
#if defined(MAC_OS_X_VERSION_10_5) && MAC_OS_X_VERSION_MAX_ALLOWED >= MAC_OS_X_VERSION_10_5
@property (retain) NSString *briefDescription;
#endif

//- (BOOL)validateBriefDescription:(id*)value_ error:(NSError**)error_;




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



- (MOCustomers*)customers;
- (void)setCustomers:(MOCustomers*)value_;
//- (BOOL)validateCustomers:(id*)value_ error:(NSError**)error_;
#if defined(MAC_OS_X_VERSION_10_5) && MAC_OS_X_VERSION_MAX_ALLOWED >= MAC_OS_X_VERSION_10_5
@property (retain) MOCustomers* customers;
#endif


@end
