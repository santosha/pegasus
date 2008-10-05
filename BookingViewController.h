//
//  BookingViewController.h
//  Pegasus
//
//  Created by Michele Longhi on 21/05/08.
//  Copyright 2008 __MyCompanyName__. All rights reserved.
//

#import <Cocoa/Cocoa.h>
#import "CustomViewController.h"
#import "BookingTableauView.h"

@interface BookingViewController : CustomViewController
{
	IBOutlet NSArrayController*		orders;
	
	IBOutlet NSView*				mainView;
	IBOutlet NSTableView*			tableView;
	IBOutlet BookingTableauView*	tableauView;
	
}

#pragma mark Table Delegates

- (void) getInfo;

@property (assign,readwrite) BookingTableauView* tableauView;

#pragma mark Panel Delegates

#pragma mark Actions

- (IBAction) zoomIn:(id)sender;
- (IBAction) zoomOut:(id)sender;
- (IBAction) zoomDefault:(id)sender;

@property (assign,readwrite) NSArrayController* orders;

- (IBAction) prev:(id)sender;
- (IBAction) next:(id)sender;

@end
