Feature: This feature would be creating a calculator for Add and Subtract

@sanity
  Scenario: To Add two numbers
    Given I have a calculator
    When I add 4 and 5
    Then I should get the result as 9

  Scenario Outline: To Add two numbers
    Given I have a calculator
    When I add <num1> and <num2>
    Then I should get the result as <result>

    Examples: 
      | num1 | num2 | result |
      |    5 |    7 |     12 |
      |    6 |    4 |     10 |
      
      Scenario: To Add two numbers
    Given I have a calculator
    When I add below numbers
    |3|
    |2|
    |5|
    |4|
    
    Then I should get the result as 14
      
