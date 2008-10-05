// DO NOT EDIT. This file is machine-generated and constantly overwritten.
// Make changes to MOHotels.m instead.

#import "_MOHotels.h"

@implementation _MOHotels

+ (id)newInManagedObjectContext:(NSManagedObjectContext*)moc_ {
	return [NSEntityDescription insertNewObjectForEntityForName:@"hotels" inManagedObjectContext:moc_];									 
}




- (NSString*)desc {
	[self willAccessValueForKey:@"desc"];
	NSString *result = [self primitiveValueForKey:@"desc"];
	[self didAccessValueForKey:@"desc"];
	return result;
}

- (void)setDesc:(NSString*)value_ {
	[self willChangeValueForKey:@"desc"];
	[self setPrimitiveValue:value_ forKey:@"desc"];
	[self didChangeValueForKey:@"desc"];
}






- (NSString*)name {
	[self willAccessValueForKey:@"name"];
	NSString *result = [self primitiveValueForKey:@"name"];
	[self didAccessValueForKey:@"name"];
	return result;
}

- (void)setName:(NSString*)value_ {
	[self willChangeValueForKey:@"name"];
	[self setPrimitiveValue:value_ forKey:@"name"];
	[self didChangeValueForKey:@"name"];
}






	

- (NSSet*)orders {
	[self willAccessValueForKey:@"orders"];
	NSSet *result = [self primitiveValueForKey:@"orders"];
	[self didAccessValueForKey:@"orders"];
	return result;
}

- (void)setOrders:(NSSet*)value_ {
	[self willChangeValueForKey:@"orders"];
	[self setPrimitiveValue:value_ forKey:@"orders"];
	[self didChangeValueForKey:@"orders"];
}

- (void)addOrders:(NSSet*)value_ {
	[self willChangeValueForKey:@"orders" withSetMutation:NSKeyValueUnionSetMutation usingObjects:value_];
	[[self primitiveValueForKey:@"orders"] unionSet:value_];
	[self didChangeValueForKey:@"orders" withSetMutation:NSKeyValueUnionSetMutation usingObjects:value_];
}

-(void)removeOrders:(NSSet*)value_ {
	[self willChangeValueForKey:@"orders" withSetMutation:NSKeyValueMinusSetMutation usingObjects:value_];
	[[self primitiveValueForKey:@"orders"] minusSet:value_];
	[self didChangeValueForKey:@"orders" withSetMutation:NSKeyValueMinusSetMutation usingObjects:value_];
}
	
- (void)addOrdersObject:(MOOrders*)value_ {
	NSSet *changedObjects = [[NSSet alloc] initWithObjects:&value_ count:1];
	[self willChangeValueForKey:@"orders" withSetMutation:NSKeyValueUnionSetMutation usingObjects:changedObjects];
	[[self primitiveValueForKey:@"orders"] addObject:value_];
	[self didChangeValueForKey:@"orders" withSetMutation:NSKeyValueUnionSetMutation usingObjects:changedObjects];
	[changedObjects release];
}

- (void)removeOrdersObject:(MOOrders*)value_ {
	NSSet *changedObjects = [[NSSet alloc] initWithObjects:&value_ count:1];
	[self willChangeValueForKey:@"orders" withSetMutation:NSKeyValueMinusSetMutation usingObjects:changedObjects];
	[[self primitiveValueForKey:@"orders"] removeObject:value_];
	[self didChangeValueForKey:@"orders" withSetMutation:NSKeyValueMinusSetMutation usingObjects:changedObjects];
	[changedObjects release];
}

- (NSMutableSet*)ordersSet {
	return [self mutableSetValueForKey:@"orders"];
}
	

	

- (MOCompanies*)company {
	[self willAccessValueForKey:@"company"];
	MOCompanies *result = [self primitiveValueForKey:@"company"];
	[self didAccessValueForKey:@"company"];
	return result;
}

- (void)setCompany:(MOCompanies*)value_ {
	[self willChangeValueForKey:@"company"];
	[self setPrimitiveValue:value_ forKey:@"company"];
	[self didChangeValueForKey:@"company"];
}

	

	

- (NSSet*)rooms {
	[self willAccessValueForKey:@"rooms"];
	NSSet *result = [self primitiveValueForKey:@"rooms"];
	[self didAccessValueForKey:@"rooms"];
	return result;
}

- (void)setRooms:(NSSet*)value_ {
	[self willChangeValueForKey:@"rooms"];
	[self setPrimitiveValue:value_ forKey:@"rooms"];
	[self didChangeValueForKey:@"rooms"];
}

- (void)addRooms:(NSSet*)value_ {
	[self willChangeValueForKey:@"rooms" withSetMutation:NSKeyValueUnionSetMutation usingObjects:value_];
	[[self primitiveValueForKey:@"rooms"] unionSet:value_];
	[self didChangeValueForKey:@"rooms" withSetMutation:NSKeyValueUnionSetMutation usingObjects:value_];
}

-(void)removeRooms:(NSSet*)value_ {
	[self willChangeValueForKey:@"rooms" withSetMutation:NSKeyValueMinusSetMutation usingObjects:value_];
	[[self primitiveValueForKey:@"rooms"] minusSet:value_];
	[self didChangeValueForKey:@"rooms" withSetMutation:NSKeyValueMinusSetMutation usingObjects:value_];
}
	
- (void)addRoomsObject:(MORooms*)value_ {
	NSSet *changedObjects = [[NSSet alloc] initWithObjects:&value_ count:1];
	[self willChangeValueForKey:@"rooms" withSetMutation:NSKeyValueUnionSetMutation usingObjects:changedObjects];
	[[self primitiveValueForKey:@"rooms"] addObject:value_];
	[self didChangeValueForKey:@"rooms" withSetMutation:NSKeyValueUnionSetMutation usingObjects:changedObjects];
	[changedObjects release];
}

- (void)removeRoomsObject:(MORooms*)value_ {
	NSSet *changedObjects = [[NSSet alloc] initWithObjects:&value_ count:1];
	[self willChangeValueForKey:@"rooms" withSetMutation:NSKeyValueMinusSetMutation usingObjects:changedObjects];
	[[self primitiveValueForKey:@"rooms"] removeObject:value_];
	[self didChangeValueForKey:@"rooms" withSetMutation:NSKeyValueMinusSetMutation usingObjects:changedObjects];
	[changedObjects release];
}

- (NSMutableSet*)roomsSet {
	return [self mutableSetValueForKey:@"rooms"];
}
	

@end
