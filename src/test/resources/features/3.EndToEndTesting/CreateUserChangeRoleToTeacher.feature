Feature: Automate TC for End to End Testing: Create user as a student, change role to teacher
  #TC-198 Create User and change User role to teacher
  Background: Register as a student
    Given I open url "http://local.school.portnov.com:4520/#/login"
    And I wait for 2 sec

  @Test1
  Scenario: Create a User as a Student
    When I click on element with xpath "//span[contains(text(),'Register Now')]"
    And I wait for 3 sec
    And I click on element with xpath "//input[@placeholder ='First Name']"
    Then I type "Ivan" into element with xpath "//input[@placeholder='First Name']"
    And I click on element with xpath "//input[@placeholder='Last Name']"
    Then I type "Ivanov" into element with xpath "//input[@placeholder='Last Name']"
    And I click on element with xpath "//input[@placeholder='Email']"
    Then I type "onnihennucu-1204@yopmail.com" into element with xpath "//input[@placeholder='Email']"
    And I click on element with xpath "//input[@placeholder='Group Code']"
    Then I type "A005" into element with xpath "//input[@placeholder='Group Code']"
    And I click on element with xpath "//input[@placeholder='Password']"
    Then I type "12345" into element with xpath "//input[@placeholder='Password']"
    And I click on element with xpath "//input[@placeholder='Confirm Password']"
    Then I type "12345" into element with xpath "//input[@placeholder='Confirm Password']"
    Then I click on element with xpath "//button[@type='submit']"
    And I wait for 6 sec
    #Then element with xpath "//h4[contains(text(),'You have been Registered.')]" should be displayed
    #And I click on element with xpath "//span[@class='mat-button-wrapper']"
    #Then element with xpath "//ac-login-page" should be presented

  @Test2
  Scenario: Login as a Teacher and change Student's role to Teacher
    And I click on element with xpath "//input[@placeholder='Email *']"
    Then I type "lfelipe@gag16dotw7t.tk" into element with xpath "//input[@placeholder='Email *']"
    And I click on element with xpath "//input[@placeholder='Password *']"
    Then I type "12345" into element with xpath "//input[@placeholder='Password *']"
    And I wait for 3 sec
    Then I click on element with xpath "//*[contains(text(), 'Sign In')]"
    And I wait for 5 sec
    Then element with xpath "//p[contains(text(),'TEACHER')]" should be displayed
    And I click on element with xpath "//h5[contains(text(),'Management')]"
    And I wait for 5 sec
    Then element with xpath "//h4[contains(text(),'Management')]" should be displayed
    And I click on element with xpath "//h4[contains(text(),'Ivan Ivanov')]/..//h6[contains(text(),'Group: A005')]"
    And I wait for 3 sec
    Then I click on element with xpath "//span[@class='mat-button-wrapper']"
    And I click on element with xpath "//div[@class='mat-menu-content ng-trigger ng-trigger-fadeInItems']//button[2]"
    Then element with xpath "//h1[contains(text(), 'Confirmation')]" should be displayed
    And  I click on element with xpath "//span[contains(text(),'Change Role')]"
    And I wait for 2 sec
    Then element with xpath "//td[contains(text(),'TEACHER')]" should be displayed

    #The User's role must be changed back to Student in order to run the Test Case Automation again
    Then I click on element with xpath "//span[@class='mat-button-wrapper']"
    And I click on element with xpath "//div[@class='mat-menu-content ng-trigger ng-trigger-fadeInItems']//button[2]"
    Then element with xpath "//h1[contains(text(), 'Confirmation')]" should be displayed
    And  I click on element with xpath "//span[contains(text(),'Change Role')]"
    And I wait for 2 sec
    Then element with xpath "//td[contains(text(),'STUDENT')]" should be displayed