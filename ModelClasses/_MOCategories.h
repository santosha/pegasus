// DO NOT EDIT. This file is machine-generated and constantly overwritten.
// Make changes to MOCategories.h instead.

#import <CoreData/CoreData.h>



@class MOCustomers;


@interface _MOCategories : NSManagedObject {}
+ (id)newInManagedObjectContext:(NSManagedObjectContext*)moc_;



- (NSString*)name;
- (void)setName:(NSString*)value_;
#if defined(MAC_OS_X_VERSION_10_5) && MAC_OS_X_VERSION_MAX_ALLOWED >= MAC_OS_X_VERSION_10_5
@property (retain) NSString *name;
#endif

//- (BOOL)validateName:(id*)value_ error:(NSError**)error_;



- (NSNumber*)type;
- (void)setType:(NSNumber*)value_;
#if defined(MAC_OS_X_VERSION_10_5) && MAC_OS_X_VERSION_MAX_ALLOWED >= MAC_OS_X_VERSION_10_5
@property (retain) NSNumber *type;
#endif

- (short)typeValue;
- (void)setTypeValue:(short)value_;

//- (BOOL)validateType:(id*)value_ error:(NSError**)error_;




- (NSSet*)customers;
- (void)addCustomers:(NSSet*)value_;
- (void)removeCustomers:(NSSet*)value_;
- (void)addCustomersObject:(MOCustomers*)value_;
- (void)removeCustomersObject:(MOCustomers*)value_;
- (NSMutableSet*)customersSet;
#if defined(MAC_OS_X_VERSION_10_5) && MAC_OS_X_VERSION_MAX_ALLOWED >= MAC_OS_X_VERSION_10_5
@property (retain) NSSet* customers;
#endif


@end
