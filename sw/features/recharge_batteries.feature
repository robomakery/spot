Feature: Recharge Batteries

  Scenario: Spot returns to charging station when batteries are low
    Given Spot is not at the charging station
    When Spot's battery goes below 20%
    Then Spot should return to the charging station
