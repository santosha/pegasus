// DO NOT EDIT. This file is machine-generated and constantly overwritten.
// Make changes to MOCustomers.h instead.

#import <CoreData/CoreData.h>



@class MOOrders;

@class MOCategories;


@interface _MOCustomers : NSManagedObject {}
+ (id)newInManagedObjectContext:(NSManagedObjectContext*)moc_;



- (NSString*)fax;
- (void)setFax:(NSString*)value_;
#if defined(MAC_OS_X_VERSION_10_5) && MAC_OS_X_VERSION_MAX_ALLOWED >= MAC_OS_X_VERSION_10_5
@property (retain) NSString *fax;
#endif

//- (BOOL)validateFax:(id*)value_ error:(NSError**)error_;



- (NSString*)city;
- (void)setCity:(NSString*)value_;
#if defined(MAC_OS_X_VERSION_10_5) && MAC_OS_X_VERSION_MAX_ALLOWED >= MAC_OS_X_VERSION_10_5
@property (retain) NSString *city;
#endif

//- (BOOL)validateCity:(id*)value_ error:(NSError**)error_;



- (NSString*)code;
- (void)setCode:(NSString*)value_;
#if defined(MAC_OS_X_VERSION_10_5) && MAC_OS_X_VERSION_MAX_ALLOWED >= MAC_OS_X_VERSION_10_5
@property (retain) NSString *code;
#endif

//- (BOOL)validateCode:(id*)value_ error:(NSError**)error_;



- (NSString*)fullName;
- (void)setFullName:(NSString*)value_;
#if defined(MAC_OS_X_VERSION_10_5) && MAC_OS_X_VERSION_MAX_ALLOWED >= MAC_OS_X_VERSION_10_5
@property (retain) NSString *fullName;
#endif

//- (BOOL)validateFullName:(id*)value_ error:(NSError**)error_;



- (NSString*)nation;
- (void)setNation:(NSString*)value_;
#if defined(MAC_OS_X_VERSION_10_5) && MAC_OS_X_VERSION_MAX_ALLOWED >= MAC_OS_X_VERSION_10_5
@property (retain) NSString *nation;
#endif

//- (BOOL)validateNation:(id*)value_ error:(NSError**)error_;



- (NSString*)phone;
- (void)setPhone:(NSString*)value_;
#if defined(MAC_OS_X_VERSION_10_5) && MAC_OS_X_VERSION_MAX_ALLOWED >= MAC_OS_X_VERSION_10_5
@property (retain) NSString *phone;
#endif

//- (BOOL)validatePhone:(id*)value_ error:(NSError**)error_;




- (NSSet*)orders;
- (void)addOrders:(NSSet*)value_;
- (void)removeOrders:(NSSet*)value_;
- (void)addOrdersObject:(MOOrders*)value_;
- (void)removeOrdersObject:(MOOrders*)value_;
- (NSMutableSet*)ordersSet;
#if defined(MAC_OS_X_VERSION_10_5) && MAC_OS_X_VERSION_MAX_ALLOWED >= MAC_OS_X_VERSION_10_5
@property (retain) NSSet* orders;
#endif



- (NSSet*)categories;
- (void)addCategories:(NSSet*)value_;
- (void)removeCategories:(NSSet*)value_;
- (void)addCategoriesObject:(MOCategories*)value_;
- (void)removeCategoriesObject:(MOCategories*)value_;
- (NSMutableSet*)categoriesSet;
#if defined(MAC_OS_X_VERSION_10_5) && MAC_OS_X_VERSION_MAX_ALLOWED >= MAC_OS_X_VERSION_10_5
@property (retain) NSSet* categories;
#endif


@end
