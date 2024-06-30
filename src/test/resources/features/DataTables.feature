Feature: Cucumber Data Tables implementation practices


  Scenario: List of fruits and vegetables I like

    Then user should see below list
      | orange     |
      | apple      |
      | strawberry |
      | kiwi       |
      | banana     |
      | watermelon |
      | pineapple  |
      | pear       |
      | tomato     |
#to beautify the pipes above
 #mac: command + option + l
  #windows control + alt + l

  #Create a new scenario where we list the type of pets we love
  #print out all the strings in the list

  Scenario: List of pets types I love

    Then I will share my favorites

      | Mixed cat          |
      | Golden Retriever   |
      | British long hair  |
      | Scotish short hair |
      | Husky              |


  Scenario: Officer reads data about driver
    Then office is able to see any data he wants
      | name    | Jane          |
      | surname | Doe           |
      | age     | 29            |
      | address | somewhere     |
      | state   | CA            |
      | zipcode | 99999         |
      | phone   | 111-1111-1111 |


  @dataTable
  Scenario: User should be able to see all 12 months in months
  dropdown
    Given User is on the dropdowns page of practice tool
    Then User should see below info in month dropdown
      | January   |
      | February  |
      | March     |
      | April     |
      | May       |
      | June      |
      | July      |
      | August    |
      | September |
      | October   |
      | November  |
      | December  |

