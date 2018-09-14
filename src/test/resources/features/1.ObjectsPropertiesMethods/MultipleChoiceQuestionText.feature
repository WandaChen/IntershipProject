Feature: Automate TC for Multiple choice question - Text
  #ASK-462 Multiple choice question - Text

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

  @Test-HappyPath
  Scenario: Create a multiple-choice quiz text with Alphanumerical & Sp char (Happy Path)
    #ASK-463 Multiple-Choice Question: Text - Alphanumeric & Special Characters
    And element with xpath "//*[@placeholder = 'Title Of The Quiz *']" should be displayed
    When I click on element with xpath "//*[@placeholder = 'Title Of The Quiz *']"
    Then I type "ASK-620 MCQ: Text-Alphanumeric & Special Characters" into element with xpath "//*[@placeholder = 'Title Of The Quiz *']"
    Then I click on element with xpath "//*[contains(text(), 'add_circle')]"
    And I wait for 2 sec
    Then element with xpath "//div[@class='mat-input-infix mat-form-field-infix']" should be displayed
    And I click on element with xpath "//*[contains(text(), 'Q1')]/../../..//div[contains(text(), 'Multiple-Choice')]"
    Then element with xpath "//*[contains(text(), 'Q1')]/../../..//textarea[@placeholder='Question *']" should be displayed
    And I type "Xyz12!&09*%Mh7?" into element with xpath "//*[contains(text(), 'Q1')]/../../..//textarea[@placeholder='Question *']"
    And I wait for 3 sec
    # input options
    Then I type "Yes" into element with xpath "//*[contains(text(), 'Q1')]/../../..//*[@placeholder='Option 1*']"
    Then I type "No" into element with xpath "//*[contains(text(), 'Q1')]/../../..//*[@placeholder='Option 2*']"
    And I wait for 3 sec
      #show correct response
    And I click on element with xpath "//mat-checkbox[@class='answer mat-checkbox mat-accent']"
    And I wait for 2 sec
    Then I click on element with xpath "//span[contains(text(),'Save')]"
    And I wait for 5 sec
    #verify the quiz exist
    Then element with xpath "//h4[contains(text(),'List of Quizzes')]" should be presented
    And I wait for 5 sec
    Then I scroll to the element with xpath "//mat-panel-title[contains(text(),'ASK-620 MCQ: Text-Alphanumeric & Special Characters')]" with offset 5
    And I wait for 2 sec
    Then element with xpath "//mat-panel-title[contains(text(),'ASK-620 MCQ: Text-Alphanumeric & Special Characters')]" should be displayed
    And I wait for 5 sec

  @Test-MinBoundaryLimit
  Scenario: Create a MCQ quiz with boundary 1 character question
    #ASK-466	Multiple-Choice Question: Text - Single Character
    And element with xpath "//*[@placeholder = 'Title Of The Quiz *']" should be displayed
    When I click on element with xpath "//*[@placeholder = 'Title Of The Quiz *']"
    Then I type "ASK-620 MCQ: Text-1 Char" into element with xpath "//*[@placeholder = 'Title Of The Quiz *']"
    Then I click on element with xpath "//*[contains(text(), 'add_circle')]"
    And I wait for 2 sec
    Then element with xpath "//div[@class='mat-input-infix mat-form-field-infix']" should be displayed
    And I click on element with xpath "//div[contains(text(), 'Multiple-Choice')]"
    Then element with xpath "//textarea[@placeholder='Question *']" should be displayed
    And I type "J" into element with xpath "//textarea[@placeholder='Question *']"
    And I wait for 3 sec
    # input options
    Then I type "Good" into element with xpath "//*[@placeholder='Option 1*']"
    Then I type "Bad" into element with xpath "//*[@placeholder='Option 2*']"
    And I wait for 3 sec
      #show correct response
    And I click on element with xpath "//mat-checkbox[@class='answer mat-checkbox mat-accent']"
    And I wait for 2 sec
    Then I click on element with xpath "//span[contains(text(),'Save')]"
    And I wait for 5 sec
    #verify the quiz exist
    Then element with xpath "//h4[contains(text(),'List of Quizzes')]" should be presented
    And I wait for 5 sec
    Then I scroll to the element with xpath "//mat-panel-title[contains(text(),'ASK-620 MCQ: Text-1 Char')]" with offset 5
    And I wait for 2 sec
    Then element with xpath "//mat-panel-title[contains(text(),'ASK-620 MCQ: Text-1 Char')]" should be displayed
    And I wait for 5 sec

  @Test-MaxBoundaryLimit
  Scenario: Create a MCQ quiz with boundary 1000 character question
    #ASK-550	Multiple-Choice Question - Text - max 1000 characters
    And element with xpath "//*[@placeholder = 'Title Of The Quiz *']" should be displayed
    When I click on element with xpath "//*[@placeholder = 'Title Of The Quiz *']"
    Then I type "ASK-620 MCQ: Text-1000 Char" into element with xpath "//*[@placeholder = 'Title Of The Quiz *']"
    Then I click on element with xpath "//*[contains(text(), 'add_circle')]"
    And I wait for 2 sec
    Then element with xpath "//div[@class='mat-input-infix mat-form-field-infix']" should be displayed
    And I click on element with xpath "//div[contains(text(), 'Multiple-Choice')]"
    Then element with xpath "//textarea[@placeholder='Question *']" should be displayed
    And I type "ABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789abcdefghijklmnopqrstuvwxyz01234567" into element with xpath "//textarea[@placeholder='Question *']"
    And I wait for 3 sec
    # input options
    Then I type "Good idea" into element with xpath "//*[@placeholder='Option 1*']"
    Then I type "Bad idea" into element with xpath "//*[@placeholder='Option 2*']"
    And I wait for 3 sec
      #show correct response
    And I click on element with xpath "//mat-checkbox[@class='answer mat-checkbox mat-accent']"
    And I wait for 2 sec
    Then I click on element with xpath "//span[contains(text(),'Save')]"
    And I wait for 5 sec
    #verify the quiz exist
    Then element with xpath "//h4[contains(text(),'List of Quizzes')]" should be presented
    And I wait for 5 sec
    Then I scroll to the element with xpath "//mat-panel-title[contains(text(),'ASK-620 MCQ: Text-1000 Char')]" with offset 5
    And I wait for 2 sec
    Then element with xpath "//mat-panel-title[contains(text(),'ASK-620 MCQ: Text-1000 Char')]" should be displayed
    And I wait for 5 sec

  @Test-OverMaxBoundaryLimit
  Scenario: Create a MCQ quiz with more than 10000 character question
    #ASK-	Multiple-Choice Question - Text > max 1000 characters
    And element with xpath "//*[@placeholder = 'Title Of The Quiz *']" should be displayed
    When I click on element with xpath "//*[@placeholder = 'Title Of The Quiz *']"
    Then I type "ASK-620 MCQ: Text>1000 Char" into element with xpath "//*[@placeholder = 'Title Of The Quiz *']"
    Then I click on element with xpath "//*[contains(text(), 'add_circle')]"
    And I wait for 2 sec
    Then element with xpath "//div[@class='mat-input-infix mat-form-field-infix']" should be displayed
    And I click on element with xpath "//div[contains(text(), 'Multiple-Choice')]"
    Then element with xpath "//textarea[@placeholder='Question *']" should be displayed
    And I type "ABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789abcdefghijklmnopqrstuvwxyz0123456789?" into element with xpath "//textarea[@placeholder='Question *']"
    And I wait for 3 sec
    # input options
    Then I type "Good idea" into element with xpath "//*[@placeholder='Option 1*']"
    Then I type "Bad idea" into element with xpath "//*[@placeholder='Option 2*']"
    And I wait for 3 sec
      #show correct response
    And I click on element with xpath "//mat-checkbox[@class='answer mat-checkbox mat-accent'][@id='mat-checkbox-3']"
    And I wait for 2 sec
    Then I click on element with xpath "//span[contains(text(),'Save')]"
    And I wait for 5 sec
    #verify the quiz exist
    Then element with xpath "//h4[contains(text(),'List of Quizzes')]" should be presented
    And I wait for 5 sec
    Then I scroll to the element with xpath "//mat-panel-title[contains(text(),'ASK-620 MCQ: Text>1000 Char')]" with offset 5
    And I wait for 2 sec
    Then element with xpath "//mat-panel-title[contains(text(),'ASK-620 MCQ: Text>1000 Char')]" should be displayed

  @Test-ZeroChar
  Scenario: Create a MCQ quiz with 0 character question should get a error message
    #ASK-468 Multiple-Choice Question: Text - Zero Character input question
    And element with xpath "//*[@placeholder = 'Title Of The Quiz *']" should be displayed
    When I click on element with xpath "//*[@placeholder = 'Title Of The Quiz *']"
    Then I type "ASK-620 MCQ: Text-0 Char" into element with xpath "//*[@placeholder = 'Title Of The Quiz *']"
    Then I click on element with xpath "//*[contains(text(), 'add_circle')]"
    And I wait for 2 sec
    Then element with xpath "//div[@class='mat-input-infix mat-form-field-infix']" should be displayed
    And I click on element with xpath "//div[contains(text(), 'Multiple-Choice')]"
    Then element with xpath "//textarea[@placeholder='Question *']" should be displayed
    #And I type "" into element with xpath "//textarea[@placeholder='Question *']"
    And I wait for 3 sec
    # input options
    Then I type "Good idea" into element with xpath "//*[@placeholder='Option 1*']"
    Then I type "Bad idea" into element with xpath "//*[@placeholder='Option 2*']"
    And I wait for 3 sec
     #show correct response
    And I click on element with xpath "//mat-checkbox[@class='answer mat-checkbox mat-accent'][@id='mat-checkbox-3']"
    And I wait for 2 sec
    When I click on element with xpath "//span[contains(text(),'Save')]"
    Then element with xpath "//div[@class='cdk-visually-hidden']" should be displayed
    And element with xpath "//mat-error[contains(text(), 'This field is required')]" should be displayed
    And I wait for 5 sec

  @Test-WhiteSpaces
  Scenario Outline: Create a MCQ quiz with text question that has white spaces
    #ASK-469 Multiple-Choice Question - Text - Leading Space
    #ASK-470 Multiple-Choice Question: Text - Trailing Space
    #ASK-471 Multiple-Choice Question: Text - Whitespace only
    #ASK-472 Multiple-Choice Question: Text - Multiple spaces in between characters
    And element with xpath "//*[@placeholder = 'Title Of The Quiz *']" should be displayed
    When I click on element with xpath "//*[@placeholder = 'Title Of The Quiz *']"
    Then I type "<Title>" into element with xpath "//*[@placeholder = 'Title Of The Quiz *']"
    Then I click on element with xpath "//*[contains(text(), 'add_circle')]"
    And I wait for 2 sec
    Then element with xpath "//div[@class='mat-input-infix mat-form-field-infix']" should be displayed
    And I click on element with xpath "//div[contains(text(), 'Multiple-Choice')]"
    Then element with xpath "//textarea[@placeholder='Question *']" should be displayed
    And I type quote "<Question>" into element with xpath "//textarea[@placeholder='Question *']"
    And I wait for 3 sec
    # input options
    Then I type "<Option1>" into element with xpath "//*[@placeholder='Option 1*']"
    Then I type "<Option2>" into element with xpath "//*[@placeholder='Option 2*']"
    And I wait for 3 sec
     #show correct response
    And I click on element with xpath "<XPATH>"
    And I wait for 2 sec
    When I click on element with xpath "//span[contains(text(),'Save')]"
    And I wait for 5 sec
   #verify the quiz exist
    Then element with xpath "//h4[contains(text(),'List of Quizzes')]" should be presented
    And I wait for 5 sec
    Then I scroll to the element with xpath "//mat-panel-title[contains(text(),'<Title>')]" with offset 5
    And I wait for 2 sec
    Then element with xpath "//mat-panel-title[contains(text(),'<Title>')]" should be displayed
    Examples:
      | Title                                       | Question            | Option1 | Option2 | XPATH                                                                         |
      | ASK-620 MCQ: Text-Leading White Spaces      | '   789xyzABC'      | Yes     | No      | //mat-checkbox[@class='answer mat-checkbox mat-accent'][@id='mat-checkbox-3'] |
      | ASK-620 MCQ: Text-Trailing White Spaces     | '!@%^5spaces     '  | Yes     | No      | //mat-checkbox[@class='answer mat-checkbox mat-accent']                       |
      | ASK-620 MCQ: Text-White Spaces              | '        '          | Yes     | No      | //mat-checkbox[@class='answer mat-checkbox mat-accent'][@id='mat-checkbox-3'] |
      | ASK-620 MCQ: Text-White space in the middle | '456     hij   $%*' | Yes     | No      | //mat-checkbox[@class='answer mat-checkbox mat-accent']                       |
