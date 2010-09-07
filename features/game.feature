Feature: player starts game
  As a player
  I want to start a game
  So that I can learn Linux!

  Scenario: start new game
    Given I am not yet playing
    When I start a new game
    Then the output should contain:
     """
     Welcome to LinuxQuest!
     Enter your name:
     """
    
    And I should enter the name "Joe"
    And I should see "Get ready to begin your quest, Joe!"