
#import "BViewController.h"
#import "ExtactedID.h"
#import "MainEntry.h"

@interface BViewController ()

@end

@implementation BViewController

- (void)viewDidLoad {
    [super viewDidLoad];
}
- (IBAction)touchToC:(id)sender {
    [[MainEntry sharedEntry] c:self.navigationController];
}
- (IBAction)touchModelA:(id)sender {
    [[MainEntry sharedEntry] showModelInitial:self];
}

@end
