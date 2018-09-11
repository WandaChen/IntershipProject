Feature: Automate TC for End To End Testing: Change User Role from Student to Teacher
  Background: Register as a student
    Given I open url "http://local.school.portnov.com:4520/#/registration"
    And I wait for 3 sec
  @Test1
  Scenario: Create a User with a Role of Student
    #TC: ASK-6 Alphanumerical & Sp char (Happy path)
    And I click on element with xpath "//input[@placeholder ='First Name']"
    Then I type "Ivan" into element with xpath "//input[@placeholder='First Name']"
    And I click on element with xpath "//input[@placeholder='Last Name']"
    Then I type "Ivanov" into element with xpath "//input[@placeholder='Last Name']"
    And I click on element with xpath "//input[@placeholder='Email']"
    Then I type "vledjo.led@sandre.ml" into element with xpath "//input[@placeholder='Email']"
    And I click on element with xpath "//input[@placeholder='Group Code']"
    Then I type "A005" into element with xpath "//input[@placeholder='Group Code']"
    And I click on element with xpath "//input[@placeholder='Password']"
    Then I type "12345" into element with xpath "//input[@placeholder='Password']"
    And I click on element with xpath "//input[@placeholder='Confirm Password']"
    Then I type "12345" into element with xpath "//input[@placeholder='Confirm Password']"
    Then I click on element with xpath "//button[@type='submit']"
    And I wait for 5 sec
