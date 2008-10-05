//
//  AdministrationController.m
//  Pegasus
//
//  Created by Michele Longhi on 21/05/08.
//  Copyright 2008 __MyCompanyName__. All rights reserved.
//

#import "AdministrationController.h"


@implementation AdministrationController

#pragma mark Delegates

- (void) awakeFromNib
{
	managedObjectContext = [companiesArrayController managedObjectContext];
	
	[window makeKeyAndOrderFront:self];
}

#pragma mark Actions

- (IBAction) addHotel:(id)sender
{
	// Crea un nuovo albergo
	NSManagedObject* hotel = [NSEntityDescription insertNewObjectForEntityForName:@"hotels" inManagedObjectContext:managedObjectContext];

	NSManagedObject* company = [[companiesArrayController selectedObjects] objectAtIndex:0];
	
	[hotel	setValue:@"nuova struttura" forKey:@"name"];
	
	NSMutableSet* hotels = [company mutableSetValueForKey:@"hotels"];
	
	[hotels addObject:hotel	];
}

- (IBAction) addRoom:(id)sender
{
	// Crea un nuovo albergo
	NSManagedObject* room = [NSEntityDescription insertNewObjectForEntityForName:@"rooms" inManagedObjectContext:managedObjectContext];
	
	NSManagedObject* hotel = [[hotelsArrayController selectedObjects] objectAtIndex:0];
	
	[room setValue:@"Nuova sistemazione" forKey:@"name"];
	
	NSMutableSet* rooms = [hotel mutableSetValueForKey:@"rooms"];
	
	[rooms addObject:room];
	
	[managedObjectContext commitEditing];
}


@end
