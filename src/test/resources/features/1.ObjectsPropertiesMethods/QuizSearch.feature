Feature:  Automate TC for Quiz Method: Quiz - Search
  #ASK-272  Quiz - Search
  #If you want search for a different quiz title, you need to modify the code that has quiz title in it

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

  Scenario: Search any quiz using the scroll bar
    #ASK-273 Quiz - Search: Quizzes (using the scroll bar)
    #It will display the first title that contains the given phrase
    When I click on element with xpath "//h5[contains(text(),'Quizzes')]"
    And I wait for 5 sec
    Then element with xpath "//mat-card[@class='page mat-card ng-star-inserted']" should be displayed
    #If you want unique quiz title, you need to input specific title search
    Then I scroll to the element with xpath "//mat-panel-title[contains(text(),'Multiple-Choice Question: Options')]" with offset 5
    And I wait for 2 sec
    Then element with xpath "//mat-panel-title[contains(text(),'Multiple-Choice Question: Options')]" should be displayed
    And I wait for 10 sec

    Scenario: Search any quiz title through Assignments and using the scroll bar in the drop down menu
    #ASK287 Quiz - Search: Assignments (using the scroll bar)
      When I click on element with xpath "//h5[contains(text(),'Assignments')]"
      And I wait for 5 sec
      Then element with xpath "//h4[contains(text(),'List of Assignments')]" should be displayed
      Then I click on element with xpath "//span[contains(text(),'Create New Assignment')]"
      And I wait for 3 sec
      Then element with xpath "//mat-card[@class='page mat-card']" should be displayed
      And I wait for 5 sec
      Then I click on element with xpath "//span[contains(text(), 'Select Quiz To Assign')]"
      And I wait for 5 sec
      Then element with xpath "//mat-option[@class='mat-option ng-star-inserted mat-active']" should be displayed
      And I wait for 3 sec
    #If you want unique quiz title, you need to input the specific title search
      Then I scroll to the element with xpath "//span[contains(text(),'Multiple-Choice Question: Options')]" with offset 5
      And I wait for 2 sec
      Then I click on element with xpath "//span[contains(text(),'Multiple-Choice Question: Options')]"
      And I wait for 2 sec
      And element with xpath "//span[contains(text(), 'Multiple-Choice Question: Option')]" should be displayed
      And I wait for 5 sec

  Scenario: Search any quiz title through Assignments and using keyboard and scroll bar in the drop down menu
    #ASK289 Quiz - Search: Assignments (using keyboard input and scroll bar)
    When I click on element with xpath "//h5[contains(text(),'Assignments')]"
    And I wait for 5 sec
    Then element with xpath "//h4[contains(text(),'List of Assignments')]" should be displayed
    Then I click on element with xpath "//span[contains(text(),'Create New Assignment')]"
    And I wait for 3 sec
    Then element with xpath "//mat-card[@class='page mat-card']" should be displayed
    And I wait for 5 sec
    Then I click on element with xpath "//span[contains(text(), 'Select Quiz To Assign')]"
    And I wait for 5 sec
    Then element with xpath "//mat-option[@class='mat-option ng-star-inserted mat-active']" should be displayed
    And I wait for 3 sec
    Then I type "Q" into element with xpath "//mat-option[@class='mat-option ng-star-inserted mat-active']"
    And I wait for 3 sec
    #If you want unique quiz title, you need to input the specific title search
    Then I scroll to the element with xpath "//span[contains(text(),'Quiz - Search')]" with offset 5
    And I wait for 2 sec
    Then I click on element with xpath "//span[contains(text(),'Quiz - Search')]"
    And I wait for 2 sec
    And element with xpath "//span[contains(text(), 'Quiz - Search')]" should be displayed
    And I wait for 5 sec