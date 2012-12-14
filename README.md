Using Kiwi for Mac OS X Development
=============

Kiwi is an excellent unit-testing framwork for iOS and Mac. Unfortunately, it was a bit of a hassle to set up for the Mac and so I created this demo project with instructions.

I used CocoaPods (https://github.com/CocoaPods/CocoaPods) to do this initial install with just a few changes to add the actual test file and change one build setting.

### Steps
1. Make a new project (OS X -> Application -> Cocoa Application)
1. Choose Unit Tests & ARC checkboxes
1. Add the Podfile to the directory (also update the names in the Podfile)
1. Run in the terminal: pod install
1. Edit test target (MacAppTests) build setting FRAMEWORK_SEARCH_PATHS to $(inherited)
1. Remove tests, add spec
1. Test (cmd + U)



### 1. Create a New Project
First, create a new project in Xcode. In the sidebar on the left choose "Application" under the "Mac OS X" section.
<img src="https://raw.github.com/shepting/kiwi-mac-demo/master/tutorial_images/1-create_new_project.png" width=250 />

<img src="https://raw.github.com/shepting/kiwi-mac-demo/master/tutorial_images/2-cocoa_application_type.png" width=250/>

There will be an action sheet drop-down with options. Ensure that you have the "Use Automatic Reference Counting" and "Include Unit Tests" boxes checked. You can see the options I chose in the screenshot.
<img src = "https://raw.github.com/shepting/kiwi-mac-demo/master/tutorial_images/3-use_arc_and_unit_tests.png" width=400 />



### 2. Add Podfile
Create a file named *Podfile*. Update the target names to match those in your app (*MacApp* and *MacAppTests* will become something like *RidgeRacer* and *RidgeRacerTests*). Add whatever other pods you'd like to either target. If you don't yet have CocoaPods, follow the directions here: https://github.com/CocoaPods/CocoaPods

```ruby

# Test podfile for Mac

platform :osx

target 'MacApp', :exclusive => true do
  pod 'JSONKit'
end

target 'MacAppTests', :exclusive => true do
	pod 'Kiwi'
	pod 'JSONKit'
end
```

In the terminal run: 

```bash
$> pod install
```
<img src="https://raw.github.com/shepting/kiwi-mac-demo/master/tutorial_images/4-pod_install.png" width=250 />



### 3. Change FRAMEWORK_SEARCH_PATHS
Open the workspace file (*MacApp.xcworkspace* in this case), select the *MacApp* project (not *Pods*), select the *MacAppTests* target, then enter the *FRAMEWORK_SEARCH_PATHS* in the search field to narrow the options down to one. Lastly, double-click the field and change the value to $(inherited).

<img src="https://raw.github.com/shepting/kiwi-mac-demo/master/tutorial_images/7-change_framework_search_path.png" width=300 />



### 4. Remove Default Tests, Add Spec File
There will be two files (*MacAppTests.h* and *MacAppTests.m*) in the tests group (*MacAppTests*). You can delete these.

<img src="https://raw.github.com/shepting/kiwi-mac-demo/master/tutorial_images/8-delete_default_tests.png" width=250 />

Add a new spec file (*SHAppDelegateSpec.m*) to this group.

```objective-c
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
```
<img src="https://raw.github.com/shepting/kiwi-mac-demo/master/tutorial_images/9-add_spec_file.png" />

### 5. Test (cmd + U)
Press CMD + U to run the tests. They should both fail. Update your app delegate file with two dummy methods and have applicationDidFinishLaunching: call them and the tests should pass. Done!

<img src="https://raw.github.com/shepting/kiwi-mac-demo/master/tutorial_images/11-implement_methods.png" width=300 />
