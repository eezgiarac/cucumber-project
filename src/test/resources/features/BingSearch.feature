Feature: Bing search functionality
  Agile story: As a user, when I am on the bing search page
  I should be able to search anything and see relevant results

  Scenario: Search result title verification.
    Given user is on the Bing search page.
    When user enters orange in the Bing search box
    Then should see orange in the title

  @wip_ezgi  #work in progress
  Scenario: Search result title verification.
    Given user is on the Bing search page.
    When user enters "orange" in the Bing search box
    Then should see "orange - Arama" in the title