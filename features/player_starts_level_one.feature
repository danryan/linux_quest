Feature: Player begins his quest
  As a player
  I want to learn Linux
  So that I can rule the world!
  
  Scenario: Player starts in home town (/home/player)
    Given I am in "/home"
    When I run "ls"
    Then I should see "blah"
    