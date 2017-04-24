//
//  ViewController.h
//  FormWithDrags
//
//  Created by Ajay on 4/20/17.
//  Copyright © 2017 AJ Inc. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController<UIPickerViewDataSource, UIPickerViewDelegate, UITextFieldDelegate>

@property (weak, nonatomic) IBOutlet UIButton *addButton;

@property (weak, nonatomic) IBOutlet UIStepper *experienceStepper;

@property (weak, nonatomic) IBOutlet UILabel *experienceYearsLabel;

@property (weak, nonatomic) IBOutlet UILabel *number;

@property (weak, nonatomic) IBOutlet UIPickerView *pickerView;

@property (weak, nonatomic) IBOutlet UISegmentedControl *genderSegments;
@property (weak, nonatomic) IBOutlet UILabel *genderLabel;

@property (weak, nonatomic) IBOutlet UITextField *mobileField;
@property (weak, nonatomic) IBOutlet UITextField *emailField;
@property (weak, nonatomic) IBOutlet UITextField *facebookField;

@property (weak, nonatomic) IBOutlet UIView *actualView;

@property UIImageView *arrow;

@property NSMutableArray *numberArray;


@end

