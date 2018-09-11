Feature: Automate TC "Teacher Creates Quiz with 5 Single - Choice questions" (ASK-590)
    #Test Case: ASK-292 Teacher Creates Quiz with 5 Single - Choice questions
  Background: Log into an existing teacher account
    Given I open url "http://local.school.portnov.com:4520/#/login"
    And I wait for 3 sec
    Then I click on element with xpath "//input[@placeholder='Email *']"
    And I type "lfelipe@gag16dotw7t.tk" into element with xpath "//input[@placeholder='Email *']"
    Then I click on element with xpath "//input[@placeholder='Password *']"
    Then I type "12345" into element with xpath "//input[@placeholder='Password *']"
    And I wait for 3 sec
    Then I click on element with xpath "//button[@type='submit']"
    And I wait for 3 sec
    Then I open url "http://local.school.portnov.com:4520/#/home"
    And I wait for 5 sec
    When I click on element with xpath "//h5[contains(text(),'Quizzes')]"
    And I wait for 5 sec
    Then element with xpath "//mat-card[@class='page mat-card ng-star-inserted']" should be displayed
    Then I click on element with xpath "//span[contains(text(),'Create New Quiz')]"
    And I wait for 3 sec

  @Test-5SingleChoiceQuestions
  Scenario: Create a Quiz with 5 Single - Choice questions
    #ASK-71 Quiz Title - Alphanumerical & Sp char (Happy Path)
    And element with xpath "//*[@placeholder = 'Title Of The Quiz *']" should be displayed
    When I click on element with xpath "//*[@placeholder = 'Title Of The Quiz *']"
    Then I type "ASK-292 Quiz with 5 SingleChoice questions " into element with xpath "//*[@placeholder = 'Title Of The Quiz *']"
    Then I click on element with xpath "//*[contains(text(), 'add_circle')]"
    And I wait for 2 sec
    Then element with xpath "//div[@class='mat-input-infix mat-form-field-infix']" should be displayed
    And I click on element with xpath "//div[@class='mat-radio-outer-circle']"
    Then element with xpath "//textarea[@placeholder='Question *']" should be displayed
    And I type "<Question>" into element with xpath "//textarea[@placeholder='Question *']"
    And I wait for 5 sec
    # input options
    Then I type "<Option1>" into element with xpath "<string>"
    Then I type "<Option2>" into element with xpath "<string>"
    And I wait for 5 sec
       #show correct response
    And I click on element with xpath "<string>"
    And I wait for 2 sec
    Then I click on element with xpath "//*[contains(text(), 'add_circle')]"
    And I wait for 2 sec
    | Question | Option1 | Option2 | Selected |
    | What is a Defect? | Any flaw or imperfection in a software work product | without any issues| Option1 |
    | What is a Test Scenario? | Identifying all the possible areas to be tested | specifice areas only

    Then I click on element with xpath "//span[contains(text(),'Save')]"
    And I wait for 5 sec
    Then element with xpath "//h4[contains(text(),'List of Quizzes')]" should be presented
    And I wait for 3 sec
