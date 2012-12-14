kiwi-mac-demo
=============

A sample Mac OS X app using Kiwi for unit-testing.

##### 1. Make a new project (OS X -> Application -> Cocoa Application)
![Create new](https://raw.github.com/shepting/kiwi-mac-demo/master/tutorial_images/1-create_new_project.png)

##### 2. Choose Unit Tests & ARC checkboxes
![Alt text](https://github.com/shepting/kiwi-mac-demo/blob/master/tutorial_images/2-cocoa_application_type.png)

##### 3. Add the Podfile to the directory (also update the names in the Podfile)
![Create new](https://raw.github.com/shepting/kiwi-mac-demo/master/tutorial_images/3-use_arc_and_unit_tests.png)

##### 4. Run in the terminal: pod install
![Create new](https://raw.github.com/shepting/kiwi-mac-demo/master/tutorial_images/4-pod_install.png)

##### 5. Edit test target (MacAppTests) build setting FRAMEWORK_SEARCH_PATHS to $(inherited)
![Create new](https://raw.github.com/shepting/kiwi-mac-demo/master/tutorial_images/7-change_framework_search_path.png)

##### 6. Remove tests, add spec
![Create new](https://raw.github.com/shepting/kiwi-mac-demo/master/tutorial_images/9-add_spec_file.png)

##### 7. Test (cmd + U)
![Create new](https://raw.github.com/shepting/kiwi-mac-demo/master/tutorial_images/11-implement_methods.png)