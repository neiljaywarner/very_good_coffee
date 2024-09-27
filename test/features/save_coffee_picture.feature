Feature: Show favorites

  Background:
    Given the app is running

  Scenario: Initial load
    When I tap {'Favorites'} text
    Then I see {'No pictures saved yet.'} text