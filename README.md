Using Kiwi for Mac OS X Development
=============

Kiwi is an excellent unit-testing framwork for iOS and Mac. Unfortunately, it was a bit of a hassle to set up for the Mac and so I created this demo project with instructions. It uses CocoaPods to install and then changes one build setting.

The setup instructions are now on the official Kiwi wiki: https://github.com/allending/Kiwi/wiki/Up-and-Running-with-Kiwi-for-Mac





## Short Version
1. Make a new project
1. Create/Add Kiwi to existing Podfile
1. Run (in the terminal): pod install
1. Change test file to Kiwi Spec, run tests (cmd + U)

Sample working project file: https://github.com/shepting/kiwi-mac-demo

## Long Version
### 1. Create a New Project
First, create a new project in Xcode. In the sidebar on the left choose "Application" under the "Mac OS X" section.
<img src="https://raw.github.com/shepting/kiwi-mac-demo/master/tutorial_images/1-create_new_project.png" width=250 />

<img src="https://raw.github.com/shepting/kiwi-mac-demo/master/tutorial_images/2-cocoa_application_type.png" width=250/>

There will be an action sheet drop-down with options.


### 2. Add Podfile
Create a file named _Podfile_. Update the target names to match those in your app (_MacApp_ and _MacAppTests_ will become something like _RidgeRacer_ and _RidgeRacerTests_). Add whatever other pods you'd like to either target. If you don't yet have CocoaPods, follow the directions here: https://github.com/CocoaPods/CocoaPods

```ruby

# Test podfile for Mac

platform :osx, '10.8'

target 'MacApp', :exclusive => true do
  pod 'AFNetworking'
end

target 'MacAppTests', :exclusive => true do
    pod 'Kiwi/XCTest'
end
```

In the terminal run: 

```bash
$> pod install
```
<img src="https://raw.github.com/shepting/kiwi-mac-demo/master/tutorial_images/4-pod_install.png" width=250 />




### 3. Remove Default Tests, Add Spec File
There will be two files (*MacAppTests.h* and *MacAppTests.m*) in the tests group (*MacAppTests*). You can delete these.

<img src="https://raw.github.com/shepting/kiwi-mac-demo/master/tutorial_images/8-delete_default_tests.png" width=250 />

Add a new spec file (*SHAppDelegateSpec.m*) to this group.

```objective-c
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
```
<img src="https://raw.github.com/shepting/kiwi-mac-demo/master/tutorial_images/9-add_spec_file.png" />

### 5. Test (cmd + U)
Press CMD + U to run the tests. They should both fail. Update your app delegate file with two dummy methods and have applicationDidFinishLaunching: call them and the tests should pass. Done!

<img src="https://raw.github.com/shepting/kiwi-mac-demo/master/tutorial_images/11-implement_methods.png" width=300 />
