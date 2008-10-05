//
//  BookingTableView.h
//  Pegasus
//
//  Created by Michele Longhi on 24/05/08.
//  Copyright 2008 Santosha Multimedia. All rights reserved.
//

#import <Cocoa/Cocoa.h>
#import "MOHotels.h"
#import "MOAllocations.h"
#import "MAAttachedWindow.h"
#import "PopupView.h"

@interface BookingTableauView : NSView 
{
#pragma mark Objects
	NSView*	angleView;
	NSView* calendarView;
	NSScrollView* scrollerView;
	NSView* roomsView;
	NSView* allocationsView;
	NSScroller* verticalSCroller;
	
#pragma mark Properties
	NSDate* firstVisibleDay;
	int firstVisibleRoom;
	float zoomFactor;
	float calendarHeight;
	float dayWidth;
	float rowHeight;
	float roomWidth;
	NSColor* backColor;
	NSColor* daySeparatorLineColor;
	NSColor* weekSeparatorLineColor;
	NSColor* monthSeperatorLineColor;
	NSColor* roomSeparatorLineColor;
	NSColor* roomBackColor;
	NSColor* dayBackColor;
	
	MAAttachedWindow *attachedWindow;
    IBOutlet PopupView* popupView;
	
#pragma mark Fields
	
#pragma mark Database
	NSManagedObjectContext* managedObjectContext;
	NSArrayController* ordersArrayController;
}

@property (assign,readwrite) NSManagedObjectContext* managedObjectContext;
@property (assign,readwrite) NSArrayController* ordersArrayController;
@property (copy,readwrite) NSDate* firstVisibleDay;
@property (copy,readonly) NSDate* lastVisibleDay;
@property (readwrite) int firstVisibleRoom;
@property float zoomFactor;
@property (readonly) float calendarHeight;
@property (readonly) float dayWidth;
@property (readonly) float rowHeight;
@property (readonly) float roomWidth;
@property (readonly) NSColor* backColor;
@property (readonly) NSColor* daySeparatorLineColor;
@property (readonly) NSColor* weekSeparatorLineColor;
@property (readonly) NSColor* monthSeperatorLineColor;
@property (readonly) NSColor* roomSeparatorLineColor;
@property (readonly) NSColor* roomBackColor;
@property (readonly) NSColor* dayBackColor;
@property (readonly) int visibleDays;
@property (readonly) int visibleRooms;
@property (readonly) int roomsCount;


- (int) dayFromDate:(NSDate*)date;
- (void) drawAllocation:(MOAllocations*)allocation;
- (MOHotels*) hotel;
- (NSArray*) rooms;
- (int) rowForRoom:(MORooms*) room;

#pragma mark Actions

- (void)scrollerAction:(id)sender;

- (IBAction) nextWeek:(id)sender;
- (IBAction) nextMonth:(id)sender;
- (IBAction) previousWeek:(id)sender;
- (IBAction) previousMonth:(id)sender;

@end
