Feature: A user can navigate away from the beer list page
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
  Scenario: Clicking the logo in the header will bring me back to the home page
    When I visit the home page
    And I click "Find a Beer"
    And I click "BeerMe!"
    Then I should see "Welcome to Beer Me!" on the page
    And I should see "Having a hard time deciding what delicious nectar of the gods to consume? Always feeling indecisive about how to get your buzz on? You're in the right place then!" on the page

  @javascript
  Scenario: Clicking on a beer will bring you to the detail page for that beer
    When I visit the home page
    And I click "Find a Beer"
    And I click "Beer 1"
    Then I should see "Name: Beer 1" on the page
    And I should see "ABV%: 6.5" on the page
    And I should see "IBU: 92" on the page
    And I should see "Description: testy" on the page
