Feature: Pagination works from the beer list page
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
      | name    | abv | ibu | beer_style | brewery   | description |
      | Beer 1  | 6.5 | 92  | IPA        | Stone     | testy       |
      | Beer 2  | 4.5 | 82  | Stout      | Big Money | beery       |
      | Beer 3  | 9.5 | 98  | IPA        | Stone     | cheery      |
      | Beer 4  | 6.5 | 92  | IPA        | Stone     | testy       |
      | Beer 5  | 4.5 | 82  | Stout      | Big Money | beery       |
      | Beer 6  | 9.5 | 98  | IPA        | Stone     | cheery      |
      | Beer 7  | 6.5 | 92  | IPA        | Stone     | testy       |
      | Beer 8  | 4.5 | 82  | Stout      | Big Money | beery       |
      | Beer 9  | 9.5 | 98  | IPA        | Stone     | cheery      |
      | Beer 10 | 6.5 | 92  | IPA        | Stone     | testy       |
      | Beer 11 | 4.5 | 82  | Stout      | Big Money | beery       |
      | Beer 12 | 9.5 | 98  | IPA        | Stone     | cheery      |
      | Beer 13 | 6.5 | 92  | IPA        | Stone     | testy       |
      | Beer 14 | 4.5 | 82  | Stout      | Big Money | beery       |
      | Beer 15 | 9.5 | 98  | IPA        | Stone     | cheery      |
      | Beer 26 | 6.5 | 92  | IPA        | Stone     | testy       |
      | Beer 27 | 4.5 | 82  | Stout      | Big Money | beery       |
      | Beer 28 | 9.5 | 98  | IPA        | Stone     | cheery      |
      | Beer 29 | 6.5 | 92  | IPA        | Stone     | testy       |
      | Beer 30 | 4.5 | 82  | Stout      | Big Money | beery       |
      | Beer 31 | 9.5 | 98  | IPA        | Stone     | cheery      |
      | Beer 32 | 6.5 | 92  | IPA        | Stone     | testy       |
      | Beer 33 | 4.5 | 82  | Stout      | Big Money | beery       |
      | Beer 34 | 9.5 | 98  | IPA        | Stone     | cheery      |
      | Beer 35 | 9.5 | 98  | IPA        | Stone     | cheery      |
      | Beer 36 | 6.5 | 92  | IPA        | Stone     | testy       |
      | Beer 37 | 4.5 | 82  | Stout      | Big Money | beery       |
      | Beer 38 | 9.5 | 98  | IPA        | Stone     | cheery      |
      | Beer 39 | 6.5 | 92  | IPA        | Stone     | testy       |
      | Beer 40 | 4.5 | 82  | Stout      | Big Money | beery       |
      | Beer 41 | 9.5 | 98  | IPA        | Stone     | cheery      |
      | Beer 42 | 6.5 | 92  | IPA        | Stone     | testy       |
      | Beer 43 | 4.5 | 82  | Stout      | Big Money | beery       |
      | Beer 44 | 9.5 | 98  | IPA        | Stone     | cheery      |
      | Beer 45 | 6.5 | 92  | IPA        | Stone     | testy       |
      | Beer 46 | 4.5 | 82  | Stout      | Big Money | beery       |
      | Beer 47 | 9.5 | 98  | IPA        | Stone     | cheery      |
      | Beer 48 | 6.5 | 92  | IPA        | Stone     | testy       |
      | Beer 49 | 4.5 | 82  | Stout      | Big Money | beery       |
      | Beer 50 | 9.5 | 98  | IPA        | Stone     | cheery      |
      | Beer 51 | 6.5 | 92  | IPA        | Stone     | testy       |
      | Beer 52 | 4.5 | 82  | Stout      | Big Money | beery       |
      | Beer 53 | 9.5 | 98  | IPA        | Stone     | cheery      |
      | Beer 54 | 6.5 | 92  | IPA        | Stone     | testy       |
      | Beer 55 | 4.5 | 82  | Stout      | Big Money | beery       |
      | Beer 56 | 9.5 | 98  | IPA        | Stone     | cheery      |
      | Beer 57 | 6.5 | 92  | IPA        | Stone     | testy       |
      | Beer 58 | 4.5 | 82  | Stout      | Big Money | beery       |
      | Beer 59 | 9.5 | 98  | IPA        | Stone     | cheery      |
      | Beer 60 | 9.5 | 98  | IPA        | Stone     | cheery      |

  @javascript
  Scenario: The beer list is paginated to 15 beers per page
    Given I visit the home page
    When I click "Find a Beer"
    Then I should see "First Page(1)" on the page
    And I should see "Last Page(4)" on the page
    And I should see "1" on the page
    And I should see "2" on the page
    And I should see "3" on the page
    And I should see "Beer 1" on the page
    And I should see "Beer 15" on the page
    And I should not see "Beer 26" on the page
    And I should see 15 items in the "beers" table

  @javascript
  Scenario: I can navigate to the different beer pages
    Given I visit the home page
    When I click "Find a Beer"
    Then I should see "Beer 1" on the page
    And I should see "Beer 15" on the page
    And I should not see "Beer 26" on the page
    And I click "2" within "pagination"
    And I should see "Beer 26" on the page
    And I should not see "Beer 1" on the page
    And I should see 15 items in the "beers" table
