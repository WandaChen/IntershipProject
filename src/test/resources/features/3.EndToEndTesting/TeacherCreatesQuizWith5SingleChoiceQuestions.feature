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
    And element with xpath "//*[@placeholder = 'Title Of The Quiz *']" should be displayed
    When I click on element with xpath "//*[@placeholder = 'Title Of The Quiz *']"
    Then I type "ASK-292 Quiz with 5 SingleChoice questions " into element with xpath "//*[@placeholder = 'Title Of The Quiz *']"
    Then I click on element with xpath "//*[contains(text(), 'add_circle')]"
    And I wait for 2 sec
  #Question 1
    Then element with xpath "//div[@class='mat-input-infix mat-form-field-infix']" should be displayed
    And I click on element with xpath "//*[contains(text(), 'Q1')]/../../..//div[contains(text(), 'Single-Choice')]"
    Then element with xpath "//*[contains(text(), 'Q1')]/../../..//textarea[@placeholder='Question *']" should be displayed
    And I type "What is a Defect?" into element with xpath "//*[contains(text(), 'Q1')]/../../..//textarea[@placeholder='Question *']"
    And I wait for 3 sec
    # input options
    Then I type "Any flaw or imperfection in a software work product" into element with xpath "//*[contains(text(), 'Q1')]/../../..//*[@placeholder='Option 1*']"
    Then I type "without any issues " into element with xpath "//*[contains(text(), 'Q1')]/../../..//*[@placeholder='Option 2*']"
    And I wait for 3 sec
      #show correct response
    And I click on element with xpath "//*[contains(text(), 'Q1')]/../../..//mat-radio-button[@class='mat-radio-button mat-accent']//div[@class='mat-radio-outer-circle']"
    And I wait for 2 sec
    Then I click on element with xpath "//*[contains(text(), 'add_circle')]"
    And I wait for 5 sec
  #Question 2
    Then element with xpath "//*[contains(text(), 'new empty question')]" should be displayed
    And I click on element with xpath "//*[contains(text(), 'Q2')]/../../..//div[@class='mat-radio-label-content'][contains(text(), 'Single-Choice')]"
    Then element with xpath "//*[contains(text(), 'Q2')]/../../..//textarea[@placeholder='Question *']" should be displayed
    And I type "What is a Test Scenario? " into element with xpath "//*[contains(text(), 'Q2')]/../../..//textarea[@placeholder='Question *']"
    And I wait for 3 sec
 #   # input options
    Then I type "Identifying all the possible areas to be tested" into element with xpath "//*[contains(text(), 'Q2')]/../../..//*[@placeholder='Option 1*']"
    Then I type "specific areas only" into element with xpath "//*[contains(text(), 'Q2')]/../../..//*[@placeholder='Option 2*']"
    And I wait for 3 sec
 #      #show correct response
    And I click on element with xpath "//*[contains(text(), 'Q2')]/../../..//mat-radio-button[@class='mat-radio-button mat-accent']//div[@class='mat-radio-outer-circle']"
    And I wait for 2 sec
    Then I click on element with xpath "//*[contains(text(), 'add_circle')]"
    And I wait for 5 sec
  #Question 3
    Then element with xpath "//*[contains(text(), 'Q3')]/../../..//div[@class='mat-radio-label-content'][contains(text(), 'Single-Choice')]" should be displayed
    And I click on element with xpath "//*[contains(text(), 'Q3')]/../../..//div[contains(text(), 'Single-Choice')]"
    Then element with xpath "//*[contains(text(), 'Q3')]/../../..//textarea[@placeholder='Question *']" should be displayed
    And I type "What is Jira ?" into element with xpath "//*[contains(text(), 'Q3')]/../../..//textarea[@placeholder='Question *']"
    And I wait for 3 sec
    # input options
    Then I type "bug-tracking, issue-tracking and project-management software application" into element with xpath "//*[contains(text(), 'Q3')]/../../..//*[@placeholder='Option 1*']"
    Then I type "See the errors only" into element with xpath "//*[contains(text(), 'Q3')]/../../..//*[@placeholder='Option 2*']"
    And I wait for 3 sec
 #      #show correct response
    And I click on element with xpath "//*[contains(text(), 'Q3')]/../../..//mat-radio-button[@class='mat-radio-button mat-accent']//div[@class='mat-radio-outer-circle']"
    And I wait for 2 sec
    Then I click on element with xpath "//*[contains(text(), 'add_circle')]"
    And I wait for 5 sec
  #Question 4
    Then element with xpath "//*[contains(text(), 'Q4')]/../../..//div[@class='mat-radio-label-content'][contains(text(), 'Single-Choice')]" should be displayed
    And I click on element with xpath "//*[contains(text(), 'Q4')]/../../..//div[contains(text(), 'Single-Choice')]"
    Then element with xpath "//*[contains(text(), 'Q4')]/../../..//textarea[@placeholder='Question *']" should be displayed
    And I type "What is Integration Level Testing?" into element with xpath "//*[contains(text(), 'Q4')]/../../..//textarea[@placeholder='Question *']"
    And I wait for 3 sec
    # input options
    Then I type "Modules (or) Unit of code" into element with xpath "//*[contains(text(), 'Q4')]/../../..//*[@placeholder='Option 1*']"
    Then I type "test planning" into element with xpath "//*[contains(text(), 'Q4')]/../../..//*[@placeholder='Option 2*']"
    And I wait for 3 sec
       #show correct response
    And I click on element with xpath "//*[contains(text(), 'Q4')]/../../..//mat-radio-button[@class='mat-radio-button mat-accent']//div[@class='mat-radio-outer-circle']"
    And I wait for 2 sec
    Then I click on element with xpath "//*[contains(text(), 'add_circle')]"
    And I wait for 5 sec
  #Question 5
    Then element with xpath "//*[contains(text(), 'Q5')]/../../..//div[@class='mat-radio-label-content'][contains(text(), 'Single-Choice')]" should be displayed
    And I click on element with xpath "//*[contains(text(), 'Q5')]/../../..//div[contains(text(), 'Single-Choice')]"
    Then element with xpath "//*[contains(text(), 'Q5')]/../../..//textarea[@placeholder='Question *']" should be displayed
    And I type " What is API? " into element with xpath "//*[contains(text(), 'Q5')]/../../..//textarea[@placeholder='Question *']"
    And I wait for 3 sec
    # input options
    Then I type "Application Program Interface " into element with xpath "//*[contains(text(), 'Q5')]/../../..//*[@placeholder='Option 1*']"
    Then I type "Application Process Information" into element with xpath "//*[contains(text(), 'Q5')]/../../..//*[@placeholder='Option 2*']"
    And I wait for 3 sec
       #show correct response
    And I click on element with xpath "//*[contains(text(), 'Q5')]/../../..//mat-radio-button[@class='mat-radio-button mat-accent']//div[@class='mat-radio-outer-circle']"
    And I wait for 2 sec
    # save quiz
    Then I click on element with xpath "//span[contains(text(),'Save')]"
    And I wait for 5 sec
    Then element with xpath "//h4[contains(text(),'List of Quizzes')]" should be presented
    And I wait for 5 sec
    Then I scroll to the element with xpath "//mat-panel-title[contains(text(),'ASK-292 Quiz with 5 SingleChoice questions')]" with offset 5
    And I wait for 2 sec
    Then element with xpath "//mat-panel-title[contains(text(),'ASK-292 Quiz with 5 SingleChoice questions')]" should be displayed
    And I wait for 5 sec