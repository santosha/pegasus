// DO NOT EDIT. This file is machine-generated and constantly overwritten.
// Make changes to MOAllocations.m instead.

#import "_MOAllocations.h"

@implementation _MOAllocations

+ (id)newInManagedObjectContext:(NSManagedObjectContext*)moc_ {
	return [NSEntityDescription insertNewObjectForEntityForName:@"allocations" inManagedObjectContext:moc_];									 
}




- (NSDate*)from {
	[self willAccessValueForKey:@"from"];
	NSDate *result = [self primitiveValueForKey:@"from"];
	[self didAccessValueForKey:@"from"];
	return result;
}

- (void)setFrom:(NSDate*)value_ {
	[self willChangeValueForKey:@"from"];
	[self setPrimitiveValue:value_ forKey:@"from"];
	[self didChangeValueForKey:@"from"];
}






- (NSDate*)to {
	[self willAccessValueForKey:@"to"];
	NSDate *result = [self primitiveValueForKey:@"to"];
	[self didAccessValueForKey:@"to"];
	return result;
}

- (void)setTo:(NSDate*)value_ {
	[self willChangeValueForKey:@"to"];
	[self setPrimitiveValue:value_ forKey:@"to"];
	[self didChangeValueForKey:@"to"];
}






- (NSString*)comment {
	[self willAccessValueForKey:@"comment"];
	NSString *result = [self primitiveValueForKey:@"comment"];
	[self didAccessValueForKey:@"comment"];
	return result;
}

- (void)setComment:(NSString*)value_ {
	[self willChangeValueForKey:@"comment"];
	[self setPrimitiveValue:value_ forKey:@"comment"];
	[self didChangeValueForKey:@"comment"];
}






- (NSData*)color {
	[self willAccessValueForKey:@"color"];
	NSData *result = [self primitiveValueForKey:@"color"];
	[self didAccessValueForKey:@"color"];
	return result;
}

- (void)setColor:(NSData*)value_ {
	[self willChangeValueForKey:@"color"];
	[self setPrimitiveValue:value_ forKey:@"color"];
	[self didChangeValueForKey:@"color"];
}






	

- (MOOrders*)order {
	[self willAccessValueForKey:@"order"];
	MOOrders *result = [self primitiveValueForKey:@"order"];
	[self didAccessValueForKey:@"order"];
	return result;
}

- (void)setOrder:(MOOrders*)value_ {
	[self willChangeValueForKey:@"order"];
	[self setPrimitiveValue:value_ forKey:@"order"];
	[self didChangeValueForKey:@"order"];
}

	

	

- (MORooms*)room {
	[self willAccessValueForKey:@"room"];
	MORooms *result = [self primitiveValueForKey:@"room"];
	[self didAccessValueForKey:@"room"];
	return result;
}

- (void)setRoom:(MORooms*)value_ {
	[self willChangeValueForKey:@"room"];
	[self setPrimitiveValue:value_ forKey:@"room"];
	[self didChangeValueForKey:@"room"];
}

	

@end
