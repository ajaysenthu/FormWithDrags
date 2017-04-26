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

- (IBAction)showForm;

@property (weak, nonatomic) IBOutlet UIButton *showButton;


@property (weak, nonatomic) IBOutlet UIButton *submitButton;

- (IBAction)saveInArray;


@property (weak, nonatomic) IBOutlet UITextField *firstNameField;

@property (weak, nonatomic) IBOutlet UITextField *lastNameField;

@property (weak, nonatomic) IBOutlet UIStepper *experienceStepper;

@property (weak, nonatomic) IBOutlet UILabel *experienceYearsLabel;

@property (weak, nonatomic) IBOutlet UILabel *ageLabel;

@property (weak, nonatomic) IBOutlet UIPickerView *pickerView;

@property (weak, nonatomic) IBOutlet UISegmentedControl *genderSegments;

@property (weak, nonatomic) IBOutlet UILabel *genderLabel;
@property (weak, nonatomic) IBOutlet UITextField *tenthGradeField;
@property (weak, nonatomic) IBOutlet UITextField *twelthGradeField;

@property (weak, nonatomic) IBOutlet UITextField *almaMaterField;
@property (weak, nonatomic) IBOutlet UITextField *projectField;
@property (weak, nonatomic) IBOutlet UITextField *companyNameField;


@property (weak, nonatomic) IBOutlet UITextField *mobileField;

@property (weak, nonatomic) IBOutlet UITextField *emailField;

@property (weak, nonatomic) IBOutlet UITextField *facebookField;

@property (weak, nonatomic) IBOutlet UIView *actualView;


@property (weak, nonatomic) IBOutlet UIScrollView *actualScroll;


@property UIImageView *arrow;

@property NSMutableArray *numberArray;

@property NSMutableArray *mainArray;

@property NSMutableArray *detailsArray;





@end

