
#import "DViewController.h"
#import "MainEntry.h"

@interface DViewController ()

@end

@implementation DViewController

- (void)viewDidLoad {
    [super viewDidLoad];
}
- (IBAction)touchToB:(id)sender {
    [[MainEntry sharedEntry] b:self.navigationController];
}
- (IBAction)touchModelA:(id)sender {
    [[MainEntry sharedEntry] showModelInitaial:self];
}

@end
