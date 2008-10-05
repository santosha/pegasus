//
//  WindowController.h
//  Pegasus
//
//  Created by Michele Longhi on 21/05/08.
//  Copyright 2008 __MyCompanyName__. All rights reserved.
//

#import <Cocoa/Cocoa.h>
#import "CustomViewController.h"


@interface WindowController : NSObject 
{
	int						viewMode;
	
	IBOutlet NSWindow*		window;
	IBOutlet NSView*		mainView;
	IBOutlet NSView*		sidebarView;
	
	CustomViewController*	viewController;
	
	NSManagedObjectContext*	managedObjectContext;
	IBOutlet NSArrayController* hotels;
	
	NSManagedObject*		selectedHotel;
}

@property (readwrite) int viewMode;

- (IBAction) changeViewMode:(id)sender;
- (IBAction) changeSelection:(id)sender;

- (NSManagedObjectContext *) managedObjectContext;

@end
