Feature: Searching works from the beer list page
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
      | Beer 01 | 6.5 | 92  | IPA        | Stone     | testy       |
      | Beer 02 | 4.5 | 82  | Stout      | Big Money | beery       |
      | Beer 03 | 9.5 | 98  | IPA        | Stone     | cheery      |
      | Beer 04 | 6.5 | 92  | IPA        | Stone     | testy       |
      | Beer 05 | 4.5 | 82  | Stout      | Big Money | beery       |
      | Beer 06 | 9.5 | 98  | IPA        | Stone     | cheery      |
      | Beer 07 | 6.5 | 92  | IPA        | Stone     | testy       |
      | Beer 08 | 4.5 | 82  | Stout      | Big Money | beery       |
      | Beer 09 | 9.5 | 98  | IPA        | Stone     | cheery      |
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
  Scenario Outline: I can fuzzy search by name
    Given I visit the home page
    And I click "Find a Beer"
    And I fill in "Name" with "<beer search>"
    And I click "Find Beers"
    Then I should see the following beers in the table:
      | Name    | ABV  | IBU |
      | Beer 50 | 9.5% | 98  |
      | Beer 51 | 6.5% | 92  |
      | Beer 52 | 4.5% | 82  |
      | Beer 53 | 9.5% | 98  |
      | Beer 54 | 6.5% | 92  |
      | Beer 55 | 4.5% | 82  |
      | Beer 56 | 9.5% | 98  |
      | Beer 57 | 6.5% | 92  |
      | Beer 58 | 4.5% | 82  |
      | Beer 59 | 9.5% | 98  |

    Examples:
      | beer search |
      | Beer 5      |
      | beer 5      |
      | eer 5       |

  @javascript
  Scenario: I can search by beer style
    Given I visit the home page
    And I click "Find a Beer"
    When I select "IPA" from "Style"
    And I click "Find Beers"
    Then I should see the following beers in the table:
      | Name    | ABV  | IBU | Style | Brewery   |
      | Beer 01 | 6.5% | 92  | IPA   | Stone     |
      | Beer 03 | 9.5% | 98  | IPA   | Stone     |
      | Beer 04 | 6.5% | 92  | IPA   | Stone     |
      | Beer 06 | 9.5% | 98  | IPA   | Stone     |
      | Beer 07 | 6.5% | 92  | IPA   | Stone     |
      | Beer 09 | 9.5% | 98  | IPA   | Stone     |
      | Beer 10 | 6.5% | 92  | IPA   | Stone     |
      | Beer 12 | 9.5% | 98  | IPA   | Stone     |
      | Beer 13 | 6.5% | 92  | IPA   | Stone     |
      | Beer 15 | 9.5% | 98  | IPA   | Stone     |
      | Beer 26 | 6.5% | 92  | IPA   | Stone     |
      | Beer 28 | 9.5% | 98  | IPA   | Stone     |
      | Beer 29 | 6.5% | 92  | IPA   | Stone     |
      | Beer 31 | 9.5% | 98  | IPA   | Stone     |
      | Beer 32 | 6.5% | 92  | IPA   | Stone     |
