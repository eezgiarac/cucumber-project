Feature: Some of the general functionality verifications

  Scenario:Dropdown options verifications

    Given user is already logged in to The Web table app
    When user is on the “Order” page
    Then user sees below options under product dropdown
      | MoneyCog   |
      | Familybea  |
      | Screenable |

  Scenario: Payment options verification

    Given user is already logged in to The Web table app
    When user is on the “Order” page
    Then user sees Visa as enabled payment option
    Then user sees MasterCard as enabled payment option
    Then user sees American Express as enabled payment option


  Scenario: Order placement scenario

    Given user is already logged in to The Web table app
    When user is on the “Order” page
    And user enters quantity "2"
    Then user clicks to the calculate button
    And user enters customer name "Jane Doe"
    And user enters street "7th Street"
    And user enters city "New York"
    And user enters state "New York"
    And user enters zip "12345"
    And user selects payment option "American Express"
    And user enters credit card number "1111222233334444"
    And user enters expiration date "12/25"
    And user clicks to process order button
    Then user should see "Jane Doe" in the first row of the web table
  @wip
  Scenario Outline: Order placement scenario

    Given user is already logged in to The Web table app
    When user is on the “Order” page
    And user enters quantity "<quantity>"
    Then user clicks to the calculate button
    And user enters customer name "<customerName>"
    And user enters street "<street>"
    And user enters city "<city>"
    And user enters state "<state>"
    And user enters zip "<zip>"
    And user selects payment option "<paymentType>"
    And user enters credit card number "<cardNumber>"
    And user enters expiration date "<expDate>"
    And user clicks to process order button
    Then user should see "<expectedName>" in the first row of the web table

    Examples:
      | quantity | customerName | street     | city | state | zip   | paymentType      | cardNumber       | expDate | expectedName |
      | 3        | John Doe     | 7th street | NY   | NY    | 12345 | American Express | 1111222233334444 | 12/25   | John Doe     |
      | 3        | Jane Doe     | 7th street | NY   | NY    | 12345 | American Express | 1111222233334444 | 12/25   | Jane Doe     |
      | 3        | Ezgi Arac    | 7th street | NY   | NY    | 12345 | American Express | 1111222233334444 | 12/25   | Ezgi Arac    |
      | 3        | Jack Doe     | 7th street | NY   | NY    | 12345 | American Express | 1111222233334444 | 12/25   | Jack Doe     |
      | 3        | Belkıs Doe   | 7th street | NY   | NY    | 12345 | American Express | 1111222233334444 | 12/25   | Belkıs Doe   |
      | 3        | Zeynep Doe   | 7th street | NY   | NY    | 12345 | American Express | 1111222233334444 | 12/25   | Zeynep Doe   |
      | 3        | Burcu Doe    | 7th street | NY   | NY    | 12345 | American Express | 1111222233334444 | 12/25   | Burcu Doe    |
      | 3        | Jale Doe     | 7th street | NY   | NY    | 12345 | American Express | 1111222233334444 | 12/25   | Jale Doe     |




