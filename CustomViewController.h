//
//  CustomViewController.h
//  Pegasus
//
//  Created by Michele Longhi on 21/05/08.
//  Copyright 2008 __MyCompanyName__. All rights reserved.
//

#import <Cocoa/Cocoa.h>
#import "MOHotels.h"

@interface CustomViewController : NSViewController 
{
	NSManagedObjectContext* managedObjectContext;
	
	MOHotels*		selectedHotel;
}

- (void) setManagedObjectContext:(NSManagedObjectContext*)context;
- (NSManagedObjectContext*) managedObjectContext;

-(void) setSelectedHotel:(MOHotels*)hotel;
- (MOHotels*) selectedHotel;

@end
