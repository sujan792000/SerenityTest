Feature: Additional features for Ui testing
  @ui @testthree
  Scenario: should be able to register with Etsy with personal details
    Given John is viewing the Etsy landing page
    When he clicks register button
    And Enter following personal details and click submit
      |firstname|email|password|reconfirmpassword|
      |sun      |sunny@gmail.com|happy1234|happy1234|
    Then the "Hi, your account is unconfirmed" message should be displayed

  @ui @testfour
  Scenario: should be able to signin with Etsy login details
    Given John is viewing the Etsy landing page
    When he clicks login button
    And Enter username and password
    And click sigin button
    Then the "Hi, your account is unconfirmed" message should be displayed

  @ui @testfive
  Scenario: should be able to signin with facebook login details
    Given John is viewing the Etsy landing page
    When he clicks login button
    And click login with facebook button
    And enter facebook username and password
    And click sigin button
    Then the "Hi, your account is unconfirmed" message should be displayed

  @ui @testsix
  Scenario: should be able to add item into the basket
    Given John is viewing the Etsy landing page
    When he searches for a product from the input box
    Then the result should be displayed
    When he clicks the first result
    Then correct product details page should be opened
    When he selects the right details and quantity
    And he clicks add to cart button
    Then the check out page should be displayed
    And number items in the cart should be one

    Scenario Outline: should be abe to navigate to carousel
      Given John is viewing the Etsy landing page
      When he clicks the <navigation> button in the carousel
      Then <page> should be displayed
      And  <page> pagination should be highlighted

      Examples:
      |navigation|page|
      |next      |second page|
      |next      | third page|
      |previous | second page|
      |next     | third page |

      Scenario Outline: should be able to filter search results
        Given John is viewing the Etsy landing page
        When he searches for a product with from the input box
        Then the result should be displayed
        When he selects <category> and <price> and <Item type> and <color> options
        Then the sorted result should be displayed

        Examples:
        |category|price|Item type | color|
        |Accessories|under £20 | hand made | black|
