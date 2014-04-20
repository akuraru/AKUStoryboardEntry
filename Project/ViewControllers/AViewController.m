
#import "AViewController.h"
#import "ExtactedID.h"

@interface AViewController ()

@end

@implementation AViewController

- (void)viewDidLoad {
    [super viewDidLoad];
}
- (IBAction)touchToB:(id)sender {
    [self performSegueWithIdentifier:kSegueB sender:nil];
}
- (IBAction)touchToC:(id)sender {
    [self performSegueWithIdentifier:kSegueC sender:nil];
}

@end
