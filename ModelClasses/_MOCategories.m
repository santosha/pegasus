// DO NOT EDIT. This file is machine-generated and constantly overwritten.
// Make changes to MOCategories.m instead.

#import "_MOCategories.h"

@implementation _MOCategories

+ (id)newInManagedObjectContext:(NSManagedObjectContext*)moc_ {
	return [NSEntityDescription insertNewObjectForEntityForName:@"categories" inManagedObjectContext:moc_];									 
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






- (NSNumber*)type {
	[self willAccessValueForKey:@"type"];
	NSNumber *result = [self primitiveValueForKey:@"type"];
	[self didAccessValueForKey:@"type"];
	return result;
}

- (void)setType:(NSNumber*)value_ {
	[self willChangeValueForKey:@"type"];
	[self setPrimitiveValue:value_ forKey:@"type"];
	[self didChangeValueForKey:@"type"];
}



- (short)typeValue {
	NSNumber *result = [self type];
	return result ? [result shortValue] : 0;
}

- (void)setTypeValue:(short)value_ {
	[self setType:[NSNumber numberWithShort:value_]];
}






	

- (NSSet*)customers {
	[self willAccessValueForKey:@"customers"];
	NSSet *result = [self primitiveValueForKey:@"customers"];
	[self didAccessValueForKey:@"customers"];
	return result;
}

- (void)setCustomers:(NSSet*)value_ {
	[self willChangeValueForKey:@"customers"];
	[self setPrimitiveValue:value_ forKey:@"customers"];
	[self didChangeValueForKey:@"customers"];
}

- (void)addCustomers:(NSSet*)value_ {
	[self willChangeValueForKey:@"customers" withSetMutation:NSKeyValueUnionSetMutation usingObjects:value_];
	[[self primitiveValueForKey:@"customers"] unionSet:value_];
	[self didChangeValueForKey:@"customers" withSetMutation:NSKeyValueUnionSetMutation usingObjects:value_];
}

-(void)removeCustomers:(NSSet*)value_ {
	[self willChangeValueForKey:@"customers" withSetMutation:NSKeyValueMinusSetMutation usingObjects:value_];
	[[self primitiveValueForKey:@"customers"] minusSet:value_];
	[self didChangeValueForKey:@"customers" withSetMutation:NSKeyValueMinusSetMutation usingObjects:value_];
}
	
- (void)addCustomersObject:(MOCustomers*)value_ {
	NSSet *changedObjects = [[NSSet alloc] initWithObjects:&value_ count:1];
	[self willChangeValueForKey:@"customers" withSetMutation:NSKeyValueUnionSetMutation usingObjects:changedObjects];
	[[self primitiveValueForKey:@"customers"] addObject:value_];
	[self didChangeValueForKey:@"customers" withSetMutation:NSKeyValueUnionSetMutation usingObjects:changedObjects];
	[changedObjects release];
}

- (void)removeCustomersObject:(MOCustomers*)value_ {
	NSSet *changedObjects = [[NSSet alloc] initWithObjects:&value_ count:1];
	[self willChangeValueForKey:@"customers" withSetMutation:NSKeyValueMinusSetMutation usingObjects:changedObjects];
	[[self primitiveValueForKey:@"customers"] removeObject:value_];
	[self didChangeValueForKey:@"customers" withSetMutation:NSKeyValueMinusSetMutation usingObjects:changedObjects];
	[changedObjects release];
}

- (NSMutableSet*)customersSet {
	return [self mutableSetValueForKey:@"customers"];
}
	

@end
