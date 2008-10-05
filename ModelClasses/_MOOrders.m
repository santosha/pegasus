// DO NOT EDIT. This file is machine-generated and constantly overwritten.
// Make changes to MOOrders.m instead.

#import "_MOOrders.h"

@implementation _MOOrders

+ (id)newInManagedObjectContext:(NSManagedObjectContext*)moc_ {
	return [NSEntityDescription insertNewObjectForEntityForName:@"orders" inManagedObjectContext:moc_];									 
}




- (NSString*)code {
	[self willAccessValueForKey:@"code"];
	NSString *result = [self primitiveValueForKey:@"code"];
	[self didAccessValueForKey:@"code"];
	return result;
}

- (void)setCode:(NSString*)value_ {
	[self willChangeValueForKey:@"code"];
	[self setPrimitiveValue:value_ forKey:@"code"];
	[self didChangeValueForKey:@"code"];
}






- (NSDate*)date {
	[self willAccessValueForKey:@"date"];
	NSDate *result = [self primitiveValueForKey:@"date"];
	[self didAccessValueForKey:@"date"];
	return result;
}

- (void)setDate:(NSDate*)value_ {
	[self willChangeValueForKey:@"date"];
	[self setPrimitiveValue:value_ forKey:@"date"];
	[self didChangeValueForKey:@"date"];
}






- (NSString*)briefDescription {
	[self willAccessValueForKey:@"briefDescription"];
	NSString *result = [self primitiveValueForKey:@"briefDescription"];
	[self didAccessValueForKey:@"briefDescription"];
	return result;
}

- (void)setBriefDescription:(NSString*)value_ {
	[self willChangeValueForKey:@"briefDescription"];
	[self setPrimitiveValue:value_ forKey:@"briefDescription"];
	[self didChangeValueForKey:@"briefDescription"];
}






	

- (MOHotels*)hotel {
	[self willAccessValueForKey:@"hotel"];
	MOHotels *result = [self primitiveValueForKey:@"hotel"];
	[self didAccessValueForKey:@"hotel"];
	return result;
}

- (void)setHotel:(MOHotels*)value_ {
	[self willChangeValueForKey:@"hotel"];
	[self setPrimitiveValue:value_ forKey:@"hotel"];
	[self didChangeValueForKey:@"hotel"];
}

	

	

- (NSSet*)allocations {
	[self willAccessValueForKey:@"allocations"];
	NSSet *result = [self primitiveValueForKey:@"allocations"];
	[self didAccessValueForKey:@"allocations"];
	return result;
}

- (void)setAllocations:(NSSet*)value_ {
	[self willChangeValueForKey:@"allocations"];
	[self setPrimitiveValue:value_ forKey:@"allocations"];
	[self didChangeValueForKey:@"allocations"];
}

- (void)addAllocations:(NSSet*)value_ {
	[self willChangeValueForKey:@"allocations" withSetMutation:NSKeyValueUnionSetMutation usingObjects:value_];
	[[self primitiveValueForKey:@"allocations"] unionSet:value_];
	[self didChangeValueForKey:@"allocations" withSetMutation:NSKeyValueUnionSetMutation usingObjects:value_];
}

-(void)removeAllocations:(NSSet*)value_ {
	[self willChangeValueForKey:@"allocations" withSetMutation:NSKeyValueMinusSetMutation usingObjects:value_];
	[[self primitiveValueForKey:@"allocations"] minusSet:value_];
	[self didChangeValueForKey:@"allocations" withSetMutation:NSKeyValueMinusSetMutation usingObjects:value_];
}
	
- (void)addAllocationsObject:(MOAllocations*)value_ {
	NSSet *changedObjects = [[NSSet alloc] initWithObjects:&value_ count:1];
	[self willChangeValueForKey:@"allocations" withSetMutation:NSKeyValueUnionSetMutation usingObjects:changedObjects];
	[[self primitiveValueForKey:@"allocations"] addObject:value_];
	[self didChangeValueForKey:@"allocations" withSetMutation:NSKeyValueUnionSetMutation usingObjects:changedObjects];
	[changedObjects release];
}

- (void)removeAllocationsObject:(MOAllocations*)value_ {
	NSSet *changedObjects = [[NSSet alloc] initWithObjects:&value_ count:1];
	[self willChangeValueForKey:@"allocations" withSetMutation:NSKeyValueMinusSetMutation usingObjects:changedObjects];
	[[self primitiveValueForKey:@"allocations"] removeObject:value_];
	[self didChangeValueForKey:@"allocations" withSetMutation:NSKeyValueMinusSetMutation usingObjects:changedObjects];
	[changedObjects release];
}

- (NSMutableSet*)allocationsSet {
	return [self mutableSetValueForKey:@"allocations"];
}
	

	

- (MOCustomers*)customers {
	[self willAccessValueForKey:@"customers"];
	MOCustomers *result = [self primitiveValueForKey:@"customers"];
	[self didAccessValueForKey:@"customers"];
	return result;
}

- (void)setCustomers:(MOCustomers*)value_ {
	[self willChangeValueForKey:@"customers"];
	[self setPrimitiveValue:value_ forKey:@"customers"];
	[self didChangeValueForKey:@"customers"];
}

	

@end
