//
//  ViewController.m
//  FormWithDrags
//
//  Created by Ajay on 4/20/17.
//  Copyright © 2017 AJ Inc. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

{
    
    UISegmentedControl *segmentedControl;
    
    NSMutableArray *labelArray;
    
    UILabel *label;
    
}



//#define kOFFSET_FOR_KEYBOARD 110.0

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    
    
    self.mainArray = [[NSMutableArray alloc]init];


    
    _actualScroll.hidden = YES;
    
    
    
    UITapGestureRecognizer *tap = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(dismissKeyboard)];
    
    [self.actualView addGestureRecognizer:tap];

    _mobileField.delegate = self;
    
    _firstNameField.delegate = self;
    
    _firstNameField.keyboardType = UIKeyboardTypeASCIICapable;
    
    _emailField.delegate = self;
    
    _facebookField.delegate = self;
    
    _mobileField.keyboardType = UIKeyboardTypePhonePad;
    
    
    self.numberArray  = [[NSMutableArray alloc]initWithObjects:@"1",@"2",@"3",@"4",@"5",@"6",@"7",@"8",@"9",@"10",@"11",@"12",@"13",@"14",@"15",@"16",@"17",@"18",@"19",@"20",@"21",@"22",@"23",@"24",@"25",@"26",@"27",@"28",@"29",@"30",@"31",@"32",@"33",@"34",@"35",@"36",@"37",@"38",@"39",@"40",@"41",@"42",@"43",@"44",@"45",@"46",@"47",@"48",@"49",@"50",@"51",@"52",@"53",@"54",@"55",@"56",@"57",@"58",@"59",@"60",@"61",@"62",@"63",@"64",@"65",@"66",@"67",@"68",@"69",@"70",@"71",@"72",@"73",@"74",@"75",@"76",@"77",@"78",@"79",@"80",@"81",@"82",@"83",@"84",@"85",@"86",@"87",@"88",@"89",@"90",@"91",@"92",@"93",@"94",@"95",@"96",@"97",@"98",@"99",@"100", nil];
    
    
    [_genderSegments addTarget:self action:@selector(segmentName:) forControlEvents:UIControlEventValueChanged];
    
    
    
   
    
    
    
    [_experienceStepper addTarget:self action:@selector(stepper) forControlEvents:UIControlEventValueChanged];
    
    

    
    _arrow = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"phone"]];
    _arrow.frame = CGRectMake(2.0, 0.0, 22, 28);
    
//    _arrow.contentMode = UIViewContentModeCenter;
    
    
    _mobileField.leftView = _arrow;
    _mobileField.leftViewMode = UITextFieldViewModeAlways;
    
    
    
    _arrow = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"email"]];
    _arrow.frame = CGRectMake(2.0, 0.0, 22, 30);
    
    //    _arrow.contentMode = UIViewContentModeCenter;
    
    
    _emailField.leftView = _arrow;
    _emailField.leftViewMode = UITextFieldViewModeAlways;
    
    
    
    _arrow = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"fb"]];
    _arrow.frame = CGRectMake(2.0, 0.0, 22, 25);
    
    //    _arrow.contentMode = UIViewContentModeCenter;
    
    
    _facebookField.leftView = _arrow;
    _facebookField.leftViewMode = UITextFieldViewModeAlways;
    
    [_showButton addTarget:self action:@selector(createSegment:) forControlEvents:UIControlEventTouchUpInside];
    
    segmentedControl = [[UISegmentedControl alloc]initWithFrame:CGRectMake(10, 150, 220, 35)];

    
}


-(IBAction)saveInArray {
    
    
    _detailsArray = [[NSMutableArray alloc]init];
    
    [_detailsArray addObject:_firstNameField.text];
    [_detailsArray addObject:_lastNameField.text];
    [_detailsArray addObject:_ageLabel.text];
    [_detailsArray addObject:_genderLabel.text];
    [_detailsArray addObject:_tenthGradeField.text];
    [_detailsArray addObject:_twelthGradeField.text];
    [_detailsArray addObject:_almaMaterField.text];
    [_detailsArray addObject:_projectField.text];
    [_detailsArray addObject:_experienceYearsLabel.text];
    [_detailsArray addObject:_companyNameField.text];
    [_detailsArray addObject:_mobileField.text];
    [_detailsArray addObject:_emailField.text];
    [_detailsArray addObject:_facebookField.text];
    
    
    [_mainArray insertObject:_detailsArray atIndex:0];
    
    
    NSLog(@"count is %lu", _mainArray.count);
}

-(void)createSegment:(UIButton*)sender
{
    
    
    _actualScroll.hidden = YES;
    
    
    [self.view addSubview:segmentedControl];
    
    
    
    [segmentedControl insertSegmentWithTitle:[_detailsArray objectAtIndex:0] atIndex:0 animated:YES];
    
    [segmentedControl addTarget:self action:@selector(showDetails:) forControlEvents:UIControlEventAllEvents];
    
    
    
}


-(void)showDetails:(UISegmentedControl*)sender {
    
    
    
    [self removeLabels];
    
    labelArray = [[NSMutableArray alloc]init];
    
    
    for(int x=0; x<=480; x=x+40) {
        
        
        
        label = [[UILabel alloc]initWithFrame:CGRectMake(20, 200+x, 200, 50)];
        
        [labelArray addObject:label];
        
    }
    
    
    
    for(int index=0; index<=12; index++) {
        
        
        [self.view addSubview:[labelArray objectAtIndex:index]];
        
        
        label = [labelArray objectAtIndex:index];
        
        label.text = [[_mainArray objectAtIndex:segmentedControl.selectedSegmentIndex] objectAtIndex:index];
    }
    
}


//    if(segmentedControl.selectedSegmentIndex==index) {



//   }
//    } else if(segmentedControl.selectedSegmentIndex==1) {
//
//
//        temporaryLabel.text = [[mainArray objectAtIndex:1] objectAtIndex:index];
//
//    } else if(segmentedControl.selectedSegmentIndex==2) {
//
//
//        temporaryLabel.text = [[mainArray objectAtIndex:2] objectAtIndex:index];
//    }




-(void)removeLabels {
    
    
    for(int index=0; index<=12; index++) {
        
        
        [[labelArray objectAtIndex:index] removeFromSuperview];
        
    }
}





//    if(segmentedControl.selectedSegmentIndex==index) {



//   }
//    } else if(segmentedControl.selectedSegmentIndex==1) {
//
//
//        temporaryLabel.text = [[mainArray objectAtIndex:1] objectAtIndex:index];
//
//    } else if(segmentedControl.selectedSegmentIndex==2) {
//
//
//        temporaryLabel.text = [[mainArray objectAtIndex:2] objectAtIndex:index];
//    }







- (IBAction)showForm {

    
    [segmentedControl removeFromSuperview];
    
    [self removeLabels];

    _actualScroll.hidden = NO;
}


-(void)dismissKeyboard

{
    
    [_mobileField resignFirstResponder];
    
    [_firstNameField resignFirstResponder];
    
    [_lastNameField resignFirstResponder];
    
    [_tenthGradeField resignFirstResponder];
    
    [_twelthGradeField resignFirstResponder];
    
    [_almaMaterField resignFirstResponder];
    
    [_projectField resignFirstResponder];
    
    [_companyNameField resignFirstResponder];
    
    [_emailField resignFirstResponder];
}

- (BOOL)textFieldShouldReturn:(UITextField *)textField {
    
    [textField resignFirstResponder];
    
    
    
    return YES;
    
}

- (BOOL)textField:(UITextField *)textField shouldChangeCharactersInRange:(NSRange)range replacementString:(NSString *)string {  // return NO to not change text


    BOOL result = YES;
    
    
    if(textField==_firstNameField)

    {
    
    if([string isEqual:@"1"]) {
        
        result = NO;
    }
    }
    return result;
}

//-(void)keyboardWillShow {
//    // Animate the current view out of the way
//    if (self.actualView.frame.origin.y >= 0)
//    {
//        [self setViewMovedUp:YES];
//    }
//    else if (self.actualView.frame.origin.y < 0)
//    {
//        [self setViewMovedUp:NO];
//    }
//}
//
//-(void)keyboardWillHide {
//    if (self.actualView.frame.origin.y >= 0)
//    {
//        [self setViewMovedUp:YES];
//    }
//    else if (self.actualView.frame.origin.y < 0)
//    {
//        [self setViewMovedUp:NO];
//    }
//}
//
//-(void)textFieldDidBeginEditing:(UITextField *)sender
//{
//    if ([sender isEqual:_mobileField])
//    {
//        //move the main view, so that the keyboard does not hide it.
//        if  (self.actualView.frame.origin.y >= 0)
//        {
//            [self setViewMovedUp:YES];
//        }
//    }
//}
//
//
////method to move the view up/down whenever the keyboard is shown/dismissed
//-(void)setViewMovedUp:(BOOL)movedUp
//{
//    [UIView beginAnimations:nil context:NULL];
//    [UIView setAnimationDuration:0.3]; // if you want to slide up the view
//    
//    CGRect rect = self.view.frame;
//    if (movedUp)
//    {
//        // 1. move the view's origin up so that the text field that will be hidden come above the keyboard
//        // 2. increase the size of the view so that the area behind the keyboard is covered up.
//        rect.origin.y -= kOFFSET_FOR_KEYBOARD;
//        rect.size.height += kOFFSET_FOR_KEYBOARD;
//    }
//    else
//    {
//        // revert back to the normal state.
//        rect.origin.y += kOFFSET_FOR_KEYBOARD;
//        rect.size.height -= kOFFSET_FOR_KEYBOARD;
//    }
//    self.view.frame = rect;
//    
//    [UIView commitAnimations];
//}
//
//
//- (void)viewWillAppear:(BOOL)animated
//{
//    [super viewWillAppear:animated];
//    // register for keyboard notifications
//    [[NSNotificationCenter defaultCenter] addObserver:self
//                                             selector:@selector(keyboardWillShow)
//                                                 name:UIKeyboardWillShowNotification
//                                               object:nil];
//    
//    [[NSNotificationCenter defaultCenter] addObserver:self
//                                             selector:@selector(keyboardWillHide)
//                                                 name:UIKeyboardWillHideNotification
//                                               object:nil];
//}
//
//- (void)viewWillDisappear:(BOOL)animated
//{
//    [super viewWillDisappear:animated];
//    // unregister for keyboard notifications while not visible.
//    [[NSNotificationCenter defaultCenter] removeObserver:self
//                                                    name:UIKeyboardWillShowNotification
//                                                  object:nil];
//    
//    [[NSNotificationCenter defaultCenter] removeObserver:self
//                                                    name:UIKeyboardWillHideNotification
//                                                  object:nil];
//}

-(void)stepper {
    
    
    _experienceYearsLabel.text = [NSString stringWithFormat:@"%.1f", _experienceStepper.value];
    
    NSLog(@"%.1f", _experienceStepper.value);
}

-(void)segmentName:(UISegmentedControl*)ss {
    
    if(ss==_genderSegments) {
        
        NSInteger index = _genderSegments.selectedSegmentIndex;
        
        _genderLabel.text = [_genderSegments titleForSegmentAtIndex:index];
        
 
    }
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


// returns the number of 'columns' to display.
- (NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView {
    
    return 1;
}

// returns the # of rows in each component..
- (NSInteger)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent: (NSInteger)component {
    
    
    return 100;
}

-(NSString *)pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row   forComponent:(NSInteger)component
{
    
    
    return [self.numberArray objectAtIndex:row];

}







- (void)pickerView:(UIPickerView *)pickerView didSelectRow:(NSInteger)row   inComponent:(NSInteger)component
{
    
    
    NSLog(@"Selected Row %i", (int)row);
    switch(row)
    {
            
        case 0:
            self.ageLabel.text = [_numberArray objectAtIndex:row];
           
            break;
        case 1:
            self.ageLabel.text = [_numberArray objectAtIndex:row];
            
            break;
        case 2:
            self.ageLabel.text = [_numberArray objectAtIndex:row];
          
            break;
        case 3:
            self.ageLabel.text = [_numberArray objectAtIndex:row];
           
            break;
        case 4:
            self.ageLabel.text = [_numberArray objectAtIndex:row];
            
            break;
        case 5:
            self.ageLabel.text = [_numberArray objectAtIndex:row];

            break;
            
        case 6:
            self.ageLabel.text = [_numberArray objectAtIndex:row];
            
            break;
            
        case 7:
            self.ageLabel.text = [_numberArray objectAtIndex:row];
            
            break;
            
        case 8:
            self.ageLabel.text = [_numberArray objectAtIndex:row];
            
            break;
            
        case 9:
            self.ageLabel.text = [_numberArray objectAtIndex:row];
            
            break;
            
        case 10:
            self.ageLabel.text = [_numberArray objectAtIndex:row];
            
            break;
            
        case 11:
            self.ageLabel.text = [_numberArray objectAtIndex:row];
            
            break;
            
        case 12:
            self.ageLabel.text = [_numberArray objectAtIndex:row];
            
            break;
            
        case 13:
            self.ageLabel.text = [_numberArray objectAtIndex:row];
            
            break;
            
        case 14:
            self.ageLabel.text = [_numberArray objectAtIndex:row];
            
            break;
            
        case 15:
            self.ageLabel.text = [_numberArray objectAtIndex:row];
            
            break;
            
        case 16:
            self.ageLabel.text = [_numberArray objectAtIndex:row];
            
            break;
            
        case 17:
            self.ageLabel.text = [_numberArray objectAtIndex:row];
            
            break;
            
        case 18:
            self.ageLabel.text = [_numberArray objectAtIndex:row];
            
            break;
            
        case 19:
            self.ageLabel.text = [_numberArray objectAtIndex:row];
            
            break;
            
        case 20:
            self.ageLabel.text = [_numberArray objectAtIndex:row];
            
            break;
            
        case 21:
            self.ageLabel.text = [_numberArray objectAtIndex:row];
            
            break;
            
        case 22:
            self.ageLabel.text = [_numberArray objectAtIndex:row];
            
            break;
            
        case 23:
            self.ageLabel.text = [_numberArray objectAtIndex:row];
            
            break;
            
        case 24:
            self.ageLabel.text = [_numberArray objectAtIndex:row];
            
            break;
            
        case 25:
            self.ageLabel.text = [_numberArray objectAtIndex:row];
            
            break;
            
        case 26:
            self.ageLabel.text = @"27";
            
            break;
            
        case 27:
            self.ageLabel.text = @"28";
            
            break;
            
        case 28:
            self.ageLabel.text = @"29";
            
            break;
            
        case 29:
            self.ageLabel.text = @"30";
            
            break;
            
        case 30:
            self.ageLabel.text = @"31";
            
            break;
            
        case 31:
            self.ageLabel.text = @"32";
            
            break;
            
        case 32:
            self.ageLabel.text = @"33";
            
            break;
            
        case 33:
            self.ageLabel.text = @"34";
            
            break;
            
        case 34:
            self.ageLabel.text = @"35";
            
            break;
            
        case 35:
            self.ageLabel.text = @"36";
            
            break;
            
        case 36:
            self.ageLabel.text = @"37";
            
            break;
            
        case 37:
            self.ageLabel.text = @"38";
            
            break;
            
        case 38:
            self.ageLabel.text = @"39";
            
            break;
            
        case 39:
            self.ageLabel.text = @"40";
            
            break;
            
        case 40:
            self.ageLabel.text = @"41";
            
            break;
            
        case 41:
            self.ageLabel.text = @"42";
            
            break;
            
        case 42:
            self.ageLabel.text = @"43";
            
            break;
            
        case 43:
            self.ageLabel.text = @"44";
            
            break;
            
        case 44:
            self.ageLabel.text = @"45";
            
            break;
            
        case 45:
            self.ageLabel.text = @"46";
            
            break;
            
        case 46:
            self.ageLabel.text = @"47";
            
            break;
            
        case 47:
            self.ageLabel.text = @"48";
            
            break;
            
        case 48:
            self.ageLabel.text = @"49";
            
            break;
            
        case 49:
            self.ageLabel.text = @"50";
            
            break;
            
        case 50:
            self.ageLabel.text = @"51";
            
            break;
            
        case 51:
            self.ageLabel.text = @"52";
            
            break;
            
        case 52:
            self.ageLabel.text = @"53";
            
            break;
            
        case 53:
            self.ageLabel.text = @"54";
            
            break;
            
        case 54:
            self.ageLabel.text = @"55";
            
            break;
            
        case 55:
            self.ageLabel.text = @"56";
            
            break;
            
        case 56:
            self.ageLabel.text = @"57";
            
            break;
            
        case 57:
            self.ageLabel.text = @"58";
            
            break;
            
        case 58:
            self.ageLabel.text = @"59";
            
            break;
            
        case 59:
            self.ageLabel.text = @"60";
            
            break;
            
        case 60:
            self.ageLabel.text = @"61";
            
            break;
            
        case 61:
            self.ageLabel.text = @"62";
            
            break;
            
        case 62:
            self.ageLabel.text = @"63";
            
            break;
            
        case 63:
            self.ageLabel.text = @"64";
            
            break;
            
        case 64:
            self.ageLabel.text = @"65";
            
            break;
            
        case 65:
            self.ageLabel.text = @"66";
            
            break;
            
        case 66:
            self.ageLabel.text = @"67";
            
            break;
            
        case 67:
            self.ageLabel.text = @"68";
            
            break;
            
        case 68:
            self.ageLabel.text = @"69";
            
            break;
            
        case 69:
            self.ageLabel.text = @"70";
            
            break;
            
        case 70:
            self.ageLabel.text = @"71";
            
            break;
            
        case 71:
            self.ageLabel.text = @"72";
            
            break;
            
        case 72:
            self.ageLabel.text = @"73";
            
            break;
            
        case 73:
            self.ageLabel.text = @"74";
            
            break;
            
        case 74:
            self.ageLabel.text = @"75";
            
            break;
            
        case 75:
            self.ageLabel.text = @"76";
            
            break;
            
        case 76:
            self.ageLabel.text = @"77";
            
            break;
            
        case 77:
            self.ageLabel.text = @"78";
            
            break;
            
        case 78:
            self.ageLabel.text = @"79";
            
            break;
            
        case 79:
            self.ageLabel.text = @"80";
            
            break;
            
        case 80:
            self.ageLabel.text = @"81";
            
            break;
            
        case 81:
            self.ageLabel.text = @"82";
            
            break;
            
        case 82:
            self.ageLabel.text = @"83";
            
            break;
            
        case 83:
            self.ageLabel.text = @"84";
            
            break;
            
        case 84:
            self.ageLabel.text = @"85";
            
            break;
            
        case 85:
            self.ageLabel.text = @"86";
            
            break;
            
        case 86:
            self.ageLabel.text = @"87";
            
            break;
            
        case 87:
            self.ageLabel.text = @"88";
            
            break;
            
        case 88:
            self.ageLabel.text = @"89";
            
            break;
            
        case 89:
            self.ageLabel.text = @"90";
            
            break;
            
        case 90:
            self.ageLabel.text = @"91";
            
            break;
            
        case 91:
            self.ageLabel.text = @"92";
            
            break;
            
        case 92:
            self.ageLabel.text = @"93";
            
            break;
            
        case 93:
            self.ageLabel.text = @"94";
            
            break;
            
        case 94:
            self.ageLabel.text = @"95";
            
            break;
            
        case 95:
            self.ageLabel.text = @"96";
            
            break;
            
        case 96:
            self.ageLabel.text = @"97";
            
            break;
            
        case 97:
            self.ageLabel.text = @"98";
            
            break;
            
        case 98:
            self.ageLabel.text = @"99";
            
            break;
            
        case 99:
            self.ageLabel.text = @"100";
            
            break;
            
            
    }
    
    
    
}




@end
