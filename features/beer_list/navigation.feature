Feature: A user can navigate away from the beer list page
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
      | name   | abv | ibu | beer_style | brewery   |
      | Beer 1 | 6.5 | 92  | IPA        | Stone     |
      | Beer 2 | 4.5 | 82  | Stout      | Big Money |
      | Beer 3 | 9.5 | 98  | IPA        | Stone     |

  @javascript
  Scenario: Clicking the logo in the header will bring me back to the home page
    When I visit the home page
    And I click "Find a Beer"
    And I click "BeerMe!"
    Then I should see "Welcome to Beer Me!"
    And I should see "Having a hard time deciding what delicious nectar of the gods to consume? Always feeling indecisive about how to get your buzz on? You're in the right place then!"