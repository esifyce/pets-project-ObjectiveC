//
//  DetailViewController.h
//  Project2-SpinCity
//
//  Created by Sabir Myrzaev on 05.01.2022.
//

#import <UIKit/UIKit.h>
@class Album;

@interface DetailViewController : UITableViewController
@property (weak, nonatomic) IBOutlet UILabel *albumTitleLabel;
@property (weak, nonatomic) IBOutlet UILabel *priceLabel;
@property (weak, nonatomic) IBOutlet UILabel *artistLabel;
@property (weak, nonatomic) IBOutlet UILabel *locationLabel;
@property (weak, nonatomic) IBOutlet UITextView *descriptionTextView;

@property (strong, nonatomic) Album *detailItem;

@end
