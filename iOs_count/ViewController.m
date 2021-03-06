//
//  ViewController.m
//  iOs_count
//
//  Created by Manuel Artero Anguita on 22/03/13.
//  Copyright (c) 2013 Manuel Artero Anguita. All rights reserved.
//

#import "ViewController.h"

@interface ViewController () @end

@implementation ViewController
@synthesize output_text;

// ------------------------------

- (void)viewDidLoad
{
    [super viewDidLoad];
    
	// Additional setup after loading the view
    // 1) instanciate NumberStore object
    self->numberStore = [[NumberStore alloc] init];
}

/*
- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
*/

- (void)dealloc
{
    [output_text release];
    [numberStore release];
    [super dealloc];
}

- (IBAction)add_button:(id)sender
{
    // get n; set n+1
    int n = [numberStore number];
    n = n+1;
    [numberStore setNumber:n];
    
    // text should be a NSString*
    NSString* output = [[NSString alloc] initWithFormat:@"%d", n];
    output_text.text = output;
    [output release];
}

- (IBAction)mul_button:(id)sender
{
    // get n; set n*2
    int n = [numberStore number];
    n = n*2;
    [numberStore setNumber:n];
    
    // text should be a NSString*
    NSString* output = [[NSString alloc] initWithFormat:@"%d", n];
    output_text.text = output;
    [output release];
}


@end
