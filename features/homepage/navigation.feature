Feature: When a user first visits the site they will be greeted by a homepage showing some options

  @Headed
  Scenario: A user first visits the homepage
    When I visit the home page
    Then I should see "Find by Category"
    And I should see "Give me a Random Beer"
