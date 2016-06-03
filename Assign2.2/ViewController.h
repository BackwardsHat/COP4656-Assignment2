//
//  ViewController.h
//  Assign2.2
//
//  Created by XCode Developer on 6/3/16.
//  Copyright (c) 2016 XCode Developer. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController<UIPickerViewDataSource, UIPickerViewDelegate>

@property (weak, nonatomic) IBOutlet UIPickerView *picker;
@property (weak, nonatomic) IBOutlet UITextField *textbox3;
@property (weak, nonatomic) IBOutlet UITextField *textbox2;
@property (weak, nonatomic) IBOutlet UITextField *textbox1;
@property (nonatomic, retain) NSArray* pickerData;

- (void) changeTextBoxesOnPick:(NSInteger) row;

@end

