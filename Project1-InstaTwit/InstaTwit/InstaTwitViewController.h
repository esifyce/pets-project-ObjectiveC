//
//  ViewController.h
//  InstaTwit
//
//  Created by Sabir Myrzaev on 29.12.2021.
//

#import <UIKit/UIKit.h>

@interface InstaTwitViewController : UIViewController < UIPickerViewDataSource, UIPickerViewDelegate >

@property (weak, nonatomic) IBOutlet UIPickerView *tweetPicker;
@property (weak, nonatomic) IBOutlet UITextField *notesField;

- (IBAction)textFieldDoneEditing:(id)sender;
- (IBAction)tweetButtonTapped:(id)sender;

@end
