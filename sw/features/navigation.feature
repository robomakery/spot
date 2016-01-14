Feature: Navigation

  Scenario: Spot navigates to its owner's phone
    Given the owner calls Spot with an app on her phone
    Then Spot should navigate to the owner's phone's location

  Scenario: Spot navigates to a position
    Given Spot receives a 'move-to' request with a position
    Then Spot should navigate to that position
