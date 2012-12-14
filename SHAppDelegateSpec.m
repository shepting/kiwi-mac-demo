#import "SHAppDelegate.h"
#import "Kiwi.h"

SPEC_BEGIN(SHAppDelegateSpec)

describe(@"SHAppDelegateSpec", ^{
    __block SHAppDelegate *dm;
    
    beforeEach(^{
        dm = [[SHAppDelegate alloc] init];
    });
    
    context(@"application:DidFinishLaunching:", ^{
        
        it(@"should call call", ^{
            [[dm should] receive:@selector(firstCall)];
            
            [dm applicationDidFinishLaunching:nil];
        });
        
        it(@"should call otherCall", ^{
            [[dm should] receive:@selector(otherCall)];
            
            [dm applicationDidFinishLaunching:nil];
        });
    });
});

SPEC_END