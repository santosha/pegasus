//
//  BookingTableView.m
//  Pegasus
//
//  Created by Michele Longhi on 24/05/08.
//  Copyright 2008 __MyCompanyName__. All rights reserved.
//

#import "BookingTableauView.h"
#import "MOOrders.h"
#import "MOAllocations.h"
#import "MOCustomers.h"
#import "MORooms.h"

@implementation BookingTableauView

#pragma mark Initializers

- (id)initWithFrame:(NSRect)frame 
{
    self = [super initWithFrame:frame];
    if (self) 
	{
        zoomFactor = 1.0;
		ordersArrayController = nil;
		attachedWindow = nil;
		firstVisibleRoom = 0;
    }
    return self;
}

- (void) awakeFromNib
{
	[self setFirstVisibleDay:[NSCalendarDate dateWithYear:2008 month:05 day:17 hour:0 minute:0 second:0 timeZone:[NSTimeZone defaultTimeZone]]];
	
	// Scroller
	verticalSCroller = [[NSScroller alloc] initWithFrame:NSMakeRect([self bounds].size.width-24, [self calendarHeight],24,[self bounds].size.height-[self calendarHeight])];
	[self addSubview:verticalSCroller];
	[verticalSCroller setTarget:self];
	[verticalSCroller setAction:@selector(scrollerAction:)];
}

#pragma mark -
#pragma mark Accessors

- (MOHotels*) hotel
{
	if( [self ordersArrayController] && [[[self ordersArrayController] arrangedObjects] count] > 0  )
	{
		return [[[[self ordersArrayController] arrangedObjects] objectAtIndex:0] hotel];
	}
	
	return nil;
}

- (NSArray*) rooms
{
	if( [self hotel] )
	{
		NSArrayController* c = [[NSArrayController alloc] init];
		[c setContent:[[self hotel] rooms]];
		[c setSortDescriptors:[NSArray arrayWithObject:[[NSSortDescriptor alloc] initWithKey:@"nameForSort" ascending:YES]]];
		[c rearrangeObjects];
		
		return [c arrangedObjects];
		// return [[self hotel] rooms];
	}
	
	return nil;
}

- (int) roomsCount
{
	if( [self rooms] )
		return [[self rooms] count];
	
	return 0;
}

- (int) rowForRoom:(MORooms*) room
{
	if( [self rooms] )
	{
		int i=0;
		int rindex = 0;
		for( MORooms* r in [self rooms] )
		{
			if( rindex >= [self firstVisibleRoom] )
			{
				if( room == r )
					return i;
				
				i++;
			}
			rindex++;
		}
	}
	
	return -1;
}

- (int) firstVisibleRoom
{
	return firstVisibleRoom;
}

- (void) setFirstVisibleRoom:(int)roomindex
{
	firstVisibleRoom = roomindex;
	[self setNeedsDisplay:YES];
}

- (NSDate*) firstVisibleDay
{
	return firstVisibleDay;
}

- (int) dayFromDate:(NSDate*)date
{
	return [date timeIntervalSinceDate:[self firstVisibleDay]]/86400;
}

- (void) setFirstVisibleDay:(NSDate*)date
{
	firstVisibleDay = date;
	[self setNeedsDisplay:YES];
}

- (NSDate*) lastVisibleDay;
{
	return [[self firstVisibleDay] addTimeInterval:(86400*[self visibleDays])]; 
}

- (int) visibleDays
{
	return ([self frame].size.width - [self roomWidth]) / [self dayWidth] + 1;
}

- (int) visibleRooms
{
	return ([self frame].size.height - [self calendarHeight]) / [self rowHeight];
}

- (float) zoomFactor
{
	return zoomFactor;
}

- (void) setZoomFactor:(float)factor
{
	zoomFactor = factor;
	[self setNeedsDisplay:YES];
}

- (NSManagedObjectContext*) managedObjectContext
{
	return managedObjectContext;
}

- (void) setManagedObjectContext:(NSManagedObjectContext*)context
{
	managedObjectContext = context;
	[self setNeedsDisplay:YES];
}

- (NSArrayController*) ordersArrayController
{
	return ordersArrayController;
}

- (void) setOrdersArrayController:(NSArrayController*)ac
{
	ordersArrayController = ac;
	
	[self setNeedsDisplay:YES];
}

- (float) calendarHeight
{
	return 32.0 * [self zoomFactor];
}

- (float) dayWidth
{
	return 32.0 * [self zoomFactor];
}

- (float) rowHeight
{
	return 24.0 * [self zoomFactor];
}

- (float) roomWidth
{
	return 128.0 * [self zoomFactor];
}

- (NSColor*) backColor
{
	return [NSColor whiteColor];
}

- (NSColor*) daySeparatorLineColor
{
	return [NSColor lightGrayColor];
}

- (NSColor*) weekSeparatorLineColor
{
	return [NSColor blueColor];
}

- (NSColor*) monthSeperatorLineColor
{
	return [NSColor redColor];
}

- (NSColor*) roomSeparatorLineColor
{
	return [NSColor darkGrayColor];
}

- (NSColor*) roomBackColor
{
	return [NSColor selectedTextBackgroundColor];
}

- (NSColor*) dayBackColor
{
	return [NSColor selectedTextBackgroundColor];
}


#pragma mark -
#pragma mark Overrides

- (BOOL)isFlipped
{
	return YES;
}

#pragma mark -
#pragma mark Drawing

- (void)drawRect:(NSRect)rect 
{
	float ra = (float)[self roomsCount];
	float rr = ((float)[self roomsCount] - [self visibleRooms]);
	float rs1 = (1.0 / rr) * (float)[self firstVisibleRoom];
	float rs2 = (1.0 / ra) * (float)[self visibleRooms];
	
	[verticalSCroller setFrame:NSMakeRect([self bounds].size.width-[NSScroller scrollerWidth], [self calendarHeight],[NSScroller scrollerWidth],[self bounds].size.height-[self calendarHeight])];
	[verticalSCroller setFloatValue:rs1 knobProportion:rs2];
	if( [verticalSCroller knobProportion] >= 1.0 )
		[verticalSCroller setEnabled:NO];
	else
		[verticalSCroller setEnabled:YES];

	
	// Definizioni
	NSRect bounds = [self bounds];
	NSRect r;
	NSFont* f;
	NSMutableDictionary* textStyle = [[NSMutableDictionary alloc] init];
	NSMutableParagraphStyle* par = [[NSMutableParagraphStyle alloc] init];
	NSArray* days = [NSArray arrayWithObjects:@"Dom",@"Lun",@"Mar",@"Mer",@"Gio",@"Ven",@"Sab",nil];
	
	NSShadow*	reliefShadow = [[NSShadow alloc] init];
	[reliefShadow setShadowColor:[NSColor highlightColor ]];
	[reliefShadow setShadowOffset:NSMakeSize(1.5*[self zoomFactor],-1.5*[self zoomFactor])];

	NSShadow* objShadow = [[NSShadow alloc] init]; 
	[objShadow setShadowOffset:NSMakeSize(3.0*[self zoomFactor], -3.0*[self zoomFactor])]; 
	[objShadow setShadowBlurRadius:3.0*[self zoomFactor]]; 
	[objShadow setShadowColor:[[NSColor blackColor] colorWithAlphaComponent:0.3]]; 
	
	// Quadro
	[[self backColor ] set];
	r = NSMakeRect([self roomWidth],[self calendarHeight],bounds.size.width-[self roomWidth],bounds.size.height-[self calendarHeight]);
	[NSBezierPath fillRect:r];
	for( int i = 0 ; i < [self visibleDays] ; i++ )
	{
		NSCalendarDate* day = [[self firstVisibleDay] addTimeInterval:(86400*i)];
		
		// Separatore verticale		
		NSBezierPath* path = [NSBezierPath bezierPath];
		
		if( [day dayOfMonth] == 1 )
		{
			[[self monthSeperatorLineColor] set];
			[path setLineWidth:1.5*[self zoomFactor]];
		}
		else if( [day dayOfWeek] < 2  )	
		{
			[[self weekSeparatorLineColor] set];
			[path setLineWidth:0.75*[self zoomFactor]];
		}
		else
		{
			[[NSColor gridColor] set];
			[path setLineWidth:0.5*[self zoomFactor]];
		}
		
		[path moveToPoint:NSMakePoint([self roomWidth]+i*[self dayWidth],[self calendarHeight])];
		[path lineToPoint:NSMakePoint([self roomWidth]+i*[self dayWidth],bounds.size.height)];
		[path stroke];
	}
	
	// Cancella le tracking areas
	NSArray* areas = [[self trackingAreas] copy];
	
	for( NSTrackingArea* area in areas )
	{
		[self removeTrackingArea:area];
	}
	
	// Scorre gli ordini di questo hotel
	if( [self ordersArrayController] )
	{
		// Tutti le allocazioni
		for( MOOrders* order in [[self ordersArrayController] arrangedObjects] )
		{
			for( MOAllocations* allocation in [order allocations] )
			{
				if( [[[self ordersArrayController] selectedObjects] indexOfObject:allocation] == NSNotFound )
					[self drawAllocation:allocation];
			}
		}
	}
	
		
	// Calendario
	[NSGraphicsContext saveGraphicsState]; 
	[objShadow set]; 
	[[self dayBackColor] set];
	r = NSMakeRect([self roomWidth],0,bounds.size.width-[self roomWidth],[self calendarHeight]);
	[NSBezierPath fillRect:r];
	[NSGraphicsContext restoreGraphicsState]; 
	[par setAlignment:NSCenterTextAlignment];
	for( int i = 0 ; i < [self visibleDays] ; i++ )
	{
		NSCalendarDate* day = [[self firstVisibleDay] addTimeInterval:(86400*i)];
		
		f = [NSFont fontWithName:@"Helvetica Bold" size:14*[self zoomFactor]];
		r = NSMakeRect([self roomWidth]+i*[self dayWidth],0,[self dayWidth],[self calendarHeight]/2);
		NSString* dayname = [NSString stringWithFormat:@"%d", [day dayOfMonth]];
		[textStyle removeAllObjects];
		[textStyle setObject:f forKey:NSFontAttributeName];
		[textStyle setObject:par forKey:NSParagraphStyleAttributeName];
		[textStyle setObject:[NSColor darkGrayColor] forKey:NSForegroundColorAttributeName];
		[textStyle setObject:reliefShadow forKey:NSShadowAttributeName];
		
		if( [day dayOfWeek] == 0 )
			[textStyle setObject:[NSColor redColor] forKey:NSForegroundColorAttributeName];

		[ dayname drawInRect:r withAttributes:textStyle];

		r = NSMakeRect([self roomWidth]+i*[self dayWidth],[self calendarHeight]/2,[self dayWidth],[self calendarHeight]/2);
		f = [NSFont fontWithName:@"Helvetica Bold" size:11*[self zoomFactor]];
		[textStyle setObject:f forKey:NSFontAttributeName];
		// [textStyle removeObjectForKey:NSShadowAttributeName];
		[ [days objectAtIndex:[day dayOfWeek]] drawInRect:r withAttributes:textStyle];
		
		// Separatore verticale
		[[NSColor darkGrayColor] set];
		NSBezierPath* path = [NSBezierPath bezierPath];
		[path setLineWidth:0.2*[self zoomFactor]];
		[path moveToPoint:NSMakePoint([self roomWidth]+i*[self dayWidth],0)];
		[path lineToPoint:NSMakePoint([self roomWidth]+i*[self dayWidth],[self calendarHeight] )];
		[path stroke];
	}
	[[NSColor whiteColor] set];
	NSBezierPath* path = [NSBezierPath bezierPath];
	[path setLineWidth:1*[self zoomFactor]];
	[path moveToPoint:NSMakePoint([self roomWidth],0)];
	[path lineToPoint:NSMakePoint(bounds.size.width,0)];
	[path stroke];
	[[NSColor blackColor] set];
	path = [NSBezierPath bezierPath];
	[path setLineWidth:0.25*[self zoomFactor]];
	[path moveToPoint:NSMakePoint([self roomWidth],[self calendarHeight])];
	[path lineToPoint:NSMakePoint(bounds.size.width,[self calendarHeight])];
	[path stroke];
	
	// Camere
	[NSGraphicsContext saveGraphicsState]; 
	[objShadow setShadowOffset:NSMakeSize(3.0*[self zoomFactor], 0)]; 
	[objShadow set]; 
	[[self roomBackColor ] set];
	r = NSMakeRect(0,[self calendarHeight],[self roomWidth],bounds.size.height-[self calendarHeight]);
	[NSBezierPath fillRect:r];
	[NSGraphicsContext restoreGraphicsState]; 

	f = [NSFont fontWithName:@"Helvetica Bold" size:14*[self zoomFactor]];
	[textStyle removeAllObjects];
	[textStyle setObject:f forKey:NSFontAttributeName];
	[textStyle setObject:reliefShadow forKey:NSShadowAttributeName];
	[textStyle setObject:[NSColor darkGrayColor] forKey:NSForegroundColorAttributeName];
	if( [self rooms] )
	{
		int y = [self calendarHeight];
		int index = 0;
		for( MORooms* room in [self rooms] )
		{
			if( index >= [self firstVisibleRoom] )
			{
				r = NSMakeRect(0,y, [self roomWidth],y+[self rowHeight]);
				[[room name] drawInRect:r withAttributes:textStyle];
				
				[[NSColor shadowColor] set];
				path = [NSBezierPath bezierPath];
				[path setLineWidth:0.25*[self zoomFactor]];
				[path moveToPoint:NSMakePoint(0,y+[self rowHeight])];
				[path lineToPoint:NSMakePoint([self roomWidth],y+[self rowHeight])];
				[path stroke];

				[[NSColor highlightColor] set];
				path = [NSBezierPath bezierPath];
				[path setLineWidth:0.5*[self zoomFactor]];
				[path moveToPoint:NSMakePoint(0,y+[self rowHeight]+0.5*[self zoomFactor])];
				[path lineToPoint:NSMakePoint([self roomWidth],y+[self rowHeight]+0.5*[self zoomFactor])];
				[path stroke];
				
				[[NSColor gridColor] set];
				NSBezierPath* path = [NSBezierPath bezierPath];
				[path setLineWidth:0.2*[self zoomFactor]];
				[path moveToPoint:NSMakePoint([self roomWidth],y+[self rowHeight])];
				[path lineToPoint:NSMakePoint(bounds.size.width,y+[self rowHeight])];
				[path stroke];
				
				y += [self rowHeight];
			}
			index++;
		}
	}
	
	// Angolo superiore sinistro
	[[self dayBackColor] set];
	r = NSMakeRect(0,0,[self roomWidth],[self calendarHeight]);
	[NSBezierPath fillRect:r];
	[[NSColor whiteColor] set];
	path = [NSBezierPath bezierPath];
	[path setLineWidth:1*[self zoomFactor]];
	[path moveToPoint:NSMakePoint(0,0)];
	[path lineToPoint:NSMakePoint([self roomWidth],0)];
	[path stroke];
	[[NSColor darkGrayColor] set];
	path = [NSBezierPath bezierPath];
	[path setLineWidth:0.25*[self zoomFactor]];
	[path moveToPoint:NSMakePoint(0,[self calendarHeight])];
	[path lineToPoint:NSMakePoint([self roomWidth],[self calendarHeight])];
	[path stroke];
	
	// Scorre gli ordini di questo hotel
	if( [self ordersArrayController] )
	{
		// Solo quelle selezionate
		for( MOOrders* order in [[self ordersArrayController] selectedObjects] )
			for( MOAllocations* allocation in [order allocations] )
				[self drawAllocation:allocation];
		
	}
	
}

- (void) drawAllocation:(MOAllocations*)allocation
{
	// Determina se l'allocazione non deve essere disegnata
	
	int from = [self dayFromDate:[allocation from]];
	if( from < 0 )
		return;
	
	int to = [self dayFromDate:[allocation to]];
	if( to > [self visibleDays] )
		return;
	
	int r = [self rowForRoom:[allocation room]];
	
	if( r < 0 )
		return;
	
	// Determina se l'allocazione appartiene alla prenotazione selezionata
	
	NSShadow* objShadow = [[NSShadow alloc] init]; 
	[objShadow setShadowOffset:NSMakeSize(3.0*[self zoomFactor], -3.0*[self zoomFactor])]; 
	[objShadow setShadowBlurRadius:5.0*[self zoomFactor]]; 
	[objShadow setShadowColor:[[NSColor blackColor] colorWithAlphaComponent:1]]; 

	[NSGraphicsContext saveGraphicsState]; 
	int index = [[[self ordersArrayController] selectedObjects] indexOfObject:[allocation order]];
	NSColor* col;
	BOOL selected = NO;
	if( index != NSNotFound )
	{
		col = [NSColor redColor];
		[objShadow set];
		selected = YES;
	}
	else
	{
		col = [NSColor blueColor];
	}
	
	float lineDash[2]; 
	lineDash[0]=2.0*[self zoomFactor]; 
	lineDash[1]=2.0*[self zoomFactor]; 
	NSColor* selColor = [NSColor selectedTextBackgroundColor];
	float selWidth = 1*[self zoomFactor];
	
	NSGradient* aGradient = [[NSGradient alloc] initWithColorsAndLocations:col, (CGFloat)0.1,[NSColor blackColor],(CGFloat)2,nil]; 

	// Triangolo iniziale
	[[NSColor whiteColor] set];
	NSBezierPath* path = [NSBezierPath bezierPath];
	[path setLineWidth:selWidth];
	[path setLineJoinStyle:NSRoundLineJoinStyle];
	[path moveToPoint:NSMakePoint([self roomWidth]+[self dayWidth]*(from+1)-1,[self calendarHeight]+r*[self rowHeight]+1)];
	[path lineToPoint:NSMakePoint([self roomWidth]+[self dayWidth]*(from+1)+1-[self dayWidth]/2.0, [self calendarHeight]+r*[self rowHeight]+[self rowHeight]/2.0)];
	[path lineToPoint:NSMakePoint([self roomWidth]+[self dayWidth]*(from+1)-1,[self calendarHeight]+r*[self rowHeight]+[self rowHeight]-1)];
	[path closePath];	
	if( selected )
	{
		[aGradient drawInBezierPath:path angle:90];
		[objShadow set];
		/*
		[selColor set];
		[path setLineDash:lineDash count:2 phase:0.0]; 
		
		[path stroke];
		 */
	}		
	else
	{
		[col set];
		[path fill];
	}

	// Rettangolo centrale
	NSRect rect = NSMakeRect([self roomWidth]+[self dayWidth]*(from+1), 
							 [self calendarHeight]+r*[self rowHeight]+1,
							 (to-from-1)*[self dayWidth],
							 [self rowHeight]-2);
	path = [NSBezierPath bezierPathWithRect:rect];
	[path setLineWidth:selWidth];
	[path setLineJoinStyle:NSRoundLineJoinStyle];
	// [NSBezierPath fillRect:rect];	
	if( selected )
	{
		[aGradient drawInBezierPath:path angle:90];
		[objShadow set];
		
		/*
		[selColor set];
		[path setLineDash:lineDash count:2 phase:0.0]; 
		[path stroke];
		 */
	}
	else
	{
		[col set];
		[path fill];
	}
	
	// triangolo finale
	path = [NSBezierPath bezierPath];
	[path moveToPoint:NSMakePoint([self roomWidth]+[self dayWidth]*(to)+1,[self calendarHeight]+r*[self rowHeight]+1)];
	[path lineToPoint:NSMakePoint([self roomWidth]+[self dayWidth]*(to)-1+[self dayWidth]/2.0, [self calendarHeight]+r*[self rowHeight]+[self rowHeight]/2.0)];
	[path lineToPoint:NSMakePoint([self roomWidth]+[self dayWidth]*(to)+1,[self calendarHeight]+r*[self rowHeight]+[self rowHeight]-1)];
	[path closePath];	
	// [path fill];
	if( selected )
	{
		[aGradient drawInBezierPath:path angle:90];
		[objShadow set];
		/*
		[selColor set];
		[path setLineDash:lineDash count:2 phase:0.0]; 
		[path stroke];
		 */
	}		
	else
	{
		[col set];
		[path fill];
	}
	
	[NSGraphicsContext restoreGraphicsState]; 
	
	// Testo
	NSMutableDictionary* textStyle = [[NSMutableDictionary alloc] init];
	NSMutableParagraphStyle* par = [[NSMutableParagraphStyle alloc] init];
	NSShadow*	reliefShadow = [[NSShadow alloc] init];
	[reliefShadow setShadowColor:[NSColor highlightColor ]];
	[reliefShadow setShadowOffset:NSMakeSize(1.5*[self zoomFactor],-1.5*[self zoomFactor])];
	[par setAlignment:NSCenterTextAlignment];
	NSFont* f = [NSFont fontWithName:@"Helvetica" size:12*[self zoomFactor]];
	[textStyle setObject:f forKey:NSFontAttributeName];
	[textStyle setObject:par forKey:NSParagraphStyleAttributeName];
	[textStyle setObject:[NSColor selectedTextBackgroundColor] forKey:NSForegroundColorAttributeName];
	rect.origin.y += 3*[self zoomFactor];
	[[allocation allocationText] drawInRect:rect withAttributes:textStyle];

	NSInteger options = NSTrackingCursorUpdate | NSTrackingMouseEnteredAndExited | NSTrackingActiveInActiveApp;
	NSMutableDictionary* dic = [NSDictionary dictionaryWithObject:allocation forKey:@"allocation"];
	NSTrackingArea* area = [[NSTrackingArea alloc] initWithRect:rect options:options owner:self userInfo:dic];
	[self addTrackingArea:area];
	// TODO: Aggiungere dati sul rettangolo dell'area
}

#pragma mark -
#pragma mark Delegates

- (void)cursorUpdate:(NSEvent *)event
{
	
}

- (void)mouseEntered:(NSEvent *)event
{
	if( [event userData] )
	{
		NSDictionary* dic = [event userData];
		
		MOAllocations* allocation = [dic objectForKey:@"allocation"];
		
		[[NSCursor pointingHandCursor] set];
		
		// Attach/detach window.
		if (!attachedWindow) 
		{
			[[popupView allocationController] setContent:[NSMutableDictionary dictionaryWithObject:allocation forKey:@"selection"]];
			
			[[popupView code] setStringValue:[[allocation order] code]];
			[[popupView period1] setValue:[allocation from]]; 
			if( [allocation comment] )
				[[popupView comment] setStringValue:[allocation comment]];
			
			attachedWindow = [[MAAttachedWindow alloc] initWithView:popupView 
													attachedToPoint:[NSEvent mouseLocation]
														   inWindow:nil 
															 onSide:MAPositionAutomatic
														 atDistance:0];
			[attachedWindow makeKeyAndOrderFront:self];
			
			[self setNeedsDisplay:NO];
		} 
	}	
}

- (void)mouseExited:(NSEvent *)theEvent
{
	if( attachedWindow )
	{
		[attachedWindow orderOut:self];
		attachedWindow = nil;
	}
	[[NSCursor arrowCursor] set];
}

- (void)viewWillStartLiveResize
{
}

- (void)scrollerAction:(id)sender
{
	float rr = ((float)[self roomsCount] - [self visibleRooms]);
	float rs = 1.0 / rr;

	float	pos = [sender floatValue];

	switch ([sender hitPart])
    {
		case NSScrollerKnob:
			[self setFirstVisibleRoom: rs * pos];
			break;
		case NSScrollerKnobSlot:
			[self setFirstVisibleRoom: rs * pos];
			break;
		case NSScrollerDecrementLine:
			if( pos > rs ) pos -= rs;
			break;
		case NSScrollerDecrementPage:
			pos -= rs*[self visibleRooms];
			if( pos < 0 )
				pos = 0.0;
			break;
		case NSScrollerIncrementLine:
			if( pos < (1.0-rs) ) pos += rs;
			break;
		case NSScrollerIncrementPage:
			pos += rs*[self visibleRooms];
			if( pos > 1 )
				pos = 1.0;
			break;
		case NSScrollerNoPart:
			break;
    }
	
	[self setFirstVisibleRoom:pos*rr];
	
}

- (void) nextWeek:(id)sender
{
	[self setFirstVisibleDay:[[self firstVisibleDay] addTimeInterval:86400*7]];
}

- (void) nextMonth:(id)sender
{
	[self setFirstVisibleDay:[[self firstVisibleDay] addTimeInterval:86400*30]];
}

- (void) previousWeek:(id)sender
{
	[self setFirstVisibleDay:[[self firstVisibleDay] addTimeInterval:-86400*7]];
}

- (void) previousMonth:(id)sender
{
	[self setFirstVisibleDay:[[self firstVisibleDay] addTimeInterval:-86400*30]];
}


@end
