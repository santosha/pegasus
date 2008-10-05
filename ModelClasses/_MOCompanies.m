// DO NOT EDIT. This file is machine-generated and constantly overwritten.
// Make changes to MOCompanies.m instead.

#import "_MOCompanies.h"

@implementation _MOCompanies

+ (id)newInManagedObjectContext:(NSManagedObjectContext*)moc_ {
	return [NSEntityDescription insertNewObjectForEntityForName:@"companies" inManagedObjectContext:moc_];									 
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






	

- (NSSet*)hotels {
	[self willAccessValueForKey:@"hotels"];
	NSSet *result = [self primitiveValueForKey:@"hotels"];
	[self didAccessValueForKey:@"hotels"];
	return result;
}

- (void)setHotels:(NSSet*)value_ {
	[self willChangeValueForKey:@"hotels"];
	[self setPrimitiveValue:value_ forKey:@"hotels"];
	[self didChangeValueForKey:@"hotels"];
}

- (void)addHotels:(NSSet*)value_ {
	[self willChangeValueForKey:@"hotels" withSetMutation:NSKeyValueUnionSetMutation usingObjects:value_];
	[[self primitiveValueForKey:@"hotels"] unionSet:value_];
	[self didChangeValueForKey:@"hotels" withSetMutation:NSKeyValueUnionSetMutation usingObjects:value_];
}

-(void)removeHotels:(NSSet*)value_ {
	[self willChangeValueForKey:@"hotels" withSetMutation:NSKeyValueMinusSetMutation usingObjects:value_];
	[[self primitiveValueForKey:@"hotels"] minusSet:value_];
	[self didChangeValueForKey:@"hotels" withSetMutation:NSKeyValueMinusSetMutation usingObjects:value_];
}
	
- (void)addHotelsObject:(MOHotels*)value_ {
	NSSet *changedObjects = [[NSSet alloc] initWithObjects:&value_ count:1];
	[self willChangeValueForKey:@"hotels" withSetMutation:NSKeyValueUnionSetMutation usingObjects:changedObjects];
	[[self primitiveValueForKey:@"hotels"] addObject:value_];
	[self didChangeValueForKey:@"hotels" withSetMutation:NSKeyValueUnionSetMutation usingObjects:changedObjects];
	[changedObjects release];
}

- (void)removeHotelsObject:(MOHotels*)value_ {
	NSSet *changedObjects = [[NSSet alloc] initWithObjects:&value_ count:1];
	[self willChangeValueForKey:@"hotels" withSetMutation:NSKeyValueMinusSetMutation usingObjects:changedObjects];
	[[self primitiveValueForKey:@"hotels"] removeObject:value_];
	[self didChangeValueForKey:@"hotels" withSetMutation:NSKeyValueMinusSetMutation usingObjects:changedObjects];
	[changedObjects release];
}

- (NSMutableSet*)hotelsSet {
	return [self mutableSetValueForKey:@"hotels"];
}
	

@end
