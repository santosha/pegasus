// DO NOT EDIT. This file is machine-generated and constantly overwritten.
// Make changes to MOAllocations.h instead.

#import <CoreData/CoreData.h>



@class MOOrders;

@class MORooms;


@interface _MOAllocations : NSManagedObject {}
+ (id)newInManagedObjectContext:(NSManagedObjectContext*)moc_;



- (NSDate*)from;
- (void)setFrom:(NSDate*)value_;
#if defined(MAC_OS_X_VERSION_10_5) && MAC_OS_X_VERSION_MAX_ALLOWED >= MAC_OS_X_VERSION_10_5
@property (retain) NSDate *from;
#endif

//- (BOOL)validateFrom:(id*)value_ error:(NSError**)error_;



- (NSDate*)to;
- (void)setTo:(NSDate*)value_;
#if defined(MAC_OS_X_VERSION_10_5) && MAC_OS_X_VERSION_MAX_ALLOWED >= MAC_OS_X_VERSION_10_5
@property (retain) NSDate *to;
#endif

//- (BOOL)validateTo:(id*)value_ error:(NSError**)error_;



- (NSString*)comment;
- (void)setComment:(NSString*)value_;
#if defined(MAC_OS_X_VERSION_10_5) && MAC_OS_X_VERSION_MAX_ALLOWED >= MAC_OS_X_VERSION_10_5
@property (retain) NSString *comment;
#endif

//- (BOOL)validateComment:(id*)value_ error:(NSError**)error_;



- (NSData*)color;
- (void)setColor:(NSData*)value_;
#if defined(MAC_OS_X_VERSION_10_5) && MAC_OS_X_VERSION_MAX_ALLOWED >= MAC_OS_X_VERSION_10_5
@property (retain) NSData *color;
#endif

//- (BOOL)validateColor:(id*)value_ error:(NSError**)error_;




- (MOOrders*)order;
- (void)setOrder:(MOOrders*)value_;
//- (BOOL)validateOrder:(id*)value_ error:(NSError**)error_;
#if defined(MAC_OS_X_VERSION_10_5) && MAC_OS_X_VERSION_MAX_ALLOWED >= MAC_OS_X_VERSION_10_5
@property (retain) MOOrders* order;
#endif



- (MORooms*)room;
- (void)setRoom:(MORooms*)value_;
//- (BOOL)validateRoom:(id*)value_ error:(NSError**)error_;
#if defined(MAC_OS_X_VERSION_10_5) && MAC_OS_X_VERSION_MAX_ALLOWED >= MAC_OS_X_VERSION_10_5
@property (retain) MORooms* room;
#endif


@end
