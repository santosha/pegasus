// DO NOT EDIT. This file is machine-generated and constantly overwritten.
// Make changes to MORoomTypes.m instead.

#import "_MORoomTypes.h"

@implementation _MORoomTypes

+ (id)newInManagedObjectContext:(NSManagedObjectContext*)moc_ {
	return [NSEntityDescription insertNewObjectForEntityForName:@"roomtype" inManagedObjectContext:moc_];									 
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
