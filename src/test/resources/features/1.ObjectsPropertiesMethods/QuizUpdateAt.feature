Feature:  Automate TC for Quiz Method: Quiz - Updated At
  #ASK-252  Quiz - Updated At

  Background: Log into an existing teacher account
    Given I open url "http://local.school.portnov.com:4520/#/login"
    And I wait for 3 sec
    Then I click on element with xpath "//input[@placeholder='Email *']"
    And I type "nmas@lopeure.com" into element with xpath "//input[@placeholder='Email *']"
    Then I click on element with xpath "//input[@placeholder='Password *']"
    Then I type "12345" into element with xpath "//input[@placeholder='Password *']"
    And I wait for 3 sec
    Then I click on element with xpath "//button[@type='submit']"
    And I wait for 3 sec
    Then I open url "http://local.school.portnov.com:4520/#/home"
    And I wait for 5 sec
    When I click on element with xpath "//h5[contains(text(),'Quizzes')]"
    And I wait for 5 sec
    Then element with xpath "//h4[contains(text(),'List of Quizzes')]" should be displayed
    Then I click on element with xpath "//span[contains(text(),'Create New Quiz')]"
    And I wait for 3 sec
    And element with xpath "//*[@placeholder = 'Title Of The Quiz *']" should be displayed
    When I click on element with xpath "//*[@placeholder = 'Title Of The Quiz *']"

  @Test1
  Scenario: Check quiz updated at first time
  #ASK-253 Quiz: Updated At (1st time)
    Then I type "ASK-569 Quiz-Updated At (ASK-253)" into element with xpath "//*[@placeholder = 'Title Of The Quiz *']"
    Then I click on element with xpath "//*[contains(text(), 'add_circle')]"
    And I wait for 2 sec
    Then element with xpath "//div[@class='mat-input-infix mat-form-field-infix']" should be displayed
    And I click on element with xpath "//div[contains(text(), 'Textual')]"
    Then element with xpath "//textarea[@placeholder='Question *']" should be displayed
    And I type "Explain SDLC methodology." into element with xpath "//textarea[@placeholder='Question *']"
    And I wait for 3 sec
    Then I click on element with xpath "//span[contains(text(),'Save')]"
    And I wait for 5 sec
    #verify the quiz exist
    Then element with xpath "//h4[contains(text(),'List of Quizzes')]" should be presented
    And I wait for 5 sec
    Then I scroll to the element with xpath "//mat-panel-title[contains(text(),'ASK-569 Quiz-Updated At (ASK-253)')]" with offset 5
    And I wait for 2 sec
    Then element with xpath "//mat-panel-title[contains(text(),'ASK-569 Quiz-Updated At (ASK-253)')]" should be displayed
    And I wait for 5 sec
    Then I click on element with xpath "//mat-panel-title[contains(text(),'ASK-569 Quiz-Updated At (ASK-253)')]"
    And I wait for 5 sec
    Then I compare the value of Updated and Created at the table that contains xpath "//mat-panel-title[contains(text(), 'ASK-569 Quiz-Updated')]/../../.."
    And I wait for 5 sec

  @Test2
  Scenario: Check quiz updated after created and modified
  #ASK-254 Quiz: Updated At
    Then I type "ASK-569 Quiz-Updated At (ASK-254)" into element with xpath "//*[@placeholder = 'Title Of The Quiz *']"
    Then I click on element with xpath "//*[contains(text(), 'add_circle')]"
    And I wait for 2 sec
    Then element with xpath "//div[@class='mat-input-infix mat-form-field-infix']" should be displayed
    And I click on element with xpath "//div[contains(text(), 'Textual')]"
    Then element with xpath "//textarea[@placeholder='Question *']" should be displayed
    And I type "Explain SDLC methodology." into element with xpath "//textarea[@placeholder='Question *']"
    And I wait for 3 sec
    Then I click on element with xpath "//span[contains(text(),'Save')]"
    And I wait for 5 sec
    #verify the quiz exist
    Then element with xpath "//h4[contains(text(),'List of Quizzes')]" should be presented
    And I wait for 5 sec
    Then I scroll to the element with xpath "//mat-panel-title[contains(text(),'ASK-569 Quiz-Updated At (ASK-254)')]" with offset 5
    And I wait for 2 sec
    Then element with xpath "//mat-panel-title[contains(text(),'ASK-569 Quiz-Updated At (ASK-254)')]" should be displayed
    And I wait for 5 sec
    #updated quiz
    Then I click on element with xpath "//mat-panel-title[contains(text(),'ASK-569 Quiz-Updated At (ASK-254)')]"
    And I wait for 5 sec
    #Then I click on the Edit button with xpath "//mat-panel-title[contains(text(), 'ASK-569 Quiz-Updated At (ASK-254)')]/../../.."
    #Then element with xpath "//input[@placeholder='Title Of The Quiz *']" should be displayed
    #Then I click on element with xpath "//div[@class='form-controls-container ng-star-inserted']//div[@class='controls']//span[contains(text(), 'Save')]"
    #And I wait for 4 sec
    #verify the quiz exist
    #Then element with xpath "//h4[contains(text(),'List of Quizzes')]" should be presented
    #And I wait for 5 sec
    #Then I scroll to the element with xpath "//mat-panel-title[contains(text(),'ASK-569 Quiz-Updated At (ASK-254)')]" with offset 5
    #And I wait for 2 sec
    #Then element with xpath "//mat-panel-title[contains(text(),'ASK-569 Quiz-Updated At (ASK-254)')]" should be displayed
    #And I wait for 5 sec
    #Then I compare the value of Updated and Created at the table that contains xpath "//mat-panel-title[contains(text(), 'ASK-569 Quiz-Updated At (ASK-254)')]/../../.."
    #And I wait for 5 sec