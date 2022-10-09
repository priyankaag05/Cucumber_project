Feature: Login Feature scenario

  Background: 
    Given I have launched the application
    And I click on the Login link

  Scenario: This senario is to define the login happy path
    #  Given I have launched the application
    #  And I click on the Login link
    When I enter the correct username and password
    And I clicked on Login Button
    Then I should land on home page

@regression
  Scenario: This senario is to define the failure path
    # Given I have launched the application
    # And I click on the Login link
    When I enter the incorrect username and password
    And I clicked on Login Button
    Then I should get the error message "The email or password you have entered is invalid."

@sanity
  Scenario: This senario is to define the failure path
    #   Given I have launched the application
    #   And I click on the Login link
    When I enter the username as "abc@xyz.com" and password as "Abc@1234"
    And I clicked on Login Button
    Then I should get the error message "The email or password you have entered is invalid."

  Scenario Outline: This senario is to define the failure path
    #   Given I have launched the application
    #   And I click on the Login link
    When I enter the username as "<UserName>" and password as "<Password>"
    And I clicked on Login Button
    Then I should get the error message "The email or password you have entered is invalid."

    Examples: 
      | UserName    | Password |
      | abc@xyz.com | Abc@1234 |
      | pqr@xyz.com | Ert@1234 |
