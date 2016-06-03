//
//  ViewController.m
//  Assign2.2
//
//  Created by XCode Developer on 6/3/16.
//  Copyright (c) 2016 XCode Developer. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.pickerData =  @[@"headache", @"dry skin", @"paranoia", @"melancholy"];
    
    self.picker.dataSource = self;
    self.picker.delegate = self;
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

// Data Source Method
// The number of columns of data
- (NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView
{
    // We are working with a picker view of a single column
    return 1;
}

// The number of rows of data
- (NSInteger)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component
{
    //return the number of array elements.
    return [self.pickerData count];
}

// Delegate Method
// the delegate method gives us a way to retrieve the selected item from the picker view.
- (NSString *)pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component
{
    return [self.pickerData objectAtIndex:row];
}

// Capture the picker view selection
- (void)pickerView:(UIPickerView *)pickerView didSelectRow:(NSInteger)row inComponent:(NSInteger)component
{
    // This method is triggered whenever the user makes a change to the picker selection.
    // The parameter named row and component represents what was selected.
    NSLog(@"Selected Element: %@ %zd", [self.pickerData objectAtIndex: row], row);
    [self changeTextBoxesOnPick:row];
}

// Sets textboxes to appropiate responses
- (void) changeTextBoxesOnPick:(NSInteger)row
{
    // Headache
    if(row == 0) {
        self.textbox1.text = @"Advil";
        self.textbox2.text = @"A poem";
        self.textbox3.text = @"Tylenol";
    }
    // Dry skin
    else if(row == 1) {
        self.textbox1.text = @"Drink water";
        self.textbox2.text = @"Ignore";
        self.textbox3.text = @"Lotion";
    }
    // Paranoia
    else if(row == 2) {
        self.textbox1.text = @"Find the truth";
        self.textbox2.text = @"They know";
        self.textbox3.text = @"No big deal";
    }
    // Melancholy
    else if(row == 3) {
        self.textbox1.text = @"It";
        self.textbox2.text = @"Happens";
        self.textbox3.text = @"Sometimes";
    }
}

@end
