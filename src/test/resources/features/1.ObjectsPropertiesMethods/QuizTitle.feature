Feature: Automate TC for Quiz - Title (ASK-565)
    #Test Set: ASK-69 Quiz-Title
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

  @Test-HappyPath
  Scenario: Create a quiz title with Alphanumerical & Sp char (Happy Path)
    #ASK-71 Quiz Title - Alphanumerical & Sp char (Happy Path)
    When I click on element with xpath "//h5[contains(text(),'Quizzes')]"
    And I wait for 5 sec
    Then element with xpath "//mat-card[@class='page mat-card ng-star-inserted']" should be displayed
    Then I click on element with xpath "//span[contains(text(),'Create New Quiz')]"
    And I wait for 3 sec
    And element with xpath "//*[@placeholder = 'Title Of The Quiz *']" should be displayed
    When I click on element with xpath "//*[@placeholder = 'Title Of The Quiz *']"
    Then I type "$0FTWARE te$t!ng" into element with xpath "//*[@placeholder = 'Title Of The Quiz *']"
    Then I click on element with xpath "//*[contains(text(), 'add_circle')]"
    And I wait for 2 sec
    Then element with xpath "//div[@class='mat-input-infix mat-form-field-infix']" should be displayed
    And I click on element with xpath "//div[@class='mat-radio-outer-circle']"
    Then element with xpath "//textarea[@placeholder='Question *']" should be displayed
    And I type "What is Software Testing?" into element with xpath "//textarea[@placeholder='Question *']"
    And I wait for 5 sec
    Then I click on element with xpath "//span[contains(text(),'Save')]"
    And I wait for 5 sec
    Then element with xpath "//h4[contains(text(),'List of Quizzes')]" should be presented
    And I wait for 3 sec
    

  @Test-BoundaryLimit
  Scenario Outline: Create a quiz title with boundary limit characters
    #ASK-90 Single Character
    #ASK-133 Maximum Characters
    When I click on element with xpath "//h5[contains(text(),'Quizzes')]"
    And I wait for 5 sec
    Then element with xpath "//mat-card[@class='page mat-card ng-star-inserted']" should be displayed
    Then I click on element with xpath "//span[contains(text(),'Create New Quiz')]"
    And I wait for 3 sec
    And element with xpath "//*[@placeholder = 'Title Of The Quiz *']" should be displayed
    When I click on element with xpath "//*[@placeholder = 'Title Of The Quiz *']"
    Then I type "<QuizTitle>" into element with xpath "//*[@placeholder = 'Title Of The Quiz *']"
    Then I click on element with xpath "//*[contains(text(), 'add_circle')]"
    And I wait for 2 sec
    Then element with xpath "//div[@class='mat-input-infix mat-form-field-infix']" should be displayed
    And I click on element with xpath "//div[@class='mat-radio-outer-circle']"
    Then element with xpath "//textarea[@placeholder='Question *']" should be displayed
    And I type "What is Software Testing?" into element with xpath "//textarea[@placeholder='Question *']"
    And I wait for 5 sec
    Then I click on element with xpath "//span[contains(text(),'Save')]"
    And I wait for 5 sec
    Then element with xpath "//h4[contains(text(),'List of Quizzes')]" should be presented
    And I wait for 3 sec
  Examples:
    | QuizTitle                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                |
    | Z                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        |
    | abcdefghijklmnopqrstuvwxyz0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ01234567 |

  @Test-TitleTooLong
  Scenario: Create a quiz title that is more than max length allowed
    #ASK-87 Maximum Character + 1
    #Bug ASK-482 Quiz Title accepts Max+1 Characters
    When I click on element with xpath "//h5[contains(text(),'Quizzes')]"
    And I wait for 5 sec
    Then element with xpath "//mat-card[@class='page mat-card ng-star-inserted']" should be displayed
    Then I click on element with xpath "//span[contains(text(),'Create New Quiz')]"
    And I wait for 3 sec
    And element with xpath "//*[@placeholder = 'Title Of The Quiz *']" should be displayed
    When I click on element with xpath "//*[@placeholder = 'Title Of The Quiz *']"
    Then I type "#abcdefghijklmnopqrstuvwxyz0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ01234567" into element with xpath "//*[@placeholder = 'Title Of The Quiz *']"
    Then I click on element with xpath "//*[contains(text(), 'add_circle')]"
    And I wait for 3 sec
   #Then element with xpath "//mat-error[contains(text(), 'Title is more than max characters allowed')]" should be displayed

  @Test-TitleRequired
  Scenario: No input in the quiz title
    #ASK-85 Field is required
    When I click on element with xpath "//h5[contains(text(),'Quizzes')]"
    And I wait for 5 sec
    Then element with xpath "//mat-card[@class='page mat-card ng-star-inserted']" should be displayed
    Then I click on element with xpath "//span[contains(text(),'Create New Quiz')]"
    And I wait for 3 sec
    And element with xpath "//*[@placeholder = 'Title Of The Quiz *']" should be displayed
    When I click on element with xpath "//*[@placeholder = 'Title Of The Quiz *']"
    Then I click on element with xpath "//ac-quiz-builder-page[@class='ng-star-inserted']"
    And I wait for 3 sec
    Then element with xpath "//mat-error[contains(text(), 'This field is required')]" should be displayed

  @Test-Space
  Scenario Outline: Create a quiz title that has one or more spaces in it
    #ASK-86 White Spaces
    #ASK-138 Leading Space
    #ASK-139 Trailing Space
    #Bug ASK-479 When creating a new quiz, "Quiz Title" accepts only White Spaces
    #Bug ASK-480 When creating a new Quiz, Title of The Quiz accepts Leading WhiteSpaces
    When I click on element with xpath "//h5[contains(text(),'Quizzes')]"
    And I wait for 5 sec
    Then element with xpath "//mat-card[@class='page mat-card ng-star-inserted']" should be displayed
    Then I click on element with xpath "//span[contains(text(),'Create New Quiz')]"
    And I wait for 3 sec
    And element with xpath "//*[@placeholder = 'Title Of The Quiz *']" should be displayed
    When I click on element with xpath "//*[@placeholder = 'Title Of The Quiz *']"
    Then I type quote "<QuizTitle>" into element with xpath "//*[@placeholder = 'Title Of The Quiz *']"
    Then I click on element with xpath "//*[contains(text(), 'add_circle')]"
    And I wait for 3 sec
    Then element with xpath "//div[@class='mat-input-infix mat-form-field-infix']" should be displayed
    And I click on element with xpath "//div[@class='mat-radio-outer-circle']"
    Then element with xpath "//textarea[@placeholder='Question *']" should be displayed
    And I type "What is Software Testing?" into element with xpath "//textarea[@placeholder='Question *']"
    And I wait for 5 sec
    Then I click on element with xpath "//span[contains(text(),'Save')]"
    And I wait for 5 sec
    Then element with xpath "//h4[contains(text(),'List of Quizzes')]" should be presented
    And I wait for 3 sec
    Examples:
    | QuizTitle |
    | '       ' |
    | '   SQA'  |
    | 'SQA    ' |