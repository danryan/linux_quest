Feature: player starts game
  As a player
  I want to start a game
  So that I can learn Linux!

  Scenario: start new game
    Given I am not yet playing
    And I run "linux_quest"
    And the output should contain:
      """
      Welcome to LinuxQuest!
      Enter your name:
      """
    When I enter the name "Dan"
    Then the output should contain "Get ready to start LinuxQuest, Dan!"
    