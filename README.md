Using Kiwi for Mac OS X Development
=============

Kiwi is an excellent unit-testing framwork but doesn't have the greatest instructions for setting it up for Mac Development. Using CocoaPods and some clear instructions, it's not too bad to use. I've recorded the steps required for anyone looking to do the process themselves.

### Steps
1. Make a new project (OS X -> Application -> Cocoa Application) [link](#step1)
1. Choose Unit Tests & ARC checkboxes
1. Add the Podfile to the directory (also update the names in the Podfile)
1. Run in the terminal: pod install
1. Edit test target (MacAppTests) build setting FRAMEWORK_SEARCH_PATHS to $(inherited)
1. Remove tests, add spec
1. Test (cmd + U)

### Create a New Project
First, create a new project in Xcode. In the sidebar on the left choose "Application" under the "Mac OS X" section.
<img src="https://raw.github.com/shepting/kiwi-mac-demo/master/tutorial_images/1-create_new_project.png width=250" />
<img src="https://raw.github.com/shepting/kiwi-mac-demo/master/tutorial_images/2-cocoa_application_type.png" />

There will be an action sheet drop-down with options. Ensure that you have the "Use Automatic Reference Counting" and "Include Unit Tests" boxes checked. You can see the options I chose in the screenshot.
<img src = "https://raw.github.com/shepting/kiwi-mac-demo/master/tutorial_images/3-use_arc_and_unit_tests.png" width=400 />


### 3. Add the Podfile to the directory (also update the names in the Podfile)
![Create new](https://raw.github.com/shepting/kiwi-mac-demo/master/tutorial_images/3-use_arc_and_unit_tests.png)

### 4. Run in the terminal: pod install
![Create new](https://raw.github.com/shepting/kiwi-mac-demo/master/tutorial_images/4-pod_install.png)
<img src="https://raw.github.com/shepting/kiwi-mac-demo/master/tutorial_images/4-pod_install.png" />

### 5. Edit test target (MacAppTests) build setting FRAMEWORK_SEARCH_PATHS to $(inherited)
![Create new](https://raw.github.com/shepting/kiwi-mac-demo/master/tutorial_images/7-change_framework_search_path.png)

### 6. Remove tests, add spec
![Create new](https://raw.github.com/shepting/kiwi-mac-demo/master/tutorial_images/9-add_spec_file.png)

### 7. Test (cmd + U)
![Create new](https://raw.github.com/shepting/kiwi-mac-demo/master/tutorial_images/11-implement_methods.png)
