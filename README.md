kiwi-mac-demo
=============

A sample Mac OS X app using Kiwi for unit-testing.

1. Make a new project (OS X -> Application -> Cocoa Application)
1. Choose Unit Tests & ARC checkboxes
1. Add the Podfile to the directory (also update the names in the Podfile)
1. Run in the terminal: pod install
1. Edit test target (MacAppTests) build setting FRAMEWORK_SEARCH_PATHS to $(inherited)
1. Remove tests, add spec
1. Test (cmd + U)