//
//  BookingViewController.m
//  Pegasus
//
//  Created by Michele Longhi on 21/05/08.
//  Copyright 2008 __MyCompanyName__. All rights reserved.
//

#import "BookingViewController.h"
#import "WindowController.h"

@implementation BookingViewController

@synthesize tableauView,orders;

#pragma mark Delegates

- (void) awakeFromNib
{
	NSLog(@"Booking View Controller loaded");
	
	[[mainView window] makeFirstResponder:tableView];
	
	// Inizializza la vista del quadro
	[tableauView setManagedObjectContext:[self managedObjectContext]];
	[tableauView setOrdersArrayController:orders];
	[tableauView setFirstVisibleDay:[NSCalendarDate dateWithYear:2008 month:5 day:17 hour:0 minute:0 second:0 timeZone:[NSTimeZone defaultTimeZone]]];
	
	[[self orders] addObserver:self forKeyPath:@"selectedObjects" options:NSKeyValueObservingOptionNew context:nil];
	[[self orders] addObserver:self forKeyPath:@"arrangedObjects" options:NSKeyValueObservingOptionNew context:nil];
	
}

- (void)observeValueForKeyPath:(NSString *)keyPath ofObject:(id)object change:(NSDictionary *)change context:(void *)context 
{
	[tableauView setNeedsDisplay:YES];
}		


-(void) setSelectedHotel:(MOHotels*)hotel
{
	if( hotel )
	{
		[super setSelectedHotel:hotel];
		[tableauView setOrdersArrayController:orders];
		[tableauView setNeedsDisplay:YES];
	}
}


#pragma mark Table Delegates

- (void) getInfo
{
	NSLog(@"GetInfo chiamato!");
}

- (void)tableView:(NSTableView *)tableView didClickTableColumn:(NSTableColumn *)tableColumn
{
}

#pragma mark Actions

- (void)didChangeValueForKey:(NSString *)key
{
	// NSLog(@"Selezione modificata!");

}

- (IBAction) zoomIn:(id)sender
{
	if( [tableauView zoomFactor] < 200 )
		[tableauView setZoomFactor:[tableauView zoomFactor]+0.25];
}

- (IBAction) zoomOut:(id)sender
{
	if( [tableauView zoomFactor] > 0 )
		[tableauView setZoomFactor:[tableauView zoomFactor]-0.25];
}

- (IBAction) zoomDefault:(id)sender
{
	[tableauView setZoomFactor:1.0];
}

- (IBAction) prev:(id)sender
{
	[tableauView previousWeek:self]; 
}

- (IBAction) next:(id)sender
{
	[tableauView nextWeek:self];
}


@end
