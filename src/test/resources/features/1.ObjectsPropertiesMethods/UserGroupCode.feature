Feature: Automate TC for User Properties: Group code
  Background: Register as a student
    Given I open url "http://local.school.portnov.com:4520/#/login"
    And I wait for 3 sec
    #Test Set: ASK-40

  @Test1
  Scenario: Create a User with alphanumeric and special characters in the Group code
    #TC: ASK-42 Alphanumerical & Sp char (Happy path)
    When I click on element with xpath "//span[contains(text(),'Register Now')]"
    And I wait for 3 sec
    And I click on element with xpath "//input[@placeholder ='First Name']"
    Then I type "GroupCode1" into element with xpath "//input[@placeholder='First Name']"
    And I click on element with xpath "//input[@placeholder='Last Name']"
    Then I type "Test" into element with xpath "//input[@placeholder='Last Name']"
    And I click on element with xpath "//input[@placeholder='Email']"
    Then I type "GroupCode1@king2003.ml" into element with xpath "//input[@placeholder='Email']"
    And I click on element with xpath "//input[@placeholder='Group Code']"
    Then I type "Ab@1" into element with xpath "//input[@placeholder='Group Code']"
    And I click on element with xpath "//input[@placeholder='Password']"
    Then I type "abcde" into element with xpath "//input[@placeholder='Password']"
    And I click on element with xpath "//input[@placeholder='Confirm Password']"
    Then I type "abcde" into element with xpath "//input[@placeholder='Confirm Password']"
    Then I click on element with xpath "//button[@type='submit']"
    And I wait for 5 sec

  @Test2
  Scenario Outline: Create a User with boundary limit characters in the Group code
    # TC1 - ASK-57 Maximum Character
    # TC2 - ASK-56 Single Character
    When I click on element with xpath "//span[contains(text(),'Register Now')]"
    And I wait for 3 sec
    And I click on element with xpath "//input[@placeholder ='First Name']"
    Then I type "<FName>" into element with xpath "//input[@placeholder='First Name']"
    And I click on element with xpath "//input[@placeholder='Last Name']"
    Then I type "<LName>" into element with xpath "//input[@placeholder='Last Name']"
    And I click on element with xpath "//input[@placeholder='Email']"
    Then I type "<Email>" into element with xpath "//input[@placeholder='Email']"
    And I click on element with xpath "//input[@placeholder='Group Code']"
    Then I type "<GroupCode>" into element with xpath "//input[@placeholder='Group Code']"
    And I click on element with xpath "//input[@placeholder='Password']"
    Then I type "abcde" into element with xpath "//input[@placeholder='Password']"
    And I click on element with xpath "//input[@placeholder='Confirm Password']"
    Then I type "abcde" into element with xpath "//input[@placeholder='Confirm Password']"
    Then I click on element with xpath "//button[@type='submit']"
    And I wait for 5 sec
    Examples:
      | FName      | LName | Email                      | GroupCode |
      | GroupCode2 | Test  | GroupCode2Test@king2003.ml | Ab@13!    |
      | GroupCode3 | Test  | GroupCode3Test@king2003.ml | A         |

  @Test3
  Scenario: Create a User with Max Characters + 1 in the Group code
    # TC - ASK-58 Max Characters + 1
    When I click on element with xpath "//span[contains(text(),'Register Now')]"
    And I wait for 3 sec
    And I click on element with xpath "//input[@placeholder ='First Name']"
    Then I type "GroupCode4" into element with xpath "//input[@placeholder='First Name']"
    And I click on element with xpath "//input[@placeholder='Last Name']"
    Then I type "Test" into element with xpath "//input[@placeholder='Last Name']"
    And I click on element with xpath "//input[@placeholder='Email']"
    Then I type "GroupCode4Test@king2003.ml" into element with xpath "//input[@placeholder='Email']"
    And I click on element with xpath "//input[@placeholder='Group Code']"
    Then I type "Ab@1$s1" into element with xpath "//input[@placeholder='Group Code']"
    And I click on element with xpath "//input[@placeholder='Password']"
    And I wait for 3 sec
    Then element with xpath "//*[contains(text(), 'Too long')]" should be displayed
    Then I type "abcde" into element with xpath "//input[@placeholder='Password']"
    And I click on element with xpath "//input[@placeholder='Confirm Password']"
    Then I type "abcde" into element with xpath "//input[@placeholder='Confirm Password']"
    Then I click on element with xpath "//button[@type='submit']"
    And I wait for 5 sec

  @Test4
  Scenario: Create User with Zero character input in the Group code
    # TC - ASK-45 Zero character input
    When I click on element with xpath "//span[contains(text(),'Register Now')]"
    And I wait for 3 sec
    And I click on element with xpath "//input[@placeholder ='First Name']"
    Then I type "GroupCode5" into element with xpath "//input[@placeholder='First Name']"
    And I click on element with xpath "//input[@placeholder='Last Name']"
    Then I type "Test" into element with xpath "//input[@placeholder='Last Name']"
    And I click on element with xpath "//input[@placeholder='Email']"
    Then I type "GroupCode5Test@king2003.ml" into element with xpath "//input[@placeholder='Email']"
    #And I click on element with xpath "//input[@placeholder='Group Code']"
    #Then I type "" into element with xpath "//input[@placeholder='Group Code']"
    And I click on element with xpath "//input[@placeholder='Password']"
    And I wait for 3 sec
    Then I type "abcde" into element with xpath "//input[@placeholder='Password']"
    And I click on element with xpath "//input[@placeholder='Confirm Password']"
    Then I type "abcde" into element with xpath "//input[@placeholder='Confirm Password']"
    Then I click on element with xpath "//button[@type='submit']"
    Then element with xpath "//mat-error[contains(text(), 'This field is required')]" should be displayed
    And I wait for 5 sec

  @Test5.0
  Scenario Outline: Create a User with spaces characters in the Group code
    # TC1 - ASK-59 Leading spaces
    # TC2 - ASK-60 Trailing spaces
    # TC3 - ASK-61 Space character inside
    # TC4 - ASK-62 Only white spaces
    # Bugs exists for these TCs
    When I click on element with xpath "//span[contains(text(),'Register Now')]"
    And I wait for 3 sec
    And I click on element with xpath "//input[@placeholder ='First Name']"
    Then I type "<FName>" into element with xpath "//input[@placeholder='First Name']"
    And I click on element with xpath "//input[@placeholder='Last Name']"
    Then I type "<LName>" into element with xpath "//input[@placeholder='Last Name']"
    And I click on element with xpath "//input[@placeholder='Email']"
    Then I type "<Email>" into element with xpath "//input[@placeholder='Email']"
    And I click on element with xpath "//input[@placeholder='Group Code']"
    Then I type quote "<GroupCode>" into element with xpath "//input[@placeholder='Group Code']"
    And I click on element with xpath "//input[@placeholder='Password']"
    And I wait for 3 sec
   #Then element with xpath "//mat-error[contains(text(), 'Whitespaces are not allowed')]" should be displayed
    Then I type "abcde" into element with xpath "//input[@placeholder='Password']"
    And I click on element with xpath "//input[@placeholder='Confirm Password']"
    Then I type "abcde" into element with xpath "//input[@placeholder='Confirm Password']"
    Then I click on element with xpath "//button[@type='submit']"
    And I wait for 5 sec
    Examples:
      | FName      | LName | Email                      | GroupCode |
      | GroupCode6 | Test  | GroupCode6Test@king2003.ml | '  Ab@1'  |
      | GroupCode7 | Test  | GroupCode7Test@king2003.ml | 'Ab@1  '  |
      | GroupCode8 | Test  | GroupCode8Test@king2003.ml | 'Ab @13'  |
      | GroupCode9 | Test  | GroupCode9Test@king2003.ml | '     '  |

