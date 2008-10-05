// DO NOT EDIT. This file is machine-generated and constantly overwritten.
// Make changes to MOCustomers.m instead.

#import "_MOCustomers.h"

@implementation _MOCustomers

+ (id)newInManagedObjectContext:(NSManagedObjectContext*)moc_ {
	return [NSEntityDescription insertNewObjectForEntityForName:@"customers" inManagedObjectContext:moc_];									 
}




- (NSString*)fax {
	[self willAccessValueForKey:@"fax"];
	NSString *result = [self primitiveValueForKey:@"fax"];
	[self didAccessValueForKey:@"fax"];
	return result;
}

- (void)setFax:(NSString*)value_ {
	[self willChangeValueForKey:@"fax"];
	[self setPrimitiveValue:value_ forKey:@"fax"];
	[self didChangeValueForKey:@"fax"];
}






- (NSString*)city {
	[self willAccessValueForKey:@"city"];
	NSString *result = [self primitiveValueForKey:@"city"];
	[self didAccessValueForKey:@"city"];
	return result;
}

- (void)setCity:(NSString*)value_ {
	[self willChangeValueForKey:@"city"];
	[self setPrimitiveValue:value_ forKey:@"city"];
	[self didChangeValueForKey:@"city"];
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






- (NSString*)fullName {
	[self willAccessValueForKey:@"fullName"];
	NSString *result = [self primitiveValueForKey:@"fullName"];
	[self didAccessValueForKey:@"fullName"];
	return result;
}

- (void)setFullName:(NSString*)value_ {
	[self willChangeValueForKey:@"fullName"];
	[self setPrimitiveValue:value_ forKey:@"fullName"];
	[self didChangeValueForKey:@"fullName"];
}






- (NSString*)nation {
	[self willAccessValueForKey:@"nation"];
	NSString *result = [self primitiveValueForKey:@"nation"];
	[self didAccessValueForKey:@"nation"];
	return result;
}

- (void)setNation:(NSString*)value_ {
	[self willChangeValueForKey:@"nation"];
	[self setPrimitiveValue:value_ forKey:@"nation"];
	[self didChangeValueForKey:@"nation"];
}






- (NSString*)phone {
	[self willAccessValueForKey:@"phone"];
	NSString *result = [self primitiveValueForKey:@"phone"];
	[self didAccessValueForKey:@"phone"];
	return result;
}

- (void)setPhone:(NSString*)value_ {
	[self willChangeValueForKey:@"phone"];
	[self setPrimitiveValue:value_ forKey:@"phone"];
	[self didChangeValueForKey:@"phone"];
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
	

	

- (NSSet*)categories {
	[self willAccessValueForKey:@"categories"];
	NSSet *result = [self primitiveValueForKey:@"categories"];
	[self didAccessValueForKey:@"categories"];
	return result;
}

- (void)setCategories:(NSSet*)value_ {
	[self willChangeValueForKey:@"categories"];
	[self setPrimitiveValue:value_ forKey:@"categories"];
	[self didChangeValueForKey:@"categories"];
}

- (void)addCategories:(NSSet*)value_ {
	[self willChangeValueForKey:@"categories" withSetMutation:NSKeyValueUnionSetMutation usingObjects:value_];
	[[self primitiveValueForKey:@"categories"] unionSet:value_];
	[self didChangeValueForKey:@"categories" withSetMutation:NSKeyValueUnionSetMutation usingObjects:value_];
}

-(void)removeCategories:(NSSet*)value_ {
	[self willChangeValueForKey:@"categories" withSetMutation:NSKeyValueMinusSetMutation usingObjects:value_];
	[[self primitiveValueForKey:@"categories"] minusSet:value_];
	[self didChangeValueForKey:@"categories" withSetMutation:NSKeyValueMinusSetMutation usingObjects:value_];
}
	
- (void)addCategoriesObject:(MOCategories*)value_ {
	NSSet *changedObjects = [[NSSet alloc] initWithObjects:&value_ count:1];
	[self willChangeValueForKey:@"categories" withSetMutation:NSKeyValueUnionSetMutation usingObjects:changedObjects];
	[[self primitiveValueForKey:@"categories"] addObject:value_];
	[self didChangeValueForKey:@"categories" withSetMutation:NSKeyValueUnionSetMutation usingObjects:changedObjects];
	[changedObjects release];
}

- (void)removeCategoriesObject:(MOCategories*)value_ {
	NSSet *changedObjects = [[NSSet alloc] initWithObjects:&value_ count:1];
	[self willChangeValueForKey:@"categories" withSetMutation:NSKeyValueMinusSetMutation usingObjects:changedObjects];
	[[self primitiveValueForKey:@"categories"] removeObject:value_];
	[self didChangeValueForKey:@"categories" withSetMutation:NSKeyValueMinusSetMutation usingObjects:changedObjects];
	[changedObjects release];
}

- (NSMutableSet*)categoriesSet {
	return [self mutableSetValueForKey:@"categories"];
}
	

@end
