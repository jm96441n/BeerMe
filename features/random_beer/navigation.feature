Feature: Navigating to the random beer page should retrieve a random beer for the user
  Background:
    Given the following "Categories" exist with:
      | name          | external_id |
      | British Stout | 1           |
      | American Ale  | 2           |
    Given the following "Beer Styles" exist with:
      | name  | category      | external_id |
      | IPA   | American Ale  | 1           |
      | Stout | British Stout | 2           |
    And the following "Breweries" exist with:
      | name      | external_id |
      | Stone     | 1           |
      | Big Money | 2           |

  @javascript
  Scenario: Navigating to the Random beer page shows a random beer and does not show the description if it does not exist
    Given the following "Beers" exist with:
      | name   | abv | ibu | beer_style | brewery   | category      |
      | Beer 1 | 6.5 | 92  | IPA        | Stone     | American Ale  |
    And I visit the home page
    When I click "Get a Random Beer"
    Then I should see "Name: Beer 1"
    And I should see "ABV%: 6.5"
    And I should see "IBU: 92"
    And I should not see "Description: "

  @javascript
  Scenario: Navigation to the R
    Given the following "Beers" exist with:
      | name   | abv | ibu | beer_style | brewery   | category      | description |
      | Beer 1 | 6.5 | 92  | IPA        | Stone     | American Ale  | tasty       |
    And I visit the home page
    When I click "Get a Random Beer"
    Then I should see "Name: Beer 1"
    And I should see "ABV%: 6.5"
    And I should see "IBU: 92"
    And I should see "Description: tasty"
