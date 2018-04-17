//
//  QuizViewController.m
//  Quiz
//
//  Created by Zaur Giyasov on 17/04/2018.
//  Copyright © 2018 Zaur Giyasov. All rights reserved.
//

#import "QuizViewController.h"

@interface QuizViewController ()

@property (nonatomic) unsigned int currentQuestionIndex;
@property (nonatomic, copy) NSArray *questions;
@property (nonatomic, copy) NSArray *answers;

@property (nonatomic, weak) IBOutlet UILabel *questionLabel;
@property (nonatomic, weak) IBOutlet UILabel *answerLabel;

@end

@implementation QuizViewController

-(instancetype)initWithNibName: (NSString *)nibNameOrNil bundle:(nullable NSBundle *)nibBundleOrNil {
    // Designated initializer missing a 'super' call to a designated initializer of the super class
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    
    if (self) {
        // Create something
        // Arrays
        self.questions = @[@"From what is cognac made?", @"What is 7+7 ?", @"What is the capital of Vermont?", @"Who is bigger Supernman or Batman?"];
        self.answers   = @[@"Grapes", @"14", @"Montpelier", @"Batman"];
    }
    
    return self;
}

#pragma mark - Actions

- (IBAction)showQuestion:(id)sender {
    self.currentQuestionIndex++;
    
    if (self.currentQuestionIndex == [self.questions count]) {
        // go back to first
        self.currentQuestionIndex = 0;
    }
    
    // Get the strings
    NSString *quest = self.questions[self.currentQuestionIndex];
    // Display it
    self.questionLabel.text = quest;
    
    // reset answer
    self.answerLabel.text = @"???";
}

- (IBAction)showAnwer:(id)sender {
    // what is the answer?
    NSString *answer = self.answers[self.currentQuestionIndex];
    // Display it
    self.answerLabel.text = answer;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
