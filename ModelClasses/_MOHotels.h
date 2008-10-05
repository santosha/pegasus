// DO NOT EDIT. This file is machine-generated and constantly overwritten.
// Make changes to MOHotels.h instead.

#import <CoreData/CoreData.h>



@class MOOrders;

@class MOCompanies;

@class MORooms;


@interface _MOHotels : NSManagedObject {}
+ (id)newInManagedObjectContext:(NSManagedObjectContext*)moc_;



- (NSString*)desc;
- (void)setDesc:(NSString*)value_;
#if defined(MAC_OS_X_VERSION_10_5) && MAC_OS_X_VERSION_MAX_ALLOWED >= MAC_OS_X_VERSION_10_5
@property (retain) NSString *desc;
#endif

//- (BOOL)validateDesc:(id*)value_ error:(NSError**)error_;



- (NSString*)name;
- (void)setName:(NSString*)value_;
#if defined(MAC_OS_X_VERSION_10_5) && MAC_OS_X_VERSION_MAX_ALLOWED >= MAC_OS_X_VERSION_10_5
@property (retain) NSString *name;
#endif

//- (BOOL)validateName:(id*)value_ error:(NSError**)error_;




- (NSSet*)orders;
- (void)addOrders:(NSSet*)value_;
- (void)removeOrders:(NSSet*)value_;
- (void)addOrdersObject:(MOOrders*)value_;
- (void)removeOrdersObject:(MOOrders*)value_;
- (NSMutableSet*)ordersSet;
#if defined(MAC_OS_X_VERSION_10_5) && MAC_OS_X_VERSION_MAX_ALLOWED >= MAC_OS_X_VERSION_10_5
@property (retain) NSSet* orders;
#endif



- (MOCompanies*)company;
- (void)setCompany:(MOCompanies*)value_;
//- (BOOL)validateCompany:(id*)value_ error:(NSError**)error_;
#if defined(MAC_OS_X_VERSION_10_5) && MAC_OS_X_VERSION_MAX_ALLOWED >= MAC_OS_X_VERSION_10_5
@property (retain) MOCompanies* company;
#endif



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
