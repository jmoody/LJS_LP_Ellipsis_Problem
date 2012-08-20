Feature: in order to demonstrate the problem with ellipsis, i need a test
  feature
  https://github.com/calabash/calabash-ios/issues/55

  Scenario: demonstrating the problem in a generic way
    When I query a parent view that contains a subview with an ellipsis in the text, I should see an error

  Scenario: demonstrating the problem on a uilabel
    When I query a label with an ellipsis in the text, I should see an error






