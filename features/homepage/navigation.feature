Feature: When a user first visits the site they will be greeted by a homepage showing some options
  Background:
    Given the following Categories exist with:
      | name              |
      | British Ale       |
      | Irish Ale         |
      | German Ale        |
      | International Ale |
  @Headed
  Scenario: A user first visits the homepage
    When I visit the home page
    Then I should see "Find by Category"
    And I should see "Give me a Random Beer"

  @Headed
  Scenario: A user can navigate to the category list page
    When I visit the home page
    And I click the "Find by Category" button
    Then I should see a list of buttons with text:
      | Category Name     |
      | British Ale       |
      | Irish Ale         |
      | German Ale        |
      | International Ale |
