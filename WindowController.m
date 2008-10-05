//
//  WindowController.m
//  Pegasus
//
//  Created by Michele Longhi on 21/05/08.
//  Copyright 2008 __MyCompanyName__. All rights reserved.
//

#import "WindowController.h"
#import "BookingViewController.h"


@implementation WindowController

@synthesize viewMode;

#pragma mark Inizializzazione

- (id) init
{
	if( [super init] )
	{
	}
	
	return self;
}

#pragma mark Window Delegate Methods

- (void) awakeFromNib
{
	managedObjectContext = [hotels managedObjectContext];
	
	// Modalità di visualizzazione
	viewMode = 0;
	
	[self changeViewMode:self];
	
	[window makeKeyAndOrderFront:self];
}

- (void) splitView:(NSSplitView *)sender resizeSubviewsWithOldSize:(NSSize)oldSize
{
    NSView *left = [[sender subviews] objectAtIndex:0];      // get the two sub views
    NSView *right = [[sender subviews] objectAtIndex:1];
	
    float dividerThickness = [sender dividerThickness];         // and the divider thickness
	
    NSRect newFrame = [sender frame];                           // get the new size of the whole splitView
    NSRect leftFrame = [left frame];                            // current size of the left subview
    NSRect rightFrame = [right frame];                          // ...and the right
    leftFrame.size.height = newFrame.size.height;               // resize the height of the left
    leftFrame.origin = NSMakePoint(0,0);                        // don't think this is needed
	
    rightFrame.size.width = newFrame.size.width - leftFrame.size.width - dividerThickness;
    rightFrame.size.height = newFrame.size.height;              // the whole height
    rightFrame.origin.x = leftFrame.size.width + dividerThickness;  // 
    [left setFrame:leftFrame];
    [right setFrame:rightFrame];
}

#pragma mark Actions

- (IBAction) changeViewMode:(id)sender
{
	NSLog(@"Modalità: %d",viewMode);
	
	if( [[mainView subviews] count] > 0 )
		[[[mainView subviews] objectAtIndex:0] removeFromSuperview];
	
	switch (viewMode) 
	{
		case 0:
			[window setTitle:@"Pegasus - Booking"];
			viewController = [[BookingViewController alloc] initWithNibName:@"BookingView" bundle:nil];			
			break;
		case 1:
			[window setTitle:@"Pegasus - Frontoffice"];
			viewController = [[CustomViewController alloc] initWithNibName:@"FrontofficeView" bundle:nil];
			break;
		case 2:
			[window setTitle:@"Pegasus - Backoffice"];
			viewController = [[CustomViewController alloc] initWithNibName:@"BackofficeView" bundle:nil];
			break;
	}
	
	[viewController setManagedObjectContext:managedObjectContext];
	
	[mainView addSubview:[viewController view]];
	
	if( [viewController view] )
	{
		[[viewController view] setBoundsOrigin:NSMakePoint(0,0)];
		[[viewController view] setFrame:[mainView bounds]];
	}
}

- (IBAction) changeSelection:(id)sender
{
	if( viewController )
	{
		[viewController setSelectedHotel:selectedHotel];
		[viewController setRepresentedObject:selectedHotel];
	}
}



#pragma mark Accessors

- (NSManagedObjectContext *) managedObjectContext
{
	return managedObjectContext;
}

@end
