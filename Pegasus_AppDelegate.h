//
//  Pegasus_AppDelegate.h
//  Pegasus
//
//  Created by Michele Longhi on 21/05/08.
//  Copyright __MyCompanyName__ 2008 . All rights reserved.
//

#import <Cocoa/Cocoa.h>

@interface Pegasus_AppDelegate : NSObject 
{
    IBOutlet NSWindow *window;
    
    NSPersistentStoreCoordinator *persistentStoreCoordinator;
    NSManagedObjectModel *managedObjectModel;
    NSManagedObjectContext *managedObjectContext;
}

- (NSPersistentStoreCoordinator *)persistentStoreCoordinator;
- (NSManagedObjectModel *)managedObjectModel;
- (NSManagedObjectContext *)managedObjectContext;

#pragma mark Actions

- (IBAction) saveAction:(id) sender;
- (IBAction) newWindowAction:(id) sender;
- (IBAction) openAdministrationWindowAction:(id) sender;

@end
