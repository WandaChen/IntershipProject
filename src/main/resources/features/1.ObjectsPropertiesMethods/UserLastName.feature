Feature: Automate TC for User Properties: Last Name
  Background: Register as a student
    Given I open url "http://local.school.portnov.com:4520/#/registration"
    And I wait for 3 sec

  @Test1
  Scenario: Create a User with alphanumeric and special characters in Last Name
    #TC: ASK-6 Alphanumerical & Sp char (Happy path)
    And I click on element with xpath "//input[@placeholder ='First Name']"
    Then I type "Ivan" into element with xpath "//input[@placeholder='First Name']"
    And I click on element with xpath "//input[@placeholder='Last Name']"
    Then I type "Ivanov" into element with xpath "//input[@placeholder='Last Name']"
    And I click on element with xpath "//input[@placeholder='Email']"
    Then I type "ivanov@gmail.com" into element with xpath "//input[@placeholder='Email']"
    And I click on element with xpath "//input[@placeholder='Group Code']"
    Then I type "A007" into element with xpath "//input[@placeholder='Group Code']"
    And I click on element with xpath "//input[@placeholder='Password']"
    Then I type "12345" into element with xpath "//input[@placeholder='Password']"
    And I click on element with xpath "//input[@placeholder='Confirm Password']"
    Then I type "12345" into element with xpath "//input[@placeholder='Confirm Password']"
    Then I click on element with xpath "//button[@type='submit']"
    And I wait for 5 sec

  @Test2
  Scenario Outline: Create a User with boundary limit characters in Last Name
    # TC1 - ASK-14 Single Character
    # TC2 - ASK-17 Maximum Character (There is a bug reported in ASK-221)
    And I click on element with xpath "//input[@placeholder ='First Name']"
    Then I type "<FName>" into element with xpath "//input[@placeholder='First Name']"
    And I click on element with xpath "//input[@placeholder='Last Name']"
    Then I type "<LName>" into element with xpath "//input[@placeholder='Last Name']"
    And I click on element with xpath "//input[@placeholder='Email']"
    Then I type "<Email>" into element with xpath "//input[@placeholder='Email']"
    And I click on element with xpath "//input[@placeholder='Group Code']"
    Then I type "<GroupCode>" into element with xpath "//input[@placeholder='Group Code']"
    And I click on element with xpath "//input[@placeholder='Password']"
    Then I type "12345" into element with xpath "//input[@placeholder='Password']"
    And I click on element with xpath "//input[@placeholder='Confirm Password']"
    Then I type "12345" into element with xpath "//input[@placeholder='Confirm Password']"
    Then I click on element with xpath "//button[@type='submit']"
    And I wait for 5 sec
    Examples:
      | FName | LName                                                                                                                                                                                                                                                        | Email            | GroupCode |
      | Ivan  | I                                                                                                                                                                                                                                                            | ivanov@gmail.com | A007      |
      | Ivan  | IvanovIvanovIvanovIvanovIvanovIvanovIvanovIvanovIvanovIvanovIvanovIvanovIvanovIvanovIvanovIvanovIvanovIvanovIvanovIvanovIvanovIvanovIvanovIvanovIvanovIvanovIvanovIvanovIvanovIvanovIvanovIvanovIvanovIvanovIvanovIvanovIvanovIvanovIvanovIvanovIvanovIvanov | ivanov@gmail.com | A007      |

  @Test3
  Scenario: Create User with Zero character input in Last Name
    # TC - ASK-7 Zero character input/Required field
    And I click on element with xpath "//input[@placeholder ='First Name']"
    Then I type "Ivan" into element with xpath "//input[@placeholder='First Name']"
    #And I click on element with xpath "//input[@placeholder='Last Name']"
    #Then I type "" into element with xpath "//input[@placeholder='Last Name']"
    And I click on element with xpath "//input[@placeholder='Email']"
    Then I type "ivanov@gmail.com" into element with xpath "//input[@placeholder='Email']"
    And I click on element with xpath "//input[@placeholder='Group Code']"
    Then I type "A007" into element with xpath "//input[@placeholder='Group Code']"
    And I click on element with xpath "//input[@placeholder='Password']"
    And I wait for 3 sec
    Then I type "12345" into element with xpath "//input[@placeholder='Password']"
    And I click on element with xpath "//input[@placeholder='Confirm Password']"
    Then I type "12345" into element with xpath "//input[@placeholder='Confirm Password']"
    Then I click on element with xpath "//button[@type='submit']"
    Then element with xpath "//mat-error[contains(text(), 'This field is required')]" should be displayed
    And I wait for 5 sec


  @Test4
  Scenario: Create a User with Max Characters + 1 in Last Name
    # TC - ASK-18 Max Characters + 1
    And I click on element with xpath "//input[@placeholder ='First Name']"
    Then I type "Ivan" into element with xpath "//input[@placeholder='First Name']"
    And I click on element with xpath "//input[@placeholder='Last Name']"
    Then I type "IvanovIvanovIvanovIvanovIvanovIvanovIvanovIvanovIvanovIvanovIvanovIvanovIvanovIvanovIvanovIvanovIvanovIvanovIvanovIvanovIvanovIvanovIvanovIvanovIvanovIvanovIvanovIvanovIvanovIvanovIvanovIvanovIvanovIvanovIvanovIvanovIvanovIvanovIvanovIvanovIvanovIvanovI" into element with xpath "//input[@placeholder='Last Name']"
    And I click on element with xpath "//input[@placeholder='Email']"
    Then I type "ivanov@gmail.com" into element with xpath "//input[@placeholder='Email']"
    And I click on element with xpath "//input[@placeholder='Group Code']"
    Then I type "A007" into element with xpath "//input[@placeholder='Group Code']"
    And I click on element with xpath "//input[@placeholder='Password']"
    Then I type "12345" into element with xpath "//input[@placeholder='Password']"
    And I click on element with xpath "//input[@placeholder='Confirm Password']"
    Then I type "12345" into element with xpath "//input[@placeholder='Confirm Password']"
    Then I click on element with xpath "//button[@type='submit']"
    And I wait for 3 sec
    Then element with xpath "//*[contains(text(), 'Too long')]" should be displayed
    And I wait for 5 sec

  @Test5.0
  Scenario Outline: Create a User with spaces characters in the Group code
    # TC1 - ASK-8 Leading spaces
    # TC2 - ASK-21 Trailing spaces
    # TC3 - ASK-22 Space character inside
    And I click on element with xpath "//input[@placeholder ='First Name']"
    Then I type "<FName>" into element with xpath "//input[@placeholder='First Name']"
    And I click on element with xpath "//input[@placeholder='Last Name']"
    Then I type quote "<LName>" into element with xpath "//input[@placeholder='Last Name']"
    #And I wait for 3 sec
    And I click on element with xpath "//input[@placeholder='Email']"
    Then element with xpath "//mat-error[contains(text(), 'Whitespaces are not allowed')]" should be displayed
    Then I type "<Email>" into element with xpath "//input[@placeholder='Email']"
    And I click on element with xpath "//input[@placeholder='Group Code']"
    Then I type "<GroupCode>" into element with xpath "//input[@placeholder='Group Code']"
    And I click on element with xpath "//input[@placeholder='Password']"
    Then I type "<Password>" into element with xpath "//input[@placeholder='Password']"
    And I click on element with xpath "//input[@placeholder='Confirm Password']"
    Then I type "<ConfirmPassword>" into element with xpath "//input[@placeholder='Confirm Password']"
    Then I click on element with xpath "//button[@type='submit']"
    And I wait for 5 sec
    Examples:
      | FName | LName         | Email            | GroupCode    | Password | ConfirmPassword |
      | Ivan  | '  Ivanov'    | ivanov@gmail.com |    A007      | 12345    |    12345        |
      | Ivan  | 'Ivanov  '    | ivanov@gmail.com |    A007      | 12345    |    12345        |
      | Ivan  | 'Iva  nov'    | ivanov@gmail.com |    A007      | 12345    |    12345        |

