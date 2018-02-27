Feature: When a user first visits the site they will be greeted by a homepage showing some options
  Background:
    Given the following "Categories" exist with:
      | name          |
      | British Stout |
      | American Ale  |
    Given the following "Beer Styles" exist with:
      | name  | category      |
      | IPA   | American Ale  |
      | Stout | British Stout |
    And the following "Breweries" exist with:
      | name      |
      | Stone     |
      | Big Money |
    And the following "Beers" exist with:
      | name   | abv | ibu | beer_style | brewery   |
      | Beer 1 | 6.5 | 92  | IPA        | Stone     |
      | Beer 2 | 4.5 | 82  | Stout      | Big Money |
      | Beer 2 | 9.5 | 98  | IPA        | Stone     |


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

  @javascript
  Scenario: A user can navigate to the category list page
    When I visit the home page
    And I click "Find a Beer"
    Then I should see the following beers in the table:
      | Name   | ABV | IBU |
      | Beer 1 | 6.5 | 92  |
      | Beer 2 | 4.5 | 82  |
      | Beer 2 | 9.5 | 98  |

