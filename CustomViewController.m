//
//  CustomViewController.m
//  Pegasus
//
//  Created by Michele Longhi on 21/05/08.
//  Copyright 2008 __MyCompanyName__. All rights reserved.
//

#import "CustomViewController.h"


@implementation CustomViewController

#pragma mark Initializers

- (id) init
{
	if( [super init] )
	{
		selectedHotel = nil;
	}
	
	return self;
}

#pragma mark -
#pragma mark Accessors

- (void) setManagedObjectContext:(NSManagedObjectContext*)context
{
	managedObjectContext = context;
}

- (NSManagedObjectContext*) managedObjectContext
{
	return managedObjectContext;
}

-(void) setSelectedHotel:(MOHotels*)hotel
{
	selectedHotel = hotel;
}

- (MOHotels*) selectedHotel
{
	return selectedHotel;
}



@end
