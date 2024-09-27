Feature: Show coffee pictures

  Background:
    Given the app is running

  Scenario: Initial load
    Then I see {'https://coffee.alexflipnote.dev/n2umtTs_y80_coffee.jpg'} image

  Scenario: Get New Picture
    When I tap {'Load New'} text
    Then I see {'https://coffee.alexflipnote.dev/KwS5dWCe9gQ_coffee.jpg'} image