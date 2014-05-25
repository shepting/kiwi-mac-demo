#import "SJHAppDelegate.h"
#import "Kiwi.h"

SPEC_BEGIN(SJHAppDelegateSpec)

describe(@"SHAppDelegateSpec", ^{
    __block SJHAppDelegate *dm;
    
    beforeEach(^{
        dm = [[SJHAppDelegate alloc] init];
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