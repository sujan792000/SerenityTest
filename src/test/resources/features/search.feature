Feature: Sample

  @ui @pageobject
  Scenario: Should be able to search for a product from the input box
    Given John is viewing the Etsy landing page
    When he searches for a product from the input box
    Then the result should be displayed

  @ui @screenplay
  Scenario: Should be able to search for a product from the input box (screenplay)
    Given John is viewing the Etsy landing page (screenplay)
    When he searches for a product from the input box (screenplay)
    Then the result should be displayed (screenplay)

  @ui @testone
  Scenario: Should be able to search for a product from the drop-down menu
    Given John is viewing the Etsy landing page
    When he searches for product from the drop-down menu
    Then the search result should be displayed

  @ui @testtwo
  Scenario: Should be able to search for a product from the icons
    Given John is viewing the Etsy landing page
    When he clicks jewellery icon
    Then the jewellery results should be displayed


