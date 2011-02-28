Feature: Codebreaker starts the game

  Scenario: start game
    Given I am noy yet playing
    When I start a new game
    Then I should see "Welcome to Codebreaker!"
    And I should see "Enter guess:"
