kiwi-mac-demo
=============

A sample Mac OS X app using Kiwi for unit-testing.

Make a new project
OS X -> Application -> Cocoa Application
Choose Unit Tests & ARC checkboxes
Close the project
Add the Podfile
Run: pod install
Edit test target (MacAppTests) build setting FRAMEWORK_SEARCH_PATHS to $(inherited)
Remove tests, add spec
Test (cmd + U)