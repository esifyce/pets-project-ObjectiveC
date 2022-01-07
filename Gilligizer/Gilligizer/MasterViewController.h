//
//  MasterViewController.h
//  Gilligizer
//
// Created by Sabir Myrzaev on 06.01.2022.
//

#import <UIKit/UIKit.h>

#import <CoreData/CoreData.h>

@interface MasterViewController : UITableViewController <NSFetchedResultsControllerDelegate>
@property (weak, nonatomic) IBOutlet UISegmentedControl *segmentedControl;

@property (strong, nonatomic) NSFetchedResultsController *fetchedResultsController;
@property (strong, nonatomic) NSManagedObjectContext *managedObjectContext;
- (IBAction)segmentedControllValueChanged:(id)sender;

@end
