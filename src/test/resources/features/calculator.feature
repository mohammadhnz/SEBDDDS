@tag
Feature: Calculator

  Scenario: add two numbers
    Given Two input values, 1 and 2
    And Operator is +
    When operation
    Then I expect the result 3

  Scenario: Multiplying two numbers
    Given Two input values, 10 and 11
    And Operator is *
    When operation
    Then I expect the result 110


  Scenario: Multiplying two numbers
    Given Two input values, 11 and 11
    And Operator is *
    When operation
    Then I expect the result 121

  Scenario: Calculating power of a number
    Given Two input values, 2 and 3
    And Operator is ^
    When operation
    Then I expect the result 8

  Scenario: Dividing two numbers
    Given Two input values, 8 and 4
    And Operator is /
    When operation
    Then I expect the result 2

  Scenario Outline: add two numbers
    Given Two input values, <first> and <second>
    And Operator is +
    When operation
    Then I expect the result <result>

    Examples:
      | first | second | result |
      | 1     | 12     | 13     |
      | -1    | 6      | 5      |
      | 2     | 2      | 4      |

  Scenario Outline: multiply two numbers
    Given Two input values, <first> and <second>
    And Operator is *
    When operation
    Then I expect the result <result>

    Examples:
      | first | second | result |
      | 1     | 12     | 12     |
      | 3     | 6      | 18     |
      | 2     | 2      | 4      |

  Scenario Outline: divide two numbers
    Given Two input values, <first> and <second>
    And Operator is /
    When operation
    Then I expect the result <result>

    Examples:
      | first | second | result |
      | 12    | 2      | 6      |
      | 6     | 3      | 2      |
      | 2     | 2      | 1      |

  Scenario Outline: power two numbers
    Given Two input values, <first> and <second>
    And Operator is ^
    When operation
    Then I expect the result <result>

    Examples:
      | first | second | result |
      | 0    | 2      | 0      |
      | 6     | 2      | 36      |
      | 20     | 2      | 400      |