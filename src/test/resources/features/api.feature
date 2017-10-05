Feature: api scenarios

  Scenario Outline: search with specific keyword
    Given open the page url
    When I pass <keyword> as search term parameter
    Then Https code should be 200
    And  total results count should be more than one
    Examples:
    |keyword|
    |Jewellery|
    |hand bag |


  Scenario Outline: search with multiple keyword
    Given open the page url
    When I pass <keyword> and <keyword one> as search term parameters
    Then Https code should be 200
    And  total results count should be more than one
    Examples:
      |keyword |keyword one|
      |Jewellery|Accessories|
      |hand bag |Jewellery  |