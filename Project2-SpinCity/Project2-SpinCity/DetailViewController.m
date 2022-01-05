//
//  DetailViewController.m
//  Project2-SpinCity
//
//  Created by Sabir Myrzaev on 05.01.2022.
//

#import "DetailViewController.h"
#import "Album.h"

@interface DetailViewController ()
- (void)configureView;
@end

@implementation DetailViewController

#pragma mark - Managing the detail item

- (void)setDetailItem:(id)newDetailItem
{
    if (_detailItem != newDetailItem) {
        _detailItem = newDetailItem;
        
        // Update the view.
        [self configureView];
    }
}

- (void)configureView
{
    //  Update user interface for detailView
    
    if (self.detailItem) {
        self.albumTitleLabel.text = self.detailItem.title;
        self.priceLabel.text = [NSString stringWithFormat:@"$%@", self.detailItem.price];
        self.artistLabel.text = self.detailItem.artist;
        self.locationLabel.text = self.detailItem.locationInStore;
        self.descriptionTextView.text = self.detailItem.summary;
    }
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
  [self configureView];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
