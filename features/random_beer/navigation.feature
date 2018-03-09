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
    And the following "Beers" exist with:
      | name   | abv | ibu | beer_style | brewery   | category      |
      | Beer 1 | 6.5 | 92  | IPA        | Stone     | American Ale  |
      | Beer 2 | 4.5 | 82  | Stout      | Big Money | British Stout |
      | Beer 3 | 9.5 | 98  | IPA        | Stone     | American Ale  |

  @javascript
  Scenario: Navigating to the Random beer page shows a random beer
    Given I visit the home page
    When I click "Get a Random Beer"
    Then I should see "Name: "
    And I should see "ABV%: "
    And I should see "IBU: "
