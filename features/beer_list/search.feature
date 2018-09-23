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
      | name    | abv | ibu | beer_style | brewery   | description | category      |
      | Beer 01 | 6.5 | 92  | IPA        | Stone     | testy       | American Ale  |
      | Beer 02 | 4.5 | 82  | Stout      | Big Money | beery       | British Stout |
      | Beer 03 | 9.5 | 98  | IPA        | Stone     | cheery      | American Ale  |
      | Beer 04 | 6.5 | 92  | IPA        | Stone     | testy       | American Ale  |
      | Beer 05 | 4.5 | 82  | Stout      | Big Money | beery       | British Stout |
      | Beer 06 | 9.5 | 98  | IPA        | Stone     | cheery      | American Ale  |
      | Beer 07 | 6.5 | 92  | IPA        | Stone     | testy       | American Ale  |
      | Beer 08 | 4.5 | 82  | Stout      | Big Money | beery       | British Stout |
      | Beer 09 | 9.5 | 98  | IPA        | Stone     | cheery      | American Ale  |
      | Beer 10 | 6.5 | 92  | IPA        | Stone     | testy       | American Ale  |
      | Beer 11 | 4.5 | 82  | Stout      | Big Money | beery       | British Stout |
      | Beer 12 | 9.5 | 98  | IPA        | Stone     | cheery      | American Ale  |
      | Beer 13 | 6.5 | 92  | IPA        | Stone     | testy       | American Ale  |
      | Beer 14 | 4.5 | 82  | Stout      | Big Money | beery       | British Stout |
      | Beer 15 | 9.5 | 98  | IPA        | Stone     | cheery      | American Ale  |
      | Beer 26 | 6.5 | 92  | IPA        | Stone     | testy       | American Ale  |
      | Beer 27 | 4.5 | 82  | Stout      | Big Money | beery       | British Stout |
      | Beer 28 | 9.5 | 98  | IPA        | Stone     | cheery      | American Ale  |
      | Beer 29 | 6.5 | 92  | IPA        | Stone     | testy       | American Ale  |
      | Beer 30 | 4.5 | 82  | Stout      | Big Money | beery       | British Stout |
      | Beer 31 | 9.5 | 98  | IPA        | Stone     | cheery      | American Ale  |
      | Beer 32 | 6.5 | 92  | IPA        | Stone     | testy       | American Ale  |
      | Beer 33 | 4.5 | 82  | Stout      | Big Money | beery       | British Stout |
      | Beer 34 | 9.5 | 98  | IPA        | Stone     | cheery      | American Ale  |
      | Beer 35 | 9.5 | 98  | IPA        | Stone     | cheery      | American Ale  |
      | Beer 36 | 6.5 | 92  | IPA        | Stone     | testy       | American Ale  |
      | Beer 37 | 4.5 | 82  | Stout      | Big Money | beery       | British Stout |
      | Beer 38 | 9.5 | 98  | IPA        | Stone     | cheery      | American Ale  |
      | Beer 39 | 6.5 | 92  | IPA        | Stone     | testy       | American Ale  |
      | Beer 40 | 4.5 | 82  | Stout      | Big Money | beery       | British Stout |
      | Beer 41 | 9.5 | 98  | IPA        | Stone     | cheery      | American Ale  |
      | Beer 42 | 6.5 | 92  | IPA        | Stone     | testy       | American Ale  |
      | Beer 43 | 4.5 | 82  | Stout      | Big Money | beery       | British Stout |
      | Beer 44 | 9.5 | 98  | IPA        | Stone     | cheery      | American Ale  |
      | Beer 45 | 6.5 | 92  | IPA        | Stone     | testy       | American Ale  |
      | Beer 46 | 4.5 | 82  | Stout      | Big Money | beery       | British Stout |
      | Beer 47 | 9.5 | 98  | IPA        | Stone     | cheery      | American Ale  |
      | Beer 48 | 6.5 | 92  | IPA        | Stone     | testy       | American Ale  |
      | Beer 49 | 4.5 | 82  | Stout      | Big Money | beery       | British Stout |
      | Beer 50 | 9.5 | 98  | IPA        | Stone     | cheery      | American Ale  |
      | Beer 51 | 6.5 | 92  | IPA        | Stone     | testy       | American Ale  |
      | Beer 52 | 4.5 | 82  | Stout      | Big Money | beery       | British Stout |
      | Beer 53 | 9.5 | 98  | IPA        | Stone     | cheery      | American Ale  |
      | Beer 54 | 6.5 | 92  | IPA        | Stone     | testy       | American Ale  |
      | Beer 55 | 4.5 | 82  | Stout      | Big Money | beery       | British Stout |
      | Beer 56 | 9.5 | 98  | IPA        | Stone     | cheery      | American Ale  |
      | Beer 57 | 6.5 | 92  | IPA        | Stone     | testy       | American Ale  |
      | Beer 58 | 4.5 | 82  | Stout      | Big Money | beery       | British Stout |
      | Beer 59 | 9.5 | 98  | IPA        | Stone     | cheery      | American Ale  |
      | Beer 60 | 9.5 | 98  | IPA        | Stone     | cheery      | American Ale  |

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

  @javascript
  Scenario: I can search by beer category
    Given I visit the home page
    And I click "Find a Beer"
    When I select "American Ale" from "Category"
    And I click "Find Beers"
    Then I should see the following beers in the table:
      | Name    | ABV  | IBU | Style | Brewery | Category     |
      | Beer 01 | 6.5% | 92  | IPA   | Stone   | American Ale |
      | Beer 03 | 9.5% | 98  | IPA   | Stone   | American Ale |
      | Beer 04 | 6.5% | 92  | IPA   | Stone   | American Ale |
      | Beer 06 | 9.5% | 98  | IPA   | Stone   | American Ale |
      | Beer 07 | 6.5% | 92  | IPA   | Stone   | American Ale |
      | Beer 09 | 9.5% | 98  | IPA   | Stone   | American Ale |
      | Beer 10 | 6.5% | 92  | IPA   | Stone   | American Ale |
      | Beer 12 | 9.5% | 98  | IPA   | Stone   | American Ale |
      | Beer 13 | 6.5% | 92  | IPA   | Stone   | American Ale |
      | Beer 15 | 9.5% | 98  | IPA   | Stone   | American Ale |
      | Beer 26 | 6.5% | 92  | IPA   | Stone   | American Ale |
      | Beer 28 | 9.5% | 98  | IPA   | Stone   | American Ale |
      | Beer 29 | 6.5% | 92  | IPA   | Stone   | American Ale |
      | Beer 31 | 9.5% | 98  | IPA   | Stone   | American Ale |
      | Beer 32 | 6.5% | 92  | IPA   | Stone   | American Ale |

  @javascript
  Scenario: Clearing the search should reset the search settings and show all the beers again
    Given I visit the home page
    And I click "Find a Beer"
    And I select "American Ale" from "Category"
    And I select "IPA" from "Style"
    And I fill in "Name" with "Beer 5"
    And I click "Find Beers"
    And I should see "Beer 50"
    When I click "Clear Search"
    Then I should see "First Page(1)" within "pagination"
    And I should see "Last Page(4)" within "pagination"
    # Stout that would not have been shown after search
    And I should see "Beer 02" within "beer-list"
