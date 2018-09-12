Feature: Automate TC for User Properties: Group code
  Background: Register as a student
    Given I open url "http://local.school.portnov.com:4520/#/login"
    And I wait for 5 sec
    #Test Set: ASK-32

  @Test-HappyPath
  Scenario: Existing email and password (Happy path)
    #ASK-47 Existing email and password (Happy path)
    Then I click on element with xpath "//input[@placeholder='Email *']"
    And I type "bviksar@5rof.cf" into element with xpath "//input[@placeholder='Email *']"
    Then I click on element with xpath "//input[@placeholder='Password *']"
    Then I type "abcde" into element with xpath "//input[@placeholder='Password *']"
    And I wait for 3 sec
    Then I click on element with xpath "//button[@type='submit']"
    And I wait for 3 sec
    Then I open url "http://local.school.portnov.com:4520/#/home"

  @Test-RequiredField
  Scenario Outline: Missing one or more Required fields
    #ASK-54 Zero character input/Required fields
    #ASK-67 Email required field
    #ASK-73 PWD required field
    Then I click on element with xpath "//input[@placeholder='Email *']"
    And I type "<Email>" into element with xpath "//input[@placeholder='Email *']"
    Then I click on element with xpath "//input[@placeholder='Password *']"
    Then I type "<Password>" into element with xpath "//input[@placeholder='Password *']"
    And I wait for 3 sec
    Then I click on element with xpath "//button[@type='submit']"
    And I wait for 3 sec
    Then element with xpath "//mat-error[contains(text(), 'This field is required')]" should be displayed
    And I wait for 3 sec
    Examples:
      | Email           | Password |
      |                 |          |
      |                 | abcde    |
      | bviksar@5rof.cf |          |

  @Test_AuthenticationFailed
  Scenario Outline: Authentication Failed due to invalid input in one or more required fields
    #ASK-77 Invalid email
    #ASK-78 Invalid password
    #ASK-80 Capitalization in Password
    Then I click on element with xpath "//input[@placeholder='Email *']"
    And I type "<Email>" into element with xpath "//input[@placeholder='Email *']"
    Then I click on element with xpath "//input[@placeholder='Password *']"
    Then I type "<Password>" into element with xpath "//input[@placeholder='Password *']"
    And I wait for 3 sec
    Then I click on element with xpath "//button[@type='submit']"
    And I wait for 3 sec
    Then element with xpath "//*[contains(text(), 'Authentication failed')]" should be displayed
    And I wait for 3 sec
    Examples:
      | Email            | Password |
      | bviksar@5rof.com | abcde    |
      | bviksar@5rof.cf  | 12345    |
      | bviksar@5rof.cf  | ABCDE    |

  @Test_InvalidField
  Scenario: Error message due to invalid email format
    #ASK-75 Invalid email format
    Then I click on element with xpath "//input[@placeholder='Email *']"
    And I type "12345" into element with xpath "//input[@placeholder='Email *']"
    Then I click on element with xpath "//input[@placeholder='Password *']"
    And I wait for 3 sec
    Then element with xpath "//mat-error[contains(text(), 'Should be a valid email address')]" should be displayed
    Then I type "abcde" into element with xpath "//input[@placeholder='Password *']"
    And I wait for 3 sec
    Then I click on element with xpath "//button[@type='submit']"
    And I wait for 3 sec

  @Test_MaskedPWD
  Scenario: Masking Password
    #ASK-65 Masking Password
    #Then I click on element with xpath "//input[@placeholder='Email *']"
    #And I type "bviksar@5rof.cf" into element with xpath "//input[@placeholder='Email *']"
    Then I click on element with xpath "//input[@placeholder='Password *']"
    And I wait for 3 sec
    Then I type "abcde" into element with xpath "//input[@placeholder='Password *']"
    And I wait for 3 sec
    Then I should see element with xpath "//input[@placeholder='Password *']" should be masked
    #Then I click on element with xpath "//button[@type='submit']"
    And I wait for 3 sec

  @Test_Copy
  Scenario: "Copy" key for password should be disabled
    #ASK-72 “Copy” Password
    Then I click on element with xpath "//input[@placeholder='Password *']"
    Then I type "abcde" into element with xpath "//*[@placeholder='Password *']"
    And I wait for 2 sec
   # Then I copy "abcde" from element with xpath "//*[@placeholder='Password *']"
   # And I open pop-up menu using right mouse click on element with xpath "//*[@placeholder='Password *']"
    And I wait for 2 sec
    Then "Copy" should be disabled for in pop-up menu on element with xpath "//*[@placeholder='Password *']"
    And I wait for 5 sec

  @Test_Cut
  Scenario: "Cut" key for password should be disabled
    #ASK-74 “Cut” Password
    Then I click on element with xpath "//input[@placeholder='Password *']"
#    Then I open the pop-up menu using Right-Click
    And I wait for 3 sec
    Then I cut "abcde" into element with xpath "//*[@placeholder='Password *']"
    And I wait for 3 sec
    Then element with xpath "//input[@placeholder='Password *']" should not be selected
    And I wait for 3 sec

  @Test_CopyUser
  Scenario: "Copy" key for email should be enabled
    #ASK-72 “Copy” Password
    Then I click on element with xpath "//input[@placeholder='Email *']"
    Then I type "abcde" into element with xpath "//input[@placeholder='Email *']"
    And I wait for 2 sec
   # Then I copy "abcde" from element with xpath "//*[@placeholder='Password *']"
   # And I open pop-up menu using right mouse click on element with xpath "//*[@placeholder='Password *']"
    And I wait for 2 sec
    Then "Copy" should be disabled for in pop-up menu on element with xpath "//input[@placeholder='Email *']"
    And I wait for 5 sec

