//
//  AlbumTableViewCell.h
//  Project2-SpinCity
//
//  Created by Sabir Myrzaev on 05.01.2022.
//

#import <UIKit/UIKit.h>

@interface AlbumTableViewCell : UITableViewCell
@property (weak, nonatomic) IBOutlet UILabel *albumTitleLabel;
@property (weak, nonatomic) IBOutlet UILabel *albumSummaryLabel;
@property (weak, nonatomic) IBOutlet UILabel *priceLabel;
@end
