Feature: A user can view beers on the beer list page
  Background:
    Given the following "Categories" exist with:
      | name          | external_id |
      | British Stout | 1           |
      | American Ale  | 2           |
    And the following "Beer Styles" exist with:
      | name  | category      | external_id |
      | IPA   | American Ale  | 1           |
      | Stout | British Stout | 2           |
    And the following "Breweries" exist with:
      | name      | external_id |
      | Stone     | 1           |
      | Big Money | 2           |
    And the following "Beers" exist with:
      | name   | abv | ibu | beer_style | brewery   | description |
      | Beer 1 | 6.5 | 92  | IPA        | Stone     | testy       |
      | Beer 2 | 5.7 | 90  | Stout      | Big Money | beery       |
      | Beer 3 | 6.7 | 94  | IPA        | Stone     | cheery      |

  @javascript
  Scenario: A user can view the list of beers on the list page
    Given I am on the home page
    When I click "Find a Beer"
    Then I should see the following beers in the table:
      | Name   | Style | ABV  | IBU | Brewery   |
      | Beer 1 | IPA   | 6.5% | 92  | Stone     |
      | Beer 2 | Stout | 5.7% | 90  | Big Money |
      | Beer 3 | IPA   | 6.7% | 94  | Stone     |
