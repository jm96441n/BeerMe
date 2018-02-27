Feature: When a user first visits the site they will be greeted by a homepage showing some options
  Background:
    Given the following Categories exist with:
      | name              |
      | British Ale       |
      | Irish Ale         |
      | German Ale        |
      | International Ale |
  @javascript
  Scenario: Sidemenu shows correct navigation
    When I visit the home page
    Then I should see "Find a Beer"
    And I should see "Get a Random Beer"

  @javascript
  Scenario: Homepage shows the correct welcome greeting
    When I visit the home page
    Then I should see "Welcome to Beer Me!"
    And I should see "Having a hard time deciding what delicious nectar of the gods to consume? Always feeling indecisive about how to get your buzz on? You're in the right place then!"

  # @javascript
  # Scenario: A user can navigate to the category list page
  #   When I visit the home page
  #   And I click the "Find by Category" button
  #   Then I should see a list of buttons with text:
  #     | Category Name     |
  #     | British Ale       |
  #     | Irish Ale         |
  #     | German Ale        |
  #     | International Ale |
