Feature: Automate TC for User Methods: New (Task ASK-179)
    #Test Set: ASK-36 User - New

  @User-New(HappyPath)
  Scenario: Create new User (Happy path)
    #Test Case: ASK-64 User - New (Happy path)
    When I open url "http://local.school.portnov.com:4520/#/registration"
    And I wait for 3 sec
    Then I click on element with xpath "//input[@placeholder='First Name']"
    And I type "John1$#" into element with xpath "//input[@placeholder='First Name']"
    Then I click on element with xpath "//input[@placeholder='Last Name']"
    And I type "Johnson1$#" into element with xpath "//input[@placeholder='Last Name']"
    Then I click on element with xpath "//input[@placeholder='Email']"
    And I type "john81@zippiex.com" into element with xpath "//input[@placeholder='Email']"
    Then I click on element with xpath "//input[@placeholder='Group Code']"
    And I type "Aa1$#" into element with xpath "//input[@placeholder='Group Code']"
    Then I click on element with xpath "//input[@placeholder='Password']"
    And I type "123Aa$#" into element with xpath "//input[@placeholder='Password']"
    Then I click on element with xpath "//input[@placeholder='Confirm Password']"
    And I type "123Aa$#" into element with xpath "//input[@placeholder='Confirm Password']"
    Then I click on element with xpath "//button[@type='submit']"
    And I wait for 3 sec
    Then element with xpath "//*[contains(text(),'You have been Registered.')]" should be displayed

  @User-New(DuplicatedEmail)
  Scenario: Duplicated entry (Sign In with the same Email)
    #Tect Case: ASK-70 User - New (Duplicated Email)
    When I open url "http://local.school.portnov.com:4520/#/registration"
    And I wait for 3 sec
    Then I click on element with xpath "//input[@placeholder='First Name']"
    And I type "Ivan" into element with xpath "//input[@placeholder='First Name']"
    Then I click on element with xpath "//input[@placeholder='Last Name']"
    And I type "Ivanov" into element with xpath "//input[@placeholder='Last Name']"
    Then I click on element with xpath "//input[@placeholder='Email']"
    And I type "cahessasso-2200@yopmail.com" into element with xpath "//input[@placeholder='Email']"
    Then I click on element with xpath "//input[@placeholder='Group Code']"
    And I type "A005" into element with xpath "//input[@placeholder='Group Code']"
    Then I click on element with xpath "//input[@placeholder='Password']"
    And I type "12345" into element with xpath "//input[@placeholder='Password']"
    Then I click on element with xpath "//input[@placeholder='Confirm Password']"
    And I type "12345" into element with xpath "//input[@placeholder='Confirm Password']"
    Then I click on element with xpath "//button[@type='submit']"
    And I wait for 3 sec
    Then element with xpath "//div[@class='cdk-overlay-container']" should be presented





