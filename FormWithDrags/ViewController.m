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

//#define kOFFSET_FOR_KEYBOARD 110.0

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    
    _actualView.hidden = YES;
    
    
    [_addButton addTarget:self action:@selector(showView) forControlEvents:UIControlEventTouchUpInside];
    
    UITapGestureRecognizer *tap = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(dismissKeyboard)];
    
    [self.actualView addGestureRecognizer:tap];

    _mobileField.delegate = self;
    
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
    
}

-(void)showView {
    
    
    _actualView.hidden = NO;
}


-(void)dismissKeyboard

{
    
    [_mobileField resignFirstResponder];
    
}




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

- (BOOL)textFieldShouldReturn:(UITextField *)textField {
    
    [textField resignFirstResponder];
    
    
    
    return YES;
    
}

- (void)pickerView:(UIPickerView *)pickerView didSelectRow:(NSInteger)row   inComponent:(NSInteger)component
{
    
    
    NSLog(@"Selected Row %i", (int)row);
    switch(row)
    {
            
        case 0:
            self.number.text = [_numberArray objectAtIndex:row];
           
            break;
        case 1:
            self.number.text = [_numberArray objectAtIndex:row];
            
            break;
        case 2:
            self.number.text = [_numberArray objectAtIndex:row];
          
            break;
        case 3:
            self.number.text = [_numberArray objectAtIndex:row];
           
            break;
        case 4:
            self.number.text = [_numberArray objectAtIndex:row];
            
            break;
        case 5:
            self.number.text = [_numberArray objectAtIndex:row];

            break;
            
        case 6:
            self.number.text = [_numberArray objectAtIndex:row];
            
            break;
            
        case 7:
            self.number.text = [_numberArray objectAtIndex:row];
            
            break;
            
        case 8:
            self.number.text = [_numberArray objectAtIndex:row];
            
            break;
            
        case 9:
            self.number.text = [_numberArray objectAtIndex:row];
            
            break;
            
        case 10:
            self.number.text = [_numberArray objectAtIndex:row];
            
            break;
            
        case 11:
            self.number.text = [_numberArray objectAtIndex:row];
            
            break;
            
        case 12:
            self.number.text = [_numberArray objectAtIndex:row];
            
            break;
            
        case 13:
            self.number.text = [_numberArray objectAtIndex:row];
            
            break;
            
        case 14:
            self.number.text = [_numberArray objectAtIndex:row];
            
            break;
            
        case 15:
            self.number.text = [_numberArray objectAtIndex:row];
            
            break;
            
        case 16:
            self.number.text = [_numberArray objectAtIndex:row];
            
            break;
            
        case 17:
            self.number.text = [_numberArray objectAtIndex:row];
            
            break;
            
        case 18:
            self.number.text = [_numberArray objectAtIndex:row];
            
            break;
            
        case 19:
            self.number.text = [_numberArray objectAtIndex:row];
            
            break;
            
        case 20:
            self.number.text = [_numberArray objectAtIndex:row];
            
            break;
            
        case 21:
            self.number.text = [_numberArray objectAtIndex:row];
            
            break;
            
        case 22:
            self.number.text = [_numberArray objectAtIndex:row];
            
            break;
            
        case 23:
            self.number.text = [_numberArray objectAtIndex:row];
            
            break;
            
        case 24:
            self.number.text = [_numberArray objectAtIndex:row];
            
            break;
            
        case 25:
            self.number.text = [_numberArray objectAtIndex:row];
            
            break;
            
        case 26:
            self.number.text = @"27";
            
            break;
            
        case 27:
            self.number.text = @"28";
            
            break;
            
        case 28:
            self.number.text = @"29";
            
            break;
            
        case 29:
            self.number.text = @"30";
            
            break;
            
        case 30:
            self.number.text = @"31";
            
            break;
            
        case 31:
            self.number.text = @"32";
            
            break;
            
        case 32:
            self.number.text = @"33";
            
            break;
            
        case 33:
            self.number.text = @"34";
            
            break;
            
        case 34:
            self.number.text = @"35";
            
            break;
            
        case 35:
            self.number.text = @"36";
            
            break;
            
        case 36:
            self.number.text = @"37";
            
            break;
            
        case 37:
            self.number.text = @"38";
            
            break;
            
        case 38:
            self.number.text = @"39";
            
            break;
            
        case 39:
            self.number.text = @"40";
            
            break;
            
        case 40:
            self.number.text = @"41";
            
            break;
            
        case 41:
            self.number.text = @"42";
            
            break;
            
        case 42:
            self.number.text = @"43";
            
            break;
            
        case 43:
            self.number.text = @"44";
            
            break;
            
        case 44:
            self.number.text = @"45";
            
            break;
            
        case 45:
            self.number.text = @"46";
            
            break;
            
        case 46:
            self.number.text = @"47";
            
            break;
            
        case 47:
            self.number.text = @"48";
            
            break;
            
        case 48:
            self.number.text = @"49";
            
            break;
            
        case 49:
            self.number.text = @"50";
            
            break;
            
        case 50:
            self.number.text = @"51";
            
            break;
            
        case 51:
            self.number.text = @"52";
            
            break;
            
        case 52:
            self.number.text = @"53";
            
            break;
            
        case 53:
            self.number.text = @"54";
            
            break;
            
        case 54:
            self.number.text = @"55";
            
            break;
            
        case 55:
            self.number.text = @"56";
            
            break;
            
        case 56:
            self.number.text = @"57";
            
            break;
            
        case 57:
            self.number.text = @"58";
            
            break;
            
        case 58:
            self.number.text = @"59";
            
            break;
            
        case 59:
            self.number.text = @"60";
            
            break;
            
        case 60:
            self.number.text = @"61";
            
            break;
            
        case 61:
            self.number.text = @"62";
            
            break;
            
        case 62:
            self.number.text = @"63";
            
            break;
            
        case 63:
            self.number.text = @"64";
            
            break;
            
        case 64:
            self.number.text = @"65";
            
            break;
            
        case 65:
            self.number.text = @"66";
            
            break;
            
        case 66:
            self.number.text = @"67";
            
            break;
            
        case 67:
            self.number.text = @"68";
            
            break;
            
        case 68:
            self.number.text = @"69";
            
            break;
            
        case 69:
            self.number.text = @"70";
            
            break;
            
        case 70:
            self.number.text = @"71";
            
            break;
            
        case 71:
            self.number.text = @"72";
            
            break;
            
        case 72:
            self.number.text = @"73";
            
            break;
            
        case 73:
            self.number.text = @"74";
            
            break;
            
        case 74:
            self.number.text = @"75";
            
            break;
            
        case 75:
            self.number.text = @"76";
            
            break;
            
        case 76:
            self.number.text = @"77";
            
            break;
            
        case 77:
            self.number.text = @"78";
            
            break;
            
        case 78:
            self.number.text = @"79";
            
            break;
            
        case 79:
            self.number.text = @"80";
            
            break;
            
        case 80:
            self.number.text = @"81";
            
            break;
            
        case 81:
            self.number.text = @"82";
            
            break;
            
        case 82:
            self.number.text = @"83";
            
            break;
            
        case 83:
            self.number.text = @"84";
            
            break;
            
        case 84:
            self.number.text = @"85";
            
            break;
            
        case 85:
            self.number.text = @"86";
            
            break;
            
        case 86:
            self.number.text = @"87";
            
            break;
            
        case 87:
            self.number.text = @"88";
            
            break;
            
        case 88:
            self.number.text = @"89";
            
            break;
            
        case 89:
            self.number.text = @"90";
            
            break;
            
        case 90:
            self.number.text = @"91";
            
            break;
            
        case 91:
            self.number.text = @"92";
            
            break;
            
        case 92:
            self.number.text = @"93";
            
            break;
            
        case 93:
            self.number.text = @"94";
            
            break;
            
        case 94:
            self.number.text = @"95";
            
            break;
            
        case 95:
            self.number.text = @"96";
            
            break;
            
        case 96:
            self.number.text = @"97";
            
            break;
            
        case 97:
            self.number.text = @"98";
            
            break;
            
        case 98:
            self.number.text = @"99";
            
            break;
            
        case 99:
            self.number.text = @"100";
            
            break;
            
            
    }
    
}


@end
