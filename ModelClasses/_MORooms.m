// DO NOT EDIT. This file is machine-generated and constantly overwritten.
// Make changes to MORooms.m instead.

#import "_MORooms.h"

@implementation _MORooms

+ (id)newInManagedObjectContext:(NSManagedObjectContext*)moc_ {
	return [NSEntityDescription insertNewObjectForEntityForName:@"rooms" inManagedObjectContext:moc_];									 
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
	

	

- (MORoomTypes*)type {
	[self willAccessValueForKey:@"type"];
	MORoomTypes *result = [self primitiveValueForKey:@"type"];
	[self didAccessValueForKey:@"type"];
	return result;
}

- (void)setType:(MORoomTypes*)value_ {
	[self willChangeValueForKey:@"type"];
	[self setPrimitiveValue:value_ forKey:@"type"];
	[self didChangeValueForKey:@"type"];
}

	

@end
