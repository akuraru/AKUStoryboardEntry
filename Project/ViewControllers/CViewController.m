
#import "CViewController.h"
#import "ExtactedID.h"
#import "MainEntry.h"

@interface CViewController ()

@end

@implementation CViewController

- (void)viewDidLoad {
    [super viewDidLoad];
}
- (IBAction)touchToD:(id)sender {
    [self performSegueWithIdentifier:kSegueD sender:nil];
}
- (IBAction)touchModelB:(id)sender {
    [[MainEntry sharedEntry] modelB:self.navigationController];
}

@end
