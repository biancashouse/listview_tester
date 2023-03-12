# listview_tester
Demonstrate a Flutter issue with ListView widget testing

This tiny flutter sample has been created for the flutter team to address the following issue:

This simple app is a ListView of 10 Cards, each containing a ListTile of Text.
The listview test sample fails: only finds 9 out of the 10 items.
If you remove the ListTile from the tree and just have each item in a Card, it passes: finds all 10 items.

Bug ?
Workaround ?
Expanation ?

Feedback much appreciated, thanks.

ian@biancashouse.com


---------------------------------------------------------------
Console output of test
---------------------------------------------------------------
/Users/Shared/installers/flutter/bin/flutter --no-color test --machine --start-paused test/widget_test.dart
Testing started at 3:00 pm ...

══╡ EXCEPTION CAUGHT BY FLUTTER TEST FRAMEWORK ╞════════════════════════════════════════════════════
The following TestFailure was thrown running a test:
Expected: exactly 10 matching nodes in the widget tree
  Actual: _DescendantFinder:<9 widgets with type "Text" that has ancestor(s) with key
[<'listOfPeople'>] (ignoring offstage widgets): Text("1  John Brown", inherit: true, color:
Color(0xffffffff), textScaleFactor: 2.0, dependencies: [DefaultSelectionStyle, DefaultTextStyle,
MediaQuery]), Text("2  Janet Doe", inherit: true, color: Color(0xffffffff), textScaleFactor: 2.0,
dependencies: [DefaultSelectionStyle, DefaultTextStyle, MediaQuery]), Text("3  Greg Jackson",
inherit: true, color: Color(0xffffffff), textScaleFactor: 2.0, dependencies: [DefaultSelectionStyle,
DefaultTextStyle, MediaQuery]), ...>
   Which: is not enough

When the exception was thrown, this was the stack:
#4      main.<anonymous closure> (file:///Users/ianw/my/code/as/listview_tester/test/widget_test.dart:16:5)
<asynchronous suspension>
<asynchronous suspension>
(elided one frame from package:stack_trace)

This was caught by the test expectation on the following line:
  file:///Users/ianw/my/code/as/listview_tester/test/widget_test.dart line 16
The test description was:
  shouldFindAllListViewItems
════════════════════════════════════════════════════════════════════════════════════════════════════

Test failed. See exception logs above.
The test description was: shouldFindAllListViewItems

