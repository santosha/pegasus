//
//  AdministrationController.h
//  Pegasus
//
//  Created by Michele Longhi on 21/05/08.
//  Copyright 2008 __MyCompanyName__. All rights reserved.
//

#import <Cocoa/Cocoa.h>


@interface AdministrationController : NSObject 
{
	IBOutlet NSManagedObjectContext*	managedObjectContext;
	IBOutlet NSArrayController*			companiesArrayController;
	IBOutlet NSArrayController*			hotelsArrayController;
	IBOutlet NSArrayController*			roomsArrayController;
	IBOutlet NSWindow*					window;
}

#pragma mark Actions

- (IBAction) addHotel:(id)sender;
- (IBAction) addRoom:(id)sender;

@end
