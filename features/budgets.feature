@login
Feature: Budget

  Scenario: Add a budget
    When add a budget of month "2017-08" with amount 1000
    Then list budgets as below
      | month   | amount |
      | 2017-08 | 1000   |

  Scenario: When we add a budget but there was already one in the same year/month, we should update the data
    Given the original data is as below
      | month   | amount |
      | 2017-08 | 1000   |
    When add a budget of month "2017-08" with amount 3000
    Then list budgets as below
      | month   | amount |
      | 2017-08 | 3000   |